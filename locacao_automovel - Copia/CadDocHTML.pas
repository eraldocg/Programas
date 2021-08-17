unit CadDocHTML;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  ActiveX,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, ComCtrls, MSHTML_TLB, OleCtrls,
  SHDocVw, ImgList, Menus, DBClient, Mask, DBCtrls,
  SEDDBComboBox, System.ImageList;

const
  IDM_MARCADOR = 2184;
  IDM_MARCADOR_LISTA = 2185;
  IDM_OUTDENT = 2187;
  IDM_INDENT = 2186;
  IDM_ALINHARESQ = 59;
  IDM_CENTRALIZAR = 57;
  IDM_ALINHADIR = 60;
  IDM_IMAGEM = 2168;
  IDM_LINHAHORIZ = 2150;
  IDM_RECORTAR = 16;
  IDM_COPIAR = 15;
  IDM_COLAR = 26;
  IDM_HYPERLINK = 2124;
  IDM_DESFAZER = 43;

type
  TCadDocHTMLForm = class(TForm)
    Panel7: TPanel;
    Panel4: TPanel;
    btNegrito: TSpeedButton;
    btItalico: TSpeedButton;
    btSublinhado: TSpeedButton;
    btCorTexto: TSpeedButton;
    Panel2: TPanel;
    btNumeracao: TSpeedButton;
    btMarcador: TSpeedButton;
    btDecremento: TSpeedButton;
    btIncremento: TSpeedButton;
    Panel1: TPanel;
    btLeft: TSpeedButton;
    btCenter: TSpeedButton;
    btRight: TSpeedButton;
    Panel3: TPanel;
    btImg: TSpeedButton;
    btLinha: TSpeedButton;
    Panel5: TPanel;
    Panel6: TPanel;
    btCortar: TSpeedButton;
    btCopiar: TSpeedButton;
    btColar: TSpeedButton;
    btLink: TSpeedButton;
    btDesfazer: TSpeedButton;
    Label1: TLabel;
    cbFont: TComboBox;
    cdColor: TColorDialog;
    StatusBar: TStatusBar;
    Panel8: TPanel;
    Label2: TLabel;
    cbSize: TComboBox;
    ToolbarImages: TImageList;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Importar1: TMenuItem;
    Variveis1: TMenuItem;
    Gravar1: TMenuItem;
    N1: TMenuItem;
    VisualizarImpresso1: TMenuItem;
    N8: TMenuItem;
    Fechar1: TMenuItem;
    Editar1: TMenuItem;
    Recortar1: TMenuItem;
    Copiar1: TMenuItem;
    Colar1: TMenuItem;
    Desfazer1: TMenuItem;
    Formatar1: TMenuItem;
    Fonte1: TMenuItem;
    N5: TMenuItem;
    Estilo1: TMenuItem;
    Negrito1: TMenuItem;
    Itlico1: TMenuItem;
    Sublinhado1: TMenuItem;
    Alinhamento1: TMenuItem;
    Esquerda1: TMenuItem;
    Direita1: TMenuItem;
    Centro1: TMenuItem;
    Justificado1: TMenuItem;
    N7: TMenuItem;
    Marcadores2: TMenuItem;
    N3: TMenuItem;
    Idioma1: TMenuItem;
    BrasilPortugal1: TMenuItem;
    btSalvar: TSpeedButton;
    btVariavel: TSpeedButton;
    Label3: TLabel;
    EditNomeDoc1: TDBEdit;
    btJustify: TSpeedButton;
    Timer1: TTimer;
    PageControl1: TPageControl;
    tbPrin: TTabSheet;
    tbConf: TTabSheet;
    WebBrowser1: TWebBrowser;
    MemoVar: TMemo;
    Memo1: TMemo;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    EditDocAtivo: TDBCheckBox;
    EditEspLinha: TDBEdit;
    EditMargens: TDBEdit;
    btRestaurar: TButton;
    Label8: TLabel;
    Temp: TClientDataSet;
    TempDESCRICAO: TStringField;
    TempCAMPO: TStringField;
    TempINFRMACOES: TStringField;
    dsTemp: TDataSource;
    SedDBComboBox1: TSedDBComboBox;
    Label9: TLabel;
    Label10: TLabel;
    EditTamPag: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    TempCLASSIF: TStringField;
    GroupBox2: TGroupBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    EditOcultarCab: TDBCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btNegritoClick(Sender: TObject);
    procedure btItalicoClick(Sender: TObject);
    procedure btSublinhadoClick(Sender: TObject);
    procedure btCorTextoClick(Sender: TObject);
    procedure btNumeracaoClick(Sender: TObject);
    procedure btMarcadorClick(Sender: TObject);
    procedure btDecrementoClick(Sender: TObject);
    procedure btIncrementoClick(Sender: TObject);
    procedure btLeftClick(Sender: TObject);
    procedure btCenterClick(Sender: TObject);
    procedure btRightClick(Sender: TObject);
    procedure btImgClick(Sender: TObject);
    procedure btLinhaClick(Sender: TObject);
    procedure btCortarClick(Sender: TObject);
    procedure btCopiarClick(Sender: TObject);
    procedure btColarClick(Sender: TObject);
    procedure btDesfazerClick(Sender: TObject);
    procedure btLinkClick(Sender: TObject);
    procedure cbFontChange(Sender: TObject);
    procedure cbSizeChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btSalvarClick(Sender: TObject);
    procedure btVariavelClick(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure btJustifyClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  CadDocHTMLForm: TCadDocHTMLForm;
  HTMLDocumento: IHTMLDocument2;
  nomeArqTmp: String;
  IdxCateg: integer = 0;

implementation

uses Base, Principal, CsCampos, relContratoMatricula, unRecursos, unImpressao;

{$R *.dfm}

function GetIEHandle(WebBrowser: TWebBrowser; ClassName: string): HWND;
var
  hwndChild, hwndTmp: HWND;
  oleCtrl: TOleControl;
  szClass: array [0 .. 255] of Char;
begin
  oleCtrl := WebBrowser;
  hwndTmp := oleCtrl.Handle;
  while (true) do
  begin
    hwndChild := GetWindow(hwndTmp, GW_CHILD);
    GetClassName(hwndChild, szClass, SizeOf(szClass));
    if (string(szClass) = ClassName) then
    begin
      Result := hwndChild;
      Exit;
    end;
    hwndTmp := hwndChild;
  end;
  Result := 0;
end;

procedure DocumentoEmBranco(WebBrowser: TWebBrowser);
begin
  WebBrowser.Navigate('about:blank');
end;

procedure TCadDocHTMLForm.FormCreate(Sender: TObject);
begin
  OleInitialize(nil);
  DocumentoEmBranco(WebBrowser1);
  (WebBrowser1.Document as IHTMLDocument2).designMode := 'On';

  cbFont.Items := screen.Fonts;
end;

procedure TCadDocHTMLForm.btCenterClick(Sender: TObject);
begin
  SendMessage(GetIEHandle(WebBrowser1, 'Internet Explorer_Server'), WM_COMMAND,
    IDM_CENTRALIZAR, 0);
end;

procedure TCadDocHTMLForm.btColarClick(Sender: TObject);
begin
  SendMessage(GetIEHandle(WebBrowser1, 'Internet Explorer_Server'), WM_COMMAND,
    IDM_COLAR, 0);
end;

procedure TCadDocHTMLForm.btCopiarClick(Sender: TObject);
begin
  SendMessage(GetIEHandle(WebBrowser1, 'Internet Explorer_Server'), WM_COMMAND,
    IDM_COPIAR, 0);
end;

procedure TCadDocHTMLForm.btCortarClick(Sender: TObject);
begin
  SendMessage(GetIEHandle(WebBrowser1, 'Internet Explorer_Server'), WM_COMMAND,
    IDM_RECORTAR, 0);
end;

procedure TCadDocHTMLForm.btCorTextoClick(Sender: TObject);
begin
  HTMLDocumento := WebBrowser1.Document as IHTMLDocument2;
  if cdColor.Execute then
    HTMLDocumento.execCommand('ForeColor', False, cdColor.Color)
  else
    abort;
end;

procedure TCadDocHTMLForm.btDecrementoClick(Sender: TObject);
begin
  SendMessage(GetIEHandle(WebBrowser1, 'Internet Explorer_Server'), WM_COMMAND,
    IDM_OUTDENT, 0);
end;

procedure TCadDocHTMLForm.btDesfazerClick(Sender: TObject);
begin
  SendMessage(GetIEHandle(WebBrowser1, 'Internet Explorer_Server'), WM_COMMAND,
    IDM_DESFAZER, 0);
end;

procedure TCadDocHTMLForm.btImgClick(Sender: TObject);
begin
  SendMessage(GetIEHandle(WebBrowser1, 'Internet Explorer_Server'), WM_COMMAND,
    IDM_IMAGEM, 0);
end;

procedure TCadDocHTMLForm.btIncrementoClick(Sender: TObject);
begin
  SendMessage(GetIEHandle(WebBrowser1, 'Internet Explorer_Server'), WM_COMMAND,
    IDM_INDENT, 0);
end;

procedure TCadDocHTMLForm.btItalicoClick(Sender: TObject);
begin
  HTMLDocumento := WebBrowser1.Document as IHTMLDocument2;
  HTMLDocumento.execCommand('Italic', False, 0);
end;

procedure TCadDocHTMLForm.btJustifyClick(Sender: TObject);
begin
  SendMessage(GetIEHandle(WebBrowser1, 'Internet Explorer_Server'), WM_COMMAND,
    htmlBlockAlignJustify, 0);
end;

procedure TCadDocHTMLForm.btLeftClick(Sender: TObject);
begin
  SendMessage(GetIEHandle(WebBrowser1, 'Internet Explorer_Server'), WM_COMMAND,
    IDM_ALINHARESQ, 0);
end;

procedure TCadDocHTMLForm.btLinhaClick(Sender: TObject);
begin
  SendMessage(GetIEHandle(WebBrowser1, 'Internet Explorer_Server'), WM_COMMAND,
    IDM_LINHAHORIZ, 0);
end;

procedure TCadDocHTMLForm.btLinkClick(Sender: TObject);
begin
  SendMessage(GetIEHandle(WebBrowser1, 'Internet Explorer_Server'), WM_COMMAND,
    IDM_HYPERLINK, 0);
end;

procedure TCadDocHTMLForm.btMarcadorClick(Sender: TObject);
begin
  SendMessage(GetIEHandle(WebBrowser1, 'Internet Explorer_Server'), WM_COMMAND,
    IDM_MARCADOR_LISTA, 0);
end;

procedure TCadDocHTMLForm.btNegritoClick(Sender: TObject);
begin
  HTMLDocumento := WebBrowser1.Document as IHTMLDocument2;
  HTMLDocumento.execCommand('Bold', False, 0);
end;

procedure TCadDocHTMLForm.btNumeracaoClick(Sender: TObject);
begin
  SendMessage(GetIEHandle(WebBrowser1, 'Internet Explorer_Server'), WM_COMMAND,
    IDM_MARCADOR, 0);
end;

procedure TCadDocHTMLForm.btRightClick(Sender: TObject);
begin
  SendMessage(GetIEHandle(WebBrowser1, 'Internet Explorer_Server'), WM_COMMAND,
    IDM_ALINHADIR, 0);
end;

procedure TCadDocHTMLForm.btSalvarClick(Sender: TObject);
{ var
  HTMLDocument: IHTMLDocument2;
  PersistFile: IPersistFile; }
begin
  { if FileExists(DiretorioTemp + nomeArqTmp) then
    DeleteFile(DiretorioTemp + nomeArqTmp);
    HTMLDocument := WebBrowser1.Document as IHTMLDocument2;
    PersistFile := HTMLDocument as IPersistFile;
    PersistFile.Save(StringToOleStr(DiretorioTemp + nomeArqTmp), System.True);
    Memo1.Lines.LoadFromFile(DiretorioTemp + nomeArqTmp); }


  // (WebBrowser1.Document as IHTMLDocument2).body.innerHTML

  if not BancodeDados.FDConnection1.InTransaction then
    BancodeDados.FDConnection1.StartTransaction;
  if not(BancodeDados.Documentos.State in [dsInsert, dsEdit]) then
    BancodeDados.Documentos.Edit;
  BancodeDados.DocumentosDOC_HTML.Value :=
    (WebBrowser1.Document as IHTMLDocument2).body.innerHTML;
  BancodeDados.Documentos.Post;
  BancodeDados.FDConnection1.CommitRetaining;

  // DeleteFile(DiretorioTemp + nomeArqTmp);
  if not(Sender = VisualizarImpresso1) then
    ModalResult := mrOk;
end;

procedure TCadDocHTMLForm.btSublinhadoClick(Sender: TObject);
begin
  HTMLDocumento := WebBrowser1.Document as IHTMLDocument2;
  HTMLDocumento.execCommand('Underline', False, 0);
end;

procedure TCadDocHTMLForm.btVariavelClick(Sender: TObject);
begin
  HabilitarBotoes(Self, False);
  // if (ActiveControl is TWebBrowser) then
  begin
    try
      if not Assigned(CsCamposForm) then
        CsCamposForm := TCsCamposForm.Create(Application);
      if CsCamposForm.ShowModal = mrOk then
      begin
        if (Trim(TempCAMPO.AsString) <> '') then
        begin
          try
            Memo1.Lines.Text := Trim(TempCAMPO.AsString);
            Memo1.SelectAll;
            Memo1.CopyToClipboard;
            WebBrowser1.SetFocus;
            btColarClick(Sender);
          except
          end;
        end;
      end;
    finally
      CsCamposForm.Release;
      CsCamposForm := nil;
    end;
  end;
  // else
  // Mensagem('Indique o local adequado para inserir a variável/campo!'#13 + 'Clique na página no local desejado para inserir o campo.', mtInformation, [mbok], mrOk, 0);
  HabilitarBotoes(Self, true);
end;

procedure TCadDocHTMLForm.cbFontChange(Sender: TObject);
begin
  HTMLDocumento := WebBrowser1.Document as IHTMLDocument2;
  HTMLDocumento.execCommand('FontName', False, cbFont.Text);
end;

procedure TCadDocHTMLForm.cbSizeChange(Sender: TObject);
begin
  HTMLDocumento := WebBrowser1.Document as IHTMLDocument2;
  case cbSize.ItemIndex of
    0:
      HTMLDocumento.execCommand('FontSize', False, 1);
    1:
      HTMLDocumento.execCommand('FontSize', False, 2);
    2:
      HTMLDocumento.execCommand('FontSize', False, 3);
    3:
      HTMLDocumento.execCommand('FontSize', False, 5);
    4:
      HTMLDocumento.execCommand('FontSize', False, 6);
    5:
      HTMLDocumento.execCommand('FontSize', False, 7);
  end;
end;

procedure TCadDocHTMLForm.Fechar1Click(Sender: TObject);
begin
  close;
end;

procedure TCadDocHTMLForm.FormActivate(Sender: TObject);
begin
  Timer1.Enabled := true;
end;

procedure TCadDocHTMLForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if BancodeDados.Documentos.State in [dsInsert, dsEdit] then
    BancodeDados.Documentos.Cancel;
  if FileExists(DiretorioTemp + nomeArqTmp) then
    DeleteFile(DiretorioTemp + nomeArqTmp);
end;

procedure TCadDocHTMLForm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if Mensagem('Tem certeza que deseja sair?', mtConfirmation, [mbyes, mbNo],
    mryes, 0) = idNo then
    CanClose := False;
end;

procedure TCadDocHTMLForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) { and not(ActiveControl is TDBRichEdit) } then
  begin
    Key := #0;
    Perform(WM_NextDlgCtl, 0, 0);
  end;

  if Key = #27 then
  begin
    Key := #0;
    close;
  end;
