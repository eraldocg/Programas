unit CsOcorrenciasRet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DB, DBClient, Grids, DBGrids, jpeg, Menus,
  Buttons, Mask, SEDDateEdit, SedDBGrid, RLReport, SEDDBImage,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TCsOcorrenciasRetForm = class(TForm)
    Panel1: TPanel;
    BtFechar: TButton;
    DBGrid1: TSedDBGrid;
    lbPainelAt: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Dt_Inicial: TSedDateEdit;
    Dt_Final: TSedDateEdit;
    BtExecutar: TSpeedButton;
    MainMenu1: TMainMenu;
    F31: TMenuItem;
    lbContadorN: TLabel;
    Label8: TLabel;
    CBOpcao: TComboBox;
    Label9: TLabel;
    CBTipo: TComboBox;
    EditConsulta: TEdit;
    Label11: TLabel;
    cbCampo: TComboBox;
    Label12: TLabel;
    CbSituacao: TComboBox;
    Image4: TImage;
    BtImprimir: TButton;
    PopupMenu1: TPopupMenu;
    ttulosreferentesaoretorno1: TMenuItem;
    f51: TMenuItem;
    N1: TMenuItem;
    Localizaremisso1: TMenuItem;
    F61: TMenuItem;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    lbSituacao61: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    SedRLDBImage1: TSedRLDBImage;
    lbPeriodo6: TRLLabel;
    lbTipoQuitacao61: TRLLabel;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    RLLabel2: TRLLabel;
    RLDraw1: TRLDraw;
    RLDraw2: TRLDraw;
    RLDraw3: TRLDraw;
    RLDraw4: TRLDraw;
    RLDraw5: TRLDraw;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLDraw6: TRLDraw;
    RLDraw7: TRLDraw;
    RLLabel5: TRLLabel;
    RLDraw8: TRLDraw;
    RLLabel6: TRLLabel;
    LBbanco1: TRLLabel;
    RLDraw9: TRLDraw;
    RLDraw10: TRLDraw;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLBand3: TRLBand;
    RLDBText1: TRLDBText;
    RLDraw11: TRLDraw;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDraw12: TRLDraw;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDraw13: TRLDraw;
    RLLabel10: TRLLabel;
    RLDBText7: TRLDBText;
    RLBand4: TRLBand;
    RLDraw14: TRLDraw;
    RLDraw15: TRLDraw;
    RLDraw16: TRLDraw;
    RLDraw17: TRLDraw;
    RLDraw18: TRLDraw;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLLabel11: TRLLabel;
    RLBand5: TRLBand;
    LbNomeInstituicao1: TRLLabel;
    LbEndereco1: TRLLabel;
    LbSite1: TRLLabel;
    RLDraw19: TRLDraw;
    lbEmpresaNome6: TRLLabel;
    lbEmpresaSite6: TRLLabel;
    lbSistemaNome6: TRLLabel;
    Image1: TImage;
    Label1: TLabel;
    cbTipBanco: TComboBox;
    qryBancos: TFDQuery;
    qryBancosBANCO_ID: TIntegerField;
    qryBancosBANCO_NOME: TStringField;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure BtExecutarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EditConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtImprimirClick(Sender: TObject);
    procedure Localizaremisso1Click(Sender: TObject);
    procedure BaixaNAfterOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    // procedure ProcurarBoletos;
  end;

var
  CsOcorrenciasRetForm: TCsOcorrenciasRetForm;
  TipoPeriodo, tipoData: String;
  podePesquisarAlunos: Boolean = false;
  Tipo_Cod: string;

implementation

uses
  Base, RelArquivoRetorno, VisualizaTitulos, Principal, CsBoletosEmitidos,
  unImpressao, unRecursos;

{$R *.dfm}

procedure TCsOcorrenciasRetForm.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);

begin
  if not BancodeDados.Retorno_Ocor.IsEmpty then
  begin
    if not(gdSelected in State) then
      // if  BancodeDados.Retorno_OcorCOD_OCORRENCIA.Value <> 2 then
      // DBGrid1.Canvas.Font.Color := clRed else

      if BancodeDados.Retorno_OcorCOD_OCORRENCIA.Value = 2 then
        DBGrid1.Canvas.Font.Color := clNavy
      else
        DBGrid1.Canvas.Font.Color := clRed;

    DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.columns[DataCol].field, State);

  end;

