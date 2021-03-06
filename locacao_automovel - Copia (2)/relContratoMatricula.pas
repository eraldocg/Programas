unit relContratoMatricula;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, ShellApi, Gauges, Jpeg, DBCtrls, StdCtrls, ComCtrls,
  ExtCtrls, OleCtrls, SHDocVw, AppEvnts, SedDBImage, SEDButton, Buttons,
  IBX.IBTable, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TrelContratoMatriculaForm = class(TForm)
    DTmat: TDataSource;
    DocTemp: TClientDataSet;
    DocTempCONTRATO: TMemoField;
    DBPagina1: TDBRichEdit;
    DBImage2: TSedDBImage;
    dsDocTemp: TDataSource;
    Panel1: TPanel;
    ApplicationEvents1: TApplicationEvents;
    backImg: TSedDBImage;
    dsDoc: TDataSource;
    DocTempCONTRATO_HTML: TMemoField;
    DocTempOCULTAR_CAB: TSmallintField;
    DocTempIMG: TBlobField;
    DocTempESP_LINHA: TSmallintField;
    DocTempMARGENS: TSmallintField;
    Memo1: TMemo;
    DocTempFORCAR_RODAPE_IE: TSmallintField;
    btImprimir: TSpeedButton;
    btSalvar: TSpeedButton;
    btEnviar: TSpeedButton;
    btFechar: TSpeedButton;
    Panel2: TPanel;
    WebBrowser1: TWebBrowser;
    EditPag1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    EditPag2: TEdit;
    EditVisual: TComboBox;
    DocTempCABEC_TODAS: TSmallintField;
    DocTempOCULTAR_CEP: TSmallintField;
    DocTempOCULTAR_RESOLUCAO: TSmallintField;
    DocTempOCULTAR_PARC_ABERTO: TSmallintField;
    qryDocumentos: TFDQuery;
    qryDocumentosDOC_ID: TIntegerField;
    qryDocumentosDOC_NOME: TStringField;
    qryDocumentosIMG: TBlobField;
    qryDocumentosOCULTAR_CAB: TSmallintField;
    qryDocumentosATIVO: TSmallintField;
    qryDocumentosESP_LINHA: TSmallintField;
    qryDocumentosMARGENS: TSmallintField;
    qryDocumentosFORCAR_RODAPE_IE: TSmallintField;
    qryDocumentosTIPO_IMG_CAB: TSmallintField;
    qryDocumentosTAM_FONTE_CAB: TSmallintField;
    qryDocumentosCABEC_TODAS: TSmallintField;
    qryDocumentosADIMPLENT: TSmallintField;
    qryDocumentosADIMP_DOC_MAT: TSmallintField;
    qryDocumentosOCULTAR_CEP: TSmallintField;
    qryDocumentosOCULTAR_RESOLUCAO: TSmallintField;
    qryDocumentosOCULTAR_PARC_ABERTO: TSmallintField;
    DocTempCLI_ID: TIntegerField;
    DocTempCONF_ID: TIntegerField;
    DocTempTIPO_SERVICO: TStringField;
    qryV_ClientServ: TFDQuery;
    qryV_ClientServCLI_ID: TIntegerField;
    qryV_ClientServNOME: TStringField;
    qryV_ClientServCNPJ: TStringField;
    qryV_ClientServTIPO: TStringField;
    qryV_ClientServLOGRADOURO: TStringField;
    qryV_ClientServBAIRRO: TStringField;
    qryV_ClientServCIDADE: TStringField;
    qryV_ClientServESTADO: TStringField;
    qryV_ClientServCEP: TStringField;
    qryV_ClientServFONE1: TStringField;
    qryV_ClientServFONE2: TStringField;
    qryV_ClientServDIA_VENC: TIntegerField;
    qryV_ClientServDIAS_TOL: TIntegerField;
    qryV_ClientServCONFIAVEL: TSmallintField;
    qryV_ClientServENTREGUE_BOL: TSmallintField;
    qryV_ClientServSKYPE1: TStringField;
    qryV_ClientServEMAIL_CONTATO1: TStringField;
    qryV_ClientServFAT_NOTA: TSmallintField;
    qryV_ClientServSIT: TSmallintField;
    qryV_ClientServCONTATO: TStringField;
    qryV_ClientServCOD_RASTREIO: TStringField;
    qryV_ClientServEMAIL_CONTATO2: TStringField;
    qryV_ClientServIMP_BOL: TSmallintField;
    qryV_ClientServC_S_C_ID: TIntegerField;
    qryV_ClientServFORNE_ID: TIntegerField;
    dsV_ClientServ: TDataSource;
    qryV_ClientServDT_CONTRATO: TDateField;
    qryV_ClientServVENC_DIA: TIntegerField;
    DocTempCABEC_PRIM_PAG: TSmallintField;
    qryDocumentosCABEC_PRIM_PAG: TSmallintField;
    qryDocumentosPAG1: TMemoField;
    qryDocumentosDOC_HTML: TMemoField;
    qryV_ClientServOBS: TMemoField;
    qryV_ClientServDT_ALT_VL: TDateField;
    qryV_ClientServVALOR: TFloatField;
    qryV_ClientServGRADE_ID: TIntegerField;
    qryV_ClientServVEICULO_ID: TIntegerField;
    qryV_ClientServPLACA: TStringField;
    qryV_ClientServMARCA: TStringField;
    qryV_ClientServMODELO: TStringField;
    qryV_ClientServCOR: TStringField;
    qryV_ClientServRENAVAM: TStringField;
    qryV_ClientServCONF_ID: TIntegerField;
    qryV_ClientServVL_FRANQ_SEGURO: TFloatField;
    qryV_ClientServBANCO_ID: TIntegerField;
    qryV_ClientServCONTRATO_ID: TIntegerField;
    qryMunicipios: TFDQuery;
    qryMunicipiosCODMUN: TIntegerField;
    qryMunicipiosUF: TStringField;
    qryMunicipiosUF_COD: TStringField;
    qryMunicipiosNOME: TStringField;
    qryV_ClientServOBS_CONTRATO: TStringField;
    qryV_ClientServOBS_VEICULO: TStringField;
    qryV_ClientServNASCIMENTO: TDateField;
    qryV_ClientServSEXO: TStringField;
    qryV_ClientServNACIONALIDADE: TStringField;
    qryV_ClientServUF_NATURAL: TStringField;
    qryV_ClientServNATURALIDADE: TStringField;
    qryV_ClientServEST_CIVIL: TStringField;
    qryV_ClientServPROFISSAO: TStringField;
    qryV_ClientServRG: TStringField;
    qryV_ClientServRG_DATA: TDateField;
    qryV_ClientServRG_ORG_ID: TIntegerField;
    qryV_ClientServRG_UF: TStringField;
    qryV_ClientServPASSAPORTE: TStringField;
    qryV_ClientServDT_CONTRATO_FIM: TDateField;
    qryV_ClientServANO_FAB: TIntegerField;
    qryV_ClientServANO_MODELO: TIntegerField;
    qryV_ClientServDias_locacao: TIntegerField;
    qryV_ClientServNUMERO: TStringField;
    qryV_ClientServCNH_N_REG: TStringField;
    qryV_ClientServCNH_DT_1_HAB: TDateField;
    qryV_ClientServCNH_RENACH: TStringField;
    procedure ApplicationEvents1Message(var Msg: tagMSG; var Handled: Boolean);
    procedure DocTempBeforePost(DataSet: TDataSet);
    procedure btFecharClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryV_ClientServCalcFields(DataSet: TDataSet);
  private

    // DiaUltVenc: Smallint;
    // DiaVencPadrao: Smallint;
  public
    function ImprimeContratoHTML(geraContrato: Boolean;
      GaugeTmp: TGauge = nil): Boolean;
    procedure SubstituiVariaveis;
  end;

var
  relContratoMatriculaForm: TrelContratoMatriculaForm;
  txtCabecalho: String = '';

implementation

uses
  Base, Principal, SEDRegistro, unImpressao, unRecursos, ImprimirContrato;

{$R *.dfm}

// print directly without printer dialog
procedure WBPrintNoDialog(WB: TWebBrowser);
var
  vIn, vOut: OleVariant;
begin
  WB.ControlInterface.ExecWB(OLECMDID_PRINT, OLECMDEXECOPT_DONTPROMPTUSER,
    vIn, vOut);
end;

// call the printer dialog
procedure WBPrintWithDialog(WB: TWebBrowser);
var
  vIn, vOut: OleVariant;
begin
  WB.ControlInterface.ExecWB(OLECMDID_PRINT, OLECMDEXECOPT_PROMPTUSER,
    vIn, vOut);
end;

// Print Preview
procedure WBPrintPreview(WB: TWebBrowser);
var
  vIn, vOut: OleVariant;
begin
  WB.ControlInterface.ExecWB(OLECMDID_PRINTPREVIEW,
    OLECMDEXECOPT_DONTPROMPTUSER, vIn, vOut);
end;

// Call page setup dialog
procedure WBPrintPageSetup(WB: TWebBrowser);
var
  vIn, vOut: OleVariant;
begin
  WB.ControlInterface.ExecWB(OLECMDID_PAGESETUP, OLECMDEXECOPT_PROMPTUSER,
    vIn, vOut);
end;

procedure WBImprimir(WB: TWebBrowser);
var
  vIn, vOut: OleVariant;
