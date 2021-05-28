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
    Image1: TImage;
    Label2: TLabel;
    Label4: TLabel;
    CBOpcao: TComboBox;
    EditConsulta: TEdit;
    CBTipo: TComboBox;
    procedure FormShow(Sender: TObject);
    procedure EditNomeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BtNovoClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EditConsultaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);

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

procedure TCsGrade_FinanceiraForm.DBGrid1TitleClick(Column: TColumn);
begin
  BancodeDados.MudaOrdem(BancodeDados.GradeFin, Column.Field);
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