end;

procedure TCsOcorrenciasRetForm.FormShow(Sender: TObject);
begin
  CsOcorrenciasRetForm.Dt_Inicial.DateTime := Date;
  CsOcorrenciasRetForm.Dt_Final.DateTime := Date;

  if BancodeDados.Retorno_Ocor.Active then
  begin
    BancodeDados.Retorno_Ocor.Last;
    lbContadorN.Caption := 'Total de registros: ' + FormatFloat('000000',
      BancodeDados.Retorno_Ocor.RecNo);
    BancodeDados.Retorno_Ocor.First;
    // ProcurarBoletos;
  end
  else
  begin
    lbContadorN.Caption := 'Total de registros: ' + FormatFloat('000000', 0);
  end;

  Height := 532;
  width := 723;
  if CsOcorrenciasRetForm.lbPainelAt.Enabled = true then
    EditConsulta.SetFocus;

end;

procedure TCsOcorrenciasRetForm.BtExecutarClick(Sender: TObject);
var
  Opcao, csTexto: String;
begin
  if BtExecutar.Enabled then
  begin

    if cbTipBanco.ItemIndex > 0 then
    begin
      Screen.Cursor := crSQLWait;
      HabilitarBotoes(Self, false);

      case cbCampo.ItemIndex of
        0:
          begin
            tipoData := 'DATA_ARQUIVO';
            TipoPeriodo := 'Período do Arquivo: ';
          end;
        1:
          begin
            tipoData := 'DATA_RECEBIMENTO';
            TipoPeriodo := 'Período do Recebimento: ';
          end;
        3:
          begin
            tipoData := 'DATA_VENCIMENTO';
            TipoPeriodo := 'Período do Vencimento: ';
          end;
      end;

      case CBOpcao.ItemIndex of
        0:
          Opcao := 'nosso_numero';
        1:
          Opcao := 'seu_numero';
        2:
          Opcao := 'numero_arquivo';
        3:
          Opcao := 'banco_id';
      end;

      Tipo_Cod := cbTipBanco.Text;

      HabilitarBotoes(Self, false);
      Try
        with BancodeDados.Retorno_Ocor do
        begin
          Close;
          SQL.Clear;
          SQL.Text := 'select * from retorno_ocorrencia where 1=1';

          if trim(Tipo_Cod) <> EmptyStr then
            SQL.Add(' and banco_id = ' + Copy(Tipo_Cod, 1, 6));

          if CbSituacao.ItemIndex = 1 then
            SQL.Add(' and cod_ocorrencia<>2')
          else if CbSituacao.ItemIndex = 2 then
            SQL.Add(' and cod_ocorrencia = 2');

          if trim(EditConsulta.Text) <> EmptyStr then
          begin
            csTexto := PrincipalForm.csContainingLIKE(trim(EditConsulta.Text),
              CBTipo.ItemIndex);
            if trim(csTexto) <> EmptyStr then
              SQL.Add(' and (UPPER(' + Opcao + ')' + csTexto + ')');
          end;
          SQL.Add(' order by ' + tipoData + ', numero_arquivo');
          Open;

          IndexCBTipBanc := cbTipBanco.ItemIndex;

          if IsEmpty then
          begin
            if EditConsulta = Sender then
              Mensagem('Não foi encontrada informação para essa consulta!',
                mtInformation, [mbok], mrok, 0);
            lbContadorN.Caption := 'Total de registros: ' +
              FormatFloat('000000', 0);

            EditConsulta.SetFocus;
          end
          else
          begin
            Last;
            lbContadorN.Caption := 'Total de registros: ' +
              FormatFloat('000000', RecNo);
          end;

        end;
      except
        on E: Exception do
          TraduzErro(E.Message);
      end;
      HabilitarBotoes(Self, true);

    end
    else
    begin
      Screen.Cursor := crSQLWait;
      HabilitarBotoes(Self, false);

      Mensagem('Selecione um banco válido!', mtConfirmation, [mbok], mrok, 0);
      cbTipBanco.SetFocus;
      HabilitarBotoes(Self, true);
      Screen.Cursor := crDefault;
    end;

  end;

