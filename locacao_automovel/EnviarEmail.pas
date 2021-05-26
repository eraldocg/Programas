unit EnviarEmail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, RLFilters, RLMetaFile, Vcl.Imaging.jpeg,
  Vcl.ComCtrls, Activex, Vcl.OleCtrls, SHDocVw, MSHTML_TLB, Vcl.Buttons;

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
  TEnviarEmailForm = class(TForm)
    EditEmailDestino: TEdit;
    Panel1: TPanel;
    btEnviar: TButton;
    btCancelar: TButton;
    EditAssunto: TEdit;
    memotexto: TMemo;
    Memo1: TMemo;
    Image1: TImage;
    Button1: TButton;
    Button2: TButton;
    WebBrowser1: TWebBrowser;
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
    Panel3: TPanel;
    btLeft: TSpeedButton;
    btCenter: TSpeedButton;
    btRight: TSpeedButton;
    btJustify: TSpeedButton;
    Panel5: TPanel;
    btImg: TSpeedButton;
    btLinha: TSpeedButton;
    Panel6: TPanel;
    btVariavel: TSpeedButton;
    Panel8: TPanel;
    btCortar: TSpeedButton;
    btCopiar: TSpeedButton;
    btColar: TSpeedButton;
    btLink: TSpeedButton;
    btDesfazer: TSpeedButton;
    Label1: TLabel;
    cbFont: TComboBox;
    Panel9: TPanel;
    Label2: TLabel;
    cbSize: TComboBox;
    cdColor: TColorDialog;
    procedure btEnviarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btLinhaClick(Sender: TObject);
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
    procedure btJustifyClick(Sender: TObject);
    procedure btCopiarClick(Sender: TObject);
    procedure btCortarClick(Sender: TObject);
    procedure btColarClick(Sender: TObject);
    procedure btDesfazerClick(Sender: TObject);
    procedure btLinkClick(Sender: TObject);
    procedure cbFontChange(Sender: TObject);
    procedure cbSizeChange(Sender: TObject);
    procedure btImgClick(Sender: TObject);
    procedure EditEmailDestinoDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EnviarEmailForm: TEnviarEmailForm;
  HTMLDocumento: IHTMLDocument2;

procedure CriarEnviarEmail(aPages: TRLGraphicStorage);

implementation

uses unRecursos, Base, CsClientes;

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

procedure CriarEnviarEmail(aPages: TRLGraphicStorage);
var
  pdf: TRLCustomSaveFilter;
  arqTmp: String;
begin
  with TEnviarEmailForm.Create(nil) do
    try
      EditEmailDestino.Text := '';

      { if Assigned(CsOrcForm) then
        begin
        if (BancodeDados.OrcORC_ID.Value > 0) then
        begin
        if Trim(BancodeDados.OrcEMAIL.Value) <> '' then
        begin
        EditEmailDestino.Text := Trim(BancodeDados.OrcEMAIL.Value);
        end;
        end;
        end; }

      if not BancodeDados.Config.Active then
        BancodeDados.Config.Open;
      //memotexto.Lines.Text := BancodeDados.ConfigMSG.Value;

      EditAssunto.Text := aPages.Title;
      if (ShowModal = mrOk) then
      begin
        arqTmp := SysTempDir + 'SEDSoft_' + FormatDateTime('ddmmyy_hhnn', Now) + '.pdf';

        pdf := SaveFilterByFileName('.pdf');
        pdf.FileName := arqTmp;
        FilterPages(aPages, pdf, 1, aPages.PageCount, '', 0);

        BancodeDados.EnviarEmail(Trim(EditEmailDestino.Text), Trim(EditAssunto.Text), Trim(Memo1.Lines.Text), arqTmp);

        SysUtils.DeleteFile(arqTmp);
      end;
    finally
      Free;
    end;
end;

procedure TEnviarEmailForm.btCenterClick(Sender: TObject);
begin
  SendMessage(GetIEHandle(WebBrowser1, 'Internet Explorer_Server'), WM_COMMAND, IDM_CENTRALIZAR, 0);
end;

procedure TEnviarEmailForm.btColarClick(Sender: TObject);
begin
  SendMessage(GetIEHandle(WebBrowser1, 'Internet Explorer_Server'), WM_COMMAND, IDM_COLAR, 0);
