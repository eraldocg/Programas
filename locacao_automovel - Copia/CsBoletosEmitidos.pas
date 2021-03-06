unit CsBoletosEmitidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, StdCtrls, jpeg, Menus, db, Buttons, RLReport, Mask,
  SEDDateEdit, SedDBGrid, DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TCsBoletosEmitidosForm = class(TForm)
    Panel1: TPanel;
    BtOk: TButton;
    BtFechar: TButton;
    MainMenu1: TMainMenu;
    F31: TMenuItem;
    lbPainelAt: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    BtExecutar: TSpeedButton;
    Label4: TLabel;
    cbCampo: TComboBox;
    Dt_Inicial: TSedDateEdit;
    Dt_Final: TSedDateEdit;
    DBGrid1: TSedDBGrid;
    CBOpcao: TComboBox;
    EditConsulta: TEdit;
    CBTipo: TComboBox;
    btImprimir: TButton;
    Label1: TLabel;
    cbSituacao: TComboBox;
    PopupMenu1: TPopupMenu;
    Reimprimirboleto1: TMenuItem;
    QryBoletos: TFDQuery;
    QryBoletosBOLETO_ID: TIntegerField;
    QryBoletosINST_ID: TIntegerField;
    VisualizarBoletos1: TMenuItem;
    F81: TMenuItem;
    Label5: TLabel;
    Label6: TLabel;
    N2: TMenuItem;
    VisualizarRetorno1: TMenuItem;
    F91: TMenuItem;
    N3: TMenuItem;
    BaixarBoleto1: TMenuItem;
    lbContadorN: TLabel;
    f41: TMenuItem;
    ckPeriodo: TCheckBox;
    chTodos: TCheckBox;
    N4: TMenuItem;
    CancelarBoleto1: TMenuItem;
    N5: TMenuItem;
    EstornarBoleto1: TMenuItem;
    f61: TMenuItem;
    N6: TMenuItem;
    Reativarboleto1: TMenuItem;
    SpeedButton1: TSpeedButton;
    btReImp: TButton;
    AlterandooVencimentodoBoleto1: TMenuItem;
    N7: TMenuItem;
    qryBanco: TFDQuery;
    qryBancoBANCO_NOME: TStringField;
    qryBancoBANCO_ID: TIntegerField;
    qryBancoCODIGO_BANCO: TIntegerField;
    qryBancoBAIX_BOL_PARAM: TSmallintField;
    qryBancoLAYOUT: TSmallintField;
    EnviarremessacomEntradaRejeitadanaprximaremessa1: TMenuItem;
    OcorrnciasdeRetorno1: TMenuItem;
    Label7: TLabel;
    CbRemessa: TComboBox;
    N8: TMenuItem;
    AlteraosDiasparaBaixaDevoluo1: TMenuItem;
    lbContaBancaria: TLabel;
    cbContaBanco: TComboBox;
    ChkBolValidos: TCheckBox;
    lbTipRec: TLabel;
    CbTipoReceb: TComboBox;
    Label12: TLabel;
    Image1: TImage;
    procedure FormShow(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure EditNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Dt_FinalExit(Sender: TObject);
    procedure BtExecutarClick(Sender: TObject);
    procedure EditConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btImprimirClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure VisualizarBoletos1Click(Sender: TObject);
    procedure VisualizarRetorno1Click(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BaixarBoleto1Click(Sender: TObject);
    procedure EditConsultaDblClick(Sender: TObject);
    procedure chTodosClick(Sender: TObject);
    procedure CancelarBoleto1Click(Sender: TObject);
    procedure EstornarBoleto1Click(Sender: TObject);
    procedure cbSituacaoChange(Sender: TObject);
    procedure Reativarboleto1Click(Sender: TObject);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure btReImpClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EnviarremessacomEntradaRejeitadanaprximaremessa1Click
      (Sender: TObject);
    procedure OcorrnciasdeRetorno1Click(Sender: TObject);
    procedure CbRemessaChange(Sender: TObject);
    procedure AlteraosDiasparaBaixaDevoluo1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Reimprimirboleto1Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    situacao: String;
    procedure contar_registro;

  end;

var
  CsBoletosEmitidosForm: TCsBoletosEmitidosForm;
  CodigoEmissao: Integer = 0;

implementation

uses
  Base, Principal, relBoletosEmitidos, RelCarneCaixa, VisualizaTitulos,
  VisualizaRetorno, unImpressao, Boletos1, CsOcorrenciasRet, AltDiasBaixaDev,
  unRecursos, Baixa2, CsClientes;

{$R *.dfm}

procedure TCsBoletosEmitidosForm.FormShow(Sender: TObject);
var
  Ano, Mes, Dia: Word;
begin
  Dt_Final.DateTime := date;

  DecodeDate(date, Ano, Mes, Dia);
  Dt_Inicial.DateTime := EncodeDate(Ano, Mes, 1);
  if lbPainelAt.Enabled then
    EditConsulta.SetFocus;

  Height := 532;
  width := 723;

  try

    Screen.Cursor := crSQLWait;

    cbContaBanco.Items.Clear;

    BancodeDados.Bancos.Close;
    BancodeDados.Bancos.SQL.Text :=
      'select * from bancos where codigo_banco>0 and coalesce(cont_encerrada,0)= 0 and codigo_cedente <> '
      + QuotedStr('') + ' order by BANCO_NOME';
    BancodeDados.Bancos.Open;
    BancodeDados.Bancos.Last;

    BancodeDados.Bancos.First;

    cbContaBanco.Items.Add('TODAS');
    while not BancodeDados.Bancos.Eof do
    begin
      cbContaBanco.Items.Add(FormatFloat('000000',
        BancodeDados.BancosBANCO_ID.AsInteger) + ' - ' +
        (BancodeDados.BancosBANCO_NOME.Value));
      BancodeDados.Bancos.Next;
    end; // while

    // if IndexBanco < 0 then
    // IndexBanco := 0;

    // cbContaBanco.ItemIndex := IndexBanco;
    cbContaBanco.ItemIndex := 0;
  finally
    Screen.Cursor := crDefault;
  end;

end;

procedure TCsBoletosEmitidosForm.OcorrnciasdeRetorno1Click(Sender: TObject);
var
  NossoNum: string;

begin

  if not BancodeDados.V_Boletos.IsEmpty then
  begin
    HabilitarBotoes(self, false);
    try
      if not assigned(CsOcorrenciasRetForm) then
        CsOcorrenciasRetForm := tCsOcorrenciasRetForm.create(application);
      NossoNum := '';
      CodigoEmissao := BancodeDados.V_BoletosEMISSAO_ID.Value;

      BancodeDados.V_Boletos.DisableControls;
      BancodeDados.V_Boletos.First;
      while not BancodeDados.V_Boletos.Eof do
      begin
        if BancodeDados.V_BoletosATIVO.AsBoolean then
        begin
          if trim(BancodeDados.V_BoletosNOSSO_NUMERO.Value) <> '' then
            if trim(NossoNum) = '' then
              NossoNum := QuotedStr(BancodeDados.V_BoletosNOSSO_NUMERO.Value)
            else
              NossoNum := NossoNum + ',' +
                QuotedStr(BancodeDados.V_BoletosNOSSO_NUMERO.Value);
        end;
        BancodeDados.V_Boletos.Next;
      end;
      BancodeDados.V_Boletos.EnableControls;

      BancodeDados.V_Boletos.Locate('EMISSAO_ID', CodigoEmissao, []);

      BancodeDados.Retorno_Ocor.Close;
      BancodeDados.Retorno_Ocor.SQL.Text :=
        'select * from retorno_ocorrencia where 1=1';
      BancodeDados.Retorno_Ocor.SQL.Add(' and banco_id = ' +
        IntToStr(BancodeDados.V_BoletosBANCO_ID.Value));
      if trim(NossoNum) = '' then
        BancodeDados.Retorno_Ocor.SQL.Add(' and nosso_numero = ' +
          QuotedStr(BancodeDados.V_BoletosNOSSO_NUMERO.Value))
      else
        BancodeDados.Retorno_Ocor.SQL.Add(' and nosso_numero in (' +
          (NossoNum) + ')');
      BancodeDados.Retorno_Ocor.Open;

      if not BancodeDados.Retorno_Ocor.IsEmpty then
      begin

        CsOcorrenciasRetForm.ttulosreferentesaoretorno1.Enabled := false;
        CsOcorrenciasRetForm.Localizaremisso1.Enabled := false;
        // CsOcorrenciasRetForm.cbTipBanco.Enabled                :=False;
        CsOcorrenciasRetForm.BtExecutar.Enabled := false;
        CsOcorrenciasRetForm.lbPainelAt.Enabled := false;
        CsOcorrenciasRetForm.btImprimirClick(Sender);

      end
      else
      begin

        Mensagem('Ocorrência não encontrada! Processe o arquivo retorno correspondente ao período do registro.',
          mtInformation, [mbOk], mrOk, 0);
      end;

    finally
      CsOcorrenciasRetForm.Release;
      CsOcorrenciasRetForm := nil;
      HabilitarBotoes(self, true);
    end;

  end
  else

end;

procedure TCsBoletosEmitidosForm.DBGrid1TitleClick(Column: TColumn);
begin
  BancodeDados.MudaOrdem(BancodeDados.V_Boletos, Column.Field);
end;

procedure TCsBoletosEmitidosForm.EditNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_DOWN) and not(ActiveControl is TDBGrid) then
    DBGrid1.SetFocus;
end;

procedure TCsBoletosEmitidosForm.
  EnviarremessacomEntradaRejeitadanaprximaremessa1Click(Sender: TObject);
var
  IDEmissao: String;
  PodeIR: Boolean;
begin

  IDEmissao := BancodeDados.PegarAtivo(listaV_Boletos);
  PodeIR := false;
  if (IDEmissao <> '') then
  begin
    if Mensagem
      ('Tem certeza que deseja enviar nova remessa deste(s) boleto(s)?',
      mtConfirmation, [mbyes, mbno], mrNo, 0) = idyes then
    begin
      PodeIR := true;
      // PrincipalForm.LiberaAcesso(72, 'Processar arquivos de retorno');

      if PodeIR then
      begin
        BancodeDados.V_Boletos.First;
        while not BancodeDados.V_Boletos.Eof do
        begin
          application.ProcessMessages;

          if (BancodeDados.V_BoletosATIVO.Value = true) then
            if (BancodeDados.V_BoletosCOD_MOV.Value <> 2) and
              (BancodeDados.V_BoletosCANCELADO.Value <> 1) and
              (trim(BancodeDados.V_BoletosSITUACAO_BOLETO.Value) = 'A RECEBER')
              and (BancodeDados.V_BoletosVENCIMENTO.Value >
              PrincipalForm.DataServidor) then
            begin
              BancodeDados.Adiciona.SQL.Text :=
                'update boletos_emissao set remessa = null, retorno_id = null, dt_proces='
                + QuotedStr(FormatDateTime('yyyy/mm/dd',
                PrincipalForm.DataServidor)) +
                ' where coalesce(COD_MOV,0)=0 and coalesce(ALT_VIA_BANCO,0)=0 and VENCIMENTO >'
                + QuotedStr(FormatDateTime('yyyy/mm/dd',
                PrincipalForm.DataServidor)) + ' and emissao_id = ' +
                IntToStr(BancodeDados.V_BoletosEMISSAO_ID.Value) +
                ' and SITUACAO_BOLETO = (' + QuotedStr('A RECEBER') + ')';
              BancodeDados.Adiciona.ExecSQL;

            end;

          BancodeDados.V_Boletos.Next;
        end;

        if not BancodeDados.FDConnection1.InTransaction then
          BancodeDados.FDConnection1.StartTransaction;

        BancodeDados.FDConnection1.CommitRetaining;

        BancodeDados.V_Boletos.Close;
        BancodeDados.V_Boletos.Open;
        Mensagem('Processo concluído com sucesso!'#13#13 +
          'Obs.: Apenas boleto com vencimento acima da data atual será enviado na remessa!',
          mtInformation, [mbOk], mrOk, 0);

      end;
    end;

  end
  else
  begin
    Mensagem('Selecione algum boleto antes de prosseguir.', mtInformation,
      [mbOk], mrOk, 0);
  end;

end;

procedure TCsBoletosEmitidosForm.EstornarBoleto1Click(Sender: TObject);
var
  podePassar, dataAnterior: Boolean;
  idsReceb, linha, sqlTemp, idsCaixa: String;

  procedure ExecutarEstornar;
  begin
    if ((BancodeDados.BoletosSITUACAO_BOLETO.Value = 'RECEBIDO') Or
      (BancodeDados.BoletosSITUACAO_BOLETO.Value = 'CANCELADO') Or
      (BancodeDados.BoletosSITUACAO_BOLETO.Value = 'ISENTO') Or
      (BancodeDados.BoletosSITUACAO_BOLETO.Value = 'RENEGOCIADO')) then
    begin
      if not(BancodeDados.Boletos.State in [dsEdit, dsinsert]) then
        BancodeDados.Boletos.Edit;
      if (BancodeDados.BoletosSITUACAO_BOLETO.Value = 'ISENTO') then
      begin
        BancodeDados.BoletosDESCONTO.Clear;
        BancodeDados.BoletosVALOR_APAGAR.Value :=
          (BancodeDados.BoletosVALOR_INTEGRAL.Value +
          BancodeDados.BoletosACRESCIMO.Value +
          BancodeDados.BoletosACRESC_EXTRA.Value) -
          BancodeDados.BoletosDESCONTO.Value;
        if not(BancodeDados.BoletosVALOR_APAGAR_ORIG.Value > 0) then
          BancodeDados.BoletosVALOR_APAGAR_ORIG.Value :=
            BancodeDados.BoletosVALOR_APAGAR.Value;
      end;
      // if (BancodeDados.BoletosSITUACAO_BOLETO.Value='CRED RECEBIDO') then
      // BancodeDados.BoletosSITUACAO_BOLETO.Value:='CRED A RECEBER' else
      BancodeDados.BoletosSITUACAO_BOLETO.Value := 'A RECEBER';
      // BancodeDados.BoletosUSUARIO.Value := Usuario;
      // BancodeDados.BoletosOBSERVACAO_1.AsString := 'O título foi estornado pelo usuário: ' + NomeSupervisor + ' na seguinte data - hora: ' + DateToStr(Date) + ' - ' + TimeToStr(Time);
      // if Trim(BancodeDados.BoletosOBS_ESTORNO.AsString) = '' then
      // BancodeDados.BoletosOBS_ESTORNO.AsString := 'O título foi estornado pelo usuário: ' + NomeSupervisor + ' na seguinte data - hora: ' + DateToStr(Date) + ' - ' + TimeToStr(Time)
      // else
      // BancodeDados.BoletosOBS_ESTORNO.AsString := 'O título foi estornado pelo usuário: ' + NomeSupervisor + ' na seguinte data - hora: ' + DateToStr(Date) + ' - ' + TimeToStr(Time) + #13 + #13 + BancodeDados.BoletosOBS_ESTORNO.AsString;
      BancodeDados.BoletosJUROS.Clear;
      BancodeDados.BoletosMULTA.Clear;
      BancodeDados.BoletosRECEBIMENTO.Clear;
      // BancodeDados.BoletosHORA_RECEB.Clear;
      BancodeDados.BoletosVALOR_PAGO.Clear;
      // BancodeDados.BoletosLOJA_ID.Value := 0;
      BancodeDados.BoletosOP_PAG_ID.Clear;
      // BancodeDados.BoletosID_PAGAR.Clear;
      BancodeDados.BoletosRECEB_ID.Clear;
      BancodeDados.Boletos.Post;

      BancodeDados.Adiciona.SQL.Text :=
        'update livro_caixa set cancelado = 1 where boleto_id = ' +
        IntToStr(BancodeDados.BoletosBOLETO_ID.Value);
      BancodeDados.Adiciona.ExecSQL;
    end;
  end;

begin
  if (BancodeDados.V_BoletosEMISSAO_ID.Value > 0) then
  begin
    Screen.Cursor := crSQLWait;
    HabilitarBotoes(self, false);

    BancodeDados.V_Boletos.First;
    while not BancodeDados.V_Boletos.Eof do
    begin
      application.ProcessMessages;

      if (BancodeDados.V_BoletosATIVO.Value = true) then
      begin
        if (BancodeDados.V_BoletosDATA_RECEBIMENTO.Value > 0) then
        begin
          podePassar := false;

          qryBanco.Close;
          qryBanco.Params[0].Value := BancodeDados.RetornoBANCO_ID.Value;
          qryBanco.Open;

          BancodeDados.Retorno.Close;
          BancodeDados.Retorno.SQL.Text :=
            'select * from retorno where banco_id = ' +
            IntToStr(BancodeDados.V_BoletosBANCO_ID.Value) +
            ' and nosso_numero = ' +
            QuotedStr(BancodeDados.V_BoletosNOSSO_NUMERO.Value);

          // BancodeDados.Emissoes.SQL.Add(' AND SEU_NUMERO = ' + QuotedStr(BancodeDados.V_BoletosEMISSAO_ID.Value));

          BancodeDados.Retorno.Open;
          if BancodeDados.Retorno.IsEmpty then
            podePassar := true
          else
          begin
            if (BancodeDados.RetornoNUMERO_ARQUIVO.Value > 0) then
              Mensagem('Operação não autorizada! Só é possível estornar boletos que tenham sido baixados manualmente.',
                mtWarning, [mbOk], mrOk, 0)
            else
              podePassar := true;
          end;

          if (podePassar = true) then
          begin
            BancodeDados.Boletos.Close;
            BancodeDados.Boletos.SQL.Text := PrincipalForm.SQLrepositorio(0) +
              ' and b.emissao_id = ' +
              IntToStr(BancodeDados.V_BoletosEMISSAO_ID.Value);
            BancodeDados.Boletos.Open;

            if BancodeDados.Boletos.IsEmpty then
              { if Trim(BancodeDados.V_BoletosID_BOLETOS.Value) <> '' then
                begin
                BancodeDados.Boletos.close;
                BancodeDados.Boletos.SQL.Text := 'select * from boletos where boleto_id in (' + Trim(BancodeDados.V_BoletosID_BOLETOS.Value) + ')';
                BancodeDados.Boletos.Open;
                end; }

              BancodeDados.Boletos.First;
            while not BancodeDados.Boletos.Eof do
            begin
              listaBoletos.Add(BancodeDados.BoletosBOLETO_ID.AsString);
              BancodeDados.Boletos.Next;
            end;

            dataAnterior := false;
            idsReceb := '';
            idsCaixa := '';

            BancodeDados.Boletos.First;
            while not BancodeDados.Boletos.Eof do
            begin
              // if not(BancodeDados.BoletosLOJA_ID.Value > 0) then
              if (BancodeDados.BoletosSITUACAO_BOLETO.Value = 'RECEBIDO') then
                // if BancodeDados.IDtemp.Locate('ID', BancodeDados.BoletosBOLETO_ID.Value, []) then
                if (listaBoletos.IndexOf(BancodeDados.BoletosBOLETO_ID.AsString)
                  >= 0) then
                begin
                  if BancodeDados.BoletosRECEBIMENTO.Value < PrincipalForm.DataServidor
                  then
                  begin
                    dataAnterior := true;
                    break;
                  end;
                end;
              BancodeDados.Boletos.Next;
            end;

            // if (dataAnterior = true) then
            // podePassar := PrincipalForm.LiberaAcesso(96, 'Estornar Títulos com Datas Anteriores')
            // else
            // podePassar := PrincipalForm.LiberaAcesso(74, 'Estornar o(s) título(s)');
            podePassar := true;
            if (podePassar = true) then
            begin
              try
                BancodeDados.Boletos.First;
                while not BancodeDados.Boletos.Eof do
                begin
                  if (BancodeDados.BoletosATIVO.Value = true) then
                  // if not(BancodeDados.BoletosLOJA_ID.Value > 0) then
                  begin
                    if (BancodeDados.BoletosRECEB_ID.Value > 0) then
                    begin
                      if not(Pos
                        (QuotedStr(BancodeDados.BoletosRECEB_ID.AsString),
                        idsReceb) > 0) then
                      begin
                        if trim(idsReceb) = '' then
                          idsReceb :=
                            QuotedStr(BancodeDados.BoletosRECEB_ID.AsString)
                        else
                          idsReceb := idsReceb + ', ' +
                            QuotedStr(BancodeDados.BoletosRECEB_ID.AsString);
                      end;
                    end;

                    if (BancodeDados.BoletosCAIXA_ID.Value > 0) then
                    begin
                      if not(Pos
                        (QuotedStr(BancodeDados.BoletosCAIXA_ID.AsString),
                        idsCaixa) > 0) then
                      begin
                        if trim(idsCaixa) = '' then
                          idsCaixa :=
                            QuotedStr(BancodeDados.BoletosCAIXA_ID.AsString)
                        else
                          idsCaixa := idsCaixa + ', ' +
                            QuotedStr(BancodeDados.BoletosCAIXA_ID.AsString);
                      end;
                    end;
                  end;
                  BancodeDados.Boletos.Next;
                end;

                if not BancodeDados.FDConnection1.InTransaction then
                  BancodeDados.FDConnection1.StartTransaction;

                podePassar := false;
                if trim(idsReceb) = '' then
                  podePassar := true
                else
                begin
                  if (trim(idsCaixa) <> '') then
                  begin
                    BancodeDados.qry.Close;
                    BancodeDados.qry.SQL.Text :=
                      'select situacao from livro_caixa where receb_id in (' +
                      idsReceb + ') and situacao = 1';
                    BancodeDados.qry.Open;
                    if not BancodeDados.qry.IsEmpty then
                    begin
                      Mensagem('Não é possível efetuar estorno em uma data já encerrada.',
                        mtWarning, [mbOk], mrOk, 0);
                      HabilitarBotoes(self, true);
                      Screen.Cursor := crDefault;
                      exit;
                    end;
                  end;

                  BancodeDados.qry.Close;
                  BancodeDados.qry.SQL.Text :=
                    'select boleto_id, cli_id, cliente, descricao, valor_pago, parcela from boletos where receb_id in ('
                    + idsReceb + ') order by cliente, vencimento';
                  BancodeDados.qry.Open;
                  BancodeDados.qry.First;
                  while not BancodeDados.qry.Eof do
                  begin
                    // caixa_fech_id
                    if trim(linha) = '' then
                      linha := '' + FormatFloat('000000',
                        BancodeDados.qry.FieldByName('boleto_id').AsInteger) +
                        ' - ' + Preenche
                        (PegaNomes(BancodeDados.qry.FieldByName('cliente')
                        .AsString, 2), 20) + ' - ' +
                        Preenche(BancodeDados.qry.FieldByName('parcela')
                        .AsString, 5) + ' - ' +
                        PreencheNumero(FormatFloat(',0.00',
                        BancodeDados.qry.FieldByName('valor_pago')
                        .AsCurrency), 15)
                    else
                      linha := linha + #13 + '' + FormatFloat('000000',
                        BancodeDados.qry.FieldByName('boleto_id').AsInteger) +
                        ' - ' + Preenche
                        (PegaNomes(BancodeDados.qry.FieldByName('cliente')
                        .AsString, 2), 20) + ' - ' +
                        Preenche(BancodeDados.qry.FieldByName('parcela')
                        .AsString, 5) + ' - ' +
                        PreencheNumero(FormatFloat(',0.00',
                        BancodeDados.qry.FieldByName('valor_pago')
                        .AsCurrency), 15);
                    BancodeDados.qry.Next;
                  end;

                  if Mensagem
                    ('Esta operação irá estornar todos os títulos do recebimento múltiplo abaixo relacionados:'
                    + #13#13 + linha + #13#13 + 'Deseja realmente prosseguir?',
                    mtWarning, [mbyes, mbno], mrNo, 0, 'Courier New') = idyes
                  then
                  begin
                    BancodeDados.Adiciona.SQL.Text :=
                      'update livro_caixa set cancelado = 1, can_motivo = ' +
                      QuotedStr('Estorno do recebimento múltiplo ' + idsReceb +
                      ' pelo usuário ' + usrLogin) + ' where receb_id in (' +
                      idsReceb + ')';
                    BancodeDados.Adiciona.ExecSQL;

                    BancodeDados.Adiciona.SQL.Text :=
                      'update receb set cancelado = 1 where receb_id in (' +
                      idsReceb + ')';
                    BancodeDados.Adiciona.ExecSQL;

                    BancodeDados.Adiciona.SQL.Text :=
                      'delete from cartoes where receb_id in (' +
                      idsReceb + ')';
                    BancodeDados.Adiciona.ExecSQL;

                    sqlTemp := BancodeDados.Boletos.SQL.Text;

                    BancodeDados.Boletos.Close;
                    BancodeDados.Boletos.SQL.Text :=
                      PrincipalForm.SQLrepositorio(0) + ' and b.receb_id in (' +
                      idsReceb + ') order by c.nome, b.vencimento';
                    BancodeDados.Boletos.Open;
                    BancodeDados.Boletos.First;
                    while not BancodeDados.Boletos.Eof do
                    begin
                      ExecutarEstornar;
                      BancodeDados.Boletos.Next;
                    end;

                    BancodeDados.Adiciona.SQL.Text :=
                      'delete from retorno where banco_id = ' +
                      IntToStr(BancodeDados.V_BoletosBANCO_ID.Value) +
                      ' and nosso_numero = ' +
                      QuotedStr(BancodeDados.V_BoletosNOSSO_NUMERO.Value) +
                      ' and coalesce(NUMERO_ARQUIVO, 0) = 0';
                    BancodeDados.Adiciona.ExecSQL;

                  end;
                end;

                if (podePassar = true) then
                begin
                  if (trim(idsCaixa) <> '') then
                  begin
                    BancodeDados.qry.Close;
                    BancodeDados.qry.SQL.Text :=
                      'select situacao from livro_caixa where caixa_id in (' +
                      idsCaixa + ') and situacao = 1';
                    BancodeDados.qry.Open;
                    if not BancodeDados.qry.IsEmpty then
                    begin
                      Mensagem('Não é possível efetuar estorno em uma data já encerrada.',
                        mtWarning, [mbOk], mrOk, 0);
                      HabilitarBotoes(self, true);
                      Screen.Cursor := crDefault;
                      exit;
                    end;
                  end;

                  BancodeDados.Boletos.First;
                  while not BancodeDados.Boletos.Eof do
                  begin
                    // if not(BancodeDados.BoletosLOJA_ID.Value > 0) then
                    // if BancodeDados.IDtemp.Locate('ID', BancodeDados.BoletosBOLETO_ID.Value, []) then
                    if (listaBoletos.IndexOf
                      (BancodeDados.BoletosBOLETO_ID.AsString) >= 0) then
                    begin
                      ExecutarEstornar;
                    end;
                    BancodeDados.Boletos.Next;
                  end;

                  BancodeDados.Adiciona.SQL.Text :=
                    'delete from retorno where banco_id = ' +
                    IntToStr(BancodeDados.V_BoletosBANCO_ID.Value) +
                    ' and nosso_numero = ' +
                    QuotedStr(BancodeDados.V_BoletosNOSSO_NUMERO.Value) +
                    ' and coalesce(NUMERO_ARQUIVO, 0) = 0';
                  BancodeDados.Adiciona.ExecSQL;
                end;

                // if not BancodeDados.IBTransaction1.InTransaction then BancodeDados.IBTransaction1.StartTransaction;
                BancodeDados.FDConnection1.CommitRetaining;

                BancodeDados.V_Boletos.Close;
                BancodeDados.V_Boletos.Open;
              except
                on E: Exception do
                  TraduzErro(E.Message);
              end;
            end;

          end; // PodePassar - 1
        end; // recebido
      end; // Ativo

      BancodeDados.V_Boletos.Next;
    end;
  end;

  Screen.Cursor := crDefault;
  HabilitarBotoes(self, true);
  BancodeDados.V_Boletos.Close;
