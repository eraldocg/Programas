unit BaixaNEfetuada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, ExtCtrls, StdCtrls, DB, DBClient, Grids, DBGrids, jpeg, Menus, 
  Buttons, Mask, SEDDateEdit, SedDBGrid, FireDAC.Stan.Intf, FireDAC.Stan.Option, 
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, 
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, 
  FireDAC.Comp.Client;

type
  TBaixaNEfetuadaForm = class(TForm)
    Panel1: TPanel;
    BtFechar: TButton;
    DBGrid1: TSedDBGrid;
    DsBaixaN: TDataSource;
    Panel2: TPanel;
    Image1: TImage;
    Shape1: TShape;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lbDocumento: TLabel;
    lbTxBanco: TLabel;
    lbAbatimento: TLabel;
    lbDescontos: TLabel;
    Label5: TLabel;
    BaixaN: TFDQuery;
    BaixaNRETORNO_ID: TIntegerField;
    BaixaNNOSSO_NUMERO: TStringField;
    BaixaNNUMERO_ARQUIVO: TIntegerField;
    BaixaNDATA_RECEBIMENTO: TDateField;
    BaixaNDATA_CREDITO: TDateField;
    BaixaNTX_BANCO: TFloatField;
    BaixaNVALOR_DOCUMENTO: TFloatField;
    BaixaNVALOR_MORA: TFloatField;
    BaixaNVALOR_ABATIMENTO: TFloatField;
    BaixaNVALOR_DESCONTO: TFloatField;
    BaixaNDATA_ARQUIVO: TDateField;
    BaixaNVALOR_MULTA: TFloatField;
    BaixaNVALOR_IOF: TFloatField;
    Label6: TLabel;
    Label7: TLabel;
    Dt_Inicial: TSedDateEdit;
    Dt_Final: TSedDateEdit;
    BtExecutar: TSpeedButton;
    MainMenu1: TMainMenu;
    F31: TMenuItem;
    lbContadorN: TLabel;
    Panel3: TPanel;
    rbBaixasN: TRadioButton;
    rbTitulosN: TRadioButton;
    TitulosTmp: TClientDataSet;
    TitulosTmpBOLETO_ID: TIntegerField;
    TitulosTmpVALOR_APAGAR: TCurrencyField;
    TitulosTmpVALOR_INTEGRAL: TCurrencyField;
    TitulosTmpVENCIMENTO: TDateField;
    TitulosTmpEMISSAO: TDateField;
    TitulosTmpSITUACAO_BOLETO: TStringField;
    DTTitulosTmp: TDataSource;
    BaixaNValorIntegral: TCurrencyField;
    TitulosTmpVALOR_PAGO: TCurrencyField;
    BaixaNVALOR_PAGO: TFloatField;
    TitulosTmpRETORNO_ID: TIntegerField;
    TitulosTmpNOSSO_NUMERO: TStringField;
    TitulosTmpDATA_RECEBIMENTO: TDateField;
    TitulosTmpDATA_CREDITO: TDateField;
    TitulosTmpVALOR_DOCUMENTO: TFloatField;
    TitulosTmpVALOR_ABATIMENTO: TFloatField;
    TitulosTmpVALOR_MORA: TFloatField;
    TitulosTmpVL_PAGO_RETORNO: TCurrencyField;
    Label8: TLabel;
    CBOpcao: TComboBox;
    Label9: TLabel;
    CBTipo: TComboBox;
    EditConsulta: TEdit;
    Label11: TLabel;
    cbCampo: TComboBox;
    qryBancos: TFDQuery;
    qryBancosBANCO_ID: TIntegerField;
    qryBancosBANCO_NOME: TStringField;
    BaixaNBANCO_ID: TIntegerField;
    BaixaNBancoNome: TStringField;
    Label12: TLabel;
    CbSituacao: TComboBox;
    Image4: TImage;
    BtImprimir: TButton;
    BaixaNBAIXOU: TIntegerField;
    PopupMenu1: TPopupMenu;
    ttulosreferentesaoretorno1: TMenuItem;
    f51: TMenuItem;
    N1: TMenuItem;
    Localizaremisso1: TMenuItem;
    F61: TMenuItem;
    Label13: TLabel;
    lbJuros: TLabel;
    BaixaNValorAPagar: TCurrencyField;
    BaixaNDATA_VENCIMENTO: TDateField;
    qryPesqBol: TFDQuery;
    BaixaNParcela: TStringField;
    BaixaNVencimento: TDateField;
    BaixaNvlInt: TCurrencyField;
    BaixaNvlAPag: TCurrencyField;
    BaixaNvlPago: TCurrencyField;
    BaixaNtxtAlunos: TStringField;
    btAjuda: TButton;
    BaixaNSEU_NUMERO: TStringField;
    BaixaNTIPO: TSmallintField;
    TitulosTmpRetornoDebAuto: TStringField;
    BaixaNRetornoDebAuto: TStringField;
    BaixaNCOB_DEB: TSmallintField;
    TitulosTmpCLI_ID: TIntegerField;
    TitulosTmpCLIENTE_NOME: TStringField;
    qryPesqBolCLIENTE: TStringField;
    qryPesqBolCLI_ID: TIntegerField;
    qryPesqBolPARCELA: TStringField;
    qryPesqBolVENCIMENTO: TDateField;
    qryPesqBolDESCRICAO: TStringField;
    qryPesqBolVALOR_INTEGRAL: TFloatField;
    qryPesqBolVALOR_APAGAR: TFloatField;
    qryPesqBolVALOR_PAGO: TFloatField;
    BaixaNClienteNome: TStringField;
    BaixaNDescricaoBoleto: TStringField;
    BaixaNNOME_ARQ: TStringField;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure BtExecutarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BaixaNCalcFields(DataSet: TDataSet);
    procedure EditConsultaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BaixaNBeforeOpen(DataSet: TDataSet);
    procedure BtImprimirClick(Sender: TObject);
    procedure Localizaremisso1Click(Sender: TObject);
    procedure BaixaNAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    // procedure ProcurarBoletos;
  end;

