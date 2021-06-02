unit CsGrade_Financeira;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, StdCtrls, jpeg, Menus, db, SedDBGrid;

type
  TCsGrade_FinanceiraForm = class(TForm)
    Panel1: TPanel;
    DBGrid1: TSedDBGrid;
    BtOk: TButton;
    BtCancelar: TButton;
    BtNovo: TButton;
    CBOpcao: TComboBox;
    EditConsulta: TEdit;
    CBTipo: TComboBox;
    Label1: TLabel;
    Label3: TLabel;
    Image2: TImage;
    Label5: TLabel;
    MainMenu1: TMainMenu;
    CtrlDel1: TMenuItem;
    Editar2: TMenuItem;
    Novo2: TMenuItem;
    PopupMenu1: TPopupMenu;
    Editar1: TMenuItem;
    Excluir1: TMenuItem;
    N1: TMenuItem;
    Novo1: TMenuItem;
    N2: TMenuItem;
    Definirpadro1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure EditNomeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BtNovoClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EditConsultaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Excluir1Click(Sender: TObject);
    procedure Definirpadro1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CsGrade_FinanceiraForm: TCsGrade_FinanceiraForm;

implementation

uses Base, Principal, CadGrade_Financeira, unRecursos;

{$R *.dfm}

procedure TCsGrade_FinanceiraForm.FormShow(Sender: TObject);
begin
  Screen.Cursor := crSQLWait;
  try
    BancodeDados.GradeFin.Close;
    BancodeDados.GradeFin.SQL.Text := 'select * from grade_financeira order by grade_id';
    BancodeDados.GradeFin.Open;
  except
    On E: Exception do
      TraduzErro(E.Message);
  end;
  Screen.Cursor := crDefault;
  EditConsulta.SetFocus;
end;

procedure TCsGrade_FinanceiraForm.EditNomeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_DOWN) and not(ActiveControl is TDBGrid) then
    DBGrid1.SetFocus;
end;

procedure TCsGrade_FinanceiraForm.Excluir1Click(Sender: TObject);
begin
if BancodeDados.GradeFinGRADE_ID.Value>0 then
begin
HabilitarBotoes(self,false);
  try

    BancodeDados.QrySql.Close;
    BancodeDados.QrySql.SQL.Text:='select distinct grade_id from cont_serv_clien where grade_id = '+IntToStr(BancodeDados.GradeFinGRADE_ID.Value);
    BancodeDados.QrySql.Open;

    if BancodeDados.QrySql.IsEmpty then
    begin
      if PrincipalForm.LiberaAcesso then
      begin
        if not BancodeDados.FDConnection1.InTransaction then BancodeDados.FDConnection1.StartTransaction;

        BancodeDados.GradeFin.Delete;
        Bancodedados.FDConnection1.CommitRetaining;
      end;
    end else Mensagem('Registro com vínculo ao serviço de locação!'#13+'Ação não permitida!', mtInformation, [mbOk], mrOk, 0);
  except on E : Exception do
    TraduzErro(E.Message);
  end;
HabilitarBotoes(self,true);
end;
end;

procedure TCsGrade_FinanceiraForm.DBGrid1TitleClick(Column: TColumn);
begin

  BancodeDados.MudaOrdem(BancodeDados.GradeFin, Column.Field);
end;

procedure TCsGrade_FinanceiraForm.Definirpadro1Click(Sender: TObject);
var
IDTemp : integer;
begin
if BancodeDados.GradeFinGRADE_ID.Value>0 then
if (BancodeDados.GradeFinPADRAO.IsNull) or (BancodeDados.GradeFinPADRAO.Value<>1) then
if Mensagem('Definir o registro como grade financeira padrão?', mtConfirmation, [mbYes, mbNo], mrYes, 0)=idYes then
begin
  try
    IDTemp:=BancodeDados.GradeFinGRADE_ID.Value;
    if not BancodeDados.FDConnection1.InTransaction then BancodeDados.FDConnection1.StartTransaction;
    BancodeDados.Adiciona.SQL.Text:='update grade_financeira set padrao=0 where not grade_id='+IntToStr(BancodeDados.GradeFinGRADE_ID.Value);
    BancodeDados.Adiciona.ExecSQL;
    BancodeDados.Adiciona.SQL.Text:='update grade_financeira set padrao=1 where grade_id='+IntToStr(BancodeDados.GradeFinGRADE_ID.Value);
    BancodeDados.Adiciona.ExecSQL;
    BancodeDados.FDConnection1.CommitRetaining;
    BancodeDados.GradeFin.Close;
    BancodeDados.GradeFin.Open;
    BancodeDados.GradeFin.Locate('GRADE_ID', IDTemp, []);
  except On E:Exception do
    TraduzErro(E.Message);
  end;
end;

end;

procedure TCsGrade_FinanceiraForm.DBGrid1DblClick(Sender: TObject);
begin
  try
    try
      Screen.Cursor := crSQLWait;
      BtNovo.Enabled := False;
      BtOk.Enabled := False;
      BtCancelar.Enabled := False;
      if not Assigned(CadGrade_FinanceiraForm) then
        CadGrade_FinanceiraForm := TCadGrade_FinanceiraForm.create(Application);
      BancodeDados.GradeFin.Edit;
      CadGrade_FinanceiraForm.showmodal;
    finally
      FreeAndNil(CadGrade_FinanceiraForm);
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

procedure TCsGrade_FinanceiraForm.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if BancodeDados.GradeFinGRADE_ID.Value>0 then
  begin
    if not (gdSelected in State) then
    begin
      if BancodeDados.GradeFinPADRAO.Value=1 then
      DBGrid1.Canvas.Font.Color:=clBlue;
      DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.Columns[datacol].Field, State);
    end;
  end;
end;

procedure TCsGrade_FinanceiraForm.BtNovoClick(Sender: TObject);
begin
  try
    try
      Screen.Cursor := crSQLWait;
      BtNovo.Enabled := False;
      BtOk.Enabled := False;
      BtCancelar.Enabled := False;
      if not Assigned(CadGrade_FinanceiraForm) then
        CadGrade_FinanceiraForm := TCadGrade_FinanceiraForm.create(Application);
      BancodeDados.GradeFin.Append;
      CadGrade_FinanceiraForm.showmodal;
    finally
      FreeAndNil(CadGrade_FinanceiraForm);
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

procedure TCsGrade_FinanceiraForm.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TCsGrade_FinanceiraForm.EditConsultaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  Opcao, csTexto : string;
begin
  if Key = 13 then
  begin
    case CBOpcao.ItemIndex of
      0:
        Opcao := 'grade_id';
      1:
        Opcao := 'descricao';
    end;

  HabilitarBotoes(Self,false);
  Try
    with BancodeDados.GradeFin do
    begin
      Close;
      SQL.Clear;
      SQL.Text:='select * from grade_financeira where 1=1';

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
end;

End.