end;

procedure TCsBoletosEmitidosForm.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if (BancodeDados.V_BoletosEMISSAO_ID.Value > 0) then
  begin

    if not(gdSelected in State) then
    begin
      if (BancodeDados.V_BoletosVENCIMENTO.Value < date) then
        DBGrid1.Canvas.Font.Color := clRed;

      if (BancodeDados.V_BoletosVENCIMENTO.Value = date) then
        DBGrid1.Canvas.Font.Color := $0000A4A4;

      if BancodeDados.V_BoletosDATA_RECEBIMENTO.Value > 0 then
        DBGrid1.Canvas.Font.Color := clNavy;

      if trim(BancodeDados.V_BoletosSITUACAO_BOLETO.Value) = 'RECEBIDO' then
        DBGrid1.Canvas.Font.Color := clNavy;

      if trim(BancodeDados.V_BoletosSITUACAO_BOLETO.Value) = 'CANCELADO' then
        DBGrid1.Canvas.Font.Color := $009F9F9F;

      if (BancodeDados.V_BoletosDATA_RECEBIMENTO.Value >
        BancodeDados.V_BoletosVENCIMENTO.Value) then
        DBGrid1.Canvas.Font.Color := $00FF8000;

      if trim(BancodeDados.V_BoletosSITUACAO_BOLETO.Value) = 'ISENTO' then
        DBGrid1.Canvas.Font.Color := $009F9F9F;

      if (BancodeDados.V_BoletosCANCELADO.Value = 1) then
        DBGrid1.Canvas.Font.Color := $009F9F9F;

      DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.columns[DataCol].Field, State);
    end;

    if Column.Field = BancodeDados.V_BoletosATIVO then
    begin
      DBGrid1.Canvas.FillRect(Rect);
      PrincipalForm.ImageList1.Draw(DBGrid1.Canvas, Rect.Left + 10,
        Rect.Top + 1, 0);
      if BancodeDados.V_BoletosATIVO.AsBoolean then
        PrincipalForm.ImageList1.Draw(DBGrid1.Canvas, Rect.Left + 10,
          Rect.Top + 1, 2)
      else
        PrincipalForm.ImageList1.Draw(DBGrid1.Canvas, Rect.Left + 10,
          Rect.Top + 1, 1);
    end;

  end;