end;

procedure TCsOcorrenciasRetForm.DBGrid1DblClick(Sender: TObject);
begin
  if BancodeDados.Retorno_OcorRET_OC_ID.Value > 0 then
  begin
    Screen.Cursor := crSQLWait;
    BancodeDados.qryBanco.Close;
    BancodeDados.qryBanco.Params[0].Value :=
      BancodeDados.Retorno_OcorBANCO_ID.Value;
    BancodeDados.qryBanco.Open;

    // (IntToStr(BancodeDados.qryBancoBAIX_BOL_PARAM.Value));

    BancodeDados.Emissoes.Close;
    BancodeDados.Emissoes.SQL.Text :=
      'select * from boletos_emissao where codigo_banco = ' +
      IntToStr(BancodeDados.Retorno_OcorCODIGO_BANCO.Value);

    if (BancodeDados.qryBancoBAIX_BOL_PARAM.Value > 0) then
    begin // OK

      if (BancodeDados.Retorno_OcorTIPO.Value <> 2) then
      begin // 2
        BancodeDados.Emissoes.SQL.Add(' AND nosso_numero = ' +
          QuotedStr(BancodeDados.Retorno_OcorNOSSO_NUMERO.Value));

        if trim(BancodeDados.Retorno_OcorSEU_NUMERO.Value) <> '' then
          BancodeDados.Emissoes.SQL.Add(' AND emissao_id = ' +
            QuotedStr(BancodeDados.Retorno_OcorSEU_NUMERO.Value))
        else
        begin
          FormatSettings.DecimalSeparator := '.';
          if BancodeDados.Retorno_OcorDATA_VENCIMENTO.Value > 0 then
            BancodeDados.Emissoes.SQL.Add(' AND vencimento =' +
              QuotedStr(FormatDateTime('yyyy/mm/dd',
              BancodeDados.Retorno_OcorDATA_VENCIMENTO.Value)));

          if BancodeDados.Retorno_OcorVALOR_DOCUMENTO.Value > 0 then
            BancodeDados.Emissoes.SQL.Add(' AND valor_doc =' +
              CurrToStr(BancodeDados.Retorno_OcorVALOR_DOCUMENTO.Value));
          FormatSettings.DecimalSeparator := ',';
        end;
      end
      else // 2
        BancodeDados.Emissoes.SQL.Add(' AND emissao_id = ' +
          QuotedStr(BancodeDados.Retorno_OcorSEU_NUMERO.Value));

    end
    else
    begin // 1

      BancodeDados.Emissoes.SQL.Add(' AND banco_id = ' +
        IntToStr(BancodeDados.Retorno_OcorBANCO_ID.Value));

      if (BancodeDados.Retorno_OcorTIPO.Value = 2) then // deb. auto
        BancodeDados.Emissoes.SQL.Add(' AND emissao_id = ' +
          trim(BancodeDados.Retorno_OcorSEU_NUMERO.Value))
      else
        BancodeDados.Emissoes.SQL.Add(' AND nosso_numero = ' +
          QuotedStr(BancodeDados.Retorno_OcorNOSSO_NUMERO.AsString));

    end;
    // ('OK4 '+BancodeDados.Emissoes.SQL.Text);
    BancodeDados.Emissoes.Open;
    if BancodeDados.Emissoes.IsEmpty then
    begin
      Screen.Cursor := crDefault;
      if trim(BancodeDados.Retorno_OcorSEU_NUMERO.Value) <> '' then
        Mensagem('Não foi encontrada nenhuma emissão referente a este retorno.'#13
          + 'Emissão: ' + (BancodeDados.Retorno_OcorSEU_NUMERO.Value),
          mtInformation, [mbok], mrok, 0)
      else
        Mensagem('Não foi encontrada nenhuma emissão referente a este retorno.',
          mtInformation, [mbok], mrok, 0)

    end
    else
    begin

      if not Assigned(VisualizaTitulosForm) then
        VisualizaTitulosForm := TVisualizaTitulosForm.Create(Application);
      try
        VisualizaTitulosForm.Caption := 'Títulos referentes ao retorno';
        try
          BancodeDados.Boletos.Close;
          BancodeDados.Boletos.SQL.Text := PrincipalForm.SQLrepositorio(0) +
            ' and b.boleto_id in (' +
            trim(BancodeDados.EmissoesID_BOLETOS.Value) + ')';
          BancodeDados.Boletos.Open;
        except
        end;
        if BancodeDados.Boletos.IsEmpty then
        begin
          BancodeDados.Boletos.Close;
          BancodeDados.Boletos.SQL.Text := PrincipalForm.SQLrepositorio(0) +
            ' and b.cli_id=' + IntToStr(BancodeDados.EmissoesCLI_ID.Value) +
            ' and b.parcela=' + QuotedStr(BancodeDados.EmissoesPARCELA.Value) +
            ' and b.emissao_id is not null and b.descricao=' +
            QuotedStr('Mensalidades');
          BancodeDados.Boletos.Open;
          VisualizaTitulosForm.Caption :=
            '** ATENÇÃO: Lista dos prováveis títulos referentes ao retorno';
        end;

        Screen.Cursor := crDefault;
        HabilitarBotoes(Self, false);

        VisualizaTitulosForm.ShowModal;
      finally
        BtFechar.Enabled := true;
        VisualizaTitulosForm.Release;
        VisualizaTitulosForm := nil;
        HabilitarBotoes(Self, true);
      end;
    end;
  end;

