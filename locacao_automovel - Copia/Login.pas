unit Login;

interface

uses
  Windows, Messages, SysUtils, Forms,
  Dialogs, DB, jpeg, ExtCtrls, StdCtrls, Controls, Classes;

type
  TLoginForm = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    EditLogin: TEdit;
    Senha: TEdit;
    BtEntrar: TButton;
    BTCancelar: TButton;
    procedure EditLoginExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BtEntrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LoginForm: TLoginForm;

implementation

uses Base, Principal, unRecursos;

{$R *.dfm}

procedure TLoginForm.EditLoginExit(Sender: TObject);
begin
  Screen.Cursor := crSQLWait;
  try
    // if not BancodeDados.Login.Active then BancodeDados.Login.Open;

    if EditLogin.text <> '' then
      if not(VerificaActive(EditLogin.text).Nome = True) then
      begin
        // if not BancodeDados.Login.Locate('LOGIN', AnsiUpperCase(Editlogin.text), [loCaseInsensitive]) then begin
        Mensagem('O usuário informado não foi encontrado!', mtWarning, [mbOk], mrOK, 0);
        EditLogin.SetFocus;
      end;

  except
    On E: Exception do
    begin
      Screen.Cursor := crDefault;
      Mensagem('Ocorreu um erro ao tentar localizar o Banco de Dados!' + #13 + 'O sistema será finalizado, verifique os parâmetros de inicialização!' + #13 +
        #13 + E.Message, mtWarning, [mbOk], mrOK, 0);
      Application.Terminate;
    end;
  end;
  Screen.Cursor := crDefault;
end;

procedure TLoginForm.FormShow(Sender: TObject);
begin
  Senha.text := '';
  // Editlogin.text:=LowerCase(Usuario);
  EditLogin.SelectAll;
  EditLogin.SetFocus;

  {NomeSupervisor := '';
  NivelSupervisor := '';
  PoderSupervisor := '';
  CodigoSupervisor := 0; }

  supervisorID := 0;
  supervisorLogin := '';
  supervisorNivel := 0;
end;

procedure TLoginForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
  begin
    Key := #0;
    ModalResult := mrCancel;
  end;

  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NextDlgCtl, 0, 0);
  end;
end;

procedure TLoginForm.BtEntrarClick(Sender: TObject);
var
  AcessoPermitido: Boolean;
  txtSenha: String;
begin
  AcessoPermitido := False;
  { if ((EditLogin.text = '') or (Senha.text = '')) then
    Mensagem('Informe Login/Senha!', mtWarning, [mbOk], mrOK, 0)
    else
    begin
    SenhaActive := VerificaActive(EditLogin.text, Senha.text);
    if (SenhaActive.Senha = True) then
    begin
    AcessoPermitido := True;
    CodigoSupervisor := SenhaActive.CodUsu;
    NomeSupervisor := SenhaActive.NomeSup;
    NivelSupervisor := SenhaActive.NivelSup;
    PoderSupervisor := SenhaActive.Privilegio;
    end;
    if (AcessoPermitido = True) then
    ModalResult := mrOK
    else
    ModalResult := mrCancel;
    end; }

  usrID := 0;
  usrLogin := '';
  usrNivel := 0;

  BancodeDados.Login.Close;
  BancodeDados.Login.SQL.text := 'select * from LOGIN where LOGIN = ' + QuotedStr(Trim(EditLogin.text));
  BancodeDados.Login.Open;
  if BancodeDados.Login.IsEmpty then
  begin
    Mensagem('Senha inválida.', mtInformation, [mbOk], mrOK, 0);
  end
  else
  begin
    txtSenha := DecifrarSed(BancodeDados.LoginSENHA.AsString, False, BancodeDados.LoginLOGIN_ID.Value * 2233);

    if (txtSenha = Trim(Senha.text)) then
    begin
      usrID := BancodeDados.LoginLOGIN_ID.Value;
      usrLogin := BancodeDados.LoginLOGIN.Value;
      usrNivel := BancodeDados.LoginNIVEL.Value;
      AcessoPermitido := True;
    end
    else
    begin
      Mensagem('Senha inválida.', mtInformation, [mbOk], mrOK, 0);
    end;
  end;
  BancodeDados.Login.Close;

  if (AcessoPermitido = True) then
    ModalResult := mrOK
  else
    ModalResult := mrCancel;
end;

end.
