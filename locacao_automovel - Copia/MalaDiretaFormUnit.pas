unit MalaDiretaFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.OleCtrls, SHDocVw, Vcl.Imaging.jpeg, Activex,MSHTML_TLB,
  UWebBrowserWrapper;

type
  TMalaDiretaForm = class(TForm)
    WebBrowser2: TWebBrowser;
    list_arquivos: TListBox;
    Panel1: TPanel;
    BtOk: TButton;
    BtCancelar: TButton;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label4: TLabel;
    btExecutar: TSpeedButton;
    Label5: TLabel;
    Button3: TButton;
    Image1: TImage;
    Panel2: TPanel;
    Image2: TImage;
    EditAssunto: TEdit;
    EditDestinatarios: TMemo;
    Button4: TButton;
    CheckBox1: TCheckBox;
    Panel7: TPanel;
    Panel4: TPanel;
    btNegrito: TSpeedButton;
    btItalico: TSpeedButton;
    btSublinhado: TSpeedButton;
    btCorTexto: TSpeedButton;
    Panel3: TPanel;
    btNumeracao: TSpeedButton;
    btMarcador: TSpeedButton;
    btDecremento: TSpeedButton;
    btIncremento: TSpeedButton;
    Panel5: TPanel;
    btLeft: TSpeedButton;
    btCenter: TSpeedButton;
    btRight: TSpeedButton;
    btJustify: TSpeedButton;
    Panel6: TPanel;
    btImg: TSpeedButton;
    btLinha: TSpeedButton;
    Panel8: TPanel;
    btVariavel: TSpeedButton;
    Panel9: TPanel;
    btCortar: TSpeedButton;
    btCopiar: TSpeedButton;
    btColar: TSpeedButton;
    btLink: TSpeedButton;
    btDesfazer: TSpeedButton;
    Label1: TLabel;
    cbFont: TComboBox;
    Panel10: TPanel;
    Label2: TLabel;
    cbSize: TComboBox;
    cdColor: TColorDialog;
    Button5: TButton;
    Button6: TButton;
    Memo1: TMemo;
    WebBrowser1: TWebBrowser;
    procedure BtOkClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btExecutarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btNegritoClick(Sender: TObject);
    procedure btItalicoClick(Sender: TObject);
    procedure btSublinhadoClick(Sender: TObject);
    procedure btCorTextoClick(Sender: TObject);
    procedure btNumeracaoClick(Sender: TObject);
    procedure btMarcadorClick(Sender: TObject);
    procedure btDecrementoClick(Sender: TObject);
    procedure btIncrementoClick(Sender: TObject);
    procedure btLeftClick(Sender: TObject);
    procedure btRightClick(Sender: TObject);
    procedure btCenterClick(Sender: TObject);
    procedure btJustifyClick(Sender: TObject);
    procedure btCortarClick(Sender: TObject);
    procedure btCopiarClick(Sender: TObject);
    procedure btColarClick(Sender: TObject);
    procedure btDesfazerClick(Sender: TObject);
    procedure btLinkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    procedure UpdateStatusBar;
    { Private declarations }
  public
    { Public declarations }
  end;

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


var
  MalaDiretaForm: TMalaDiretaForm;
  HTMLDocumento: IHTMLDocument2;
  fWBW : TWebBrowserWrapper;

implementation

{$R *.dfm}

uses unRecursos, Base, CsClientes;


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

procedure TMalaDiretaForm.btCenterClick(Sender: TObject);
begin
  SendMessage(GetIEHandle(WebBrowser1, 'Internet Explorer_Server'), WM_COMMAND, IDM_CENTRALIZAR, 0);
end;

procedure TMalaDiretaForm.btColarClick(Sender: TObject);
begin
  SendMessage(GetIEHandle(WebBrowser1, 'Internet Explorer_Server'), WM_COMMAND, IDM_COLAR, 0);
end;

procedure TMalaDiretaForm.btCopiarClick(Sender: TObject);
begin
  SendMessage(GetIEHandle(WebBrowser1, 'Internet Explorer_Server'), WM_COMMAND, IDM_COPIAR, 0);
end;

procedure TMalaDiretaForm.btCortarClick(Sender: TObject);
begin
  SendMessage(GetIEHandle(WebBrowser1, 'Internet Explorer_Server'), WM_COMMAND, IDM_RECORTAR, 0);