begin
  WB.ControlInterface.ExecWB(OLECMDID_PRINTPREVIEW,
    OLECMDEXECOPT_DONTPROMPTUSER, vIn, vOut);
end;

procedure TrelContratoMatriculaForm.btImprimirClick(Sender: TObject);
begin
  HabilitarBotoes(Self, False);
  WBPrintWithDialog(WebBrowser1);
  HabilitarBotoes(Self, True);
end;

procedure SalvaLimpaDadosIE;
var
  Registro: TSEDRegistro;
begin
  Registro := TSEDRegistro.Create;
  try
    Registro.RootKey := HKEY_CURRENT_USER;
    if Registro.AbrirChave('Software\Microsoft\Internet Explorer\PageSetup')
    then
    begin

      Registro.EscreveTexto('header', '');
      { if Assigned(ImprimirFContratoForm) then
        begin

        if (ImprimirFContratoForm.rbTurma.Checked) then
        Registro.EscreveTexto('footer', '')
        else
        Registro.EscreveTexto('footer', '&bP?gina &p de &P');
        end
        else
        begin

        end; }
      Registro.EscreveTexto('footer', '');
      Registro.EscreveTexto('margin_top', '0.35000');
      Registro.EscreveTexto('margin_left', '0.35000');
      Registro.EscreveTexto('margin_right', '0.35000');
      Registro.EscreveTexto('margin_bottom', '0.35000');
      Registro.EscreveTexto('Print_Background', 'yes');

      { Registro.EscreveTexto('margin_top', '0');
        Registro.EscreveTexto('margin_left', '0');
        Registro.EscreveTexto('margin_right', '0');
        Registro.EscreveTexto('margin_bottom', '0'); }
      Registro.FecharChave;
    end;
    if Registro.AbrirChave('Software\Microsoft\Internet Explorer\Main') then
    begin
      Registro.EscreveTexto('Print_Background', 'yes');
    end;
  finally
    Registro.Free;
  end;
end;

procedure TrelContratoMatriculaForm.btFecharClick(Sender: TObject);
begin
  close;
end;

function AcentoHTML(Nome: String): String;
const
  // ComAcentuacao : array[1..59] of string=('?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '"', '?', '<', '>', '?', '?', '?', '?');
  ComAcentuacao = '??????????????????????????????????????????????????????????';
  SemAcentuacao: array [1 .. 58] of string = ('&agrave;', '&aacute;', '&acirc;',
    '&atilde;', '&auml;', '&egrave;', '&eacute;', '&ecirc;', '&euml;',
    '&igrave;', '&iacute;', '&icirc;', '&iuml;', '&ograve;', '&oacute;',
    '&ocirc;', '&otilde;', '&ouml;', '&ugrave;', '&uacute;', '&ucirc;',
    '&uuml;', '&ccedil;', '&Agrave;', '&Aacute;', '&Acirc;', '&Atilde;',
    '&Auml;', '&Egrave;', '&Eacute;', '&Ecirc;', '&Euml;', '&Igrave;',
    '&Iacute;', '&Icirc;', '&Iuml;', '&Ograve;', '&Oacute;', '&Ocirc;',
    '&Otilde;', '&Ouml;', '&Ugrave;', '&Uacute;', '&Ucirc;', '&Uuml;',
    '&Ccedil;', '&acute;', '&uml;', '&brvbar;', '&sect;', '&euro;', '&not;',
    '&pound;', '&sup1;', '&sup2;', '&sup3;', '&ordm;', '&ordf;');
var
  i: Integer;
begin

  for i := 1 to Length(ComAcentuacao) do
  begin
    Nome := StringReplace(Nome, ComAcentuacao[i], SemAcentuacao[i],
      [rfReplaceAll]);
    // Nome := SubstituirString(Nome, ComAcentuacao[i], SemAcentuacao[i]);
  end;
  Result := Trim(Nome);
end;

function TrelContratoMatriculaForm.ImprimeContratoHTML(geraContrato: Boolean;
  GaugeTmp: TGauge = nil): Boolean;
var
  strReturn: String;
  Letra, ultLetra: String;
  intPos: Integer;
  // Stream: TStream;

  rtfSize: Integer;
  rtfName: String;
  rtfColor: TColor;
  rtfBold, rtfItalic, rtfUnderline, rtfBullets, paragrafoAberto,
    htmlPuro: Boolean;

  rtfFirstInd, rtfAlign: Integer;

  function HtmlColorFromColor(mColor: TColor): string;
  begin
    mColor := ColorToRGB(mColor);
    Result := Format('#%.2x%.2x%.2x', [GetRValue(mColor), GetGValue(mColor),
      GetBValue(mColor)]);
  end;

  function PegaNomeAlinhamento(Value: Integer): String;
  begin
    Result := 'justify';
    case Value of
      0:
        Result := 'justify';
      1:
        Result := 'right';
      2:
        Result := 'center';
      3:
        Result := 'justify';
    else
      Result := 'justify';
    end;
  end;

  procedure PegaAtributos;
  begin
    rtfSize := DBPagina1.SelAttributes.Size;
    rtfName := DBPagina1.SelAttributes.Name;
    rtfColor := DBPagina1.SelAttributes.Color;
    rtfBold := (fsBold in DBPagina1.SelAttributes.Style);
    rtfItalic := (fsItalic in DBPagina1.SelAttributes.Style);
    rtfUnderline := (fsUnderline in DBPagina1.SelAttributes.Style);
  end;

  function AtributosDiferentes: Boolean;
  begin
    Result := False;
    if (rtfSize <> DBPagina1.SelAttributes.Size) then
    begin
      Result := True;

      exit;
    end;
    if (rtfName <> DBPagina1.SelAttributes.Name) then
    begin
      Result := True;

      exit;
    end;
    if (rtfColor <> DBPagina1.SelAttributes.Color) then
    begin
      Result := True;

      exit;
    end;
    if (rtfBold <> (fsBold in DBPagina1.SelAttributes.Style)) then
    begin
      Result := True;

      exit;
    end;
    if (rtfItalic <> (fsItalic in DBPagina1.SelAttributes.Style)) then
    begin
      Result := True;

      exit;
    end;
    if (rtfUnderline <> (fsUnderline in DBPagina1.SelAttributes.Style)) then
    begin
      Result := True;

      exit;
    end;
  end;

  function MontaEstiloSpan: String;
  begin
    PegaAtributos;
    Result := ' style="font-size:' + IntToStr(rtfSize) + 'px;font-family:' +
      rtfName + ';color:' + HtmlColorFromColor(rtfColor) + ';';

    if (rtfBold = True) then
      Result := Result + 'font-weight:bold;';

    if (rtfItalic = True) then
      Result := Result + 'font-style:italic;';

    if (rtfUnderline = True) then
      Result := Result + 'text-decoration:underline;';

    Result := Result + '"';
  end;

  procedure PegaAtributosParagrafo;
  begin

    rtfAlign := Ord(DBPagina1.Paragraph.Alignment);
    // rtfFirstInd := Trunc(DBPagina1.Paragraph.FirstIndent*RulerAdj)-4+GutterWid;
    rtfFirstInd := DBPagina1.Paragraph.FirstIndent;
    rtfBullets := Boolean(DBPagina1.Paragraph.Numbering);
    // rtfWidth    := 768-6-Trunc((DBPagina1.Paragraph.RightIndent+GutterWid)*RulerAdj);
  end;

  function MontaEstiloParagrafo: String;
  begin
    PegaAtributosParagrafo;

    // Result:=' style="text-align:'+PegaNomeAlinhamento(rtfAlign)+';text-indent:'+IntToStr(rtfFirstInd)+'px;width:'+IntToStr(rtfWidth)+'px;"';
    Result := ' style="text-align:' + PegaNomeAlinhamento(rtfAlign) +
      ';text-indent:' + IntToStr(rtfFirstInd) +
      'px;margin-top:0px;margin-bottom:0px;line-height:' +
      IntToStr(DocTempESP_LINHA.Value) + 'pt;"';
  end;

  procedure AbreParagrafo;
  begin
    if not(paragrafoAberto = True) then
    begin
      strReturn := strReturn + '<p' + MontaEstiloParagrafo + '><span' +
        MontaEstiloSpan + '>';
      if (rtfBullets = True) then
        strReturn := strReturn + '&bull;&nbsp;';
      paragrafoAberto := True;
    end;
  end;

