unit Acesso;

interface

uses
  Windows, Messages, SysUtils, Forms,
  Dialogs, DB, jpeg, ExtCtrls, StdCtrls, Controls, Classes, Vcl.Menus,
  Vcl.Imaging.pngimage;

type
  TAcessoForm = class(TForm)
    EditLogin: TEdit;
    Senha: TEdit;
    BtEntrar: TButton;
    BTCancelar: TButton;
    PopupMenu1: TPopupMenu;
    Image1: TImage;
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
  AcessoForm: TAcessoForm;

implementation

uses Base, Principal, unRecursos, CadClientes;

{$R *.dfm}

procedure TAcessoForm.EditLoginExit(Sender: TObject);
begin
  { Screen.Cursor := crSQLWait;
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
    Screen.Cursor := crDefault; }
end;

procedure TAcessoForm.FormShow(Sender: TObject);

function SIDToString(ASID: PSID): string;
var
  StringSid: PChar;
begin
  ConvertSidToStringSid(ASID, StringSid);
  Result := string(StringSid);
end;

function GetLocalComputerName: string;
var
  nSize: DWORD;
begin
  nSize := MAX_COMPUTERNAME_LENGTH + 1;
  SetLength(Result, nSize);
  if not GetComputerName(PChar(Result), nSize) then
    Result := '';
end;


function GetComputerSID: string;
var
  Sid: PSID;
  cbSid: DWORD;
  cbReferencedDomainName: DWORD;
  ReferencedDomainName: string;
  peUse: SID_NAME_USE;
  Success: BOOL;
  lpSystemName: string;
  lpAccountName: string;
begin
  Sid := nil;
  try
    lpSystemName := '';
    lpAccountName := GetLocalComputerName;

    cbSid := 0;
    cbReferencedDomainName := 0;
    // First call to LookupAccountName to get the buffer sizes.
    Success := LookupAccountName(PChar(lpSystemName), PChar(lpAccountName), nil, cbSid, nil, cbReferencedDomainName, peUse);
    if (not Success) and (GetLastError = ERROR_INSUFFICIENT_BUFFER) then
    begin
      SetLength(ReferencedDomainName, cbReferencedDomainName);
      Sid := AllocMem(cbSid);
      // Second call to LookupAccountName to get the SID.
      Success := LookupAccountName(PChar(lpSystemName), PChar(lpAccountName), Sid, cbSid, PChar(ReferencedDomainName), cbReferencedDomainName, peUse);
      if not Success then
      begin
        FreeMem(Sid);
        Sid := nil;
        RaiseLastOSError;
      end
      else
        Result := SIDToString(Sid);
    end
    else
      RaiseLastOSError;
  finally
    if Assigned(Sid) then
      FreeMem(Sid);
  end;
end;



begin
  Senha.text := '';
  EditLogin.text := LowerCase(usrLogin);
  EditLogin.SelectAll;
  EditLogin.SetFocus;

  supervisorID := 0;
  supervisorLogin := '';
  supervisorNivel := 0;
  tentativas := 0;
  // rotina para o computador de eraldo
  if GetComputerSID = 'S-1-5-21-30239458-3291008336-1254392623' then
  begin

    EditLogin.SetFocus;
    EditLogin.text := 'eraldo';
    Senha.SetFocus;

    BancodeDados.Login.Close;
    BancodeDados.Login.AutoCalcFields:=False;
    BancodeDados.Login.SQL.text := 'select * from login where login = ' +QuotedStr(Trim(EditLogin.text)) + ' and ativo = 1';
    BancodeDados.Login.Open;

    Senha.text := DecifrarSed(BancodeDados.LoginSENHA.AsString, False, BancodeDados.LoginLOGIN_ID.Value * 2233);

    BtEntrar.SetFocus;
  end; // rotina feita para amenizar a tendinite do braco. // Modified by eraldocg 02/10/2020 18:10:36


end;

procedure TAcessoForm.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TAcessoForm.BtEntrarClick(Sender: TObject);
var
  AcessoPermitido: Boolean;
  txtSenha: String;