end;

procedure TCsBoletosEmitidosForm.FormActivate(Sender: TObject);
begin

  {
    if Assigned(Boletos1Form) or Assigned(Boletos3Form) then begin
    HabilitarBotoes(self, false);
    Screen.Cursor := crSQLWait;
    if not BancodeDados.V_Boletos.IsEmpty then begin
    //BancodeDados.V_BoletosATIVO.Value:=true;
    //DBGrid1CellClick(DBGrid1.columns[0]);
    //DBGrid1.Repaint;
    CsBoletosEmitidosForm.btReImpClick(Sender);
    end;
    HabilitarBotoes(self, true);
    Screen.Cursor := crDefault;
    end; }

end;

procedure TCsBoletosEmitidosForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  PrincipalForm.VerificaRemessaPendentes;

  if BancodeDados.V_Boletos.Active then
    BancodeDados.V_Boletos.Close;

  // IndexBanco := cbContaBanco.ItemIndex;
end;

procedure TCsBoletosEmitidosForm.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TCsBoletosEmitidosForm.FormResize(Sender: TObject);
begin
  try
    lbContaBancaria.Visible :=
      (CsBoletosEmitidosForm.WindowState = wsMaximized);
    cbContaBanco.Visible := (CsBoletosEmitidosForm.WindowState = wsMaximized);
    lbTipRec.Visible := (CsBoletosEmitidosForm.WindowState = wsMaximized);
    CbTipoReceb.Visible := (CsBoletosEmitidosForm.WindowState = wsMaximized);
  except
  end;

