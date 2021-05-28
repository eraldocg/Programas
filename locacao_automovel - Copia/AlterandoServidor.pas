unit AlterandoServidor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, 
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, vcl.Menus, 
  Vcl.StdCtrls, vcl.Grids, DBGrids, Vcl.ImgList, data.DB, vcl.AppEvnts, 
  MidasLib, ComCtrls, RLReport, Vcl.ExtCtrls, unThread, System.INIFiles, 
  SedDBGrid, unRecursos, Vcl.DBCtrls, SEDDBImage, Vcl.ExtDlgs, SEDRegistro2, 
  Winapi.ShellApi, Vcl.Imaging.jpeg;



type
  TAlterandoServidorForm = class(TForm)
    EditBancodeDados: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    EditNomeServidor: TEdit;
    Panel1: TPanel;
    BTgravar: TButton;
    BTfechar: TButton;
    btSEd: TButton;
    Button1: TButton;
    Button2: TButton;
    Image1: TImage;
    Label4: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    EditPorta: TEdit;
    EditUsuario: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    MainMenu1: TMainMenu;
    EditSenha: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    EditBancoID: TComboBox;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure btSEdClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BTgravarClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure EditSenhaChange(Sender: TObject);
    procedure EditSenhaDblClick(Sender: TObject);
    procedure EditBancoIDChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AlterandoServidorForm: TAlterandoServidorForm;


implementation

{$R *.dfm}

uses
  Principal, IsAdministrator, Base;

procedure TAlterandoServidorForm.BTgravarClick(Sender: TObject);
var
registro: TSEDRegistro;
SenhaBCTemp : string;
begin

  try

  if Length(EditSenha.Text)>0 then
   SenhaBCTemp :=BancodeDados.Criptografar(EditSenha.Text) else  SenhaBCTemp:=EmptyStr;

    registro := TSEDRegistro.Create;
    registro.RootKey := HKEY_LOCAL_MACHINE;
    if Registro.AbrirChave(ChaveRegSED) then
    begin

      registro.EscreveTexto('serv', EditNomeServidor.Text);
      registro.EscreveTexto('banco', EditBancodeDados.Text);
      registro.EscreveTexto('porta', EditPorta.Text);
      registro.EscreveTexto('usuario', EditUsuario.Text);
      registro.EscreveTexto('pswd', SenhaBCTemp);
      registro.EscreveNumero('bcdrive', RemotoDriveID);

      registro.CloseKey;//registro.FecharChave;
    end;
finally
    registro.Free;
    close;
end;
close;
PrincipalForm.FormShow(Sender);

end;

procedure TAlterandoServidorForm.btSEdClick(Sender: TObject);
//var
//R: TSEDRegistro;
begin
{
  R := TSEDRegistro.Create;
  try
   R.RootKey := HKEY_LOCAL_MACHINE;
    R.EscreveTexto('banco', EditBancodeDados.Text);
    R.EscreveTexto('serv', EditServidor.Text);
    R.CloseKey();
  finally
    R.Free;
  end;
}
end;

procedure TAlterandoServidorForm.Button2Click(Sender: TObject);
//var
//reg : TRegistry;

begin
{
    Reg := TRegistry.Create;
    Reg.RootKey := HKEY_CURRENT_USER;
    Reg.OpenKey('Software\ConfClie', True);
    Reg.WriteString('banco', EditBancodeDados.Text);
    Reg.WriteString('serv', EditServidor.Text);
    Reg.CloseKey();
    Reg.Free;
}
end;

procedure TAlterandoServidorForm.EditBancoIDChange(Sender: TObject);
begin
RemotoDriveID:=EditBancoID.ItemIndex;
end;

procedure TAlterandoServidorForm.EditSenhaChange(Sender: TObject);
begin
if trim(EditSenha.text)=EmptyStr then EditSenha.PasswordChar := '*';
end;

procedure TAlterandoServidorForm.EditSenhaDblClick(Sender: TObject);
begin
if EditSenha.Enabled then
begin
    EditSenha.ReadOnly     :=False;
    EditSenha.PasswordChar := #0;
end;
end;

procedure TAlterandoServidorForm.FormCreate(Sender: TObject);
begin

//EditBancoID.ItemIndex:= BancoDriveIDTmp;


 if (usrID > 0) then
 begin
   EditNomeServidor.Enabled   :=false;
   EditBancodeDados.Enabled   :=false;
   EditPorta.Enabled          :=false;
   EditUsuario.Enabled        :=false;
   EditSenha.Enabled          :=false;
   EditBancoID.Enabled        :=false;
   BTgravar.Enabled           :=false;
 end;

end;


Procedure TAlterandoServidorForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and not(ActiveControl is TDBMemo) then
  begin
    Key := #0;
    Perform(WM_NextDlgCtl, 0, 0);
  end;
  if (Key = #27) { and not(BancodeDados.Unidades.State in [dsinsert, dsedit]) and not(BancodeDados.Inst.State in [dsinsert, dsedit]) } then
  begin
    Key := #0;
    Close;
  end;
end;

procedure TAlterandoServidorForm.FormShow(Sender: TObject);
var
  registro: TSEDRegistro;

begin
registro := TSEDRegistro.Create;
  try
    registro.RootKey := HKEY_LOCAL_MACHINE;
    if Registro.AbrirChave(ChaveRegSED) then
    begin
      EditNomeServidor.Text       := registro.LerTexto('serv', 'localhost');
      EditBancodeDados.Text       := registro.LerTexto('banco',  'D:\sedsoftdb\clientes.fdb');
      EditPorta.Text              := registro.LerTexto('porta','3050');
      EditUsuario.Text            := registro.LerTexto('usuario','sysdba');
      EditSenha.Text              := BancodeDados.Criptografar(registro.LerTexto('pswd',''));
      EditBancoID.ItemIndex       := RemotoDriveID;

      registro.FecharChave;
    end;
    registro.Free;
    except
  on Erro: Exception do
    Application.ShowException(Erro);
  end;


end;

end.