var
  BaixaNEfetuadaForm: TBaixaNEfetuadaForm;
  TipoPeriodo, tipoData: String;
  podePesquisarAlunos: Boolean = false;

implementation

uses
  Base, RelArquivoRetorno, VisualizaTitulos, Principal, CsBoletosEmitidos, 
  unImpressao, unRecursos;

{$R *.dfm}

procedure preencheValores;
var
  vlDoc, vlTx, vlAbat, vlDesc, vlJuros: Currency;
begin
  vlDoc := 0;
  vlTx := 0;
  vlAbat := 0;
  vlDesc := 0;
  vlJuros := 0;

  Screen.Cursor := crSQLWait;
  if BaixaNEfetuadaForm.BaixaN.Active then
  begin
    BaixaNEfetuadaForm.BaixaN.DisableControls;
    BaixaNEfetuadaForm.BaixaN.First;
    while not BaixaNEfetuadaForm.BaixaN.Eof do
    begin
      Application.ProcessMessages;
      vlDoc := vlDoc + BaixaNEfetuadaForm.BaixaNVALOR_DOCUMENTO.Value;
      vlTx := vlTx + BaixaNEfetuadaForm.BaixaNTX_BANCO.Value;
      vlAbat := vlAbat + BaixaNEfetuadaForm.BaixaNVALOR_ABATIMENTO.Value;
      vlDesc := vlDesc + BaixaNEfetuadaForm.BaixaNVALOR_DESCONTO.Value;
      vlJuros := vlJuros + BaixaNEfetuadaForm.BaixaNVALOR_MORA.Value;
      BaixaNEfetuadaForm.BaixaN.Next;
    end;
    BaixaNEfetuadaForm.BaixaN.EnableControls;
  end;

  BaixaNEfetuadaForm.lbDocumento.Caption := FormatFloat(',0.00', vlDoc);
  BaixaNEfetuadaForm.lbTxBanco.Caption := FormatFloat(',0.00', vlTx);
  BaixaNEfetuadaForm.lbAbatimento.Caption := FormatFloat(',0.00', vlAbat);
  BaixaNEfetuadaForm.lbDescontos.Caption := FormatFloat(',0.00', vlDesc);
  BaixaNEfetuadaForm.lbJuros.Caption := FormatFloat(',0.00', vlJuros);
  Screen.Cursor := crDefault;
