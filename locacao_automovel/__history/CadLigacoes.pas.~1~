unit CadLigacoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, DBCtrls, Mask, jpeg, SEDDBDateEdit,
  SEDDBComboBox, Vcl.Menus;

type
  TCadLigacoesForm = class(TForm)
    Panel1: TPanel;
    BtOk: TButton;
    BtFechar: TButton;
    EditObservacao: TDBMemo;
    Label4: TLabel;
    Label12: TLabel;
    EditData: TSedDbDateEdit;
    Label5: TLabel;
    EditContato: TDBEdit;
    Label29: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    EditTipo: TSedDBComboBox;
    EditClienteID: TDBLookupComboBox;
    DBNavigator1: TDBNavigator;
    EditSituacao: TSedDBComboBox;
    Label3: TLabel;
    Label6: TLabel;
    EditFone1: TDBEdit;
    EditFone2: TDBEdit;
    Label7: TLabel;
    EditAssunto: TDBEdit;
    Label13: TLabel;
    DBText5: TDBText;
    Label8: TLabel;
    DBText1: TDBText;
    MainMenu1: TMainMenu;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BtOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadLigacoesForm: TCadLigacoesForm;

implementation

uses Base, Principal, unImpressao, unRecursos, CsClientes;

{$R *.dfm}

procedure TCadLigacoesForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (BancodeDados.Ligacoes.State in [dsInsert, dsEdit]) then BancodeDados.Ligacoes.Cancel;
end;

procedure TCadLigacoesForm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if (BancodeDados.Ligacoes.State in [dsInsert, dsEdit]) then
if Mensagem('Tem certeza que deseja sair?',mtConfirmation,[mbyes,mbNo],mryes,0)=idNo then
  CanClose:=False;
end;

procedure TCadLigacoesForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
if (key=#13) then begin
key:=#0;
Perform(WM_NextDlgCtl, 0, 0);
end;

if (key=#27) then begin
key:=#0;
Close;
end;
end;

procedure TCadLigacoesForm.FormShow(Sender: TObject);
begin
EditTipo.SetFocus;

BancodeDados.CsClientes.Close;
BancodeDados.CsClientes.SQL.Text := 'select * from clientes where tipo = '+QuotedStr('001 - Escola')+' order by nome';
BancodeDados.CsClientes.Open;
BancodeDados.CsClientes.Last;

if (Assigned(CsClientesForm)) then EditClienteID.Enabled:=false else EditClienteID.Enabled:=true;

end;

procedure TCadLigacoesForm.BtOkClick(Sender: TObject);
var
PodeIR : Boolean;

begin
PodeIR:=true;

if not(BancodeDados.LigacoesDT_LIGAR.Value > 0) then begin
  Mensagem('Informe a data de ligação.', mtInformation, [mbOk], mrOk, 0);
  EditData.SetFocus;
  PodeIR:=false;
end else
if (BancodeDados.LigacoesCLI_ID.Value = 0) or (BancodeDados.LigacoesCLI_ID.IsNull)  then begin
  Mensagem('Informe um cliente válido.', mtInformation, [mbOk], mrOk, 0);
  EditClienteID.SetFocus;
  PodeIR:=false;
end else
if Trim(BancodeDados.LigacoesASSUNTO.Value) = '' then  begin
  Mensagem('Informe o assunto.', mtInformation, [mbOk], mrOk, 0);
  EditAssunto.SetFocus;
  PodeIR:=false;
end;

if PodeIR=true then begin
try
  if Mensagem('Confirmar inclusão da ligação?', mtConfirmation, [mbyes, mbNo], mryes, 0) = idYes then begin

    if (BancodeDados.Ligacoes.State in [dsInsert, dsEdit]) then begin
      if not BancodeDados.FDConnection1.InTransaction then BancodeDados.FDConnection1.StartTransaction;
      BancodeDados.Ligacoes.Post;
      BancodeDados.FDConnection1.CommitRetaining;
    end;

  end;

  finally
    Close;
  end;
end;



end;

end.