end;

procedure TMalaDiretaForm.btCorTextoClick(Sender: TObject);
begin
  HTMLDocumento := WebBrowser1.Document as IHTMLDocument2;
  if cdColor.Execute then
    HTMLDocumento.execCommand('ForeColor', False, cdColor.Color)
  else
    abort;
end;

procedure TMalaDiretaForm.btDecrementoClick(Sender: TObject);
begin
  SendMessage(GetIEHandle(WebBrowser1, 'Internet Explorer_Server'), WM_COMMAND, IDM_OUTDENT, 0);
end;

procedure TMalaDiretaForm.btDesfazerClick(Sender: TObject);
begin
  SendMessage(GetIEHandle(WebBrowser1, 'Internet Explorer_Server'), WM_COMMAND, IDM_DESFAZER, 0);
end;

procedure TMalaDiretaForm.btExecutarClick(Sender: TObject);

var
ListaDeEmails : Tstringlist;


var
  strL_emails : TstringList;
  emails : string;
  i : integer;

begin
  Application.CreateForm(TCsClientesForm,CsClientesForm);
  strL_emails := TStringList.Create;

  try

    CsClientesForm.MalaDireta := True;
    if CsClientesForm.ShowModal = mrOk then
    begin

      BancodeDados.Clientes.First;
      while not BancodeDados.Clientes.Eof do
      begin
        if BancodeDados.ClientesATIVO.Value then
        begin
          emails := emails + BancodeDados.ClientesEMAIL_CONTATO1.Value + ',';
        end;
          BancodeDados.Clientes.Next;
      end;
        strL_emails.Delimiter := ',';
        strL_emails.Sorted := true;
        strL_emails.Duplicates := dupIgnore;
        strL_emails.DelimitedText := emails;

        for I := 0 to strL_emails.Count-1 do
        begin
          if strL_emails[i] <> EmptyStr then
            editDestinatarios.Text := editDestinatarios.Text + strL_emails[i] + ';';
        end;
    end;


    finally
    CsClientesForm.Free;
  end;
end;

procedure TMalaDiretaForm.btIncrementoClick(Sender: TObject);
begin
  SendMessage(GetIEHandle(WebBrowser1, 'Internet Explorer_Server'), WM_COMMAND, IDM_INDENT, 0);
end;

procedure TMalaDiretaForm.btItalicoClick(Sender: TObject);
begin
  HTMLDocumento := WebBrowser1.Document as IHTMLDocument2;
  HTMLDocumento.execCommand('Italic', False, 0);
end;

procedure TMalaDiretaForm.btJustifyClick(Sender: TObject);
begin
  SendMessage(GetIEHandle(WebBrowser1, 'Internet Explorer_Server'), WM_COMMAND, htmlBlockAlignJustify, 0);
end;

procedure TMalaDiretaForm.btLeftClick(Sender: TObject);
begin
  SendMessage(GetIEHandle(WebBrowser1, 'Internet Explorer_Server'), WM_COMMAND, IDM_ALINHARESQ, 0);
end;

procedure TMalaDiretaForm.btLinkClick(Sender: TObject);
begin
  SendMessage(GetIEHandle(WebBrowser1, 'Internet Explorer_Server'), WM_COMMAND, IDM_HYPERLINK, 0);
end;

procedure TMalaDiretaForm.btMarcadorClick(Sender: TObject);
begin
  SendMessage(GetIEHandle(WebBrowser1, 'Internet Explorer_Server'), WM_COMMAND, IDM_MARCADOR_LISTA, 0);
end;

procedure TMalaDiretaForm.btNegritoClick(Sender: TObject);
begin
  HTMLDocumento := WebBrowser1.Document as IHTMLDocument2;
  HTMLDocumento.execCommand('Bold', False, 0);
end;

procedure TMalaDiretaForm.btNumeracaoClick(Sender: TObject);
begin
  SendMessage(GetIEHandle(WebBrowser1, 'Internet Explorer_Server'), WM_COMMAND, IDM_MARCADOR, 0);
end;

procedure TMalaDiretaForm.BtOkClick(Sender: TObject);
var
 resposta : Boolean;