end;

procedure TCsBoletosEmitidosForm.Dt_FinalExit(Sender: TObject);
begin
  if ((Dt_Inicial.DateTime) > (Dt_Final.DateTime)) then
    Mensagem('Digite um período válido!', mtInformation, [mbOk], mrOk, 0);
end;

procedure TCsBoletosEmitidosForm.contar_registro;
begin
  if BancodeDados.V_Boletos.Active then
  begin
    BancodeDados.V_Boletos.Last;
    BancodeDados.V_Boletos.First;
    lbContadorN.Caption := 'Registro(s) Encontrado(s): ' +
      FormatFloat('000000', BancodeDados.V_Boletos.RecordCount);
  end
  else
    lbContadorN.Caption := 'Registro(s) Encontrado(s): 000000';

end;

procedure TCsBoletosEmitidosForm.BtExecutarClick(Sender: TObject);
var
  Opcao, csTexto, TipoData, Tipo_Cod: String;
begin

  if BtExecutar.Enabled then
  begin

    Tipo_Cod := cbContaBanco.Text;

    if lbPainelAt.Enabled then
    begin
      case cbCampo.ItemIndex of
        0:
          TipoData := 'vencimento';
        1:
          TipoData := 'emissao';
        2:
          TipoData := 'dt_proces';
        3:
          TipoData := 'data_recebimento';
      end;

      case CBOpcao.ItemIndex of
        0:
          Opcao := 'nosso_numero';
        1:
          Opcao := 'emissao_id';
        2:
          Opcao := 'linha_dig';
        3:
          Opcao := 'matric_id';
        4:
          Opcao := 'aluno_id';
        5:
          Opcao := 'aluno_nome';
        6:
          Opcao := 'resp_id';
        7:
          Opcao := 'cpf_resp';
        8:
          Opcao := 'nome_resp';
        9:
          Opcao := 'turma_id';
        10:
          Opcao := 'turma_nome';
        11:
          Opcao := 'banco_id';
        12:
          Opcao := 'valor_doc';
        13:
          Opcao := 'cod_banco';
      end;

      HabilitarBotoes(self, false);
      Try
        if (Length(EditConsulta.Text) = 44) or (Length(EditConsulta.Text) = 54)
          or (Length(EditConsulta.Text) = 47) then
        begin

          BancodeDados.V_Boletos.Close;
          BancodeDados.V_Boletos.SQL.Text :=
            'select * from v_boletos where 1=1 ';

          if (Length(EditConsulta.Text) = 44) then
            BancodeDados.V_Boletos.SQL.Add(' and cod_barras = ' +
              QuotedStr(trim(EditConsulta.Text)));

          if (Length(EditConsulta.Text) = 54) then
            BancodeDados.V_Boletos.SQL.Add(' and linha_dig = ' +
              QuotedStr(trim(EditConsulta.Text)));

          if (Length(EditConsulta.Text) = 47) then
            BancodeDados.V_Boletos.SQL.Add(' and linha_dig = ' +
              QuotedStr(trim(Copy(EditConsulta.Text, 1, 5) + '.' +
              Copy(EditConsulta.Text, 6, 5) + ' ' + Copy(EditConsulta.Text, 11,
              5) + '.' + Copy(EditConsulta.Text, 16, 6) + ' ' +
              Copy(EditConsulta.Text, 22, 5) + '.' + Copy(EditConsulta.Text, 27,
              6) + ' ' + Copy(EditConsulta.Text, 33, 1) + ' ' +
              Copy(EditConsulta.Text, 34, 14))));

          if suporte then
            Mensagem(BancodeDados.V_Boletos.SQL.Text, mtInformation,
              [mbOk], mrOk, 0);

          BancodeDados.V_Boletos.Open;
          contar_registro;
          if (Sender = BtExecutar) or (Sender = EditConsulta) then
            if BancodeDados.V_Boletos.IsEmpty then
              Mensagem('Nenhum boleto encontrado.', mtInformation,
                [mbOk], mrOk, 0);

          EditConsulta.SetFocus;
        end
        else
        begin
          BancodeDados.V_Boletos.Close;
          BancodeDados.V_Boletos.SQL.Text :=
            'select * from v_boletos where 1=1';
          //
          // if chkAno.Checked then
          // begin
          // BancodeDados.V_BOLETOS.SQL.Add(' and ano_letivo = ' + IntToStr(AnoLetivo));
          // end;

          if ckPeriodo.Checked then
          begin
            if (cbCampo.ItemIndex = 3) then
              BancodeDados.V_Boletos.SQL.Add(' and (data_recebimento >= ' +
                QuotedStr(FormatDateTime('yyyy/mm/dd', Dt_Inicial.DateTime)) +
                ' and data_recebimento <= ' +
                QuotedStr(FormatDateTime('yyyy/mm/dd',
                Dt_Final.DateTime)) + ')')
            else
              BancodeDados.V_Boletos.SQL.Add(' and (' + TipoData + ' between ' +
                QuotedStr(FormatDateTime('yyyy/mm/dd', Dt_Inicial.DateTime)) +
                ' and ' + QuotedStr(FormatDateTime('yyyy/mm/dd',
                Dt_Final.DateTime)) + ' )');
          end;

          if cbSituacao.ItemIndex > 0 then
          begin
            BancodeDados.V_Boletos.SQL.Add(' and situacao_boleto = ' +
              QuotedStr(cbSituacao.Text));
          end;

          if trim(EditConsulta.Text) <> EmptyStr then
          begin
            csTexto := PrincipalForm.csContainingLIKE(trim(EditConsulta.Text),
              CBTipo.ItemIndex);
            if trim(csTexto) <> EmptyStr then
              BancodeDados.V_Boletos.SQL.Add(' and (UPPER(' + Opcao + ')' +
                csTexto + ')');
          end;

          if cbContaBanco.ItemIndex > 0 then
            BancodeDados.V_Boletos.SQL.Add(' and banco_id = ' +
              Copy(Tipo_Cod, 1, 6));

          if CbRemessa.ItemIndex > 0 then
          begin
            if CbRemessa.ItemIndex = 1 then
              BancodeDados.V_Boletos.SQL.Add
                (' and coalesce(remessa,0)>0 and coalesce(cod_mov,0)=0')
            else // AGUARDANDO CONFIRMAÇÃO >0 =0
              if CbRemessa.ItemIndex = 2 then
                BancodeDados.V_Boletos.SQL.Add
                  (' and coalesce(remessa,0)>0 and coalesce(cod_mov,0)=2')
              else // ENTRADA CONFIRMADA >0 = 2
                if CbRemessa.ItemIndex = 3 then
                  BancodeDados.V_Boletos.SQL.Add
                    (' and coalesce(remessa,0)=0 and coalesce(cod_mov,0)=0');
            // NÃO ENVIADA =0 =0
          end;

          if CbTipoReceb.ItemIndex = 1 then
            BancodeDados.V_Boletos.SQL.Add(' and coalesce(retorno_id,0)=0')
          else if CbTipoReceb.ItemIndex = 2 then
            BancodeDados.V_Boletos.SQL.Add(' and (retorno_id>0)');

          if ChkBolValidos.Checked then
          begin
            BancodeDados.V_Boletos.SQL.Add(' and coalesce(cancelado,0)=0');
            BancodeDados.V_Boletos.SQL.Add
              (' and exists (select boleto_id from boletos where emissao_id=v_boletos.emissao_id)');
          end;

          BancodeDados.V_Boletos.SQL.Add(' order by ' + TipoData + ', '
            + Opcao);

          if not ckPeriodo.Checked and (trim(EditConsulta.Text) = '') then
          begin
            if Mensagem('A consulta completa poderá levar vários minutos.'#13 +
              'Deseja executá-la?', mtConfirmation, [mbyes, mbno], mryes, 0) = idyes
            then
            begin

              if suporte then
                Mensagem(BancodeDados.V_Boletos.SQL.Text, mtInformation,
                  [mbOk], mrOk, 0);

              BancodeDados.V_Boletos.Open;
              contar_registro;
              if (Sender = BtExecutar) or (Sender = EditConsulta) then
                if BancodeDados.V_Boletos.IsEmpty then
                  Mensagem('Nenhum boleto encontrado.', mtInformation,
                    [mbOk], mrOk, 0);
            end;
          end
          else
          begin

            if suporte then
              Mensagem(BancodeDados.V_Boletos.SQL.Text, mtInformation,
                [mbOk], mrOk, 0);

            BancodeDados.V_Boletos.Open;
            contar_registro;
            if (Sender = BtExecutar) or (Sender = EditConsulta) then
              if BancodeDados.V_Boletos.IsEmpty then
                Mensagem('Nenhum boleto encontrado.', mtInformation,
                  [mbOk], mrOk, 0);
          end;
          EditConsulta.SetFocus;
        end;
      except
        On E: Exception do
          TraduzErro(E.Message);
      end;
      HabilitarBotoes(self, true);
    end;
  end;

