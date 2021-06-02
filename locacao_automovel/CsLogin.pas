unit CsLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, StdCtrls, jpeg, Menus, db, SedDBGrid,
  Vcl.Buttons;

type
  TCsLoginForm = class(TForm)
    Panel1: TPanel;
    DBGrid1: TSedDBGrid;
    BtOk: TButton;
    BtNovo: TButton;
    BtCancelar: TButton;
    Label2: TLabel;
    Label4: TLabel;
    CBOpcao: TComboBox;
    EditConsulta: TEdit;
    CBTipo: TComboBox;
    Image1: TImage;
    PopupMenu1: TPopupMenu;
    Excluir1: TMenuItem;
    Editar1: TMenuItem;
    N1: TMenuItem;
    MainMenu1: TMainMenu;
    Excluir2: TMenuItem;
    Editar2: TMenuItem;
    BtExecutar: TSpeedButton;
    N2: TMenuItem;
    GerarNFSeAutomticamente1: TMenuItem;
    Label1: TLabel;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure EditNomeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtNovoClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EditConsultaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtExecutarClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure GerarNFSeAutomticamente1Click(Sender: TObject);
    // procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CsLoginForm: TCsLoginForm;

implementation

uses Base, Principal, CadLogin, unRecursos;

{$R *.dfm}

procedure TCsLoginForm.DBGrid1DblClick(Sender: TObject);
begin
if (usrNivel in [1, 2]) then
begin
  if BancodeDados.LoginLOGIN_ID.Value > 0 then
    try
      if not assigned(CadLoginForm) then
        CadLoginForm := TCadLoginForm.Create(Application);
      try
        Screen.Cursor := crSQLWait;
        BtNovo.Enabled := False;
        BtOk.Enabled := False;
        BtCancelar.Enabled := False;
        CadLoginForm.ShowModal;
      finally
        CadLoginForm.Release;
        CadLoginForm := nil;
        Screen.Cursor := crDefault;
        BtNovo.Enabled := true;
        BtOk.Enabled := true;
        BtCancelar.Enabled := true;
      end;
    except
      on E: Exception do
        TraduzErro(E.Message);
    end;
  Screen.Cursor := crDefault;
end;
end;

procedure TCsLoginForm.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if BancodeDados.LoginATIVO.Value <> 1 then
    DBGrid1.Canvas.Font.Color := clSilver;
  DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.Columns[DataCol].Field, State);
end;

procedure TCsLoginForm.FormShow(Sender: TObject);
begin
  BtExecutarClick(Sender);
  EditConsulta.SetFocus;
end;

procedure TCsLoginForm.GerarNFSeAutomticamente1Click(Sender: TObject);
var
IDTemp : integer;
begin
if BancodeDados.LoginLOGIN_ID.Value>0 then
if (BancodeDados.LoginGERA_NFSE.IsNull) or (BancodeDados.LoginGERA_NFSE.Value<>1) then
if Mensagem('Definir como responsável por gerar a NFSe automaticamente?', mtConfirmation, [mbYes, mbNo], mrYes, 0)=idYes then begin
  try
    IDTemp:=BancodeDados.LoginLOGIN_ID.Value;
    if not BancodeDados.FDConnection1.InTransaction then BancodeDados.FDConnection1.StartTransaction;
    BancodeDados.Adiciona.SQL.Text:='update login set gera_nfse=0 where not login_id='+IntToStr(BancodeDados.LoginLOGIN_ID.Value);
    BancodeDados.Adiciona.ExecSQL;
    BancodeDados.Adiciona.SQL.Text:='update login set gera_nfse=1, nivel=2 where login_id='+IntToStr(BancodeDados.LoginLOGIN_ID.Value);
    BancodeDados.Adiciona.ExecSQL;
    BancodeDados.FDConnection1.CommitRetaining;
    BancodeDados.Login.Close;
    BancodeDados.Login.Open;
    BancodeDados.Login.Locate('LOGIN_ID', IDTemp, []);

  except On E:Exception do
    TraduzErro(E.Message);
  end;
end;

end;

procedure TCsLoginForm.DBGrid1TitleClick(Column: TColumn);
begin
  BancodeDados.MudaOrdem(BancodeDados.Login, Column.Field);
end;

procedure TCsLoginForm.EditNomeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_DOWN) and not(ActiveControl is TDBGrid) then
    DBGrid1.SetFocus;
end;

procedure TCsLoginForm.BtNovoClick(Sender: TObject);
begin
if (usrNivel in [1, 2]) then
  try
    if not assigned(CadLoginForm) then
      CadLoginForm := TCadLoginForm.Create(Application);
    try
      Screen.Cursor := crSQLWait;
      BtNovo.Enabled := False;
      BtOk.Enabled := False;
      BtCancelar.Enabled := False;
      BancodeDados.Login.Append;
      CadLoginForm.ShowModal;
    finally
      CadLoginForm.Release;
      CadLoginForm := nil;
      Screen.Cursor := crDefault;
      BtNovo.Enabled := true;
      BtOk.Enabled := true;
      BtCancelar.Enabled := true;
    end;
  except
    on E: Exception do
      TraduzErro(E.Message);
  end;
  Screen.Cursor := crDefault;

end;

procedure TCsLoginForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NextDlgCtl, 0, 0);
  end;

  if Key = #27 then
  begin
    Key := #0;
    Close;
  end;
end;

procedure TCsLoginForm.BtExecutarClick(Sender: TObject);
var
  Opcao, csTexto : string;
begin
  case CBOpcao.ItemIndex of
    0:
      Opcao := 'login_id';
    1:
      Opcao := 'login';
  end;

  HabilitarBotoes(Self,false);
  Try
    with BancodeDados.Login do
    begin
      Close;
      SQL.Clear;
      SQL.Text:='select * from login where 1=1';

      if Trim(EditConsulta.Text)<>EmptyStr then
      begin
        csTexto:= PrincipalForm.csContainingLIKE(Trim(EditConsulta.Text), CBTipo.ItemIndex);
        if Trim(csTexto)<>EmptyStr then
        SQL.Add(' and (UPPER('+Opcao+')'+csTexto+')');
      end;
      SQL.Add(' order by '+Opcao);
      Open;

      if IsEmpty then
      begin
        if EditConsulta=Sender then
        Mensagem('Não foi encontrada informação para essa consulta!',mtInformation,[mbok],mrok,0);
        EditConsulta.SetFocus;
      end;

    end;
  except
    on E : Exception do
    TraduzErro(E.Message);
  end;
  HabilitarBotoes(Self,True);


end;

procedure TCsLoginForm.EditConsultaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
  begin
    BtExecutarClick(Sender);
  end;
end;

End.