begin
  Result := False;

  // if (DocTempFORCAR_RODAPE_IE.Value = 1) then
  SalvaLimpaDadosIE;

  paragrafoAberto := False;
  try
    Screen.Cursor := crSQLWait;
    DBPagina1.SelStart := 0;
    DBPagina1.SelLength := 1;
    ultLetra := Copy(DBPagina1.Text, 1, 1);
    strReturn := '<html>';

    strReturn := strReturn + '<head>';

    if Trim(DocTempIMG.AsString) <> '' then
    begin
      strReturn := strReturn + '<style type="text/css">' + '@media screen' +
        ' {' + '  .back{' + '  background-image:url(backimg.jpg);' +
        '  background-repeat:repeat-y;' + '  background-position:center;' +
        '  }' + ' } ' + '@media print{' + '  .back{' +
        '  background-image:url(backimg.jpg);' +
        '  background-repeat:no-repeat;' + '  background-position:center;' +
        '  }' + ' } ' + '</style>';
    end;

    strReturn := strReturn + '<style type="text/css">';
    strReturn := strReturn + ' p {line-height: ' +
      IntToStr(DocTempESP_LINHA.Value) + 'pt;}';
    strReturn := strReturn + ' .campofoto {height:4cm; width:3cm;}';
    strReturn := strReturn + ' .campoassin {height:50px; width:300px;}';
    strReturn := strReturn + ' thead { display: table-header-group; }';
    strReturn := strReturn +
      ' tfoot { display: table-footer-group; overflow: visible; }';
    strReturn := strReturn + '</style>';

    strReturn := strReturn + '</head>';

    strReturn := strReturn + '<body>';

    DBImage2.DataField := 'LOGO';
    DBImage2.Picture.SaveToFile(DiretorioTemp + 'doctmp.jpg');
    //htmlPuro := (Pos('<DIV>', UpperCase(DBPagina1.Text)) > 0);
    htmlPuro := True;

    // strReturn:=strReturn + '<div style="width:'+IntToStr(DocTempLARGURA.Value)+'mm;">';
    // strReturn:=strReturn + '<div style="width:210mm;">';
    // strReturn:=strReturn + '<div style="width:827">';

    strReturn := strReturn + '<div style="margin-left:' +
      IntToStr(DocTempMARGENS.Value) + 'mm;margin-right:' +
      IntToStr(DocTempMARGENS.Value) + 'mm;text-align:justify;">';
    // strReturn:=strReturn + '<div>';

    if not(htmlPuro = True) then
    begin
      if Trim(DocTempIMG.AsString) <> '' then
      begin
        backImg.Picture.SaveToFile(DiretorioTemp + 'backimg.jpg');
        strReturn := strReturn + '<div class="back">';
      end
      else
      begin
        // strReturn:=strReturn + '<div style="margin-left:'+IntToStr(DocTempMARGEM_ESQ.Value)+'mm;margin-right:'+IntToStr(DocTempMARGEM_DIR.Value)+'mm;margin-top:'+IntToStr(DocTempMARGEM_SUP.Value)+'mm;">';
        // strReturn:=strReturn + '<div style="margin-left:12mm;margin-right:12mm;margin-top:12mm;">';
        strReturn := strReturn + '<div>';
        // margin-bottom
      end;
    end;

    if (GaugeTmp <> nil) then
    begin
      GaugeTmp.Progress := 0;
      GaugeTmp.MaxValue := DocTemp.RecordCount;
    end;

    DocTemp.First;
    while not DocTemp.Eof do
    begin
      Application.ProcessMessages;

      // htmlPuro := (Pos('<DIV>', UpperCase(DBPagina1.Text)) > 0);
      htmlPuro := True;

      if not BancodeDados.Config.Active then
        BancodeDados.Config.Open;
      BancodeDados.Config.Locate('CONF_ID', DocTempCONF_ID.Value, []);

      if (DocTempCABEC_TODAS.Value = 1) then
      begin
        // strReturn := strReturn + '<table border=0 align="justify" width="100%" cellpadding=0 cellspacing=0>';
        strReturn := strReturn +
          '<table border=0 align="justify" cellpadding=0 cellspacing=0>';

        strReturn := strReturn + '<thead>';
        strReturn := strReturn + '<tr>';
        strReturn := strReturn + '<th width=100%>';
      end;

      // strReturn := strReturn + txtCabecalho;  eraldo

      if (DocTempCABEC_PRIM_PAG.Value = 1) then
        strReturn := strReturn + txtCabecalho
      else
        strReturn := strReturn;

      if (geraContrato = True) then
      begin
        // strReturn := strReturn + '<br/><p><span align="center" style="font-size: 12pt; line-height: 0pt;">CONTRATO DE PREST. DE SERVI?OS - ' + AnsiUpperCase(DocTempTIPO_SERVICO.AsString) + ' - N? ' + FormatFloat('000000', DocTempCLI_ID.Value) + '</span></p>';
        strReturn := strReturn + '<br style="line-height: 0pt;" />';
      end;

      if (DocTempCABEC_TODAS.Value = 1) then
      begin
        strReturn := strReturn + '</th>';
        strReturn := strReturn + '</tr>';
        strReturn := strReturn + '</thead>';

        { strReturn := strReturn + '<tfoot>';
          strReturn := strReturn + '<tr>';
          strReturn := strReturn + '<td width=100%>';
          strReturn := strReturn + 'Este ? o rodap?';
          strReturn := strReturn + '</td>';
          strReturn := strReturn + '</tr>';
          strReturn := strReturn + '</tfoot>'; }

        strReturn := strReturn + '<tbody>';
        strReturn := strReturn + '<tr>';
        // strReturn := strReturn + '<td width="100%" vertical-align="bottom">';
        strReturn := strReturn + '<td style="vertical-align:top;">';
      end;

      if (htmlPuro = True) then
      begin
        strReturn := strReturn + DBPagina1.Text;
      end
      else
      begin

        AbreParagrafo;

        { strReturn:=strReturn + '<select name="select1">';
          strReturn:=strReturn + '<option value="1">um</option>';
          strReturn:=strReturn + '<option value="2">dois</option>';
          strReturn:=strReturn + '</select>'; }

        for intPos := 0 to Length(DBPagina1.Text) - 1 do
        begin
          DBPagina1.SelStart := intPos;
          DBPagina1.SelLength := 1;

          Letra := Copy(DBPagina1.Text, intPos + 1, 1);

          if ((Letra = #10) { or (Letra=#13) } ) then
          begin
            // if {(ultLetra=#13) or }(Letra=#10) then
            strReturn := strReturn + '&nbsp;';

            strReturn := strReturn + '</span></p>';
            paragrafoAberto := False;
            // strReturn:=strReturn + '<p' + MontaEstiloParagrafo + '><span' + MontaEstiloSpan + '>';
          end
          else
          begin
            // if (Letra=#32) and ({(ultLetra=#13) or (ultLetra=#10) or }(ultLetra=#32)) then begin
            // strReturn:=strReturn + '&nbsp;';
            // end else begin
            AbreParagrafo;

            if intPos = 0 then
            begin
              // strReturn:=strReturn + '<span' + MontaEstiloSpan + '>';
            end
            else
            begin
              { if AtributosDiferentes then
                begin
                strReturn := strReturn + '</span>';
                strReturn := strReturn + '<span' + MontaEstiloSpan + '>';
                end; }
            end;
            // end;
          end;

          // if (Letra=#32) then begin
          // if not ({(ultLetra=#13) or (ultLetra=#10) or }(ultLetra=#32)) then strReturn := strReturn + Letra;
          // end else
          if (Letra = #32) then
          begin
            if (ultLetra = #32) then
              strReturn := strReturn + '&nbsp;'
            else
              strReturn := strReturn + Letra;
          end
          else if (Letra = #10) then
          begin
            //
          end
          else
            strReturn := strReturn + Letra;

          ultLetra := Letra;
        end; // for
      end; // Pos

      if not(htmlPuro = True) then
      begin
        strReturn := strReturn + '</span>';
        strReturn := strReturn + '</p>';
      end;

      if (DocTempCABEC_TODAS.Value = 1) then
      begin
        strReturn := strReturn + '</td>';
        strReturn := strReturn + '</tr>';
        strReturn := strReturn + '</tbody>';

        strReturn := strReturn + '</table>';
      end;

      if not(DocTemp.RecNo = DocTemp.RecordCount) then
        strReturn := strReturn + '<br style="page-break-after:always;">';

      if (GaugeTmp <> nil) then
        GaugeTmp.Progress := DocTemp.RecNo;

      DocTemp.Next;
      paragrafoAberto := False;
    end;

    strReturn := strReturn + '</div>';
    strReturn := strReturn + '</div>';

    strReturn := strReturn + '</body>';
    strReturn := strReturn + '</html>';

    strReturn := AcentoHTML(strReturn);

    Memo1.Lines.Text := strReturn;

    Memo1.Lines.SaveToFile(DiretorioTemp + 'doctmp.html');

    // strReturn := StringReplace(strReturn, '  ', '&nbsp;&nbsp;', [rfReplaceAll]);

    { Stream := TFileStream.Create(DiretorioTemp + 'doctmp.html', fmCreate);
      try
      Stream.WriteBuffer(Pointer(strReturn)^, Length(strReturn));
      finally
      Stream.Free;
      end;
    }

    // ShellExecute(Application.Handle, 'print', PChar(DiretorioTemp+'doctmp.html'), nil, nil, SW_SHOWNORMAL);
    WebBrowser1.Navigate(DiretorioTemp + 'doctmp.html');
    relContratoMatriculaForm.DocTemp.close;
    {
      se colocar isso no OnMessage de um ApplicationEvents bloqueia o botao direito do mouse no WebBrowser
      if (Msg.Message = WM_RBUTTONDOWN) or (Msg.Message = WM_RBUTTONDBLCLK) then
      if IsChild(Webbrowser1.Handle, Msg.hwnd) then
      Handled := True;
    }
    Screen.Cursor := crDefault;
    Result := True;
  except
    On E: Exception do
      // TraduzErro(E.Message);
  end;
end;

procedure TrelContratoMatriculaForm.qryV_ClientServCalcFields
  (DataSet: TDataSet);
begin
  if (qryV_ClientServDT_CONTRATO_FIM.Value > 0) and
    (qryV_ClientServDT_CONTRATO.Value > 0) then
    try

      if qryV_ClientServDT_CONTRATO_FIM.Value > qryV_ClientServDT_CONTRATO.Value
      then
        qryV_ClientServDias_locacao.Value :=
          Trunc(qryV_ClientServDT_CONTRATO_FIM.Value -
          qryV_ClientServDT_CONTRATO.Value)
      else
        qryV_ClientServDias_locacao.Value := 0;

    except
      qryV_ClientServDias_locacao.Value := 0;
    end;
end;

procedure TrelContratoMatriculaForm.ApplicationEvents1Message(var Msg: tagMSG;
  var Handled: Boolean);
begin
  if (Msg.Message = WM_RBUTTONDOWN) or (Msg.Message = WM_RBUTTONDBLCLK) then
    if IsChild(WebBrowser1.Handle, Msg.hwnd) then
      Handled := True;
end;

function SubstituirString2(Texto, StrAntiga, StrNova: String): String;
var
  PosAntiga, TamAntiga: Integer;
  txt1, txt2: String;
begin
  try
    Result := Texto;
    StrAntiga := StringReplace(StrAntiga, '<', '&lt;', []);
    StrAntiga := StringReplace(StrAntiga, '>', '&gt;', []);

    while Pos(AnsiUpperCase(StrAntiga), AnsiUpperCase(Texto)) > 0 do
    begin
      PosAntiga := Pos(AnsiUpperCase(StrAntiga), AnsiUpperCase(Texto));
      TamAntiga := Length(StrAntiga);
      txt1 := Copy(Texto, 1, PosAntiga - 1);
      txt2 := Copy(Texto, PosAntiga + TamAntiga, Length(Texto));
      Result := txt1 + StrNova + txt2;
      Texto := Result;
    end;
  except
    Result := Texto;
  end;
end;

{ function MontaData(PrimVencimento: TDate; Parcela : Integer) : TDate;
  var
  Ano,Mes,Dia : Word;
  begin
  DecodeDate(PrimVencimento, Ano, Mes, Dia);

  Mes:=Mes + (Parcela - 1);

  while Mes>12 do begin
  Ano:=Ano + 1;
  Mes:=1 + (Mes - 13);
  end;

  if Dia=31 then begin

  if (Mes=2) then begin
  if AnoBiSexto(Ano) then Dia:=29 else Dia:=28;
  end;

  if ((Mes=4) or (Mes=6) or (Mes=9) or (Mes=11)) then begin
  Dia:=30;
  end;
  end else//Dia=31

  if (Dia=30) or (Dia=29) then begin

  if (Mes=2) then begin
  if AnoBiSexto(Ano) then Dia:=29 else Dia:=28;
  end;

  end;//Dia=30 ou 29

  Result:=EncodeDate(Ano,Mes,Dia);
  end; }

{
  function MontaData(DiaVenc, Parcela: Integer): TDate;
  var
  Ano, Mes, Dia: Word;
  begin
  DecodeDate(relContratoMatriculaForm.PrimVencimento, Ano, Mes, Dia);

  Mes := Mes + (Parcela - 1);
  // if (GerarTitulosForm.DiaVencPersonal > 0) then
  // Dia:=GerarTitulosForm.DiaVencPersonal else
  if (DiaVenc > 0) then
  Dia := DiaVenc;



  while Mes > 12 do
  begin
  Ano := Ano + 1;
  Mes := 1 + (Mes - 13);
  end;

  if Dia = 31 then
  begin

  if (Mes = 2) then
  begin
  if AnoBiSexto(Ano) then
  Dia := 29
  else
  Dia := 28;
  end;

  if ((Mes = 4) or (Mes = 6) or (Mes = 9) or (Mes = 11)) then
  begin
  Dia := 30;
  end;
  end
  else // Dia=31

  if (Dia = 30) or (Dia = 29) then
  begin

  if (Mes = 2) then
  begin
  if AnoBiSexto(Ano) then
  Dia := 29
  else
  Dia := 28;
  end;

  end; // Dia=30 ou 29

  Result := EncodeDate(Ano, Mes, Dia);
  end;
}
procedure TrelContratoMatriculaForm.SubstituiVariaveis;
var
  // i: integer;
  // percDesc: currency;
  txtPagina: String;
  tamImg: String;
  tamFonteCab: Integer;
  // Ano, Mes, Dia: Word;
  // vencTmp: TDate;
  // podeIr: Boolean;
begin
  if relContratoMatriculaForm.DocTempCLI_ID.Value > 0 then
  begin

    tamFonteCab := relContratoMatriculaForm.qryDocumentosTAM_FONTE_CAB.Value;
    if (tamFonteCab <= 0) then
      tamFonteCab := 12;

    txtCabecalho := '';
    if not BancodeDados.Config.Active then
      BancodeDados.Config.Open;
    BancodeDados.Config.Locate('CONF_ID',
      relContratoMatriculaForm.DocTempCONF_ID.Value, []);

    // BancodeDados.Config.Close;
    // BancodeDados.Config.SQL.Text:='select c.*, (select m.nome from municipios m where m.codmun=c.cidade) as cidade_nome from config c where 1=1';
    // BancodeDados.Config.SQL.Add(' and conf_id = '+IntToStr(relContratoMatriculaForm.DocTempCONF_ID.Value));
    // BancodeDados.Config.Open;

    if (relContratoMatriculaForm.DocTempOCULTAR_CAB.Value <> 1) then
    begin
      if (relContratoMatriculaForm.qryDocumentosTIPO_IMG_CAB.Value = 0) then
      begin
        tamImg := 'width="96" height="100"';
      end;
      if (relContratoMatriculaForm.qryDocumentosTIPO_IMG_CAB.Value = 1) then
      begin
        tamImg := 'width="453" height="100"';
      end;

      txtCabecalho := txtCabecalho +
        '<div style="margin-bottom:15px; float:left; width:96px; height:100px;">'
        + '<img src="doctmp.jpg" ' + tamImg + '>' + '</div>';

      txtCabecalho := txtCabecalho +
        '<div style="margin-left:20px;margin-bottom:15px; float:left; height:82px; text-align:left; vertical-align:top">'
        + '<span style="font-size:' + IntToStr(tamFonteCab + 2) +
        'px;font-family:Arial;font-weight:bold;">' +
        BancodeDados.ConfigNOME.Value + '<br/>' + '</span>' +
        '<span style="font-size:' + IntToStr(tamFonteCab) +
        'px;font-family:Arial;">' + 'CPF/CNPJ: ' + BancodeDados.ConfigCNPJ.Value
        + '<br/>' + BancodeDados.ConfigLOGRADOURO.Value + ' - ' +
        BancodeDados.ConfigBAIRRO.Value + ' - ' + // '<br/>'+
        BancodeDados.ConfigCIDADE_NOME.Value + ' - ' +
        PegaUF(BancodeDados.ConfigUF.Value);

      if (relContratoMatriculaForm.DocTempOCULTAR_CEP.Value <> 1) then
        txtCabecalho := txtCabecalho + '<br/>' + 'CEP: ' +
          BancodeDados.ConfigCEP.Value + ' - Celular: ' +
          BancodeDados.ConfigCELULAR_1.Value;

      txtCabecalho := txtCabecalho + '<br/>' +

      // 'Impresso em '+FormatDateTime('dd/mm/yyyy hh:nn', Now)+

        '</span>' + '</div>';

      txtCabecalho := txtCabecalho + '<br/><br/><br/><br/><br/><br/>';
    end;

    if not(relContratoMatriculaForm.DocTemp.State in [dsInsert, dsEdit]) then
      relContratoMatriculaForm.DocTemp.Edit;
    txtPagina := relContratoMatriculaForm.DocTempCONTRATO.AsString;

    { INFORMA??ES DA EMPRESA }
    txtPagina := SubstituirString2(txtPagina, '<%emp_nome%>',
      BancodeDados.ConfigNOME.Value);
    // txtPagina := SubstituirString2(txtPagina, '<%emp_fantasia%>', BancodeDados.ConfigFANTASIA.Value);

    if Trim(BancodeDados.ConfigCNPJ.Value) <> '' then
      txtPagina := SubstituirString2(txtPagina, '<%emp_cnpj%>',
        BancodeDados.ConfigCNPJ.Value)
    else
      txtPagina := SubstituirString2(txtPagina, '<%emp_cnpj%>', '***');

    if Trim(BancodeDados.ConfigCIDADE.Value) <> '' then
    begin

      qryMunicipios.close;
      qryMunicipios.Params[0].Value := BancodeDados.ConfigCIDADE.Value;
      qryMunicipios.Open();

      txtPagina := SubstituirString2(txtPagina, '<%emp_cidade%>',
        (qryMunicipiosNOME.Value) + ' - ' +
        PegaUF(BancodeDados.ConfigUF.Value));
    end
    else
      txtPagina := SubstituirString2(txtPagina, '<%emp_cidade%>', '***');

    if Trim(BancodeDados.ConfigCEP.Value) <> '' then
      txtPagina := SubstituirString2(txtPagina, '<%emp_cep%>',
        BancodeDados.ConfigCEP.Value)
    else
      txtPagina := SubstituirString2(txtPagina, '<%emp_cep%>', '***');

    if Trim(BancodeDados.ConfigLOGRADOURO.Value) <> '' then
      txtPagina := SubstituirString2(txtPagina, '<%emp_logradouro%>',
        BancodeDados.ConfigLOGRADOURO.Value)
    else
      txtPagina := SubstituirString2(txtPagina, '<%emp_logradouro%>', '***');

    if Trim(BancodeDados.ConfigBAIRRO.Value) <> '' then
      txtPagina := SubstituirString2(txtPagina, '<%emp_bairro%>',
        BancodeDados.ConfigBAIRRO.Value)
    else
      txtPagina := SubstituirString2(txtPagina, '<%emp_bairro%>', '***');

    if Trim(BancodeDados.ConfigFONE1.Value) <> '' then
      txtPagina := SubstituirString2(txtPagina, '<%emp_fone1%>',
        BancodeDados.ConfigFONE1.Value)
    else
      txtPagina := SubstituirString2(txtPagina, '<%emp_fone1%>', '***');

    if Trim(BancodeDados.ConfigEMAIL_SUPORT.Value) <> '' then
      txtPagina := SubstituirString2(txtPagina, '<%emp_email_suport%>',
        BancodeDados.ConfigEMAIL_SUPORT.Value)
    else
      txtPagina := SubstituirString2(txtPagina, '<%emp_email_suport%>', '***');

    if Trim(BancodeDados.ConfigEMAIL_COMERC.Value) <> '' then
      txtPagina := SubstituirString2(txtPagina, '<%emp_email_comerc%>',
        BancodeDados.ConfigEMAIL_COMERC.Value)
    else
      txtPagina := SubstituirString2(txtPagina, '<%emp_email_comerc%>', '***');

    if Trim(BancodeDados.ConfigSITE.Value) <> '' then
      txtPagina := SubstituirString2(txtPagina, '<%emp_site%>',
        BancodeDados.ConfigSITE.Value)
    else
      txtPagina := SubstituirString2(txtPagina, '<%emp_site%>', '***');

    if Trim(BancodeDados.ConfigCELULAR_1.Value) <> EmptyStr then
      txtPagina := SubstituirString2(txtPagina, '<%emp_celular_1%>',
        BancodeDados.ConfigCELULAR_1.Value)
    else
      txtPagina := SubstituirString2(txtPagina, '<%emp_celular_1%>', '***');

    if (BancodeDados.ConfigNASCIMENTO.Value) > 0 then
      txtPagina := SubstituirString2(txtPagina, '<%emp_nascimento%>',
        FormatDateTime('dd/mm/yyyy', BancodeDados.ConfigNASCIMENTO.Value))
    else
      txtPagina := SubstituirString2(txtPagina, '<%emp_nascimento%>', '***');

    if Trim(BancodeDados.ConfigSEXO.Value) <> EmptyStr then
    begin
      if BancodeDados.ConfigSEXO.Value = 'F' then
        txtPagina := SubstituirString2(txtPagina, '<%emp_sexo%>', 'FEMININO')
      else
        txtPagina := SubstituirString2(txtPagina, '<%emp_sexo%>', 'MASCULINO')
    end
    else
      txtPagina := SubstituirString2(txtPagina, '<%emp_sexo%>', '***');

    if Trim(BancodeDados.ConfigNACIONALIDADE.Value) <> EmptyStr then
    begin
      BancodeDados.Nacionalidade.close;
      BancodeDados.Nacionalidade.sql.Text :=
        'select * from nacionalidade where codigo = ' +
        BancodeDados.ConfigNACIONALIDADE.Value;
      BancodeDados.Nacionalidade.Open;

      if Trim(BancodeDados.NacionalidadeNOME.Value) <> EmptyStr then
        txtPagina := SubstituirString2(txtPagina, '<%emp_nacionalid%>',
          BancodeDados.NacionalidadeNOME.Value)
      else
        txtPagina := SubstituirString2(txtPagina, '<%emp_nacionalid%>', '***');

    end
    else
      txtPagina := SubstituirString2(txtPagina, '<%emp_nacionalid%>', '***');

    if Trim(BancodeDados.ConfigUF_NATURAL.Value) <> EmptyStr then
      txtPagina := SubstituirString2(txtPagina, '<%emp_uf_natural%>',
        PegaUF(BancodeDados.ConfigUF_NATURAL.Value))
    else
      txtPagina := SubstituirString2(txtPagina, '<%emp_uf_natural%>', '***');

    if Trim(BancodeDados.ConfigNATURALIDADE.Value) <> EmptyStr then
    begin

      qryMunicipios.close;
      qryMunicipios.Params[0].Value := BancodeDados.ConfigNATURALIDADE.Value;
      qryMunicipios.Open();

      if Trim(qryMunicipiosNOME.Value) <> EmptyStr then
        txtPagina := SubstituirString2(txtPagina, '<%emp_naturalidade%>',
          qryMunicipiosNOME.Value)
      else
        txtPagina := SubstituirString2(txtPagina,
          '<%emp_naturalidade%>', '***');
    end
    else
      txtPagina := SubstituirString2(txtPagina, '<%emp_naturalidade%>', '***');

    if Trim(BancodeDados.ConfigEST_CIVIL.Value) <> EmptyStr then
      txtPagina := SubstituirString2(txtPagina, '<%emp_est_civil%>',
        BancodeDados.ConfigEST_CIVIL.Value)
    else
      txtPagina := SubstituirString2(txtPagina, '<%emp_est_civil%>', '***');

    if Trim(BancodeDados.ConfigPROFISSAO.Value) <> EmptyStr then
      txtPagina := SubstituirString2(txtPagina, '<%emp_profissao%>',
        BancodeDados.ConfigPROFISSAO.Value)
    else
      txtPagina := SubstituirString2(txtPagina, '<%emp_profissao%>', '***');

    if Trim(BancodeDados.ConfigRG.Value) <> EmptyStr then
      txtPagina := SubstituirString2(txtPagina, '<%emp_rg%>',
        BancodeDados.ConfigRG.Value)
    else
      txtPagina := SubstituirString2(txtPagina, '<%emp_rg%>', '***');

    if (BancodeDados.ConfigRG_DATA.Value) > 0 then
      txtPagina := SubstituirString2(txtPagina, '<%emp_rg_data%>',
        FormatDateTime('dd/mm/yyyy', BancodeDados.ConfigRG_DATA.Value))
    else
      txtPagina := SubstituirString2(txtPagina, '<%emp_rg_data%>', '***');

    if (BancodeDados.ConfigRG_ORG_ID.Value) > 0 then
    begin
      BancodeDados.OrgExped.close;
      BancodeDados.OrgExped.sql.Text :=
        'select * from orgao_exped where ORG_ID = ' +
        IntToStr(BancodeDados.ConfigRG_ORG_ID.Value);
      BancodeDados.OrgExped.Open();
      txtPagina := SubstituirString2(txtPagina, '<%emp_rg_org%>',
        BancodeDados.OrgExpedORG_EXPED.Value)
    end
    else
      txtPagina := SubstituirString2(txtPagina, '<%emp_rg_org%>', '***');

    if Trim(BancodeDados.ConfigRG_UF.Value) <> EmptyStr then
      txtPagina := SubstituirString2(txtPagina, '<%emp_rg_uf%>',
        PegaUF(BancodeDados.ConfigRG_UF.Value))
    else
      txtPagina := SubstituirString2(txtPagina, '<%emp_rg_uf%>', '***');

    if Trim(BancodeDados.ConfigPASSAPORTE.Value) <> EmptyStr then
      txtPagina := SubstituirString2(txtPagina, '<%emp_passaporte%>',
        BancodeDados.ConfigPASSAPORTE.Value)
    else
      txtPagina := SubstituirString2(txtPagina, '<%emp_passaporte%>', '***');

    if Trim(BancodeDados.ConfigCHAVE_PIX.Value) <> EmptyStr then
      txtPagina := SubstituirString2(txtPagina, '<%emp_chave_pix%>',
        BancodeDados.ConfigCHAVE_PIX.Value)
    else
      txtPagina := SubstituirString2(txtPagina, '<%emp_chave_pix%>', '***');

    if Trim(BancodeDados.ConfigCNH_N_REG.Value) <> EmptyStr then
      txtPagina := SubstituirString2(txtPagina, '<%emp_cnh_numero%>',
        BancodeDados.ConfigCNH_N_REG.Value)
    else
      txtPagina := SubstituirString2(txtPagina, '<%emp_cnh_numero%>', '***');

    if Trim(BancodeDados.ConfigCNH_RENACH.Value) <> EmptyStr then
      txtPagina := SubstituirString2(txtPagina, '<%emp_cnh_renach%>',
        BancodeDados.ConfigCNH_RENACH.Value)
    else
      txtPagina := SubstituirString2(txtPagina, '<%emp_cnh_renach%>', '***');

    if (BancodeDados.ConfigCNH_DT_1_HAB.Value) > 0 then
      txtPagina := SubstituirString2(txtPagina, '<%emp_cnh_data_1hab%>',
        FormatDateTime('dd/mm/yyyy', BancodeDados.ConfigCNH_DT_1_HAB.Value))
    else
      txtPagina := SubstituirString2(txtPagina, '<%emp_cnh_data_1hab%>', '***');


    { CLIENTE }
    txtPagina := SubstituirString2(txtPagina, '<%client_Codigo%>',
      FormatFloat('000000',
      relContratoMatriculaForm.qryV_ClientServCLI_ID.Value));
    txtPagina := SubstituirString2(txtPagina, '<%client_nome%>',
      AnsiUpperCase(relContratoMatriculaForm.qryV_ClientServNOME.Value));

    // (relContratoMatriculaForm.qryV_ClientServCNPJ.Value);

    // if Trim(relContratoMatriculaForm.qryV_ClientServCNPJ.Value) <> EmptyStr then
    txtPagina := SubstituirString2(txtPagina, '<%client_cnpj%>',
      relContratoMatriculaForm.qryV_ClientServCNPJ.Value);
    // else
    // txtPagina := SubstituirString2(txtPagina, '<%client_cnpj%>', '***');

    if Trim(relContratoMatriculaForm.qryV_ClientServLOGRADOURO.AsString) <> ''
    then
      txtPagina := SubstituirString2(txtPagina, '<%client_logradouro%>',
        AnsiUpperCase(relContratoMatriculaForm.qryV_ClientServLOGRADOURO.
        AsString + ', ' + relContratoMatriculaForm.
        qryV_ClientServNUMERO.AsString))
    else
      txtPagina := SubstituirString2(txtPagina, '<%client_logradouro%>', '***');

    if Trim(relContratoMatriculaForm.qryV_ClientServBAIRRO.AsString) <> '' then
      txtPagina := SubstituirString2(txtPagina, '<%client_bairro%>',
        AnsiUpperCase(relContratoMatriculaForm.qryV_ClientServBAIRRO.AsString))
    else
      txtPagina := SubstituirString2(txtPagina, '<%client_bairro%>', '***');
    if Trim(relContratoMatriculaForm.qryV_ClientServCEP.AsString) <> '' then
      txtPagina := SubstituirString2(txtPagina, '<%client_cep%>',
        relContratoMatriculaForm.qryV_ClientServCEP.AsString)
    else
      txtPagina := SubstituirString2(txtPagina, '<%client_cep%>', '***');

    if Trim(relContratoMatriculaForm.qryV_ClientServCIDADE.AsString) <> '' then
    begin
      qryMunicipios.close;
      qryMunicipios.Params[0].Value :=
        relContratoMatriculaForm.qryV_ClientServCIDADE.Value;
      qryMunicipios.Open();

      if Trim(qryMunicipiosNOME.AsString) <> '' then
        txtPagina := SubstituirString2(txtPagina, '<%client_cidade%>',
          AnsiUpperCase((qryMunicipiosNOME.AsString)) + ' - ' +
          AnsiUpperCase(PegaUF(relContratoMatriculaForm.qryV_ClientServESTADO.
          AsString)))

    end
    else
      txtPagina := SubstituirString2(txtPagina, '<%client_cidade%>', '***');

    if Trim(relContratoMatriculaForm.qryV_ClientServFONE1.Value) <> '' then
      txtPagina := SubstituirString2(txtPagina, '<%client_telef1%>',
        relContratoMatriculaForm.qryV_ClientServFONE1.Value)
    else
      txtPagina := SubstituirString2(txtPagina, '<%client_telef1%>', '***');

    if Trim(relContratoMatriculaForm.qryV_ClientServFONE2.Value) <> '' then
      txtPagina := SubstituirString2(txtPagina, '<%client_telef2%>',
        relContratoMatriculaForm.qryV_ClientServFONE2.Value)
    else
      txtPagina := SubstituirString2(txtPagina, '<%client_telef2%>', '***');

    if Trim(relContratoMatriculaForm.qryV_ClientServEMAIL_CONTATO1.Value) <> ''
    then
      txtPagina := SubstituirString2(txtPagina, '<%client_Email1%>',
        relContratoMatriculaForm.qryV_ClientServEMAIL_CONTATO1.Value)
    else
      txtPagina := SubstituirString2(txtPagina, '<%client_Email1%>', '***');
    if Trim(relContratoMatriculaForm.qryV_ClientServEMAIL_CONTATO2.Value) <> ''
    then
      txtPagina := SubstituirString2(txtPagina, '<%client_Email2%>',
        relContratoMatriculaForm.qryV_ClientServEMAIL_CONTATO2.Value)
    else
      txtPagina := SubstituirString2(txtPagina, '<%client_Email2%>', '***');

    if Trim(relContratoMatriculaForm.qryV_ClientServSKYPE1.Value) <> '' then
      txtPagina := SubstituirString2(txtPagina, '<%client_skype%>',
        relContratoMatriculaForm.qryV_ClientServSKYPE1.Value)
    else
      txtPagina := SubstituirString2(txtPagina, '<%client_skype%>', '***');

    if Trim(relContratoMatriculaForm.qryV_ClientServCONTATO.Value) <> '' then
      txtPagina := SubstituirString2(txtPagina, '<%client_contato%>',
        AnsiUpperCase(relContratoMatriculaForm.qryV_ClientServCONTATO.Value))
    else
      txtPagina := SubstituirString2(txtPagina, '<%client_contato%>', '***');

    if (relContratoMatriculaForm.qryV_ClientServNASCIMENTO.Value) > 0 then
      txtPagina := SubstituirString2(txtPagina, '<%client_nascimento%>',
        FormatDateTime('dd/mm/yyyy',
        relContratoMatriculaForm.qryV_ClientServNASCIMENTO.Value))
    else
      txtPagina := SubstituirString2(txtPagina, '<%client_nascimento%>', '***');

    if Trim(relContratoMatriculaForm.qryV_ClientServSEXO.Value) <> EmptyStr then
    begin
      if relContratoMatriculaForm.qryV_ClientServSEXO.Value = 'F' then
        txtPagina := SubstituirString2(txtPagina, '<%client_sexo%>', 'FEMININO')
      else
        txtPagina := SubstituirString2(txtPagina, '<%client_sexo%>',
          'MASCULINO')
    end
    else
      txtPagina := SubstituirString2(txtPagina, '<%client__sexo%>', '***');

    if Trim(relContratoMatriculaForm.qryV_ClientServNACIONALIDADE.Value) <> EmptyStr
    then
    begin
      BancodeDados.Nacionalidade.close;
      BancodeDados.Nacionalidade.sql.Text :=
        'select * from nacionalidade where codigo = ' +
        relContratoMatriculaForm.qryV_ClientServNACIONALIDADE.Value;
      BancodeDados.Nacionalidade.Open;

      if Trim(BancodeDados.NacionalidadeNOME.Value) <> EmptyStr then
        txtPagina := SubstituirString2(txtPagina, '<%client_nacionalid%>',
          BancodeDados.NacionalidadeNOME.Value)
      else
        txtPagina := SubstituirString2(txtPagina,
          '<%client_nacionalid%>', '***');

    end
    else
      txtPagina := SubstituirString2(txtPagina, '<%client_nacionalid%>', '***');

    if Trim(relContratoMatriculaForm.qryV_ClientServUF_NATURAL.Value) <> EmptyStr
    then
      txtPagina := SubstituirString2(txtPagina, '<%client_uf_natural%>',
        PegaUF(relContratoMatriculaForm.qryV_ClientServUF_NATURAL.Value))
    else
      txtPagina := SubstituirString2(txtPagina, '<%client_uf_natural%>', '***');

    if Trim(relContratoMatriculaForm.qryV_ClientServNATURALIDADE.Value) <> EmptyStr
    then
    begin

      qryMunicipios.close;
      qryMunicipios.Params[0].Value :=
        relContratoMatriculaForm.qryV_ClientServNATURALIDADE.Value;
      qryMunicipios.Open();

      if Trim(qryMunicipiosNOME.Value) <> EmptyStr then
        txtPagina := SubstituirString2(txtPagina, '<%client_naturalidade%>',
          qryMunicipiosNOME.Value)
      else
        txtPagina := SubstituirString2(txtPagina,
          '<%client_naturalidade%>', '***');
    end
    else
      txtPagina := SubstituirString2(txtPagina,
        '<%client_naturalidade%>', '***');

    if Trim(relContratoMatriculaForm.qryV_ClientServEST_CIVIL.Value) <> EmptyStr
    then
      txtPagina := SubstituirString2(txtPagina, '<%client_est_civil%>',
        relContratoMatriculaForm.qryV_ClientServEST_CIVIL.Value)
    else
      txtPagina := SubstituirString2(txtPagina, '<%client_est_civil%>', '***');

    if Trim(relContratoMatriculaForm.qryV_ClientServPROFISSAO.Value) <> EmptyStr
    then
      txtPagina := SubstituirString2(txtPagina, '<%client_profissao%>',
        relContratoMatriculaForm.qryV_ClientServPROFISSAO.Value)
    else
      txtPagina := SubstituirString2(txtPagina, '<%client_profissao%>', '***');

    if Trim(relContratoMatriculaForm.qryV_ClientServRG.Value) <> EmptyStr then
      txtPagina := SubstituirString2(txtPagina, '<%client_rg%>',
        relContratoMatriculaForm.qryV_ClientServRG.Value)
    else
      txtPagina := SubstituirString2(txtPagina, '<%client_rg%>', '***');

    if (relContratoMatriculaForm.qryV_ClientServRG_DATA.Value) > 0 then
      txtPagina := SubstituirString2(txtPagina, '<%client_rg_data%>',
        FormatDateTime('dd/mm/yyyy',
        relContratoMatriculaForm.qryV_ClientServRG_DATA.Value))
    else
      txtPagina := SubstituirString2(txtPagina, '<%client_rg_data%>', '***');

    if (relContratoMatriculaForm.qryV_ClientServRG_ORG_ID.Value) > 0 then
    begin
      BancodeDados.OrgExped.close;
      BancodeDados.OrgExped.sql.Text :=
        'select * from orgao_exped where ORG_ID = ' +
        IntToStr(relContratoMatriculaForm.qryV_ClientServRG_ORG_ID.Value);
      BancodeDados.OrgExped.Open();
      txtPagina := SubstituirString2(txtPagina, '<%client_rg_org%>',
        BancodeDados.OrgExpedORG_EXPED.Value)
    end
    else
      txtPagina := SubstituirString2(txtPagina, '<%client_rg_org%>', '***');

    if Trim(relContratoMatriculaForm.qryV_ClientServRG_UF.Value) <> EmptyStr
    then
      txtPagina := SubstituirString2(txtPagina, '<%client_rg_uf%>',
        PegaUF(relContratoMatriculaForm.qryV_ClientServRG_UF.Value))
    else
      txtPagina := SubstituirString2(txtPagina, '<%client_rg_uf%>', '***');

    if Trim(relContratoMatriculaForm.qryV_ClientServPASSAPORTE.Value) <> EmptyStr
    then
      txtPagina := SubstituirString2(txtPagina, '<%client_passaporte%>',
        relContratoMatriculaForm.qryV_ClientServPASSAPORTE.Value)
    else
      txtPagina := SubstituirString2(txtPagina, '<%client_passaporte%>', '***');

    if Trim(relContratoMatriculaForm.qryV_ClientServCNH_N_REG.Value) <> EmptyStr then
      txtPagina := SubstituirString2(txtPagina, '<%client_cnh_numero%>',
        relContratoMatriculaForm.qryV_ClientServCNH_N_REG.Value)
    else
      txtPagina := SubstituirString2(txtPagina, '<%client_cnh_numero%>', '***');

    if Trim(relContratoMatriculaForm.qryV_ClientServCNH_RENACH.Value) <> EmptyStr then
      txtPagina := SubstituirString2(txtPagina, '<%client_cnh_renach%>',
        relContratoMatriculaForm.qryV_ClientServCNH_RENACH.Value)
    else
      txtPagina := SubstituirString2(txtPagina, '<%client_cnh_renach%>', '***');

    if (relContratoMatriculaForm.qryV_ClientServCNH_DT_1_HAB.Value) > 0 then
      txtPagina := SubstituirString2(txtPagina, '<%client_cnh_data_1hab%>',
        FormatDateTime('dd/mm/yyyy', relContratoMatriculaForm.qryV_ClientServCNH_DT_1_HAB.Value))
    else
      txtPagina := SubstituirString2(txtPagina, '<%client_cnh_data_1hab%>', '***');


    { INFORMA??ES FINANCEIRA  E CONTRATUAIS }
    if Trim(relContratoMatriculaForm.qryV_ClientServOBS_CONTRATO.Value) <> ''
    then
      txtPagina := SubstituirString2(txtPagina, '<%contrato_obs%>',
        AnsiUpperCase(relContratoMatriculaForm.
        qryV_ClientServOBS_CONTRATO.Value))
    else
      txtPagina := SubstituirString2(txtPagina, '<%contrato_obs%>', '***');

    if relContratoMatriculaForm.qryV_ClientServDT_CONTRATO.Value > 0 then
    begin
      txtPagina := SubstituirString2(txtPagina, '<%data_contrato%>',
        FormatDateTime('dd/mm/yyyy',
        relContratoMatriculaForm.qryV_ClientServDT_CONTRATO.Value));
      txtPagina := SubstituirString2(txtPagina, '<%data_contrato_ext%>',
        FormatDateTime('dd "de" mmmm "de" yyyy',
        relContratoMatriculaForm.qryV_ClientServDT_CONTRATO.Value));
    end
    else
    begin
      txtPagina := SubstituirString2(txtPagina, '<%data_contrato%>',
        FormatDateTime('dd/mm/yyyy', date));
      txtPagina := SubstituirString2(txtPagina, '<%data_contrato_ext%>',
        FormatDateTime('dd "de" mmmm "de" yyyy', date));
    end;

    if relContratoMatriculaForm.qryV_ClientServDT_CONTRATO_FIM.Value > 0 then
    begin
      txtPagina := SubstituirString2(txtPagina, '<%data_contrato_fim%>',
        FormatDateTime('dd/mm/yyyy',
        relContratoMatriculaForm.qryV_ClientServDT_CONTRATO_FIM.Value));
      txtPagina := SubstituirString2(txtPagina, '<%data_contrato_fim_ext%>',
        FormatDateTime('dd "de" mmmm "de" yyyy',
        relContratoMatriculaForm.qryV_ClientServDT_CONTRATO_FIM.Value));
    end
    else
    begin
      txtPagina := SubstituirString2(txtPagina, '<%data_contrato_fim%>',
        FormatDateTime('dd/mm/yyyy', date));
      txtPagina := SubstituirString2(txtPagina, '<%data_contrato_fim_ext%>',
        FormatDateTime('dd "de" mmmm "de" yyyy', date));
    end;

    if (relContratoMatriculaForm.qryV_ClientServDias_locacao.Value) > 0 then
    begin
      txtPagina := SubstituirString2(txtPagina, '<%N_dias_contrato%>',
        FormatFloat('000',
        relContratoMatriculaForm.qryV_ClientServDias_locacao.Value));
      txtPagina := SubstituirString2(txtPagina, '<%N_dias_contrato_ext%>',
        Extenso2(relContratoMatriculaForm.qryV_ClientServDias_locacao.Value));
    end
    else
    begin
      txtPagina := SubstituirString2(txtPagina, '<%N_dias_contrato%>', '***');
      txtPagina := SubstituirString2(txtPagina,
        '<%N_dias_contrato_ext%>', '***');
    end;

    if (relContratoMatriculaForm.qryV_ClientServVENC_DIA.Value > 0) then
    begin
      txtPagina := SubstituirString2(txtPagina, '<%dia_venc%>',
        IntToStr(relContratoMatriculaForm.qryV_ClientServVENC_DIA.Value));
      txtPagina := SubstituirString2(txtPagina, '<%dia_venc_ext%>',
        Extenso2(relContratoMatriculaForm.qryV_ClientServVENC_DIA.Value));
    end
    else
    begin
      txtPagina := SubstituirString2(txtPagina, '<%dia_venc%>', '***');
      txtPagina := SubstituirString2(txtPagina, '<%dia_venc_ext%>', '***');
    end;

    if relContratoMatriculaForm.qryV_ClientServDIAS_TOL.Value > 0 then
    begin
      txtPagina := SubstituirString2(txtPagina, '<%dias_tol%>',
        IntToStr(relContratoMatriculaForm.qryV_ClientServDIAS_TOL.Value));
      txtPagina := SubstituirString2(txtPagina, '<%dias_tol_ext%>',
        Extenso2(relContratoMatriculaForm.qryV_ClientServDIAS_TOL.Value))
    end
    else
    begin
      txtPagina := SubstituirString2(txtPagina, '<%dias_tol%>', '***');
      txtPagina := SubstituirString2(txtPagina, '<%dias_tol_ext%>', '***');
    end;

    if relContratoMatriculaForm.qryV_ClientServGRADE_ID.Value > 0 then
    begin

      BancodeDados.GradeFin.close;
      BancodeDados.GradeFin.sql.Text :=
        'select * from grade_financeira where grade_id = ' +
        IntToStr(relContratoMatriculaForm.qryV_ClientServGRADE_ID.Value);
      BancodeDados.GradeFin.Open();

      if (BancodeDados.GradeFinMULTA.Value > 0) then
        txtPagina := SubstituirString2(txtPagina, '<%multa%>',
          FormatFloat(',0.00%', BancodeDados.GradeFinMULTA.Value))
      else
        txtPagina := SubstituirString2(txtPagina, '<%multa%>', '***');

      if (BancodeDados.GradeFinJUROS.Value > 0) then
        txtPagina := SubstituirString2(txtPagina, '<%juros%>',
          FormatFloat(',0.00%', BancodeDados.GradeFinJUROS.Value))
      else if (BancodeDados.GradeFinJUROS_MES.Value > 0) then
        txtPagina := SubstituirString2(txtPagina, '<%juros%>',
          FormatFloat(',0.00%', BancodeDados.GradeFinJUROS.Value))
      else
        txtPagina := SubstituirString2(txtPagina, '<%juros%>', '***');

    end
    else
    begin
      txtPagina := SubstituirString2(txtPagina, '<%multa%>', '***');
      txtPagina := SubstituirString2(txtPagina, '<%juros%>', '***');

    end;

    if (relContratoMatriculaForm.qryV_ClientServVALOR.Value > 0) then
      txtPagina := SubstituirString2(txtPagina, '<%valor%>',
        FormatFloat(',0.00',
        relContratoMatriculaForm.qryV_ClientServVALOR.Value))
    else
      txtPagina := SubstituirString2(txtPagina, '<%valor_mensal%>', '***');
    if (relContratoMatriculaForm.qryV_ClientServVALOR.Value > 0) then
      txtPagina := SubstituirString2(txtPagina, '<%Valor_ext%>',
        extenso(relContratoMatriculaForm.qryV_ClientServVALOR.Value))
    else
      txtPagina := SubstituirString2(txtPagina, '<%Valor_mes_ext%>', '***');

    if (BancodeDados.ConfigVL_MULT_CONTRATUAL.Value > 0) then
      txtPagina := SubstituirString2(txtPagina, '<%valor_multa_contratual%>',
        FormatFloat(',0.00', BancodeDados.ConfigVL_MULT_CONTRATUAL.Value))
    else
      txtPagina := SubstituirString2(txtPagina,
        '<%valor_multa_contratual%>', '***');
    if (qryV_ClientServVL_FRANQ_SEGURO.Value > 0) then
      txtPagina := SubstituirString2(txtPagina,
        '<%valor_multa_contratual_ext%>',
        extenso(BancodeDados.ConfigVL_MULT_CONTRATUAL.Value))
    else
      txtPagina := SubstituirString2(txtPagina,
        '<%valor_multa_contratual_ext%>', '***');

    // bancos
    if relContratoMatriculaForm.qryV_ClientServBANCO_ID.Value > 0 then
    begin
      BancodeDados.Bancos.close;
      BancodeDados.Bancos.sql.Text := 'select * from bancos where banco_id = ' +
        IntToStr(relContratoMatriculaForm.qryV_ClientServBANCO_ID.Value);
      BancodeDados.Bancos.Open();

      if Trim(BancodeDados.BancosBANCO_NOME.Value) <> EmptyStr then
        txtPagina := SubstituirString2(txtPagina, '<%banco_abrev%>',
          AnsiUpperCase(BancodeDados.BancosABREV.Value))
      else
        txtPagina := SubstituirString2(txtPagina, '<%banco_abrev%>', '***');

      if Trim(BancodeDados.BancosBANCO_NOME.Value) <> EmptyStr then
        txtPagina := SubstituirString2(txtPagina, '<%banco%>',
          AnsiUpperCase(BancodeDados.BancosBANCO_NOME.Value))
      else
        txtPagina := SubstituirString2(txtPagina, '<%banco%>', '***');

      if Trim(BancodeDados.BancosAGENCIA.Value) <> EmptyStr then
        txtPagina := SubstituirString2(txtPagina, '<%agencia%>',
          AnsiUpperCase(BancodeDados.BancosAGENCIA.Value))
      else
        txtPagina := SubstituirString2(txtPagina, '<%agencia%>', '***');

      if Trim(BancodeDados.BancosCHAVE_PIX.Value) <> EmptyStr then
        txtPagina := SubstituirString2(txtPagina, '<%banco_chave_pix%>',
          BancodeDados.BancosCHAVE_PIX.Value)
      else
        txtPagina := SubstituirString2(txtPagina, '<%banco_chave_pix%>', '***');

      if (BancodeDados.BancosTIPO_CONTA_CORRENTE.Value) > 0 then
        txtPagina := SubstituirString2(txtPagina, '<%conta_bancaria_tipo%>',
          IntToStr(BancodeDados.BancosTIPO_CONTA_CORRENTE.Value))
      else
        txtPagina := SubstituirString2(txtPagina,
          '<%conta_bancaria_tipo%>', '***');

      if Trim(BancodeDados.BancosCONTA_CORRENTE.Value) <> EmptyStr then
      begin

        if BancodeDados.BancosDIG_CONTA_CORRENTE.Value <> EmptyStr then
          txtPagina := SubstituirString2(txtPagina, '<%conta_bancaria%>',
            AnsiUpperCase(BancodeDados.BancosCONTA_CORRENTE.Value) + '-' +
            (BancodeDados.BancosDIG_CONTA_CORRENTE.Value))
        else
          txtPagina := SubstituirString2(txtPagina, '<%conta_bancaria%>',
            AnsiUpperCase(BancodeDados.BancosCONTA_CORRENTE.Value));

      end
      else
        txtPagina := SubstituirString2(txtPagina, '<%conta_bancaria%>', '***');

    end
    else
    begin
      txtPagina := SubstituirString2(txtPagina, '<%banco%>', '***');
      txtPagina := SubstituirString2(txtPagina, '<%agencia%>', '***');
      txtPagina := SubstituirString2(txtPagina, '<%conta_bancaria%>', '***');
    end;

    { INFORMA??ES DO VE?CULO }
    txtPagina := SubstituirString2(txtPagina, '<%veic_placa%>',
      AnsiUpperCase(relContratoMatriculaForm.qryV_ClientServPLACA.Value));

    if Trim(relContratoMatriculaForm.qryV_ClientServMARCA.Value) <> '' then
      txtPagina := SubstituirString2(txtPagina, '<%veic_marca%>',
        relContratoMatriculaForm.qryV_ClientServMARCA.Value)
    else
      txtPagina := SubstituirString2(txtPagina, '<%veic_marca%>', '***');

    if Trim(relContratoMatriculaForm.qryV_ClientServMODELO.Value) <> '' then
      txtPagina := SubstituirString2(txtPagina, '<%veic_modelo%>',
        relContratoMatriculaForm.qryV_ClientServMODELO.Value)
    else
      txtPagina := SubstituirString2(txtPagina, '<%veic_modelo%>', '***');

    if (relContratoMatriculaForm.qryV_ClientServANO_FAB.Value) > 0 then
      txtPagina := SubstituirString2(txtPagina, '<%veic_ano_fabricacao%>',
        IntToStr(relContratoMatriculaForm.qryV_ClientServANO_FAB.Value))
    else
      txtPagina := SubstituirString2(txtPagina,
        '<%veic_ano_fabricacao%>', '***');

    if (relContratoMatriculaForm.qryV_ClientServANO_MODELO.Value) > 0 then
      txtPagina := SubstituirString2(txtPagina, '<%veic_ano_modelo%>',
        IntToStr(relContratoMatriculaForm.qryV_ClientServANO_MODELO.Value))
    else
      txtPagina := SubstituirString2(txtPagina, '<%veic_ano_modelo%>', '***');

    if Trim(relContratoMatriculaForm.qryV_ClientServCOR.Value) <> '' then
      txtPagina := SubstituirString2(txtPagina, '<%veic_cor%>',
        relContratoMatriculaForm.qryV_ClientServCOR.Value)
    else
      txtPagina := SubstituirString2(txtPagina, '<%veic_cor%>', '***');

    if Trim(relContratoMatriculaForm.qryV_ClientServRENAVAM.Value) <> '' then
      txtPagina := SubstituirString2(txtPagina, '<%veic_renavam%>',
        relContratoMatriculaForm.qryV_ClientServRENAVAM.Value)
    else
      txtPagina := SubstituirString2(txtPagina, '<%veic_renavam%>', '***');

    if (relContratoMatriculaForm.qryV_ClientServVL_FRANQ_SEGURO.Value > 0) then
      txtPagina := SubstituirString2(txtPagina, '<%veic_vl_franq_seguro%>',
        FormatFloat(',0.00',
        relContratoMatriculaForm.qryV_ClientServVL_FRANQ_SEGURO.Value))
    else
      txtPagina := SubstituirString2(txtPagina,
        '<%veic_vl_franq_seguro%>', '***');

    if (relContratoMatriculaForm.qryV_ClientServVL_FRANQ_SEGURO.Value > 0) then
      txtPagina := SubstituirString2(txtPagina, '<%veic_vl_franq_seguro_ext%>',
        extenso(relContratoMatriculaForm.qryV_ClientServVL_FRANQ_SEGURO.Value))
    else
      txtPagina := SubstituirString2(txtPagina,
        '<%veic_vl_franq_seguro_ext%>', '***');

    if Trim(relContratoMatriculaForm.qryV_ClientServOBS_VEICULO.Value) <> ''
    then
      txtPagina := SubstituirString2(txtPagina, '<%veic_obs%>',
        relContratoMatriculaForm.qryV_ClientServOBS_VEICULO.Value)
    else
      txtPagina := SubstituirString2(txtPagina, '<%veic_obs%>', '***');

    txtPagina := SubstituirString2(txtPagina, '<%contrato_cod%>',
      FormatFloat('000000',
      relContratoMatriculaForm.qryV_ClientServC_S_C_ID.Value));

    txtPagina := SubstituirString2(txtPagina, '<%quebra%>',
      '<br style="page-break-after:always;">');

    if (relContratoMatriculaForm.DocTempCABEC_TODAS.Value = 0) then
      txtPagina := SubstituirString2(txtPagina, '<%Cabecalho%>',
        '<br>' + txtCabecalho + '<br><br>')
    else
      txtPagina := SubstituirString2(txtPagina, '<%Cabecalho%>', ' ');

    relContratoMatriculaForm.DocTempCONTRATO_HTML.AsString := txtPagina;

  end;
end;

procedure TrelContratoMatriculaForm.DocTempBeforePost(DataSet: TDataSet);
begin
  SubstituiVariaveis;
end;

procedure TrelContratoMatriculaForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  LimpaArquivos(DiretorioTemp + '*.jpg');
  LimpaArquivos(DiretorioTemp + '*.html');
  LimpaArquivos(DiretorioTemp + '*.xml');
end;

procedure TrelContratoMatriculaForm.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #27 then
  begin
    Key := #0;
    close;
  end;

end;

end.