end;

procedure TCsBoletosEmitidosForm.EditConsultaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if EditConsulta.Enabled then
  begin
    if (Key = VK_Return) then
      BtExecutarClick(Sender);
  end;

end;

procedure TCsBoletosEmitidosForm.btImprimirClick(Sender: TObject);
// var
// tipoData: String;
begin
  { case cbCampo.ItemIndex of
    0:
    tipoData := 'VENCIMENTO';
    1:
    tipoData := 'DATA_RECEBIMENTO';
    2:
    tipoData := 'EMISSAO';
    end; }

  if not BancodeDados.V_Boletos.IsEmpty then
  begin
    // BtExecutarClick(sender);
    if not assigned(relBoletosEmitidosForm) then
      relBoletosEmitidosForm := trelBoletosEmitidosForm.create(application);
    try
      HabilitarBotoes(self, false);
      Screen.Cursor := crSQLWait;
      BancodeDados.V_Boletos.DisableControls;
      relBoletosEmitidosForm.lbSit1_1.Caption := 'Situação: ' + cbSituacao.Text;
      relBoletosEmitidosForm.lbPeriodo_1.Caption := 'Período: ' + cbCampo.Text +
        ' - ' + (Dt_Inicial.DateTimeStr) + ' até ' + (Dt_Final.DateTimeStr);
      if ChkBolValidos.Checked then
        relBoletosEmitidosForm.lbfiltro_1.Caption := 'Boletos Válidos'
      else
        relBoletosEmitidosForm.lbfiltro_1.Caption :=
          'Boletos Válidos/Inválidos';
      // relBoletosEmitidosForm.RLGroup1.DataFields:=tipoData;
      // if chkAno.Checked then
      // relBoletosEmitidosForm.lbAnoLetivo.Caption := 'Ano Letivo: ' + IntToStr(AnoLetivo);
      BancodeDados.PrepararRel(relBoletosEmitidosForm.RLReport1);
    finally
      relBoletosEmitidosForm.Release;
      relBoletosEmitidosForm := nil;
      HabilitarBotoes(self, true);
      Screen.Cursor := crDefault;
      BancodeDados.V_Boletos.EnableControls;
    end;
  end
  else
    Mensagem('Não foi encontrada nenhuma informação!', mtInformation,
      [mbOk], mrOk, 0);

end;

procedure TCsBoletosEmitidosForm.btReImpClick(Sender: TObject);
begin
  if not BancodeDados.V_Boletos.IsEmpty then
  begin

    if Mensagem('Deseja realizar uma reimpressão de boleto?', mtConfirmation,
      [mbyes, mbno], mrNo, 0) = idyes then
    begin
      HabilitarBotoes(self, false);

      if not(BancodeDados.V_Boletos.State in [dsEdit]) then
        BancodeDados.V_Boletos.Edit;
      BancodeDados.V_BoletosATIVO.Value := true;
      // DBGrid1CellClick(DBGrid1.columns[0]);
      CsBoletosEmitidosForm.Reimprimirboleto1Click(Sender);
      HabilitarBotoes(self, true);
    end;
  end;
end;

procedure TCsBoletosEmitidosForm.CancelarBoleto1Click(Sender: TObject);
var
  IDEmissao: String;
begin
  { if (BancodeDados.V_BoletosREMESSA.Value > 0) then
    begin
    Mensagem('Este boleto já foi enviado.', mtInformation, [mbok], mrok, 0);
    end
    else }
  IDEmissao := BancodeDados.PegarAtivo(listaV_Boletos);

  if (IDEmissao <> '') then
  begin
    if Mensagem('Tem certeza que deseja cancelar este boleto?' + #13#13 +
      'Atenção. O sistema não cancela boletos já enviados para o banco.',
      mtConfirmation, [mbyes, mbno], mrNo, 0) = idyes then
    begin
      if PrincipalForm.LiberaAcesso then
      begin
        BancodeDados.V_Boletos.First;
        while not BancodeDados.V_Boletos.Eof do
        begin
          application.ProcessMessages;

          if (BancodeDados.V_BoletosATIVO.Value = true) then
            if not(BancodeDados.V_BoletosREMESSA.Value > 0) then
            begin
              BancodeDados.Adiciona.SQL.Text :=
                'update boletos_emissao set cancelado = 1 where emissao_id = ' +
                IntToStr(BancodeDados.V_BoletosEMISSAO_ID.Value);
              BancodeDados.Adiciona.ExecSQL;
              BancodeDados.Adiciona.SQL.Text :=
                'update boletos set emissao_id = null where emissao_id = ' +
                IntToStr(BancodeDados.V_BoletosEMISSAO_ID.Value);
              BancodeDados.Adiciona.ExecSQL;
            end;

          BancodeDados.V_Boletos.Next;
        end;

        BancodeDados.V_Boletos.Close;
      end;
    end;
  end
  else
  begin
    Mensagem('Selecione algum boleto antes de prosseguir.', mtInformation,
      [mbOk], mrOk, 0);
  end;