end;

procedure TEnviarEmailForm.btCopiarClick(Sender: TObject);
begin
  SendMessage(GetIEHandle(WebBrowser1, 'Internet Explorer_Server'), WM_COMMAND, IDM_COPIAR, 0);
end;

procedure TEnviarEmailForm.btCortarClick(Sender: TObject);
begin
  SendMessage(GetIEHandle(WebBrowser1, 'Internet Explorer_Server'), WM_COMMAND, IDM_RECORTAR, 0);
end;

procedure TEnviarEmailForm.btCorTextoClick(Sender: TObject);
begin
  HTMLDocumento := WebBrowser1.Document as IHTMLDocument2;
  if cdColor.Execute then
    HTMLDocumento.execCommand('ForeColor', False, cdColor.Color)
  else
    abort;
end;

procedure TEnviarEmailForm.btDecrementoClick(Sender: TObject);
begin
  SendMessage(GetIEHandle(WebBrowser1, 'Internet Explorer_Server'), WM_COMMAND, IDM_OUTDENT, 0);
end;

procedure TEnviarEmailForm.btDesfazerClick(Sender: TObject);
begin
  SendMessage(GetIEHandle(WebBrowser1, 'Internet Explorer_Server'), WM_COMMAND, IDM_DESFAZER, 0);
end;

procedure TEnviarEmailForm.btEnviarClick(Sender: TObject);
begin


  //(WebBrowser1.OleObject.Document.DocumentElement.InnerHtml);

  Memo1.Text := trim(StringReplace(Memo1.Text,'%texto_livre%',WebBrowser1.OleObject.Document.DocumentElement.InnerHtml,[]));

  //Memo1.Text := WebBrowser1.OleObject.Document.DocumentElement.InnerHtml;

  //StringReplace(Memo1.Text,'%nome_cliente%',BancodeDados.ClientesFANTASIA.Value,[]);
  //Memo1.Text := StringReplace(Memo1.Text,'%texto_livre%',REdit.Text{memotexto.Text},[]);

  if EditEmailDestino.Text = EmptyStr then
  begin
    Mensagem('Informe um email válido.', mtInformation, [mbOk], mrOk, 0);
  end else
  begin
    ModalResult := mrOk;
  end;
  {
  if ValidaEMail(EditEmailDestino.Text) then
  begin
    ModalResult := mrOk;
  end
  else
    Mensagem('Informe um email válido.', mtInformation, [mbOk], mrOk, 0);
  }
end;

procedure TEnviarEmailForm.btImgClick(Sender: TObject);
begin
  SendMessage(GetIEHandle(WebBrowser1, 'Internet Explorer_Server'), WM_COMMAND, IDM_IMAGEM, 0);
end;

procedure TEnviarEmailForm.btIncrementoClick(Sender: TObject);
begin
  SendMessage(GetIEHandle(WebBrowser1, 'Internet Explorer_Server'), WM_COMMAND, IDM_INDENT, 0);
end;

procedure TEnviarEmailForm.btItalicoClick(Sender: TObject);
begin
  HTMLDocumento := WebBrowser1.Document as IHTMLDocument2;
  HTMLDocumento.execCommand('Italic', False, 0);
end;

procedure TEnviarEmailForm.btJustifyClick(Sender: TObject);
begin
  SendMessage(GetIEHandle(WebBrowser1, 'Internet Explorer_Server'), WM_COMMAND, htmlBlockAlignJustify, 0);
end;

procedure TEnviarEmailForm.btLeftClick(Sender: TObject);
begin
  SendMessage(GetIEHandle(WebBrowser1, 'Internet Explorer_Server'), WM_COMMAND, IDM_ALINHARESQ, 0);
end;

procedure TEnviarEmailForm.btLinhaClick(Sender: TObject);
begin
  SendMessage(GetIEHandle(WebBrowser1, 'Internet Explorer_Server'), WM_COMMAND, IDM_LINHAHORIZ, 0);
end;

procedure TEnviarEmailForm.btLinkClick(Sender: TObject);
begin
  SendMessage(GetIEHandle(WebBrowser1, 'Internet Explorer_Server'), WM_COMMAND, IDM_HYPERLINK, 0);