end;

procedure TCsOcorrenciasRetForm.DBGrid1TitleClick(Column: TColumn);
begin
  BancodeDados.MudaOrdem(BancodeDados.Retorno_Ocor, Column.field);
end;

procedure TCsOcorrenciasRetForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if BancodeDados.Retorno_Ocor.Active then
    BancodeDados.Retorno_Ocor.Close;
end;

procedure TCsOcorrenciasRetForm.FormCreate(Sender: TObject);
begin
  cbTipBanco.Items.Clear;
  // if not qryBancos.active then qryBancos.Open;
  //

  qryBancos.Close;
  qryBancos.SQL.Text := 'select banco_id, banco_nome from bancos where 1=1';

  if Assigned(CsBoletosEmitidosForm) then
    qryBancos.SQL.Add(' and BANCO_ID = ' +
      IntToStr(BancodeDados.V_BoletosBANCO_ID.Value))
  else
    qryBancos.SQL.Add
      (' and codigo_banco>0 and coalesce(cont_encerrada,0)=0 and codigo_cedente <> '
      + QuotedStr('') + ' and agencia <> ' + QuotedStr('') +
      ' order by banco_nome');

  qryBancos.Open;
  // (CODIGO_CEDENTE <> '' and CODIGO_CEDENTE<>'0') order by BANCO_NOME

  qryBancos.First;
  // cbTipBanco.Items.Add('TODOS');
  while not qryBancos.Eof do
  begin
    cbTipBanco.Items.Add(FormatFloat('000000', qryBancosBANCO_ID.AsInteger) +
      ' - ' + (qryBancosBANCO_NOME.Value));
    qryBancos.Next;
  end; // while
  if IndexCBTipBanc < 0 then
    IndexCBTipBanc := 0;
  cbTipBanco.ItemIndex := IndexCBTipBanc;

end;

procedure TCsOcorrenciasRetForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NextDlgCtl, 0, 0);
  end;
end;

procedure TCsOcorrenciasRetForm.EditConsultaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if EditConsulta.Enabled then
  begin

    if Key = 13 then
    begin
      Key := 0;
      BtExecutar.OnClick(Sender);
    end;
  end;
end;

procedure TCsOcorrenciasRetForm.BtImprimirClick(Sender: TObject);

begin
  if not BancodeDados.Retorno_Ocor.IsEmpty then
  begin
    HabilitarBotoes(Self, false);

    lbSituacao61.Caption := 'Situação: ' + CbSituacao.Text;
    lbPeriodo6.Caption := 'Data do Arquivo: ' + (Dt_Inicial.DateTimeStr) +
      ' até ' + (Dt_Final.DateTimeStr);

    LBbanco1.Caption := 'CONTA: ' + cbTipBanco.Text;

    BancodeDados.Retorno_Ocor.DisableControls;
    BancodeDados.PrepararRel(RLReport1);
    BancodeDados.Retorno_Ocor.EnableControls;
    HabilitarBotoes(Self, true);
  end;