end;

procedure TBaixaNEfetuadaForm.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  vlDoc, vlIntegCalc, vlAPagCalc: Currency;
begin
  if not BaixaN.IsEmpty then
  begin
    if not(gdSelected in State) then
    begin
      vlDoc := BaixaNVALOR_DOCUMENTO.Value;
      vlIntegCalc := BaixaNValorIntegral.Value;
      vlAPagCalc := BaixaNValorAPagar.Value;

      if (vlDoc <> vlIntegCalc) and (vlDoc <> vlAPagCalc) then
        DBGrid1.Canvas.Font.Color := clSilver;

      if BaixaNBAIXOU.Value <> 1 then
        DBGrid1.Canvas.Font.Color := clRed;

      DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.columns[DataCol].field, State);
    end;

    if not odd(BaixaN.RecNo) then // se for ímpar
      if not(gdSelected in State) then // se a célula não está selecionada
      begin
        DBGrid1.Canvas.Brush.Color := $00FFEFDF; // define uma cor de fundo
        DBGrid1.Canvas.FillRect(Rect); // pinta a célula
        DBGrid1.DefaultDrawDataCell(Rect, Column.field, State); // pinta o texto padrão
      end;
  end;

end;

procedure TBaixaNEfetuadaForm.FormShow(Sender: TObject);
begin
  if BaixaN.Active then
  begin
    BaixaN.Last;
    lbContadorN.Caption := 'Total de registros: ' + FormatFloat('000000', BaixaN.RecNo);
    BaixaN.First;
    // ProcurarBoletos;
  end
  else
  begin
    lbContadorN.Caption := 'Total de registros: ' + FormatFloat('000000', 0);
  end;
  preencheValores;
  EditConsulta.SetFocus;
end;

procedure TBaixaNEfetuadaForm.BtExecutarClick(Sender: TObject);
var
  Opcao, csTexto : String;
