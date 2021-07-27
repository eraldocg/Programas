unit CadLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ExtCtrls, DB, Mask,
  Buttons, jpeg, Menus, ComCtrls, Grids, DBGrids, SEDDBComboBox;

type
  TCadLoginForm = class(TForm)
    Panel1: TPanel;
    DBText5: TDBText;
    Label13: TLabel;
    BtInserir: TButton;
    btCancelar: TButton;
    Label8: TLabel;
    Label2: TLabel;
    EditDescricao: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Label1: TLabel;
    EditNivel: TSedDBComboBox;
    EditSenha: TEdit;
    procedure BtInserirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure EditSenhaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadLoginForm: TCadLoginForm;

implementation

uses Base, Principal, unRecursos;

{$R *.dfm}

procedure TCadLoginForm.BtInserirClick(Sender: TObject);
begin
  try
    try
      BtInserir.Enabled := False;
      Screen.Cursor := crSQLWait;
      if BancodeDados.Login.State in [dsInsert, dsEdit] then
      begin
        if not BancodeDados.FDConnection1.InTransaction then
          BancodeDados.FDConnection1.StartTransaction;

        BancodeDados.LoginSENHA.Value := Trim(EditSenha.Text);

        BancodeDados.Login.Post;
        BancodeDados.FDConnection1.CommitRetaining;
      end;
    finally
      BtInserir.Enabled := True;
      Screen.Cursor := crDefault;
    end;
  except
    on E: Exception do
      TraduzErro(E.Message);
  end;
  Screen.Cursor := crDefault;
  close;
end;

procedure TCadLoginForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
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

procedure TCadLoginForm.FormShow(Sender: TObject);
begin
  EditSenha.Text := BancodeDados.LoginSENHA.Value;
end;

procedure TCadLoginForm.EditSenhaChange(Sender: TObject);
begin
  if not (BancodeDados.Login.State in [dsInsert, dsEdit]) then
    BancodeDados.Login.Edit;
end;

procedure TCadLoginForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if BancodeDados.Login.State in [dsInsert, dsEdit] then
    BancodeDados.Login.Cancel;
end;

procedure TCadLoginForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Mensagem('Tem certeza que deseja sair?', mtConfirmation, [mbyes, mbNo], mryes, 0) = idNo then
    CanClose := False;
end;

end.
