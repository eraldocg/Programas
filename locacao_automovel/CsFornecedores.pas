unit CsFornecedores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, StdCtrls, jpeg, Menus, db, SedDBGrid,
  Vcl.Buttons;

type
  TCsFornecedoresForm = class(TForm)
    Panel1: TPanel;
    BtNovo: TButton;
    BtCancelar: TButton;
    Label2: TLabel;
    Label4: TLabel;
    CBOpcao: TComboBox;
    EditConsulta: TEdit;
    CBTipo: TComboBox;
    BtOk: TButton;
    PopupMenu1: TPopupMenu;
    ExcluirRegistro2: TMenuItem;
    MainMenu1: TMainMenu;
    ExcluirRegistro1: TMenuItem;
    Panel2: TPanel;
    DBGrid1: TSedDBGrid;
    BtExecutar: TSpeedButton;
    Image3: TImage;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BtNovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure EditNomeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ExcluirRegistro2Click(Sender: TObject);
    procedure EditConsultaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtExecutarClick(Sender: TObject);
    // procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CsFornecedoresForm: TCsFornecedoresForm;

implementation

uses Base, Principal, CadFornecedores, Acesso, unRecursos;

{$R *.dfm}

procedure TCsFornecedoresForm.DBGrid1DblClick(Sender: TObject);
begin
  try
    if not assigned(CadFornecedoresForm) then
      CadFornecedoresForm := TCadFornecedoresForm.create(Application);
    try
      Screen.Cursor := crSQLWait;
      BtNovo.Enabled := False;
      BtCancelar.Enabled := False;
      BtOk.Enabled := False;
      BancodeDados.Fornecedores.Edit;
      CadFornecedoresForm.ShowModal;
    finally
      CadFornecedoresForm.Release;
      CadFornecedoresForm := nil;
      Screen.Cursor := crDefault;
      BtNovo.Enabled := true;
      BtCancelar.Enabled := true;
      BtOk.Enabled := true;
    end;
  except
    On E: Exception do
      TraduzErro(E.Message);
  end;
  Screen.Cursor := crDefault;
end;

procedure TCsFornecedoresForm.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TCsFornecedoresForm.BtExecutarClick(Sender: TObject);
var
  Opcao, csTexto, tmp: string;
begin
  tmp := Trim(AnsiUpperCase(EditConsulta.Text));

  case CBOpcao.ItemIndex of
    0: Opcao := 'forne_id';
    1: Opcao := 'nome';
    2: Opcao := 'fantasia';
    3: Opcao := 'responsavel';
    4:
      begin
        Opcao := 'cnpj';
        tmp := TestaCPFCNPJ(tmp);
      end;
  end;

  HabilitarBotoes(Self, false);
  Try
    with BancodeDados.Fornecedores do
    begin
      Close;
      SQL.Text:='select * from fornecedores where 1=1';

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
  HabilitarBotoes(Self, True);

end;

procedure TCsFornecedoresForm.BtNovoClick(Sender: TObject);
begin
  try
    if not assigned(CadFornecedoresForm) then
      CadFornecedoresForm := TCadFornecedoresForm.create(Application);
    try
      Screen.Cursor := crSQLWait;
      BtNovo.Enabled := False;
      BtCancelar.Enabled := False;
      BtOk.Enabled := False;
      BancodeDados.Fornecedores.Append;
      CadFornecedoresForm.ShowModal;
    finally
      CadFornecedoresForm.Release;
      CadFornecedoresForm := nil;
      Screen.Cursor := crDefault;
      BtNovo.Enabled := true;
      BtCancelar.Enabled := true;
      BtOk.Enabled := true;
    end;
  except
    On E: Exception do
      TraduzErro(E.Message);
  end;
  Screen.Cursor := crDefault;
end;

procedure TCsFornecedoresForm.FormShow(Sender: TObject);
begin
  try
    Screen.Cursor := crSQLWait;
    BancodeDados.Fornecedores.Close;
    BancodeDados.Fornecedores.SQL.Clear;
    BancodeDados.Fornecedores.SQL.Add('select * from fornecedores where forne_id>0');
    BancodeDados.Fornecedores.open;

  finally
    Screen.Cursor := crDefault;
    EditConsulta.SetFocus;
  end;
end;

procedure TCsFornecedoresForm.DBGrid1TitleClick(Column: TColumn);
begin
  BancodeDados.MudaOrdem(BancodeDados.Fornecedores, Column.Field);
end;

procedure TCsFornecedoresForm.EditNomeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_DOWN) and not(ActiveControl is TDBGrid) then
    DBGrid1.SetFocus;
end;

procedure TCsFornecedoresForm.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  // DBGrid1.DefaultDrawDataCell(Rect,DBGrid1.Columns[datacol].Field,State);
end;

procedure TCsFornecedoresForm.ExcluirRegistro2Click(Sender: TObject);
begin
  if PrincipalForm.LiberaAcesso then
  begin
    if not BancodeDados.FDConnection1.InTransaction then
      BancodeDados.FDConnection1.StartTransaction;
    BancodeDados.Fornecedores.Delete;
    BancodeDados.FDConnection1.CommitRetaining;
  end;
end;

procedure TCsFornecedoresForm.EditConsultaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_Return) then BtExecutarClick(Sender);
end;

End.