begin
  HabilitarBotoes(Self, false);
  case cbCampo.ItemIndex of
    0:
      begin
        tipoData := 'data_arquivo';
        TipoPeriodo := 'Período do Arquivo: ';
      end;
    1:
      begin
        tipoData := 'data_recebimento';
        TipoPeriodo := 'Período do Recebimento: ';
      end;
    2:
      begin
        tipoData := 'data_credito';
        TipoPeriodo := 'Período do Crédito: ';
      end;
    3:
      begin
        tipoData := 'data_vencimento';
        TipoPeriodo := 'Período do Vencimento: ';
      end;
  end;

  case CBOpcao.ItemIndex of
    0:
      opcao := 'retorno_id';
    1:
      opcao := 'nosso_numero';
    2:
      opcao := 'numero_arquivo';
    3:
      opcao := 'codigo_cedente';
    4:
      opcao := 'nome_cedente';
    5:
      opcao := 'valor_documento';
    6:
      opcao := 'valor_pago';
    7:
      opcao := 'banco_id';
    8:
      opcao := 'carteira';
  end;

  HabilitarBotoes(Self,false);
  Try
    with BaixaNEfetuadaForm.BaixaN do
    begin
      Close;
      SQL.Clear;
      SQL.Text:='select * from retorno where (' + tipoData + ' between ' + QuotedStr(FormatDateTime('yyyy/mm/dd',Dt_Inicial.DateTime)) + ' and ' + QuotedStr(FormatDateTime('yyyy/mm/dd',Dt_Final.DateTime)) + ')';

      if CbSituacao.ItemIndex > 0 then
      SQL.Add(' and (baixou<>1 or baixou is null)');

      if Trim(EditConsulta.Text)<>EmptyStr then
      begin
        csTexto:= PrincipalForm.csContainingLIKE(Trim(EditConsulta.Text), CBTipo.ItemIndex);
        if Trim(csTexto)<>EmptyStr then
        SQL.Add(' and (UPPER('+Opcao+')'+csTexto+')');
      end;
      SQL.Add(' order by ' + tipoData + ', numero_arquivo');
      Open;

      if IsEmpty then
      begin
        if EditConsulta=Sender then
        Mensagem('Não foi encontrada informação para essa consulta!',mtInformation,[mbok],mrok,0);
        EditConsulta.SetFocus;

        lbDocumento.Caption := FormatFloat(',0.00', 0);
        lbTxBanco.Caption := FormatFloat(',0.00', 0);
        lbAbatimento.Caption := FormatFloat(',0.00', 0);
        lbDescontos.Caption := FormatFloat(',0.00', 0);
        lbContadorN.Caption := 'Total de registros: ' + FormatFloat('000000', 0);
      end else
      begin
        BaixaN.Last;
        lbContadorN.Caption := 'Total de registros: ' + FormatFloat('000000', BaixaN.RecNo);

        preencheValores;
      end;

    end;
  except
    on E : Exception do
    TraduzErro(E.Message);
  end;
  HabilitarBotoes(Self,True);

end;

procedure TBaixaNEfetuadaForm.DBGrid1DblClick(Sender: TObject);
begin
  if BaixaNRETORNO_ID.Value > 0 then
  begin
    Screen.Cursor := crSQLWait;

    BancodeDados.Emissoes.Close;
    BancodeDados.Emissoes.SQL.Text := 'select * from boletos_emissao where banco_id = ' + IntToStr(BaixaNBANCO_ID.Value);

    if (BaixaNTIPO.Value = 2) then // deb. auto
      BancodeDados.Emissoes.SQL.Add(' and emissao_id = ' + Trim(BaixaNSEU_NUMERO.Value))
    else
      BancodeDados.Emissoes.SQL.Add(' and nosso_numero = ' + QuotedStr(BaixaNNOSSO_NUMERO.Value));


    BancodeDados.Emissoes.Open;
    if BancodeDados.Emissoes.IsEmpty then
    begin
      Screen.Cursor := crDefault;
      Mensagem('Não foi encontrada nenhuma emissão referente a este retorno.', mtInformation, [mbok], mrok, 0);
    end
    else
    begin

      if not Assigned(VisualizaTitulosForm) then
        VisualizaTitulosForm := TVisualizaTitulosForm.Create(Application);
      try
        VisualizaTitulosForm.Caption := 'Títulos referentes ao retorno';
        try
          BancodeDados.Boletos.Close;
          BancodeDados.Boletos.SQL.Text := PrincipalForm.SQLrepositorio(0) + ' and b.boleto_id in (' + Trim(BancodeDados.EmissoesID_BOLETOS.Value) + ')';
          BancodeDados.Boletos.Open;
        except
        end;


        Screen.Cursor := crDefault;
        HabilitarBotoes(Self, false);

        VisualizaTitulosForm.ShowModal;
      finally
        BtFechar.Enabled := True;
        VisualizaTitulosForm.Release;
        VisualizaTitulosForm := nil;
        HabilitarBotoes(Self, True);
      end;
    end;
  end;

end;

procedure TBaixaNEfetuadaForm.DBGrid1TitleClick(Column: TColumn);
begin
  BancodeDados.MudaOrdem(BaixaN, Column.field);
end;

procedure TBaixaNEfetuadaForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NextDlgCtl, 0, 0);
  end;
end;