end;

procedure TCsBoletosEmitidosForm.CbRemessaChange(Sender: TObject);
begin
  if (CbRemessa.ItemIndex > 0) then
    ChkBolValidos.Checked := true
  else
    ChkBolValidos.Checked := false;

  CsBoletosEmitidosForm.BtExecutarClick(Sender);
end;

procedure TCsBoletosEmitidosForm.DBGrid1CellClick(Column: TColumn);
begin
  if not BancodeDados.V_Boletos.IsEmpty then
  begin
    if Column.FieldName = 'ATIVO' then
    begin
      if not(BancodeDados.V_Boletos.State in [dsEdit]) then
        BancodeDados.V_Boletos.Edit;
      BancodeDados.MarcarAtivo(listaV_Boletos,
        BancodeDados.V_BoletosEMISSAO_ID.Value, BancodeDados.V_BoletosATIVO);
    end;
  end;

end;

procedure TCsBoletosEmitidosForm.DBGrid1ColEnter(Sender: TObject);
begin
  if DBGrid1.SelectedField = BancodeDados.V_BoletosATIVO then
    DBGrid1.Options := DBGrid1.Options - [dgEditing]
  else
    DBGrid1.Options := DBGrid1.Options + [dgEditing];
end;

procedure TCsBoletosEmitidosForm.Reativarboleto1Click(Sender: TObject);
// var
// podePassar, aReceber: Boolean;
// emiId, vlInt, vlIntBol, vlDesc, vlDescBol: Currency;
// dtVenc, dtVencBol: TDate;
begin
  { if (BancodeDados.V_BoletosEMISSAO_ID.Value > 0) then
    if (BancodeDados.V_BoletosCANCELADO.Value = 1) then
    begin
    if Mensagem('Tem certeza que deseja reativar este boleto?', mtConfirmation, [mbYes, mbNo], mrNo, 0) = idYes then
    begin
    podePassar := true;

    BancodeDados.qry.Close;
    BancodeDados.qry.SQL.Text := ' and b.remessa_id = ' + IntToStr(BancodeDados.V_BoletosREMESSA.Value) ;
    //(BancodeDados.qry.SQL.Text);
    BancodeDados.qry.Open;
    if BancodeDados.qry.IsEmpty then
    begin
    podePassar := false;
    Mensagem('Nenhum título foi encontrado.', mtWarning, [mbOk], mrOk, 0);
    end;

    if (podePassar = true) then
    begin
    vlInt     := 0;
    vlDesc    := 0;
    dtVenc    := 0;
    emiId     := 0;
    aReceber  := true;

    BancodeDados.qry.First;
    while not BancodeDados.qry.Eof do
    begin
    if (BancodeDados.qry.FieldByName('emissao_id').AsInteger > 0) then
    begin
    emiId := BancodeDados.qry.FieldByName('emissao_id').AsInteger;
    end;

    if (BancodeDados.qry.FieldByName('situacao_boleto').AsString <> 'A RECEBER') then
    aReceber := false;

    if (BancodeDados.qry.FieldByName('CLI_ID').AsInteger = BancodeDados.V_BoletosCLI_ID.Value) then
    dtVenc := BancodeDados.qry.FieldByName('vencimento').AsDateTime;

    vlInt := vlInt + BancodeDados.qry.FieldByName('valor_integral').AsCurrency + BancodeDados.qry.FieldByName('acrescimo').AsCurrency + BancodeDados.qry.FieldByName('acrescimo_extra').AsCurrency;
    vlDesc := vlDesc + BancodeDados.qry.FieldByName('desconto').AsCurrency;
    BancodeDados.qry.Next;
    end;

    vlIntBol := BancodeDados.V_BoletosVALOR_DOC.AsCurrency;
    vlDescBol := BancodeDados.V_BoletosDESCONTO.AsCurrency;
    dtVencBol := BancodeDados.V_BoletosVENCIMENTO.Value;

    if (emiId > 0) then //139428
    begin
    podePassar := false;
    Mensagem('Um ou mais títulos já possui outro boleto emitido.', mtWarning, [mbOk], mrOk, 0);
    end
    else
    if (aReceber = false) then
    begin
    podePassar := false;
    Mensagem('Título não disponível para recebimento.', mtWarning, [mbOk], mrOk, 0);
    end
    else
    if (vlInt <> vlIntBol) then
    begin
    podePassar := false;
    Mensagem('O valor integral deste boleto está diferente da soma dos títulos.', mtWarning, [mbOk], mrOk, 0);
    end
    else
    if (vlDesc <> vlDescBol) then
    begin
    podePassar := false;
    Mensagem('O desconto deste boleto está diferente da soma dos títulos.', mtWarning, [mbOk], mrOk, 0);
    end
    else
    if (dtVenc <> dtVencBol) then
    begin
    podePassar := false;
    Mensagem('O vencimento deste boleto está diferente do título principal.', mtWarning, [mbOk], mrOk, 0);
    end;
    end;

    if (podePassar = true) then
    begin
    if not BancodeDados.FDConnection1.InTransaction then
    BancodeDados.FDConnection1.StartTransaction;

    BancodeDados.Adiciona.SQL.Text:='update boletos set emissao_id = ' + IntToStr(BancodeDados.V_BoletosEMISSAO_ID.Value) + ' where boleto_id in (' + BancodeDados.V_BoletosID_BOLETOS.Value + ')';
    BancodeDados.Adiciona.ExecSQL;


    BancodeDados.Adiciona.SQL.Text:='update boletos_emissao set cancelado = null where emissao_id = ' + IntToStr(BancodeDados.V_BoletosEMISSAO_ID.Value);
    BancodeDados.Adiciona.ExecSQL;

    BancodeDados.FDConnection1.CommitRetaining;

    BancodeDados.V_Boletos.Close;
    BancodeDados.V_Boletos.Open;
    end;

    end;
    end; }
end;

procedure TCsBoletosEmitidosForm.Reimprimirboleto1Click(Sender: TObject);
var
  papelCortado: Boolean;
  SQLIncial: string;
begin

  if not(listaV_Boletos.Count > 0) then
    Mensagem('Selecione alguma emissão para ser re-impressa.', mtInformation,
      [mbOk], mrOk, 0)
  else
  begin
    Screen.Cursor := crSQLWait;

    SQLIncial := BancodeDados.V_Boletos.SQL.Text;

    IDsEmissao := BancodeDados.PegarAtivo(listaV_Boletos);

    if trim(IDsEmissao) = '' then
      IDsEmissao := '0';
    BancodeDados.V_Boletos.Close;
    BancodeDados.V_Boletos.SQL.Text :=
      'select * from v_boletos where emissao_id in (' + IDsEmissao +
      ') and situacao_boleto = ' + QuotedStr('A RECEBER') +
      ' order by cli_nome, vencimento';

    BancodeDados.V_Boletos.Open;
    if BancodeDados.V_Boletos.IsEmpty then
      Mensagem('Nenhuma emissão de boleto foi encontrada.', mtInformation,
        [mbOk], mrOk, 0)
    else
    begin
      try
        if not assigned(RelCarneCaixaForm) then
          RelCarneCaixaForm := TRelCarneCaixaForm.create(application);
        // try
        if MensagemChk('Deseja realizar uma reimpressão de boleto?',
          mtConfirmation, [mbyes, mbno], mryes, 0, true,
          'Papel cortado (1 boleto na vertical)?',

          papelCortado) = idyes then
        begin
          if (papelCortado = false) then
          begin
            BancodeDados.PrepararRel(RelCarneCaixaForm.RLReport1);
          end
          else
          begin
            BancodeDados.PrepararRel(RelCarneCaixaForm.RLReport3);
          end;
        end;

        if not assigned(CsClientesForm) then
        begin
          BancodeDados.V_Boletos.Close;
          BancodeDados.V_Boletos.SQL.Text := SQLIncial;
          BancodeDados.V_Boletos.Open;
        end
        else
        begin
          SQLIncial := '';
        end;

        // if Mensagem('Deseja imprimir a capa dos boletos?', mtConfirmation, [mbYes,mbNo], mrYes, 0)=idYes then begin
        // BancodeDados.PrepararRel(RelCarneCaixaForm.RLReport2);
        // end;

        // except
        // On E: Exception do
        // TraduzErro(E.Message);
        // end;
      finally
        RelCarneCaixaForm.Release;
        RelCarneCaixaForm := nil;
      end;

    end;
  end;
  Screen.Cursor := crDefault;

