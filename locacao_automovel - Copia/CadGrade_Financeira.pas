unit CadGrade_Financeira;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ExtCtrls, DB, Mask, Buttons, jpeg, Menus,
  SEDDBComboBox;

type
  TCadGrade_FinanceiraForm = class(TForm)
    Panel1: TPanel;
    DBText5: TDBText;
    Label13: TLabel;
    Label1: TLabel;
    EditNome: TDBEdit;
    DBNavigator1: TDBNavigator;
    BtInserir: TButton;
    btCancelar: TButton;
    EditEspecie: TDBEdit;
    Label12: TLabel;
    Label3: TLabel;
    EditAceite: TDBComboBox;
    EditJuros: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    EditMulta: TDBEdit;
    Label6: TLabel;
    EditCarteira: TDBEdit;
    Label7: TLabel;
    EditMoeda: TDBEdit;
    Label2: TLabel;
    EditJurosMes: TDBEdit;
    Label8: TLabel;
    EditJrMesOp: TSedDBComboBox;
    Label19: TLabel;
    procedure BtInserirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadGrade_FinanceiraForm: TCadGrade_FinanceiraForm;

implementation

uses Base, Principal, unRecursos;

{$R *.dfm}

procedure TCadGrade_FinanceiraForm.BtInserirClick(Sender: TObject);

begin
  BtInserir.Enabled := False;
  Screen.Cursor := crSQLWait;
  if BancodeDados.GradeFin.State in [dsInsert, dsEdit] then
  begin
    if not BancodeDados.FDConnection1.InTransaction then
      BancodeDados.FDConnection1.StartTransaction;
    BancodeDados.GradeFin.Post;
    BancodeDados.FDConnection1.CommitRetaining;

    BtInserir.Enabled := True;
    Screen.Cursor := crDefault;
  end;
  close;
end;

procedure TCadGrade_FinanceiraForm.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TCadGrade_FinanceiraForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if BancodeDados.GradeFin.State in [dsInsert, dsEdit] then
    BancodeDados.GradeFin.Cancel;
end;

procedure TCadGrade_FinanceiraForm.FormShow(Sender: TObject);
begin
  EditNome.SetFocus;
end;

procedure TCadGrade_FinanceiraForm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if Mensagem('Tem certeza que deseja sair?', mtConfirmation, [mbyes, mbNo],
    mryes, 0) = idNo then
    CanClose := False;

end;

end.