end;

procedure TCsOcorrenciasRetForm.Localizaremisso1Click(Sender: TObject);
begin
  if BancodeDados.Retorno_OcorRET_OC_ID.Value > 0 then
  begin

    BancodeDados.qryBanco.Close;
    BancodeDados.qryBanco.Params[0].Value :=
      BancodeDados.Retorno_OcorBANCO_ID.Value;
    BancodeDados.qryBanco.Open;

    // (IntToStr(BancodeDados.qryBancoBAIX_BOL_PARAM.Value));
    BancodeDados.V_BOLETOS.Close;
    BancodeDados.V_BOLETOS.SQL.Text :=
      'select * from v_boletos where cod_banco = ' +
      IntToStr(BancodeDados.Retorno_OcorCODIGO_BANCO.Value);

    if (BancodeDados.qryBancoBAIX_BOL_PARAM.Value > 0) then
    begin // OK

      if (BancodeDados.Retorno_OcorTIPO.Value <> 2) then
      begin // 2
        BancodeDados.V_BOLETOS.SQL.Add(' AND nosso_numero = ' +
          QuotedStr(BancodeDados.Retorno_OcorNOSSO_NUMERO.Value));

        if trim(BancodeDados.Retorno_OcorSEU_NUMERO.Value) <> '' then
          BancodeDados.V_BOLETOS.SQL.Add(' AND emissao_id = ' +
            QuotedStr(BancodeDados.Retorno_OcorSEU_NUMERO.Value))
        else
        begin
          FormatSettings.DecimalSeparator := '.';
          if BancodeDados.Retorno_OcorDATA_VENCIMENTO.Value > 0 then
            BancodeDados.V_BOLETOS.SQL.Add(' AND vencimento =' +
              QuotedStr(FormatDateTime('yyyy/mm/dd',
              BancodeDados.Retorno_OcorDATA_VENCIMENTO.Value)));

          if BancodeDados.Retorno_OcorVALOR_DOCUMENTO.Value > 0 then
            BancodeDados.V_BOLETOS.SQL.Add(' AND valor_doc =' +
              CurrToStr(BancodeDados.Retorno_OcorVALOR_DOCUMENTO.Value));
          FormatSettings.DecimalSeparator := ',';
        end;
      end
      else // 2
        BancodeDados.V_BOLETOS.SQL.Add(' AND emissao_id = ' +
          QuotedStr(BancodeDados.Retorno_OcorSEU_NUMERO.Value));

    end
    else
    begin // 1

      BancodeDados.V_BOLETOS.SQL.Add(' AND  banco_id = ' +
        IntToStr(BancodeDados.Retorno_OcorBANCO_ID.Value));
      if (BancodeDados.Retorno_OcorTIPO.Value = 2) then
        BancodeDados.V_BOLETOS.SQL.Add(' AND emissao_id = ' +
          QuotedStr(BancodeDados.Retorno_OcorSEU_NUMERO.Value))
      else
        BancodeDados.V_BOLETOS.SQL.Add(' AND nosso_numero = ' +
          QuotedStr(BancodeDados.Retorno_OcorNOSSO_NUMERO.Value));
    end;
    // ('OK3 '+BancodeDados.V_BOLETOS.SQL.Text);
    BancodeDados.V_BOLETOS.Open;
    if not BancodeDados.V_BOLETOS.IsEmpty then
    begin
      try
        if not Assigned(CsBoletosEmitidosForm) then
          CsBoletosEmitidosForm := TCsBoletosEmitidosForm.Create(Application);
        CsBoletosEmitidosForm.contar_registro;
        CsBoletosEmitidosForm.VisualizarRetorno1.Enabled := false;
        CsBoletosEmitidosForm.ShowModal;
      finally
        CsBoletosEmitidosForm.Release;
        CsBoletosEmitidosForm := nil;
      end;
    end
    else
      Mensagem('Não foi encontrado nenhum boleto referente a este título.',
        mtInformation, [mbok], mrok, 0);
  end;
end;

procedure TCsOcorrenciasRetForm.BaixaNAfterOpen(DataSet: TDataSet);
begin
  BancodeDados.Retorno_Ocor.EnableControls;
end;

end.