end;

procedure TCadDocHTMLForm.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If getkeystate(vk_CAPITAL) = 0 then
    StatusBar.Panels[1].Text := 'Caps Lock OFF'
  else // Caps lock está OFF
    If getkeystate(vk_CAPITAL) = 1 then
      StatusBar.Panels[1].Text := 'Caps Lock ON';
end;

procedure PreencheTemp;
var
  I: integer;
  Linha, classificacao, DescTmp, CampoTmp, InfTmp: String;

begin
  with CadDocHTMLForm do
  begin
    with Temp do
    begin
      if Active then
        close;
      FileName := DiretorioTemp + 'vartmp.xml';
      CreateDataSet;
      Open;

    end;

    for I := 0 to MemoVar.Lines.Count - 1 do
    begin
      Linha := MemoVar.Lines[I];
      if Trim(Linha) <> '' then
      begin
        classificacao := Trim(Copy(Linha, 1, Pos(';', Linha) - 1));
        Delete(Linha, 1, Pos(';', Linha));
        DescTmp := Trim(Copy(Linha, 1, Pos(';', Linha) - 1));
        Delete(Linha, 1, Pos(';', Linha));
        CampoTmp := Trim(Copy(Linha, 1, Pos(';', Linha) - 1));
        Delete(Linha, 1, Pos(';', Linha));
        InfTmp := Trim(Linha);

        Temp.Append;
        TempCLASSIF.AsString := classificacao;
        TempDESCRICAO.AsString := DescTmp;
        TempCAMPO.AsString := CampoTmp;
        TempINFRMACOES.AsString := InfTmp;
        Temp.Post;
      end;
      Temp.First;
    end;

  end;
end;

procedure TCadDocHTMLForm.FormShow(Sender: TObject);
begin
  nomeArqTmp := 'tmp' + FormatDateTime('ddmmyyhhmmss', Now) + '.html';
  PageControl1.ActivePage := tbPrin;
  PreencheTemp;
  if Trim(BancodeDados.DocumentosDOC_HTML.AsString) <> '' then
  begin
    Memo1.Lines.Text := Trim(BancodeDados.DocumentosDOC_HTML.AsString);
    Memo1.Lines.SaveToFile(DiretorioTemp + nomeArqTmp);
    WebBrowser1.Navigate(DiretorioTemp + nomeArqTmp);
    // (WebBrowser1.Document as IHTMLDocument2).body.innerHTML := Trim(BancodeDados.DocumentosDOC_HTML.AsString);
  end;
end;

procedure TCadDocHTMLForm.Timer1Timer(Sender: TObject);
begin
  (WebBrowser1.Document as IHTMLDocument2).designMode := 'On';
  Timer1.Enabled := False;
end;

end.
