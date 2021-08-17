unit CadTipoContas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ExtCtrls, DB, Mask,
  Buttons, jpeg, Menus, ComCtrls, Grids, DBGrids;

type
  TCadTipoContasForm = class(TForm)
    Panel1: TPanel;
    DBText5: TDBText;
    Label13: TLabel;
    BtInserir: TButton;
    btCancelar: TButton;
    Label8: TLabel;
    Label2: TLabel;
    EditDescricao: TDBEdit;
    EditAbrev: TDBEdit;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    EditObservacao: TDBMemo;
    Label4: TLabel;
    EditReferecnia: TDBEdit;
    MainMenu1: TMainMenu;
    Image1: TImage;
    Label19: TLabel;
    procedure BtInserirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadTipoContasForm: TCadTipoContasForm;

implementation

uses Base, Principal, unRecursos;

{$R *.dfm}

procedure TCadTipoContasForm.BtInserirClick(Sender: TObject);
begin
  try
    try
      BtInserir.Enabled := False;
      Screen.Cursor := crSQLWait;
      if BancodeDados.Contas.State in [dsInsert, dsEdit] then
      begin
        if not BancodeDados.FDConnection1.InTransaction then
          BancodeDados.FDConnection1.StartTransaction;
        BancodeDados.Contas.Post;
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

procedure TCadTipoContasForm.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TCadTipoContasForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if BancodeDados.Contas.State in [dsInsert, dsEdit] then
    BancodeDados.Contas.Cancel;
end;

procedure TCadTipoContasForm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if Mensagem('Tem certeza que deseja sair?', mtConfirmation, [mbyes, mbNo],
    mryes, 0) = idNo then
    CanClose := False;
end;

end.