begin
  //if ValidaEMail(editDestinatarios.Text) then
  //begin

    BancodeDados.CopiaCarbono := not CheckBox1.Checked;

    if list_arquivos.Items.Count > 0 then
      resposta := BancodeDados.EnviarEmail(editDestinatarios.Text,EditAssunto.Text,WebBrowser1.OleObject.Document.DocumentElement.InnerHtml,list_arquivos.Items.Strings[0])
    else
      resposta := BancodeDados.EnviarEmail(editDestinatarios.Text,EditAssunto.Text,WebBrowser1.OleObject.Document.DocumentElement.InnerHtml,EmptyStr);

    if (resposta) then
      Mensagem('Email enviado com sucesso!',mtInformation,[mbOK],mrOk,0);

    BancodeDados.CopiaCarbono := False;

  //  Mensagem('Informe um email válido.', mtInformation, [mbOk], mrOk, 0);
end;

procedure TMalaDiretaForm.btRightClick(Sender: TObject);
begin
  SendMessage(GetIEHandle(WebBrowser1, 'Internet Explorer_Server'), WM_COMMAND, IDM_ALINHADIR, 0);
end;

procedure TMalaDiretaForm.btSublinhadoClick(Sender: TObject);
begin
  HTMLDocumento := WebBrowser1.Document as IHTMLDocument2;
  HTMLDocumento.execCommand('Underline', False, 0);
end;

procedure TMalaDiretaForm.Button1Click(Sender: TObject);
var
  opd : TOpenDialog;
begin

  if list_arquivos.Items.Count > 0 then exit;


  opd := TOpenDialog.Create(nil);
  try
    if opd.Execute then
    begin
      list_arquivos.Items.Add(opd.FileName);
      Button2.Enabled := True;
      Button1.Enabled := False;
    end;
  finally
    opd.Free;
  end;
end;

procedure TMalaDiretaForm.Button2Click(Sender: TObject);
begin
  if list_arquivos.Items.Count > 0 then
  begin
    list_arquivos.Items.Delete(0);
    Button1.Enabled := True;
  end;

  if list_arquivos.Items.Count = 0 then
  begin
    Button2.Enabled := False;
  end;

end;

procedure TMalaDiretaForm.Button3Click(Sender: TObject);

begin

  //Memo1.Text := trim(StringReplace(Memo1.Text,'%texto_livre%',WebBrowser1.OleObject.Document.DocumentElement.InnerHtml,[]));

  fWBW.LoadFromString(trim(StringReplace(Memo1.Text,'%texto_livre%',WebBrowser1.OleObject.Document.DocumentElement.InnerHtml,[])),TEncoding.UTF8);

  UpdateStatusBar;

end;

procedure TMalaDiretaForm.FormCreate(Sender: TObject);
begin
  fWBW := TWebBrowserWrapper.Create(WebBrowser2);
end;

procedure TMalaDiretaForm.FormDestroy(Sender: TObject);
begin
  fWBW.Free;
end;

procedure TMalaDiretaForm.FormShow(Sender: TObject);
begin

  WebBrowser1.Navigate('about:blank');

  //Memo1.Text := trim(StringReplace(Memo1.Text,'%texto_livre%',WebBrowser1.OleObject.Document.DocumentElement.InnerHtml,[]));
  //WBLoadHTML(WebBrowser2,Memo1.Text);
  Application.ProcessMessages;
  OleInitialize(nil);
  (WebBrowser1.Document as IHTMLDocument2).designMode := 'On';
  Application.ProcessMessages;



  cbFont.Items := screen.Fonts;

  Application.ProcessMessages;
  cbFont.Text := 'Arial';
  cbSize.ItemIndex := 1;
  Application.ProcessMessages;
  //cbFontChange(nil);
  //cbSizeChange(nil);
end;




procedure TMalaDiretaForm.UpdateStatusBar;
var
  Doc: IHTMLDocument2;
begin
  if not Assigned(fWBW.WebBrowser.Document) then
    exit;
  // wait for document to load
  while fWBW.WebBrowser.ReadyState <> READYSTATE_COMPLETE do
    Application.ProcessMessages;
  (*
  if fWBW.WebBrowser.Document.QueryInterface(IHTMLDocument2, Doc) = S_OK then
    {$IFDEF UNICODE}
    sbMain.SimpleText := Format(
      'Charset: %s    Encoding: %s', [Doc.charset, EncodingName(fWBW.Encoding)]
    );
    {$ELSE}
    sbMain.SimpleText := Format('Charset: %s', [Doc.charset]);

    *)
end;

end.