end;

procedure TCsBoletosEmitidosForm.VisualizarBoletos1Click(Sender: TObject);
var
  PodeIR: Boolean;
  Frm: TForm;
  MM: TMemo;
begin
  if VisualizarBoletos1.Enabled then
    if BancodeDados.V_BoletosEMISSAO_ID.Value > 0 then
    begin
      if DBGrid1.SelectedField.FieldName = 'OBS' then
      begin
        Frm := TForm.create(nil);
        HabilitarBotoes(self, false);
        try
          Frm.width := 428;
          Frm.Height := 250;
          Frm.Position := poScreenCenter;
          Frm.BorderIcons := [biSystemMenu];
          Frm.BorderStyle := bsSingle;
          Frm.Caption := 'Observações';
          MM := TMemo.create(nil);
          try
            MM.Parent := Frm;
            MM.Align := alClient;
            MM.ScrollBars := ssBoth;
            // MM.DataSource := BancodeDados.dsBoletos_Emissao;
            // MM.DataField  := 'OBS';
            MM.Lines.Text := 'Obs.: ' + #13 + BancodeDados.V_BoletosOBS.AsString
              + #13 + #13 + #13 + 'Descrição: ' + #13 +
              BancodeDados.V_BoletosOBS.AsString;
            MM.ReadOnly := true;
            Frm.showmodal;
          finally
            MM.Free;
          end;
        finally
          Frm.Free;
          HabilitarBotoes(self, true);
        end;
      end
      else
      begin
        PodeIR := false;
        BancodeDados.Boletos.Close;
        BancodeDados.Boletos.SQL.Text := PrincipalForm.SQLrepositorio(0) +
          ' and b.emissao_id =' +
          IntToStr(BancodeDados.V_BoletosEMISSAO_ID.Value);
        BancodeDados.Boletos.Open;

        if not BancodeDados.Boletos.IsEmpty then
          PodeIR := true;

        if (PodeIR = true) then
        begin
          if not assigned(VisualizaTitulosForm) then
            VisualizaTitulosForm := TVisualizaTitulosForm.create(application);
          try
            HabilitarBotoes(self, false);
            VisualizaTitulosForm.showmodal;
          finally
            HabilitarBotoes(self, true);
            VisualizaTitulosForm.Release;
            VisualizaTitulosForm := nil;
          end;
        end
        else
          Mensagem('Não foi encontrado nenhum título referente a está emissão.'
            + #13 + 'Título(s) de origem: ' +
            IntToStr(BancodeDados.V_BoletosEMISSAO_ID.Value), mtInformation,
            [mbOk], mrOk, 0);
      end;
    end;
end;

procedure TCsBoletosEmitidosForm.VisualizarRetorno1Click(Sender: TObject);
begin
  if BancodeDados.V_BoletosEMISSAO_ID.Value > 0 then
    if VisualizarRetorno1.Enabled then
    begin
      BancodeDados.Retorno.Close;
      BancodeDados.Retorno.SQL.Text :=
        'select * from retorno where nosso_numero = ' +
        QuotedStr(BancodeDados.V_BoletosNOSSO_NUMERO.Value);

      BancodeDados.Retorno.Open;
      if not BancodeDados.Retorno.IsEmpty then
      begin
        try
          if not assigned(VisualizaRetornoForm) then
            VisualizaRetornoForm := TVisualizaRetornoForm.create(application);
          VisualizaRetornoForm.BTBaixar.Enabled := false;
          VisualizaRetornoForm.Localizaremisso1.Enabled := false;
          VisualizaRetornoForm.TabSheet2.Visible := false;
          VisualizaRetornoForm.TabSheet1.Show;
          VisualizaRetornoForm.showmodal;
        finally
          VisualizaRetornoForm.Release;
          VisualizaRetornoForm := nil;
        end;
      end
      else
        Mensagem('Não foi encontrado nenhum retorno referente a está emissão.',
          mtInformation, [mbOk], mrOk, 0);
    end;
end;

procedure TCsBoletosEmitidosForm.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 32 then
  begin
    Key := 0;
    DBGrid1CellClick(DBGrid1.columns[0]);
  end;
end;

procedure TCsBoletosEmitidosForm.AlteraosDiasparaBaixaDevoluo1Click
  (Sender: TObject);
var
  NDias, TipoOcorrencia: Integer;
  PodeContinuar, AplicarSemDias: Boolean;

begin
  if not BancodeDados.V_Boletos.IsEmpty then
  begin
    NDias := 0;
    AplicarSemDias := false;
    // Mensagem('Recurso disponível apenas para CEF', mtInformation, [mbok], mrok, 0);

    if not assigned(AltDiasBaixaDevForm) then
      AltDiasBaixaDevForm := TAltDiasBaixaDevForm.create(application);
    try

      BancodeDados.Bancos.Close;
      BancodeDados.Bancos.SQL.Text := 'select * from bancos where banco_id = ' +
        IntToStr(BancodeDados.V_BoletosBANCO_ID.Value);
      BancodeDados.Bancos.Open;

      AltDiasBaixaDevForm.cbDiasBaixa.ItemIndex :=
        BancodeDados.BancosDIAS_BAIXAR_BANCO.Value - 1;

      if AltDiasBaixaDevForm.showmodal = mrOk then
      begin
        CodigoEmissao := BancodeDados.V_BoletosEMISSAO_ID.Value;
        NDias := (AltDiasBaixaDevForm.cbDiasBaixa.ItemIndex + 1);
        // AplicarSemDias  :=false;
        AplicarSemDias := (AltDiasBaixaDevForm.chkAplicarSemDias.Checked);

        if NDias > 0 then
        begin
          BancodeDados.V_Boletos.DisableControls;
          BancodeDados.V_Boletos.First;
          while not BancodeDados.V_Boletos.Eof do
          begin

            PodeContinuar := false;

            application.ProcessMessages;
            if (BancodeDados.V_BoletosATIVO.Value = true) then
            begin

              if (BancodeDados.V_BoletosCANCELADO.Value <> 1) and
                (trim(BancodeDados.V_BoletosSITUACAO_BOLETO.Value)
                = 'A RECEBER') and
                (BancodeDados.V_BoletosVENCIMENTO.Value >
                PrincipalForm.DataServidor) then
                PodeContinuar := true;

              if PodeContinuar then
              begin
                if AplicarSemDias then
                begin
                  PodeContinuar :=
                    (BancodeDados.V_BoletosDIAS_BAIXAR_BANCO.Value = 0);
                end;
              end;

              if PodeContinuar = true then
              begin

                if (BancodeDados.V_BoletosDIAS_BAIXAR_BANCO.Value <> NDias) then
                begin // Alteração do dias para baixa/devolucao no banco

                  if (BancodeDados.V_BoletosCOD_MOV.Value = 2) then
                  begin // caso tenha gerado a remessa, deve gerar um outro arq. remessa com o codigo de movi

                    case BancodeDados.V_BoletosCOD_BANCO.Value of
                      // pegando o código de ocorrencia para alterar boleto
                      104:
                        TipoOcorrencia := 31;
                      // 8; //Caixa Econômica Federal cnab400
                    else
                      TipoOcorrencia := 31;
                      // alguns bancos utilizam deste mesmo código para alteração de outros dados...
                    end;

                    BancodeDados.Remessa_Ocorrencia.Close;
                    BancodeDados.Remessa_Ocorrencia.SQL.Text :=
                      'select * from remessa_ocorrencia where emissao_id = ' +
                      IntToStr(BancodeDados.V_BoletosEMISSAO_ID.Value) +
                      ' and COD_MOV_REM = ' + IntToStr(TipoOcorrencia) +
                      ' and tipo_ocorrencia = ' +
                      QuotedStr('Alterou dias para baixar');
                    BancodeDados.Remessa_Ocorrencia.Open;

                    if BancodeDados.Remessa_Ocorrencia.IsEmpty then
                      BancodeDados.Remessa_Ocorrencia.Append
                    else
                      BancodeDados.Remessa_Ocorrencia.Edit;

                    BancodeDados.Remessa_OcorrenciaCOD_MOV_REM.Value :=
                      TipoOcorrencia;
                    BancodeDados.Remessa_OcorrenciaTIPO_OCORRENCIA.Value :=
                      'Alterou dias para baixar';
                    BancodeDados.Remessa_OcorrenciaEMISSAO_ID.Value :=
                      BancodeDados.V_BoletosEMISSAO_ID.Value;
                    BancodeDados.Remessa_OcorrenciaBANCO_ID.Value :=
                      BancodeDados.V_BoletosBANCO_ID.Value;
                    BancodeDados.Remessa_OcorrenciaDT_CAD.Value :=
                      PrincipalForm.DataServidor;
                    BancodeDados.Remessa_OcorrenciaUS_CAD.Value := usrID;

                    BancodeDados.Remessa_Ocorrencia.Post;
                    BancodeDados.FDConnection1.CommitRetaining;

                    BancodeDados.Adiciona.SQL.Text :=
                      'update boletos_emissao set remessa = null, retorno_id = null, dias_baixar_banco ='
                      + IntToStr(NDias) + ', DT_PROCES=' +
                      QuotedStr(FormatDateTime('yyyy/mm/dd',
                      PrincipalForm.DataServidor)) +
                      ' where coalesce(COD_MOV,0)=2 and coalesce(ALT_VIA_BANCO,0)=0 and VENCIMENTO >'
                      + QuotedStr(FormatDateTime('yyyy/mm/dd',
                      PrincipalForm.DataServidor)) + ' and emissao_id = ' +
                      IntToStr(BancodeDados.V_BoletosEMISSAO_ID.Value) +
                      ' and SITUACAO_BOLETO = (' + QuotedStr('A RECEBER') + ')';
                    BancodeDados.Adiciona.ExecSQL;
                  end;

                end;

              end; // podercontinuar
            end; // Ativo

            BancodeDados.V_Boletos.Next;
          end;
          BancodeDados.V_Boletos.EnableControls;
          BancodeDados.V_Boletos.Close;
          BancodeDados.V_Boletos.Open;
          BancodeDados.V_Boletos.Locate('EMISSAO_ID', CodigoEmissao, []);

        end; // dias>0
      end;

    finally
      AltDiasBaixaDevForm.Release;
      AltDiasBaixaDevForm := nil;
    end;

  end;