procedure TBaixaNEfetuadaForm.BaixaNCalcFields(DataSet: TDataSet);
var
  vlIntegral, vlAPagar: Currency;
  txtAlunos, txtTmp: String;
begin

  if (BaixaNTIPO.Value = 2) then
    BaixaNRetornoDebAuto.Value := BancodeDados.PegaDescricaoRetornoDebAuto(BaixaNCOB_DEB.Value);

  vlIntegral := 0;
  vlAPagar := 0;
  BancodeDados.Emissoes.Close;
  BancodeDados.Emissoes.SQL.Text := 'select * from boletos_emissao where banco_id = ' + IntToStr(BaixaNBANCO_ID.Value);

  if (BaixaNTIPO.Value = 2) then // deb. auto
    BancodeDados.Emissoes.SQL.Add(' and emissao_id = ' + Trim(BaixaNSEU_NUMERO.Value))
  else
    BancodeDados.Emissoes.SQL.Add(' and nosso_numero = ' + QuotedStr(BaixaNNOSSO_NUMERO.Value));

  BancodeDados.Emissoes.Open;
  if not BancodeDados.Emissoes.IsEmpty then
  begin

    txtTmp := '';
    txtAlunos := '';
    try
      BancodeDados.Boletos.Close;
      BancodeDados.Boletos.SQL.Text := PrincipalForm.SQLrepositorio(0) + ' and b.boleto_id in (' + Trim(BancodeDados.EmissoesID_BOLETOS.Value) + ')';
      BancodeDados.Boletos.Open;
    except
    end;
      txtTmp := '* ';
    end;

    if not BancodeDados.Boletos.IsEmpty then
    begin
      BancodeDados.Boletos.First;
      while not BancodeDados.Boletos.Eof do
      begin
        if Trim(txtAlunos) <> '' then
          txtAlunos := txtAlunos + #13;
        txtAlunos := txtAlunos + 'Cliente: ' + txtTmp + Preenche(BancodeDados.BoletosCLIENTE.Value, 40) + ' - Parc.: ' + Preenche(BancodeDados.BoletosPARCELA.Value, 5) + ' Venc.: ' + FormatDateTime('dd/mm/yyyy', BancodeDados.BoletosVENCIMENTO.Value) +
        ' - Vl. A Pagar: ' + FormatFloat(',0.00', BancodeDados.BoletosVALOR_APAGAR.Value) + ' - Vl. Pago: ' + FormatFloat(',0.00', BancodeDados.BoletosVALOR_PAGO.Value);

        vlIntegral := vlIntegral + BancodeDados.BoletosvlAPagarCalc.Value;
        BancodeDados.Boletos.Next;
      end;
    end;

    BaixaNtxtAlunos.AsString := txtAlunos;




end;

procedure TBaixaNEfetuadaForm.EditConsultaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
  begin
    Key := 0;
    BtExecutar.OnClick(Sender);
  end;
end;

procedure TBaixaNEfetuadaForm.BaixaNBeforeOpen(DataSet: TDataSet);
begin
  if not qryBancos.Active then
    qryBancos.Open;
end;

procedure TBaixaNEfetuadaForm.BtImprimirClick(Sender: TObject);
var
  vlDoc, vlIntegCalc, vlAPagCalc: Currency;