begin
  AcessoPermitido := False;

  if Trim(Senha.text) <> EmptyStr then
  begin

    BancodeDados.Login.Close;
    BancodeDados.Login.SQL.text := 'select * from login where login = ' +
      QuotedStr(Trim(EditLogin.text)) + ' and ativo = 1';
    BancodeDados.Login.Open;

    if BancodeDados.Login.IsEmpty then
    begin
      Mensagem('Usuário ou senha inválida. ', mtInformation, [mbOk], mrOK, 0);
    end
    else
    begin
      txtSenha := DecifrarSed(BancodeDados.LoginSENHA.AsString,
        False, BancodeDados.LoginLOGIN_ID.Value * 2233);

      if (txtSenha = Trim(Senha.text)) then
      begin

        if not(usrID > 0) then
        begin
          usrID := BancodeDados.LoginLOGIN_ID.Value;
          usrLogin := BancodeDados.LoginLOGIN.Value;
          usrNivel := BancodeDados.LoginNIVEL.Value;
          GerarNfseAutom := (BancodeDados.LoginGERA_NFSE.Value = 1);
        end;

        supervisorID := BancodeDados.LoginLOGIN_ID.Value;
        supervisorLogin := BancodeDados.LoginLOGIN.Value;
        supervisorNivel := BancodeDados.LoginNIVEL.Value;

        AcessoPermitido := True;
      end
      else
      begin

        Mensagem('Senha inválida. ', mtInformation, [mbOk], mrOK, 0);
        Senha.Clear;
        Senha.SetFocus;
        inc(tentativas);
      end;
    end;

    BancodeDados.Login.Close;

    if (AcessoPermitido = True) then
      ModalResult := mrOK
    else
    begin
      if tentativas = 3 then
      begin
        Mensagem(Format
          ('Você excedeu o número de tentativas! O sistema será fechado. ',
          [tentativas]), mtInformation, [mbOk], mrOK, 0);
        ModalResult := mrCancel;
        Application.Terminate;
      end;
    end;
    if (usrID > 0) then
    begin
      PrincipalForm.Cadastro1.Visible := True;
      PrincipalForm.locatario1.Visible := True;

      PrincipalForm.Relatrios1.Visible := True;
      // PrincipalForm.Componentes12.Visible :=true;
      PrincipalForm.Utilitarios1.Visible := True;
      PrincipalForm.MovimentacaoBancaria12.Visible := True;
      PrincipalForm.Utilitarios1.Enabled := True; // add por Denilson

    end;

    if (usrNivel in [2]) then
    begin
      { menu cadastro }

      PrincipalForm.Login1.Enabled := True;
      // PrincipalForm.Servios1.Enabled              :=true;
      // PrincipalForm.Fornecedores1.Enabled         :=true;
      // PrincipalForm.Contatos1.Enabled             :=true;
      PrincipalForm.Configuraes1.Enabled := True;
      { menu relatorios }
      // PrincipalForm.Relatrios21.Enabled           :=true;
      // PrincipalForm.Relaodeclientes1.Enabled      :=true;
      { menu componentes }
      // PrincipalForm.Gradefinanceira1.Enabled      :=true;
      PrincipalForm.Bacos1.Enabled := True;
      PrincipalForm.ConciliaoBancria1.Enabled := True;
      // PrincipalForm.tipodeContas1.Enabled         :=true;
      { menu utilitários }
      PrincipalForm.Consultadettulos1.Enabled := True;
      PrincipalForm.Processararquivoderetorno12.Enabled := True;

      PrincipalForm.BoletosEmitidos2.Enabled := True;

      PrincipalForm.GerarArquivodeRemessa1.Enabled := True;

      PrincipalForm.Boletosemitidos1.Enabled := True;
      PrincipalForm.Pagar1.Enabled := True;
      PrincipalForm.LivroCaixa1.Enabled := True;

      // PrincipalForm.ConsultadeNotasFiscias1.Enabled:=true;
      // PrincipalForm.AssistenteparaGeraodeNFS1.Enabled:=true;
      // PrincipalForm.Financeiro31.Enabled          :=true;
    end
    else if (usrNivel in [1]) then
    begin
      { menu cadastro }
      // PrincipalForm.Servios1.Enabled              :=false;
      // PrincipalForm.Fornecedores1.Enabled         :=false;
      // PrincipalForm.Contatos1.Enabled             :=false;
      PrincipalForm.Login1.Enabled := False;
      PrincipalForm.Configuraes1.Enabled := False;
      { menu relatorios }
      // PrincipalForm.Relatrios21.Enabled           :=false;
      // PrincipalForm.Relaodeclientes1.Enabled      :=false;
      { menu componentes }
      // PrincipalForm.Gradefinanceira1.Enabled      :=false;
      PrincipalForm.Bacos1.Enabled := False;
      PrincipalForm.ConciliaoBancria1.Enabled := False;

      // PrincipalForm.tipodeContas1.Enabled         :=false;
      { menu utilitários }
      PrincipalForm.Consultadettulos1.Enabled := False;
      PrincipalForm.Processararquivoderetorno12.Enabled := False;
      PrincipalForm.BoletosEmitidos2.Enabled := False;
      PrincipalForm.GerarArquivodeRemessa1.Enabled := False;

      PrincipalForm.Boletosemitidos1.Enabled := False;
      PrincipalForm.Pagar1.Enabled := False;
      PrincipalForm.LivroCaixa1.Enabled := False;
      // PrincipalForm.ConsultadeNotasFiscias1.Enabled:=false;
      // PrincipalForm.AssistenteparaGeraodeNFS1.Enabled:=false;
      // PrincipalForm.Financeiro31.Enabled:=false;

    end
    else if (usrNivel in [0]) then
    begin
      // PrincipalForm.Componentes12.Enabled     :=false;
      PrincipalForm.Utilitarios1.Enabled := False;
      // PrincipalForm.MovimentacaoBancaria1.Enabled      :=false;
    end;

  end
  else
  begin
    Mensagem('Digite uma senha válida.', mtInformation, [mbOk], mrOK, 0);
    Senha.Clear;
    Senha.SetFocus;
  end;

  // PrincipalForm.configVisaoCliente; //add por Denilson

end;

end.
