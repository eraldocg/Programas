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
{  Screen.Cursor := crSQLWait;
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
begin
  Senha.text := '';
  Editlogin.text:=LowerCase(usrLogin);
  EditLogin.SelectAll;
  EditLogin.SetFocus;

  { NomeSupervisor := '';
    NivelSupervisor := '';
    PoderSupervisor := '';
    CodigoSupervisor := 0; }

  supervisorID := 0;
  supervisorLogin := '';
  supervisorNivel := 0;
  tentativas:=0;
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


  if Trim(Senha.text)<>EmptyStr then
  begin

      BancodeDados.Login.Close;
      BancodeDados.Login.SQL.text := 'select * from login where login = ' + QuotedStr(Trim(EditLogin.text)) + ' and ativo = 1';

      BancodeDados.Login.Open;

      if BancodeDados.Login.IsEmpty then
      begin
        Mensagem('Usuário ou senha inválida. ' , mtInformation, [mbOk], mrOK, 0);
      end
      else
      begin
        txtSenha := unRecursos.DecifrarSed(BancodeDados.LoginSENHA.AsString, False, BancodeDados.LoginLOGIN_ID.Value * 2233);

        if (txtSenha = Trim(Senha.text)) then
        begin

          if not(usrID > 0) then
          begin
            usrID    := BancodeDados.LoginLOGIN_ID.Value;
            usrLogin := BancodeDados.LoginLOGIN.Value;
            usrNivel := BancodeDados.LoginNIVEL.Value;
            GerarNfseAutom := (BancodeDados.LoginGERA_NFSE.Value=1);
          end;

          supervisorID    := BancodeDados.LoginLOGIN_ID.Value;
          supervisorLogin := BancodeDados.LoginLOGIN.Value;
          supervisorNivel := BancodeDados.LoginNIVEL.Value;


          AcessoPermitido := True;
        end
        else
        begin

          Mensagem('Senha inválida. ' , mtInformation, [mbOk], mrOK, 0);
          Senha.Clear;
          Senha.SetFocus;
          inc(tentativas);
        end;
      end;

      BancodeDados.Login.Close;

      if (AcessoPermitido = True) then
        ModalResult := mrOk
      else begin
        if tentativas = 3 then
        begin
         Mensagem(Format('Você excedeu o número de tentativas! O SED Cliente será fechado. ' , [tentativas]),mtInformation,[mbOk],mrOK,0);
         ModalResult := mrCancel;
         Application.Terminate;
        end;
      end;

      PrincipalForm.Cadastro1.Visible     :=true;
      PrincipalForm.locatario1.Visible    :=true;

      PrincipalForm.Relatrios1.Visible    :=true;
      //PrincipalForm.Componentes12.Visible :=true;
      PrincipalForm.Utilitarios1.Visible  :=true;
      PrincipalForm.MovimentacaoBancaria12.Visible:=true;
      PrincipalForm.Utilitarios1.Enabled  := True; //add por Denilson


      if (usrNivel in [2]) then
      begin
        {menu cadastro}

        PrincipalForm.Login1.Enabled              :=true;
        //PrincipalForm.Servios1.Enabled              :=true;
        //PrincipalForm.Fornecedores1.Enabled         :=true;
        //PrincipalForm.Contatos1.Enabled             :=true;
        PrincipalForm.Configuraes1.Enabled          :=true;
        {menu relatorios}
        //PrincipalForm.Relatrios21.Enabled           :=true;
        //PrincipalForm.Relaodeclientes1.Enabled      :=true;
        {menu componentes}
        //PrincipalForm.Gradefinanceira1.Enabled      :=true;
        PrincipalForm.Bacos1.Enabled                :=true;
        PrincipalForm.ConciliaoBancria1.Enabled     :=true;
        //PrincipalForm.tipodeContas1.Enabled         :=true;
        {menu utilitários}
        PrincipalForm.Consultadettulos1.Enabled     :=true;
        PrincipalForm.Processararquivoderetorno12.Enabled:=true;

        PrincipalForm.BoletosEmitidos2.Enabled:=true;

        PrincipalForm.GerarArquivodeRemessa1.Enabled :=true;


        PrincipalForm.Boletosemitidos1.Enabled      :=true;
        PrincipalForm.Pagar1.Enabled                :=true;
        PrincipalForm.LivroCaixa1.Enabled           :=true;


        //PrincipalForm.ConsultadeNotasFiscias1.Enabled:=true;
        //PrincipalForm.AssistenteparaGeraodeNFS1.Enabled:=true;
        //PrincipalForm.Financeiro31.Enabled          :=true;
      end else
      if (usrNivel in [1]) then
      begin
        {menu cadastro}
        //PrincipalForm.Servios1.Enabled              :=false;
        //PrincipalForm.Fornecedores1.Enabled         :=false;
        //PrincipalForm.Contatos1.Enabled             :=false;
        PrincipalForm.Login1.Enabled                 :=false;
        PrincipalForm.Configuraes1.Enabled          :=false;
        {menu relatorios}
        //PrincipalForm.Relatrios21.Enabled           :=false;
        //PrincipalForm.Relaodeclientes1.Enabled      :=false;
        {menu componentes}
        //PrincipalForm.Gradefinanceira1.Enabled      :=false;
        PrincipalForm.Bacos1.Enabled                :=false;
        PrincipalForm.ConciliaoBancria1.Enabled     :=false;

        //PrincipalForm.tipodeContas1.Enabled         :=false;
        {menu utilitários}
        PrincipalForm.Consultadettulos1.Enabled     :=false;
        PrincipalForm.Processararquivoderetorno12.Enabled:=false;
        PrincipalForm.BoletosEmitidos2.Enabled:=false;
        PrincipalForm.GerarArquivodeRemessa1.Enabled :=false;

        PrincipalForm.Boletosemitidos1.Enabled      :=false;
        PrincipalForm.Pagar1.Enabled                :=false;
        PrincipalForm.LivroCaixa1 .Enabled          :=false;
        //PrincipalForm.ConsultadeNotasFiscias1.Enabled:=false;
        //PrincipalForm.AssistenteparaGeraodeNFS1.Enabled:=false;
        //PrincipalForm.Financeiro31.Enabled:=false;

      end else
      if (usrNivel in [0]) then
      begin
        //PrincipalForm.Componentes12.Enabled     :=false;
        PrincipalForm.Utilitarios1.Enabled      :=false;
       // PrincipalForm.MovimentacaoBancaria1.Enabled      :=false;
      end;


  end else
  begin
     Mensagem('Digite uma senha válida.', mtInformation, [mbOk], mrOK, 0);
     Senha.Clear;
     Senha.SetFocus;
  end;

 // PrincipalForm.configVisaoCliente; //add por Denilson

  end;


end.