end;

procedure TCsBoletosEmitidosForm.BaixarBoleto1Click(Sender: TObject);
var
  recebidoTmp: Boolean;
begin
  if not BancodeDados.V_Boletos.IsEmpty then
    if not(BancodeDados.V_BoletosCANCELADO.Value = 1) then
    begin
      HabilitarBotoes(self, false);
      if assigned(listaBoletos) then
        listaBoletos.Clear;

      Screen.Cursor := crSQLWait;
      BancodeDados.V_Boletos.DisableControls;
      // if PrincipalForm.LiberaAcesso(92, 'baixar títulos', true) then
      try
        BancodeDados.V_Boletos.First;
        while not BancodeDados.V_Boletos.Eof do
        begin
          application.ProcessMessages;

          if (BancodeDados.V_BoletosATIVO.Value = true) then
          begin
            if not(BancodeDados.V_BoletosDATA_RECEBIMENTO.Value > 0) then
            begin
              BancodeDados.Boletos.Close;
              BancodeDados.Boletos.SQL.Text := PrincipalForm.SQLrepositorio(0) +
                ' and b.emissao_id=' +
                IntToStr(BancodeDados.V_BoletosEMISSAO_ID.Value);
              BancodeDados.Boletos.Open;
              if not BancodeDados.Boletos.IsEmpty then
              begin
                recebidoTmp := false;

                BancodeDados.Boletos.First;
                while not BancodeDados.Boletos.Eof do
                begin
                  if (BancodeDados.BoletosSITUACAO_BOLETO.Value = 'RECEBIDO')
                  then
                  begin
                    recebidoTmp := true;
                    break;
                  end;
                  if not(BancodeDados.Boletos.State in [dsEdit]) then
                    BancodeDados.Boletos.Edit;
                  BancodeDados.MarcarAtivo(listaBoletos,
                    BancodeDados.BoletosBOLETO_ID.Value,
                    BancodeDados.BoletosATIVO);

                  BancodeDados.Boletos.Next;
                end;

                if (recebidoTmp = true) then
                  Mensagem('Um ou mais títulos desta emissão já foram recebidos.',
                    mtInformation, [mbOk], mrOk, 0)
                else
                begin
                  if BancodeDados.MontaRecebimentoTemp(false) then
                    try
                      if not assigned(Baixa2Form) then
                        Baixa2Form := TBaixa2Form.create(application);
                      comitarTransacao := false;
                      if Baixa2Form.showmodal = mrOk then
                      begin
                        BancodeDados.Retorno.Close;
                        BancodeDados.Retorno.SQL.Text :=
                          'select * from retorno where banco_id=' +
                          IntToStr(BancodeDados.V_BoletosBANCO_ID.Value) +
                          ' and nosso_numero=' +
                          QuotedStr(trim
                          (BancodeDados.V_BoletosNOSSO_NUMERO.Value));
                        BancodeDados.Retorno.Open;
                        if BancodeDados.Retorno.IsEmpty then
                        begin
                          BancodeDados.Retorno.Append;
                          BancodeDados.RetornoBANCO_ID.Value :=
                            BancodeDados.V_BoletosBANCO_ID.Value;
                          BancodeDados.RetornoNOSSO_NUMERO.Value :=
                            BancodeDados.V_BoletosNOSSO_NUMERO.Value;
                          BancodeDados.RetornoDATA_RECEBIMENTO.Value :=
                            Baixa2Form.Dt_Pagar.DateTime;
                          BancodeDados.RetornoDATA_CREDITO.Value :=
                            Baixa2Form.Dt_Pagar.DateTime;
                          BancodeDados.RetornoDATA_ARQUIVO.Value :=
                            PrincipalForm.DataServidor;
                          BancodeDados.Retorno.Post;

                          BancodeDados.Boletos.First;
                          while not BancodeDados.Boletos.Eof do
                          begin
                            if (BancodeDados.BoletosSITUACAO_BOLETO.Value =
                              'RECEBIDO') then
                            begin
                              BancodeDados.Boletos.Edit;
                              BancodeDados.BoletosRETORNO_ID.Value :=
                                BancodeDados.RetornoRETORNO_ID.Value;
                              BancodeDados.Boletos.Post;
                            end;
                            BancodeDados.Boletos.Next;
                          end;

                        end;
                      end;
                    finally
                      Baixa2Form.Release;
                      Baixa2Form := nil;
                    end;
                  {
                    try
                    if not Assigned(BaixaBoletoForm) then BaixaBoletoForm:=TBaixaBoletoForm.Create(Application);
                    BaixaBoletoForm.ShowModal;
                    finally
                    BaixaBoletoForm.Release;
                    BaixaBoletoForm:=nil;
                    end;
                  }
                end;
              end
              else
                Mensagem('Não foi encontrado nenhum título referente a está emissão.',
                  mtInformation, [mbOk], mrOk, 0);
            end
            else
              Mensagem('Este boleto já foi recebido.', mtInformation,
                [mbOk], mrOk, 0);
          end; // True

          BancodeDados.V_Boletos.Next;
        end;
        if not BancodeDados.FDConnection1.InTransaction then
          BancodeDados.FDConnection1.StartTransaction;
        BancodeDados.FDConnection1.Commit;
        BancodeDados.V_Boletos.Open;
        BancodeDados.V_Boletos.EnableControls;
        BancodeDados.V_Boletos.Locate('EMISSAO_ID', CodigoEmissao, []);
      except
        On E: Exception do
          TraduzErro(E.Message);
      end;
      BancodeDados.V_Boletos.EnableControls;

      Screen.Cursor := crDefault;
      HabilitarBotoes(self, true);
    end
    else
      Mensagem('Marque algum boleto válido!', mtInformation, [mbOk], mrOk, 0);
  // if not (BancodeDados.V_BoletosCANCELADO.Value = 1)
end;

procedure TCsBoletosEmitidosForm.EditConsultaDblClick(Sender: TObject);
begin
  EditConsulta.SelectAll;
end;

procedure TCsBoletosEmitidosForm.cbSituacaoChange(Sender: TObject);
begin

  CsBoletosEmitidosForm.BtExecutarClick(Sender);
end;

procedure TCsBoletosEmitidosForm.chTodosClick(Sender: TObject);
begin
  if not BancodeDados.V_Boletos.IsEmpty then
  begin
    BancodeDados.V_Boletos.DisableControls;
    HabilitarBotoes(self, false);
    Screen.Cursor := crSQLWait;
    if chTodos.Checked then
    begin
      BancodeDados.V_Boletos.First;
      while not BancodeDados.V_Boletos.Eof do
      begin
        if (not BancodeDados.V_BoletosATIVO.Value = true) then
        begin
          if not(BancodeDados.V_Boletos.State in [dsEdit]) then
            BancodeDados.V_Boletos.Edit;
          BancodeDados.MarcarAtivo(listaV_Boletos,
            BancodeDados.V_BoletosEMISSAO_ID.Value,
            BancodeDados.V_BoletosATIVO);
        end;
        BancodeDados.V_Boletos.Next;
        application.ProcessMessages;
      end;
    end
    else
    begin
      listaV_Boletos.Clear;
      BancodeDados.V_Boletos.First;
      while not BancodeDados.V_Boletos.Eof do
      begin
        if not(BancodeDados.V_Boletos.State in [dsEdit]) then
          BancodeDados.V_Boletos.Edit;
        BancodeDados.V_BoletosATIVO.Value := false;
        BancodeDados.V_Boletos.Next;
      end;
    end;
    BancodeDados.V_Boletos.EnableControls;
    HabilitarBotoes(self, true);
    Screen.Cursor := crDefault;
  end;
end;

End.
