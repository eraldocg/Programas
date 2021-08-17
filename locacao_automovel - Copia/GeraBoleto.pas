unit GeraBoleto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Menus, Mask,
  Buttons, Provider, DB, Grids, DBGrids,
  SEDDateEdit, SEDCurrency, DBClient, SedDBGrid, Vcl.DBCtrls;

type
  TGeraBoletoForm = class(TForm)
    Image1: TImage;
    Panel1: TPanel;
    BtOK: TButton;
    BtFechar: TButton;
    BTBanco: TSpeedButton;
    Label1: TLabel;
    BTGrade: TSpeedButton;
    Label2: TLabel;
    lbBanco: TLabel;
    lbGrade: TLabel;
    Editbanco: TSedCurrency;
    EditGrade: TSedCurrency;
    MainMenu1: TMainMenu;
    F21: TMenuItem;
    F31: TMenuItem;
    Label5: TLabel;
    EditEmissao: TSedDateEdit;
    Temp: TClientDataSet;
    TempVENCIMENTO: TDateField;
    TempVALOR_MENSAL: TCurrencyField;
    BTSimular: TSpeedButton;
    BTApagar: TSpeedButton;
    Label6: TLabel;
    DBGrid1: TSedDBGrid;
    DTTemp: TDataSource;
    EditVencimento: TSedDateEdit;
    Label3: TLabel;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    EditVlLicenca: TSedCurrency;
    Label8: TLabel;
    EditQtdLicenca: TSedCurrency;
    GroupBox2: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    EditVlMensal: TSedCurrency;
    EditQtdMensal: TSedCurrency;
    TempOBS: TMemoField;
    TempVALOR_LIC: TCurrencyField;
    Label4: TLabel;
    EditDesc: TEdit;
    memoObs: TMemo;
    Label11: TLabel;
    Label13: TLabel;
    EditQtdMenor: TSedCurrency;
    TempDESCONTO: TCurrencyField;
    Label12: TLabel;
    EditVlDesct: TSedCurrency;
    TempPARCELA: TStringField;
    procedure BTBancoClick(Sender: TObject);
    procedure BTGradeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BTApagarClick(Sender: TObject);
    procedure BTSimularClick(Sender: TObject);
    procedure TempBeforeInsert(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BtOKClick(Sender: TObject);
    procedure TempAfterDelete(DataSet: TDataSet);
    procedure TempBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  GeraBoletoForm: TGeraBoletoForm;
  PodeInserir: Boolean = False;

implementation

uses CsBancos, Base, Principal, CsGrade_Financeira, unRecursos;

{$R *.dfm}

procedure TGeraBoletoForm.BTBancoClick(Sender: TObject);
begin
  try
    try
      if not assigned(CsBancosForm) then
        CsBancosForm := tCsBancosForm.Create(Application);
      if CsBancosForm.showmodal = mrok then
      begin
        Editbanco.Value := BancodeDados.BancosBANCO_ID.Value;
        lbBanco.Caption := BancodeDados.BancosBANCO_NOME.Value;
      end;
    finally
      CsBancosForm.Release;
      CsBancosForm := nil;
    end;
  except
    on E: Exception do
      TraduzErro(E.Message);
  end;
end;

procedure TGeraBoletoForm.BTGradeClick(Sender: TObject);
begin
  try
    try
      if not assigned(CsGrade_FinanceiraForm) then
        CsGrade_FinanceiraForm := tCsGrade_FinanceiraForm.Create(Application);
      if CsGrade_FinanceiraForm.showmodal = mrok then
      begin
        EditGrade.Value := BancodeDados.GradeFinGRADE_ID.Value;
        lbGrade.Caption := BancodeDados.GradeFinDESCRICAO.Value;
      end;
    finally
      CsGrade_FinanceiraForm.Release;
      CsGrade_FinanceiraForm := nil;
    end;
  except
    on E: Exception do
      TraduzErro(E.Message);
  end;
end;

procedure TGeraBoletoForm.FormShow(Sender: TObject);
begin
  lbBanco.Caption := '';
  lbGrade.Caption := '';
  EditEmissao.DateTime := Date;
  EditVencimento.DateTime := Date;
end;

procedure TGeraBoletoForm.BTApagarClick(Sender: TObject);
begin
  if not Temp.IsEmpty then
    Temp.Delete;
end;

procedure TGeraBoletoForm.BTSimularClick(Sender: TObject);
var
  i, qtdLic, qtdMensal, qtdMenor, qtdMaior, ivencimento: integer;
  vlParcela, vlTotalTmp, vlDif: Currency;
  vlLic, vlMensal: variant;
  Validar: Boolean;

begin
  Validar := true;

  if not(Editbanco.Value > 0) then
  begin
    HabilitarBotoes(Self, False);
    Mensagem('Informe um banco válido.', mtInformation, [mbOk], mrok, 0);
    HabilitarBotoes(Self, true);
    Editbanco.SetFocus;
    Validar := False;
  end
  else if not(EditGrade.Value > 0) then
  begin
    HabilitarBotoes(Self, False);
    Mensagem('Informe uma grade financeira válida.', mtInformation,
      [mbOk], mrok, 0);
    HabilitarBotoes(Self, true);
    EditGrade.SetFocus;
    Validar := False;
  end
  else if not(EditVlMensal.Value > 0) then
  begin
    HabilitarBotoes(Self, False);
    Mensagem('Informe o valor da parcela.', mtInformation, [mbOk], mrok, 0);
    HabilitarBotoes(Self, true);
    EditVlMensal.SetFocus;
    Validar := False;
  end;

  if Validar then
  begin

    with Temp do
    begin
      if active then
        close;
      FileName := DiretorioTemp + 'fin.xml';
      CreateDataSet;
      Open;
    end;

    qtdLic := EditQtdLicenca.AsInteger;
    qtdMensal := EditQtdMensal.AsInteger;
    qtdMenor := EditQtdMenor.AsInteger;

    qtdMaior := qtdMensal;
    if qtdLic > qtdMensal then
      qtdMaior := qtdLic;

    vlLic := VarArrayCreate([1, qtdMaior], varVariant);
    vlMensal := VarArrayCreate([1, qtdMaior], varVariant);

    // for i := 1 to qtdMaior do
    for i := qtdMenor to qtdMaior do
    begin
      vlLic[i] := 0;
      vlMensal[i] := 0;
    end;

    if (qtdLic > 0) then
    begin
      vlParcela := StrToCurr(FormatFloat('0.00', EditVlLicenca.Value / qtdLic));
      vlTotalTmp := vlParcela * qtdLic;
      vlDif := EditVlLicenca.Value - vlTotalTmp;
      for i := 1 to qtdLic do
      begin
        if (i = qtdLic) then
        begin
          vlLic[i] := vlParcela + vlDif;
        end
        else
        begin
          vlLic[i] := vlParcela;
        end;
      end;
    end;

    if (qtdMensal > 0) then
    begin
      vlParcela := StrToCurr(FormatFloat('0.00', EditVlMensal.Value));
      // vlTotalTmp:=vlParcela * qtdMensal;
      // vlDif:=EditVlMensal.Value - vlTotalTmp;
      // for i := 1 to qtdMensal do
      for i := qtdMenor to qtdMensal do
      begin
        // if (i = qtdMensal) then begin
        // vlMensal[i]:=vlParcela + vlDif;
        // end else begin
        vlMensal[i] := vlParcela;
        // end;
      end;
    end;

    PodeInserir := true;
    ivencimento := 0;
    // for i := 1 to qtdMaior do
    for i := qtdMenor to qtdMensal do
    begin
      inc(ivencimento);
      Temp.Append;
      TempPARCELA.Value := FormatFloat('00', i) + '/' +
        FormatFloat('00', qtdMaior);
      TempDESCONTO.Value := EditVlDesct.Value;

      // TempVENCIMENTO.Value := PegaData(EditVencimento.DateTime, i);
      TempVENCIMENTO.Value := PegaData(EditVencimento.DateTime, ivencimento);

      TempVALOR_MENSAL.Value := vlMensal[i];
      TempVALOR_LIC.Value := vlLic[i];

      if (vlLic[i] > 0) then
      begin
        if Trim(TempOBS.AsString) = '' then
          TempOBS.AsString := 'Adesão: ' + FormatFloat('R$ ,0.00', vlLic[i])
          { +', parcela ' + FormatFloat('00', i) + '/' + FormatFloat('00', qtdLic) }
        else
          TempOBS.AsString := TempOBS.AsString + #13 + 'Adesão: ' +
            FormatFloat('R$ ,0.00', vlLic[i]);
        // +', parcela ' + FormatFloat('00', i) + '/' + FormatFloat('00', qtdLic);
      end;

      if (vlMensal[i] > 0) then
      begin
        if Trim(TempOBS.AsString) = '' then
          TempOBS.AsString := 'Mensalidade: ' + FormatFloat('R$ ,0.00',
            vlMensal[i])
          { +', parcela ' + FormatFloat('00', i) + '/' + FormatFloat('00', qtdMensal) }
        else
          TempOBS.AsString := TempOBS.AsString + #13 + 'Mensalidade: ' +
            FormatFloat('R$ ,0.00', vlMensal[i]);
        // +', parcela ' + FormatFloat('00', i) + '/' + FormatFloat('00', qtdMensal);
      end;

      Temp.Post;
    end;
    PodeInserir := False;
  end;

end;

procedure TGeraBoletoForm.TempBeforeInsert(DataSet: TDataSet);
begin
  if not PodeInserir then
    abort;
end;

procedure TGeraBoletoForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and not(ActiveControl is TMemo) then
  begin
    Key := #0;
    Perform(WM_NextDlgCtl, 0, 0);
  end;
end;

procedure TGeraBoletoForm.BtOKClick(Sender: TObject);
begin
  if Temp.IsEmpty then
    Mensagem('Não há informações para serem geradas.', mtInformation,
      [mbOk], mrok, 0)
  else if (Editbanco.Value <= 0) or (EditGrade.Value <= 0) then
    Mensagem('Banco ou Grade Financeira não encontrado(a)!', mtInformation,
      [mbOk], mrok, 0)
  else
  begin
    if not BancodeDados.FDConnection1.InTransaction then
      BancodeDados.FDConnection1.StartTransaction;

    Screen.Cursor := crSQLWait;
    Temp.First;
    while not Temp.Eof do
    begin
      BancodeDados.Boletos.Append;
      if Trim(EditDesc.Text) <> '' then
        BancodeDados.BoletosDESCRICAO.Value := EditDesc.Text;
      BancodeDados.BoletosPARCELA.Value := TempPARCELA.Value;
      BancodeDados.BoletosVALOR_MENSAL.Value := TempVALOR_MENSAL.Value;
      BancodeDados.BoletosVALOR_LIC.Value := TempVALOR_LIC.Value;
      BancodeDados.BoletosVALOR_APAGAR.Value := TempVALOR_MENSAL.Value +
        TempVALOR_LIC.Value;
      BancodeDados.BoletosVENCIMENTO.Value := TempVENCIMENTO.Value;

      if TempDESCONTO.Value > 0 then
        BancodeDados.BoletosDESCONTO.Value := TempDESCONTO.Value;

      BancodeDados.BoletosEMISSAO.Value := EditEmissao.DateTime;

      if (Trim(memoObs.Lines.Text) <> '') then
        BancodeDados.BoletosOBS_BOLETO.AsString := Trim(memoObs.Lines.Text)
      else
        BancodeDados.BoletosOBS_BOLETO.AsString := TempOBS.AsString;

      BancodeDados.BoletosBANCO_ID.Value := Editbanco.AsInteger;
      BancodeDados.BoletosGRADE_ID.Value := EditGrade.AsInteger;
      BancodeDados.BoletosCLI_ID.Value := BancodeDados.ClientesCLI_ID.Value;
      BancodeDados.Boletos.Post;
      Temp.Next;
    end;

    BancodeDados.FDConnection1.Commit;

    if not BancodeDados.Clientes.active then
      BancodeDados.Clientes.Open();
    if not BancodeDados.Boletos.active then
      BancodeDados.Boletos.Open();

    BancodeDados.Clientes.Locate('CLI_ID', CodigoCliente, []);

    Screen.Cursor := crDefault;
    close;
  end;
end;

procedure TGeraBoletoForm.TempAfterDelete(DataSet: TDataSet);
begin
  Temp.First;
  while not Temp.Eof do
  begin
    Application.ProcessMessages;
    Temp.Edit;
    TempPARCELA.Value := FormatFloat('00', Temp.RecNo) + '/' +
      FormatFloat('00', Temp.RecordCount);
    Temp.Post;
    Temp.Next;
  end;
end;

procedure TGeraBoletoForm.TempBeforeDelete(DataSet: TDataSet);
begin
  if Mensagem('Deseja excluir?', mtConfirmation, [mbYes, mbNo], mrNo, 0) = idNo
  then
    abort;
end;

end.
