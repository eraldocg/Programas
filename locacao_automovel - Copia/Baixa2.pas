unit Baixa2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Buttons, StdCtrls, Mask, ExtCtrls, jpeg, Db,
  Menus, SEDDateEdit, SEDCurrency;

type
  TBaixa2Form = class(TForm)
    Panel1: TPanel;
    BtBaixar: TButton;
    btCancelar: TButton;
    Label1: TLabel;
    Label7: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label2: TLabel;
    DBText3: TDBText;
    Label10: TLabel;
    Label15: TLabel;
    EditValorIntegral: TSedCurrency;
    EditDesc: TSedCurrency;
    EditJuros: TSedCurrency;
    EditMulta: TSedCurrency;
    EditVlPagar: TSedCurrency;
    EditVlPago: TSedCurrency;
    EditAcres: TSedCurrency;
    CBPagoem: TComboBox;
    Label5: TLabel;
    Dt_Pagar: TSedDateEdit;
    Image1: TImage;
    btJuros: TSpeedButton;
    btMulta: TSpeedButton;
    MainMenu1: TMainMenu;
    F21: TMenuItem;
    F31: TMenuItem;
    Label6: TLabel;
    EditCredito: TSedCurrency;
    chLancCX: TCheckBox;
    chkDesc: TCheckBox;
    F41: TMenuItem;
    rgMulta: TRadioGroup;
    EditConta: TDBLookupComboBox;
    Label4: TLabel;
    rgTipoValor: TRadioGroup;
    btRecBol: TButton;
    EditDiasTol: TSedCurrency;
    Label3: TLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BtBaixarClick(Sender: TObject);
    procedure btJurosClick(Sender: TObject);
    procedure btMultaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure chkDescClick(Sender: TObject);
    procedure rgMultaClick(Sender: TObject);
    procedure chLancCXClick(Sender: TObject);
    procedure rgTipoValorClick(Sender: TObject);
    procedure btRecBolClick(Sender: TObject);
    procedure Dt_PagarAfterAcceptDateTime(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Baixa2Form: TBaixa2Form;
  comitarTransacao: Boolean = true;

implementation

uses Base, Principal, RecBol, unRecursos;

{$R *.dfm}

procedure TBaixa2Form.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure atualizaValores(ApenasSomar: Boolean);
begin
  PrincipalForm.CalcularValorBaixaIndividual(Baixa2Form.Dt_Pagar.DateTime,
    ApenasSomar);

  Baixa2Form.EditAcres.Value := vlTotalAcre;
  Baixa2Form.EditDesc.Value := vlTotalDesc;
  Baixa2Form.EditCredito.Value := vlTotalCredito;
  Baixa2Form.EditJuros.Value := vlTotalJuros;
  Baixa2Form.EditMulta.Value := vlTotalMulta;
  Baixa2Form.EditValorIntegral.Value := vlTotalInteral;
  Baixa2Form.EditVlPagar.Value := vlTotalAPagar;
  Baixa2Form.EditVlPago.Value := vlTotalPago;
end;

procedure TBaixa2Form.FormShow(Sender: TObject);
begin
  AtivaMulta := 1;
  AtivaJuros := 1;
  RetirarDesc := false;
  OpcaoMulta := 0;
  OpcaoTipoValor := 0;
  chkDesc.Checked := RetirarDesc;

  Dt_Pagar.DateTime := date;

  atualizaValores(false);
  try
    BancodeDados.Contas.Close;
    BancodeDados.Contas.SQL.Text :=
      'select * from tipo_contas where conta_id > 0 order by conta';
    BancodeDados.Contas.Open;
    BancodeDados.Contas.Last;
  except
    On E: Exception do
      TraduzErro(E.Message);
  end;
end;

procedure TBaixa2Form.BtBaixarClick(Sender: TObject);
var
  vlDif, vlDifParcelado, vlDifAjuste, vlTotalPagoTmp: Currency;
  IDBol, CliID, BancoID, GradeID, ContaID, qtdTitAjustados: Integer;
  // Juros, Multa : Double;
  Parcela, DescricaoTmp, MsgTmp: String;
  PodeReceber: Boolean;
begin
  try
    PodeReceber := true;
    try
      ContaID := EditConta.KeyValue;
    except
      ContaID := 0;
    end;
    qtdTitAjustados := 0;

    if not(Dt_Pagar.DateTime > 0) then
      Mensagem('Informe uma data valida!', mtInformation, [mbok], mrok, 0)
    else if (chLancCX.Checked) and (ContaID <= 0) then
      Mensagem('Informe a conta de movimentação para o livro caixa.', mtWarning,
        [mbok], mrok, 0)
    else if (EditVlPago.Value <= 0) then
      Mensagem('O valor pago não pode ser menor ou igual a zero.', mtWarning,
        [mbok], mrok, 0)
    else
    begin

      HabilitarBotoes(Self, false);
      Screen.Cursor := crSQLWait;

      if Mensagem('Confirmar o Pagamento?', mtConfirmation, [mbyes, mbno], mrno,
        0) = idyes then
      begin

        BaixandoAutom := true;

        BancodeDados.RecBol.DisableControls;

        vlTotalPagoTmp := EditVlPago.Value;

        vlDifParcelado := 0;
        vlDifAjuste := 0;
        vlDif := vlTotalAPagar - vlTotalPagoTmp;
        if (vlDif > 0) and (vlDif < 0.03) then
          vlDif := 0;
        if (vlDif < 0) and (vlDif > -0.03) then
          vlDif := 0;

        if (vlDif > 0) then
        begin
          vlDifParcelado := StrToCurr(FormatFloat('0.00', vlDif / qtdTitARec));
          vlDifAjuste := (vlDif - (vlDifParcelado * qtdTitARec));

          // ('vlDif: '+CurrToStr(vlDif)+#13+'qtdTitARec: '+IntToStr(qtdTitARec)+#13+'vlDifParcelado: '+CurrToStr(vlDifParcelado)+#13+'vlDifAjuste: '+CurrToStr(vlDifAjuste));

          BancodeDados.RecBol.First;
          while not BancodeDados.RecBol.Eof do
          begin
            if BancodeDados.RecBolSITUACAO_BOLETO.Value = 'A RECEBER' then
            begin
              if (vlDifParcelado >= BancodeDados.RecBolVALOR_APAGAR.Value) then
              begin
                PodeReceber := false;
                // Mensagem('A diferença no recebimento não pode ser maior ou igual ao valor a pagar do título.', mtWarning, [mbOk], mrOk, 0);
                Mensagem('O valor proporcional da diferença está maior do que o valor a pagar da parcela '
                  + BancodeDados.RecBolPARCELA.AsString, mtWarning,
                  [mbok], mrok, 0);
                break;
              end;
            end;
            BancodeDados.RecBol.Next;
          end;

        end;

        if (PodeReceber = true) then
        begin
          if not BancodeDados.FDConnection1.InTransaction then
            BancodeDados.FDConnection1.StartTransaction;

          if (vlDif > 0) then
          begin
            if (vlTotalPagoTmp <> vlTotalPago) then
            begin
              BancodeDados.RecBol.First;
              while not BancodeDados.RecBol.Eof do
              begin
                if BancodeDados.RecBolSITUACAO_BOLETO.Value = 'A RECEBER' then
                begin
                  inc(qtdTitAjustados);
                  BancodeDados.RecBol.Edit;
                  if (qtdTitAjustados = qtdTitARec) then
                  begin
                    // BancodeDados.RecBolVALOR_APAGAR.Value:=BancodeDados.RecBolVALOR_APAGAR.Value - (vlDifParcelado + vlDifAjuste);
                    BancodeDados.RecBolVALOR_PAGO.Value :=
                      BancodeDados.RecBolVALOR_PAGO.Value -
                      (vlDifParcelado + vlDifAjuste);
                    BancodeDados.RecBolOBS.AsString :=
                      FormatDateTime('dd/mm/yyyy', date) +
                      ': Diferença no pagamento de ' + FormatFloat('R$ ,0.00',
                      (vlDifParcelado + vlDifAjuste));
                    // ('vlDifParcelado + vlDifAjuste: '+CurrToStr(vlDifParcelado + vlDifAjuste));
                  end
                  else
                  begin
                    // BancodeDados.RecBolVALOR_APAGAR.Value:=BancodeDados.RecBolVALOR_APAGAR.Value - vlDifParcelado;
                    BancodeDados.RecBolVALOR_PAGO.Value :=
                      BancodeDados.RecBolVALOR_PAGO.Value - vlDifParcelado;
                    BancodeDados.RecBolOBS.AsString :=
                      FormatDateTime('dd/mm/yyyy', date) +
                      ': Diferença no pagamento de ' + FormatFloat('R$ ,0.00',
                      vlDifParcelado);
                    // ('vlDifParcelado: '+CurrToStr(vlDifParcelado));
                  end;
                  BancodeDados.RecBol.Post;
                end;
                BancodeDados.RecBol.Next;
              end;
            end;
          end
          else if (vlDif < 0) then
          begin
            if (vlTotalPagoTmp <> vlTotalPago) then
            begin
              BancodeDados.RecBol.Last;
              while not BancodeDados.RecBol.Bof do
              begin
                if BancodeDados.RecBolSITUACAO_BOLETO.Value = 'A RECEBER' then
                  break;
                BancodeDados.RecBol.Prior;
              end;
              BancodeDados.RecBol.Edit;
              BancodeDados.RecBolOBS.AsString := FormatDateTime('dd/mm/yyyy',
                date) + ': Recebimento a maior de ' + FormatFloat('R$ ,0.00',
                (vlDif * -1));
              BancodeDados.RecBolVALOR_PAGO.Value :=
                BancodeDados.RecBolVALOR_PAGO.Value + (vlDif * -1);
              BancodeDados.RecBol.Post;
            end
            else
            begin
              BancodeDados.RecBol.Last;
              while not BancodeDados.RecBol.Bof do
              begin
                if BancodeDados.RecBolSITUACAO_BOLETO.Value = 'A RECEBER' then
                begin
                  BancodeDados.RecBol.Edit;
                  if (StrToCurr(FormatFloat('0.00',
                    BancodeDados.RecBolVALOR_PAGO.Value))) >
                    (StrToCurr(FormatFloat('0.00',
                    BancodeDados.RecBolVALOR_APAGAR.Value))) then
                    BancodeDados.RecBolOBS.AsString :=
                      FormatDateTime('dd/mm/yyyy', date) +
                      ': Recebimento a maior de ' + FormatFloat('R$ ,0.00',
                      (BancodeDados.RecBolVALOR_PAGO.Value -
                      BancodeDados.RecBolVALOR_APAGAR.Value))
                  else
                    BancodeDados.RecBolOBS.AsString :=
                      FormatDateTime('dd/mm/yyyy', date) +
                      ': Diferença no pagamento de ' + FormatFloat('R$ ,0.00',
                      (BancodeDados.RecBolVALOR_APAGAR.Value -
                      BancodeDados.RecBolVALOR_PAGO.Value));
                  // BancodeDados.RecBolVALOR_PAGO.Value:=BancodeDados.RecBolVALOR_PAGO.Value + (vlDif *-1);
                  BancodeDados.RecBol.Post;
                  // break;
                end;
                BancodeDados.RecBol.Prior;
              end;
            end;
          end;

          BancodeDados.RecBol.First;
          while not BancodeDados.RecBol.Eof do
          begin
            Application.ProcessMessages;

            if BancodeDados.Boletos.Locate('BOLETO_ID',
              BancodeDados.RecBolBOLETO_ID.Value, []) then
            begin
              // if (BancodeDados.BoletosATIVO.Value = true) then begin
              if (BancodeDados.BoletosSITUACAO_BOLETO.Value = 'CRED A RECEBER')
              then
              begin
                BancodeDados.Boletos.Edit;
                // BancodeDados.BoletosUSR_ID.Value:=;
                BancodeDados.BoletosSITUACAO_BOLETO.Value := 'CRED RECEBIDO';
                BancodeDados.BoletosVALOR_PAGO.Value :=
                  BancodeDados.BoletosVALOR_INTEGRAL.Value;
                BancodeDados.BoletosRECEBIMENTO.Value := Dt_Pagar.DateTime;
                // BancodeDados.BoletosDT_CREDITO.Value := BancodeDados.BoletosRECEBIMENTO.Value;  Dt_Pagar.DateTime;   //eraldo 22/03
                BancodeDados.BoletosDT_CREDITO.Value := Dt_Pagar.DateTime;
                BancodeDados.BoletosDESCRICAO_PAGO.Value := CBPagoem.Text;
                BancodeDados.Boletos.Post;
              end
              else if (BancodeDados.BoletosSITUACAO_BOLETO.Value = 'A RECEBER')
              then
              begin

                BancodeDados.Boletos.Edit;
                BancodeDados.BoletosMULTA.Value :=
                  BancodeDados.RecBolMULTA.Value;
                BancodeDados.BoletosJUROS.Value :=
                  BancodeDados.RecBolJUROS.Value;

                // BancodeDados.BoletosVALOR_PAGO.Value:=BancodeDados.RecBolVALOR_APAGAR.Value;
                BancodeDados.BoletosVALOR_PAGO.Value :=
                  BancodeDados.RecBolVALOR_PAGO.Value;
                {
                  if BancodeDados.RecBolCREDITO.Value>0 then begin
                  BancodeDados.RecBol.Edit;
                  if Trim(BancodeDados.RecBolOBS.Value)='' then
                  BancodeDados.RecBolOBS.Value:='Crédito utilizado de '+FormatFloat('R$ ,0.00', BancodeDados.RecBolCREDITO.Value) else
                  BancodeDados.RecBolOBS.Value:='Crédito utilizado de '+FormatFloat('R$ ,0.00', BancodeDados.RecBolCREDITO.Value) + #13 + BancodeDados.RecBolOBS.Value;
                  BancodeDados.RecBol.Post;
                  BancodeDados.BoletosCREDITO.Value:=BancodeDados.RecBolCREDITO.Value;
                  end else BancodeDados.BoletosCREDITO.Value:=0;
                }
                if Trim(BancodeDados.RecBolOBS.AsString) <> '' then
                begin
                  if Trim(BancodeDados.BoletosOBS.AsString) = '' then
                    BancodeDados.BoletosOBS.AsString :=
                      BancodeDados.RecBolOBS.AsString
                  else
                    BancodeDados.BoletosOBS.AsString :=
                      BancodeDados.RecBolOBS.AsString + #13 + #13 +
                      BancodeDados.BoletosOBS.AsString;
                end;

                // BancodeDados.BoletosUSUARIO.Value:=Usuario;
                BancodeDados.BoletosSITUACAO_BOLETO.Value := 'RECEBIDO';
                BancodeDados.BoletosRECEBIMENTO.Value := Dt_Pagar.DateTime;
                // BancodeDados.BoletosDT_CREDITO.Value := BancodeDados.BoletosRECEBIMENTO.Value;
                BancodeDados.BoletosDT_CREDITO.Value := Dt_Pagar.DateTime;
                // eraldo 22/03
                BancodeDados.BoletosDESCRICAO_PAGO.Value := CBPagoem.Text;

                if chLancCX.Checked then
                begin
                  BancodeDados.Livro_Caixa.Close;
                  BancodeDados.Livro_Caixa.SQL.Text :=
                    PrincipalForm.SQLrepositorio(2) + ' and l.boleto_id=' +
                    IntToStr(BancodeDados.BoletosBOLETO_ID.Value);
                  BancodeDados.Livro_Caixa.Open;
                  if BancodeDados.Livro_Caixa.IsEmpty then
                    BancodeDados.Livro_Caixa.Append
                  else
                    BancodeDados.Livro_Caixa.Edit;
                  BancodeDados.Livro_CaixaDESCRICAO.Value :=
                    Copy('Par. ' + BancodeDados.BoletosPARCELA.Value + ' - ' +
                    FormatFloat('000000', BancodeDados.BoletosCLI_ID.Value) +
                    '/' + BancodeDados.BoletosCLIENTE.Value, 1, 60);
                  // BancodeDados.Livro_CaixaDATA.Value := BancodeDados.BoletosRECEBIMENTO.Value;
                  BancodeDados.Livro_CaixaDATA.Value := Dt_Pagar.DateTime;
                  BancodeDados.Livro_CaixaDOCUMENTO.Value :=
                    IntToStr(BancodeDados.BoletosBOLETO_ID.Value);
                  BancodeDados.Livro_CaixaENTRADA.Value :=
                    BancodeDados.BoletosVALOR_PAGO.Value;
                  BancodeDados.Livro_CaixaBOLETO_ID.Value :=
                    BancodeDados.BoletosBOLETO_ID.Value;
                  BancodeDados.Livro_CaixaDESCRICAO_PAGO.Value :=
                    BancodeDados.BoletosDESCRICAO_PAGO.Value;
                  BancodeDados.Livro_CaixaCONTA_ID.Value := ContaID;
                  // BancodeDados.Livro_CaixaINST_ID.Value:=BancodeDados.BoletosINST_ID.Value;
                  BancodeDados.Livro_Caixa.Post;

                  BancodeDados.BoletosCAIXA_ID.Value :=
                    BancodeDados.Livro_CaixaCAIXA_ID.Value;
                end;

                BancodeDados.Boletos.Post;

              end; // a receber
              // end;//ativo
            end; // Locate

            BancodeDados.RecBol.Next;
          end;

          { vlDif:=vlTotalAPagar - vlTotalPagoTmp;
            if (vlDif>0) and (vlDif<0.03) then vlDif:=0;
            if (vlDif<0) and (vlDif>-0.03) then vlDif:=0; }
          if (vlDif > 0) then
            MsgTmp := 'Deseja gerar um título com o valor restante de  ' +
              FormatFloat('R$ ,0.00', vlDif) + '?'
          else if (vlDif < 0) then
            MsgTmp := 'Deseja gerar um crédito com o valor do troco de  ' +
              FormatFloat('R$ ,0.00', vlDif * -1) + '?';

          if (vlDif <> 0) then
          begin
            try
              if Mensagem(MsgTmp, mtConfirmation, [mbyes, mbno], mryes, 0) = idyes
              then
              begin
                IDBol := BancodeDados.BoletosBOLETO_ID.Value;
                CliID := BancodeDados.BoletosCLI_ID.Value;
                BancoID := BancodeDados.BoletosBANCO_ID.Value;
                Parcela := BancodeDados.BoletosPARCELA.Value;
                DescricaoTmp := ' / ' + BancodeDados.BoletosDESCRICAO.Value;
                GradeID := BancodeDados.BoletosGRADE_ID.Value;

                BancodeDados.Boletos.Append;

                BancodeDados.BoletosDESCONTO.Value := 0;
                BancodeDados.BoletosACRESCIMO.Value := 0;

                if vlDif > 0 then
                begin
                  BancodeDados.BoletosDESCRICAO.Value := 'Saldo restante parc. '
                    + Parcela + DescricaoTmp;
                  BancodeDados.BoletosPARCELA.Value := Parcela;
                  BancodeDados.BoletosVALOR_MENSAL.Value := vlDif;
                  BancodeDados.BoletosVALOR_APAGAR.Value := vlDif;
                  BancodeDados.BoletosSITUACAO_BOLETO.Value := 'A RECEBER';
                  MsgTmp := 'Foi gerado um novo título com o saldo restante de R$ '
                    + FormatFloat(',0.00', vlDif);
                end
                else
                begin
                  BancodeDados.BoletosDESCRICAO.Value :=
                    'Créd. ref. ao restante parc. ' + Parcela + DescricaoTmp;
                  BancodeDados.BoletosPARCELA.Value := Parcela;
                  BancodeDados.BoletosVALOR_MENSAL.Value := vlDif * -1;
                  BancodeDados.BoletosVALOR_APAGAR.Value := vlDif * -1;
                  BancodeDados.BoletosSITUACAO_BOLETO.Value := 'CRED A RECEBER';
                  MsgTmp := 'Foi gerado um crédito com o saldo restante de R$ '
                    + FormatFloat(',0.00', vlDif * -1);
                end;

                BancodeDados.BoletosVENCIMENTO.Value := date + 30;
                BancodeDados.BoletosEMISSAO.Value := date;
                BancodeDados.BoletosCLI_ID.Value := CliID;
                // BancodeDados.BoletosUSUARIO.Value:=Usuario;
                BancodeDados.BoletosBANCO_ID.Value := BancoID;
                BancodeDados.BoletosGRADE_ID.Value := GradeID;
                BancodeDados.Boletos.Post;

                BancodeDados.Boletos.Locate('BOLETO_ID', IDBol, []);

                Mensagem(MsgTmp, mtInformation, [mbok], mrok, 0);
              end;
            except
              On E: Exception do
                TraduzErro(E.Message);
            end;
          end; // vlDif

          BaixandoAutom := false;

          BancodeDados.FDConnection1.CommitRetaining;

          // BancodeDados.Boletos.Refresh;
          ModalResult := mrok;
        end; // PodeReceber

      end; // Confirma

    end; // Data

  except
    on E: Exception do
      TraduzErro(E.Message);
  end;
  HabilitarBotoes(Self, true);
  BaixandoAutom := false;
  Screen.Cursor := crDefault;
end;

procedure TBaixa2Form.btJurosClick(Sender: TObject);
begin
  if (AtivaJuros <> 1) then
  begin
    AtivaJuros := 1;
  end
  else
  begin
    AtivaJuros := 0;
  end;
  atualizaValores(false);
end;

procedure TBaixa2Form.btMultaClick(Sender: TObject);
begin
  if (AtivaMulta <> 1) then
  begin
    AtivaMulta := 1;
  end
  else
  begin
    AtivaMulta := 0;
  end;
  atualizaValores(false);
end;

procedure TBaixa2Form.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  BaixandoAutom := false;
  AtivaMulta := 0;
  AtivaJuros := 0;
  RetirarDesc := false;
  OpcaoMulta := 0;
end;

procedure TBaixa2Form.chkDescClick(Sender: TObject);
begin
  RetirarDesc := chkDesc.Checked;
  atualizaValores(false);
end;

procedure TBaixa2Form.rgMultaClick(Sender: TObject);
begin
  OpcaoMulta := rgMulta.ItemIndex;
  atualizaValores(false);
end;

procedure TBaixa2Form.chLancCXClick(Sender: TObject);
begin
  if chLancCX.Checked = true then
  begin
    EditConta.Enabled := true;
  end
  else
  begin
    if PrincipalForm.LiberaAcesso then
    begin
      EditConta.Enabled := false;
    end
    else
    begin
      EditConta.Enabled := true;
      chLancCX.Checked := true;
    end;
  end;
end;

procedure TBaixa2Form.rgTipoValorClick(Sender: TObject);
begin
  OpcaoTipoValor := rgTipoValor.ItemIndex;
  atualizaValores(false);
end;

procedure TBaixa2Form.btRecBolClick(Sender: TObject);
begin
  try
    try
      HabilitarBotoes(Self, false);
      if not Assigned(RecBolForm) then
        RecBolForm := TRecBolForm.Create(Application);
      RecBolForm.lbDtReceb.Caption := 'Data de recebimento: ' +
        FormatDateTime('dd/mm/yyyy', Dt_Pagar.DateTime);
      RecBolForm.lbVlTotal.Caption := FormatFloat('R$ ,0.00',
        vlTotalAPagar + vlTotalCredito);
      RecBolForm.lbTotalAPagar.Caption :=
        FormatFloat('R$ ,0.00', vlTotalAPagar);
      RecBolForm.lbTotalPago.Caption := FormatFloat('R$ ,0.00', vlTotalPago);
      RecBolForm.lbTotalCreditos.Caption :=
        FormatFloat('R$ ,0.00', vlTotalCredito);
      RecBolForm.ShowModal;
      atualizaValores(true);
      EditVlPago.SetFocus;
    finally
      RecBolForm.Release;
      RecBolForm := nil;
      HabilitarBotoes(Self, true);
    end;
  except
    On E: Exception do
      TraduzErro(E.Message);
  end;
end;

procedure TBaixa2Form.Dt_PagarAfterAcceptDateTime(Sender: TObject);
begin
  atualizaValores(false);
end;

end.