begin
  HabilitarBotoes(Self, false);
  if rbBaixasN.Checked then
  begin
    if BaixaN.IsEmpty then
      Mensagem('Não há informações para serem impressas.', mtInformation, [mbok], mrok, 0)
    else
      try
        BaixaN.DisableControls;
        podePesquisarAlunos := True;
        if not Assigned(RelArquivoRetornoForm) then
          RelArquivoRetornoForm := tRelArquivoRetornoForm.Create(Application);
        RelArquivoRetornoForm.lbTitulo1.Caption := 'Relatório de Arquivo Retorno - Baixa bancária';
        RelArquivoRetornoForm.lbPeriodo2.Caption := TipoPeriodo + (Dt_Inicial.DateTimeStr) + ' a ' + (Dt_Final.DateTimeStr);
        RelArquivoRetornoForm.lbSituacao2.Caption := 'Situação: ' + CbSituacao.Text;
        RelArquivoRetornoForm.lbDescricao2.Caption := '';
        RelArquivoRetornoForm.RLGroup2.DataFields := tipoData;
        BancodeDados.PrepararRel(RelArquivoRetornoForm.RLReport2);
      finally
        RelArquivoRetornoForm.Release;
        RelArquivoRetornoForm := nil;
        podePesquisarAlunos := false;
        BaixaN.EnableControls;
      end;
  end
  else if rbTitulosN.Checked then begin
    Screen.Cursor := crSQLWait;
    with TitulosTmp do
    begin
      if Active then
        Close;
      FileName := DiretorioTemp + 'tittmp.xml';
      CreateDataSet;
      Open;
      IndexFieldNames := 'RETORNO_ID;SITUACAO_BOLETO;VENCIMENTO';
    end;
    BaixaN.DisableControls;

    BaixaN.First;
    while not BaixaN.Eof do
    begin
      Application.ProcessMessages;

      BancodeDados.Emissoes.Close;
      BancodeDados.Emissoes.SQL.Text := 'select * from boletos_emissao where banco_id = ' + IntToStr(BaixaNBANCO_ID.Value) + ' and nosso_numero=' + QuotedStr(BaixaNNOSSO_NUMERO.Value);
      BancodeDados.Emissoes.Open;
      if not BancodeDados.Emissoes.IsEmpty then
      begin

        try
          BancodeDados.Boletos.Close;
          BancodeDados.Boletos.SQL.Text := PrincipalForm.SQLrepositorio(0) + ' and  b.boleto_id in (' + Trim(BancodeDados.EmissoesID_BOLETOS.Value) + ')';
          BancodeDados.Boletos.Open;
        except
        end;
        if BancodeDados.Boletos.IsEmpty then
        begin
          BancodeDados.Boletos.Close;
          BancodeDados.Boletos.SQL.Text := PrincipalForm.SQLrepositorio(0) + ' and  b.cli_id=' + IntToStr(BancodeDados.EmissoesCLI_ID.Value) + ' and b.parcela=' + QuotedStr(BancodeDados.EmissoesPARCELA.Value) + ' and b.emissao_id is not null and b.descricao=' + QuotedStr('Mensalidades');
          BancodeDados.Boletos.Open;
        end;
        if not BancodeDados.Boletos.IsEmpty then
        begin
          BancodeDados.Boletos.First;
          while not BancodeDados.Boletos.Eof do
          begin
            TitulosTmp.Append;

            TitulosTmpRETORNO_ID.Value := BaixaNRETORNO_ID.Value;
            TitulosTmpNOSSO_NUMERO.AsString := BaixaNNOSSO_NUMERO.Value;
            TitulosTmpDATA_RECEBIMENTO.Value := BaixaNDATA_RECEBIMENTO.Value;
            TitulosTmpDATA_CREDITO.Value := BaixaNDATA_CREDITO.Value;
            TitulosTmpVALOR_DOCUMENTO.Value := BaixaNVALOR_DOCUMENTO.Value;
            TitulosTmpVALOR_ABATIMENTO.Value := BaixaNVALOR_ABATIMENTO.Value;
            TitulosTmpVALOR_MORA.Value := BaixaNVALOR_MORA.Value;
            TitulosTmpVL_PAGO_RETORNO.Value := BaixaNVALOR_PAGO.Value;

            TitulosTmpBOLETO_ID.Value := BancodeDados.BoletosBOLETO_ID.Value;
            TitulosTmpCLI_ID.Value    := BancodeDados.BoletosCLI_ID.Value;
            TitulosTmpCLIENTE_NOME.Value := BancodeDados.BoletosCLIENTE.Value;

            vlDoc := BaixaNVALOR_DOCUMENTO.Value;
            vlIntegCalc := BaixaNValorIntegral.Value;
            vlAPagCalc := BaixaNValorAPagar.Value;

            if (vlDoc <> vlIntegCalc) and (vlDoc <> vlAPagCalc) then
              TitulosTmpCLIENTE_NOME.AsString := '* ' + BancodeDados.BoletosCLIENTE.Value
            else
              TitulosTmpCLIENTE_NOME.AsString := BancodeDados.BoletosCLIENTE.Value;

            TitulosTmpCLI_ID.Value := BancodeDados.BoletosCLI_ID.Value;
            TitulosTmpVALOR_APAGAR.Value := BancodeDados.BoletosVALOR_APAGAR.Value;
            TitulosTmpVALOR_INTEGRAL.Value := (BancodeDados.BoletosVALOR_INTEGRAL.Value);
            TitulosTmpVENCIMENTO.Value := BancodeDados.BoletosVENCIMENTO.Value;
            TitulosTmpEMISSAO.Value := BancodeDados.BoletosEMISSAO.Value;
            TitulosTmpSITUACAO_BOLETO.AsString := BancodeDados.BoletosSITUACAO_BOLETO.Value;
            TitulosTmpVALOR_PAGO.Value := BancodeDados.BoletosVALOR_PAGO.Value;
            TitulosTmp.Post;
            BancodeDados.Boletos.Next;
          end;
        end;
      end;

      BaixaN.Next;
    end;

    Screen.Cursor := crDefault;
    if TitulosTmp.IsEmpty then
      Mensagem('Não há informações para serem impressas.', mtInformation, [mbok], mrok, 0)
    else
      try
        if not Assigned(RelArquivoRetornoForm) then
          RelArquivoRetornoForm := tRelArquivoRetornoForm.Create(Application);
        RelArquivoRetornoForm.lbTitulo3.Caption := 'Relatório de Arquivo Retorno - Baixa bancária';
        RelArquivoRetornoForm.lbPeriodo3.Caption := 'Período: ' + (Dt_Inicial.DateTimeStr) + ' a ' + (Dt_Final.DateTimeStr);
        RelArquivoRetornoForm.lbSituacao3.Caption := 'Situação: ' + CbSituacao.Text;
        BaixaN.DisableControls;
        BancodeDados.PrepararRel(RelArquivoRetornoForm.RLReport3);
      finally
        RelArquivoRetornoForm.Release;
        RelArquivoRetornoForm := nil;
        BaixaN.EnableControls;
      end;
    Screen.Cursor := crDefault;
  end;
  HabilitarBotoes(Self, True);
  BaixaN.EnableControls;