end;

procedure TEnviarEmailForm.btMarcadorClick(Sender: TObject);
begin
  SendMessage(GetIEHandle(WebBrowser1, 'Internet Explorer_Server'), WM_COMMAND, IDM_MARCADOR_LISTA, 0);
end;

procedure TEnviarEmailForm.btNegritoClick(Sender: TObject);
begin
  HTMLDocumento := WebBrowser1.Document as IHTMLDocument2;
  HTMLDocumento.execCommand('Bold', False, 0);
end;

procedure TEnviarEmailForm.btNumeracaoClick(Sender: TObject);
begin
  SendMessage(GetIEHandle(WebBrowser1, 'Internet Explorer_Server'), WM_COMMAND, IDM_MARCADOR, 0);
end;

procedure TEnviarEmailForm.btRightClick(Sender: TObject);
begin
  SendMessage(GetIEHandle(WebBrowser1, 'Internet Explorer_Server'), WM_COMMAND, IDM_ALINHADIR, 0);
end;

procedure TEnviarEmailForm.btSublinhadoClick(Sender: TObject);
begin
  HTMLDocumento := WebBrowser1.Document as IHTMLDocument2;
  HTMLDocumento.execCommand('Underline', False, 0);
end;

procedure TEnviarEmailForm.Button1Click(Sender: TObject);
var
  sStart: word;
begin


  {
  sStart := REdit.SelStart;
  //REdit.SelStart := 6;
  //REdit.SelLength := 10;
  //REdit.SelAttributes.color := clBlue; // set color
  REdit.SelAttributes.style := [fsBold]; // set attributes
  Application.Processmessages;
  REdit.SelStart := sStart;
  REdit.SelLength := 0;
  }
end;

procedure TEnviarEmailForm.Button2Click(Sender: TObject);
var
  sStart: word;
begin



  {
  sStart := REdit.SelStart;
  //REdit.SelStart := 6;
  //REdit.SelLength := 10;
  //REdit.SelAttributes.color := clBlue; // set color
  REdit.SelAttributes.style := [fsItalic]; // set attributes
  Application.Processmessages;
  REdit.SelStart := sStart;
  REdit.SelLength := 0;
  }
end;

procedure TEnviarEmailForm.cbFontChange(Sender: TObject);
begin
  //HTMLDocumento := WebBrowser1.Document as IHTMLDocument2;
  //HTMLDocumento.execCommand('FontName', False, cbFont.Text);
end;

procedure TEnviarEmailForm.cbSizeChange(Sender: TObject);
begin
  {
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
  }
end;

procedure TEnviarEmailForm.EditEmailDestinoDblClick(Sender: TObject);
begin
  Application.CreateForm(TCsClientesForm,CsClientesForm);
  try
    CsClientesForm.MalaDireta := True;
    if CsClientesForm.ShowModal = mrOk then
    begin



      BancodeDados.Clientes.First;
      while not BancodeDados.Clientes.Eof do
      begin
        if BancodeDados.ClientesATIVO.Value then
        begin

          if BancodeDados.ClientesEMAIL_CONTATO1.Value <> EmptyStr then
            EditEmailDestino.Text := EditEmailDestino.Text + BancodeDados.ClientesEMAIL_CONTATO1.Value + ';';
        end;
        //BancodeDados.Clientes.Post;
        BancodeDados.Clientes.Next;

      end;

    end;


    finally
    CsClientesForm.Free;
  end;
end;

procedure TEnviarEmailForm.FormShow(Sender: TObject);
begin
  WebBrowser1.Navigate('about:blank');
  OleInitialize(nil);
  (WebBrowser1.Document as IHTMLDocument2).designMode := 'On';
  cbFont.Items := screen.Fonts;

  Application.ProcessMessages;
  cbFont.Text := 'Arial';
  cbSize.ItemIndex := 1;
  Application.ProcessMessages;
  cbFontChange(nil);
  cbSizeChange(nil);

  Application.ProcessMessages;
  //WebBrowser1.OleObject.Document.DocumentElement.InnerHtml := Memo1.Text;

end;


end.