end;

procedure TBaixaNEfetuadaForm.Localizaremisso1Click(Sender: TObject);
begin
  if BaixaNRETORNO_ID.Value > 0 then
  begin
    BancodeDados.V_Boletos.Close;
    BancodeDados.V_Boletos.SQL.Text := 'select * from v_boletos where nosso_numero=' + QuotedStr(BaixaNNOSSO_NUMERO.Value);
    BancodeDados.V_Boletos.Open;
    if not BancodeDados.V_Boletos.IsEmpty then
    begin
      try
        if not Assigned(CsBoletosEmitidosForm) then
          CsBoletosEmitidosForm := TCsBoletosEmitidosForm.Create(Application);
        CsBoletosEmitidosForm.contar_registro;
        CsBoletosEmitidosForm.Reimprimirboleto1.Enabled := false;
        CsBoletosEmitidosForm.ShowModal;
      finally
        CsBoletosEmitidosForm.Release;
        CsBoletosEmitidosForm := nil;
      end;
    end
    else
      Mensagem('Não foi encontrado nenhum boleto referente a este título.', mtInformation, [mbok], mrok, 0);
  end;
end;

procedure TBaixaNEfetuadaForm.BaixaNAfterOpen(DataSet: TDataSet);
begin
  BaixaN.EnableControls;
end;

end.
