unit CadContatos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, DBCtrls, ExtCtrls, jpeg, DB, Grids, DBGrids,
  SEDDBDateEdit, Mask;

type
  TCadContatosForm = class(TForm)
    Image1: TImage;
    Panel1: TPanel;
    DBText5: TDBText;
    Label13: TLabel;
    BTgravar: TButton;
    BTfechar: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet3: TTabSheet;
    DBMemo1: TDBMemo;
    Label1: TLabel;
    EditNome: TDBEdit;
    Label2: TLabel;
    Editcontato: TDBEdit;
    EditSituacao: TDBComboBox;
    Label4: TLabel;
    EditCadastro: TSedDbDateEdit;
    Label5: TLabel;
    Label8: TLabel;
    EditLogradouro: TDBEdit;
    Label9: TLabel;
    EditBairro: TDBEdit;
    Label10: TLabel;
    EditCeps: TDBEdit;
    Label11: TLabel;
    EditUF: TDBEdit;
    Label12: TLabel;
    EditCidades: TDBEdit;
    Label14: TLabel;
    EditFone1: TDBEdit;
    Label15: TLabel;
    EditFax: TDBEdit;
    DBNavigator1: TDBNavigator;
    Label17: TLabel;
    EditDiretor: TDBEdit;
    Label6: TLabel;
    EditEmail: TDBEdit;
    Label7: TLabel;
    EditSite: TDBEdit;
    Label18: TLabel;
    EditNumero: TDBEdit;
    Label20: TLabel;
    Label21: TLabel;
    DBEdit5: TDBEdit;
    Label3: TLabel;
    DBComboBox1: TDBComboBox;
    Label16: TLabel;
    DBComboBox2: TDBComboBox;
    procedure BTgravarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BTfecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadContatosForm: TCadContatosForm;

implementation

uses Base, Principal, unRecursos;

{$R *.dfm}

procedure TCadContatosForm.BTgravarClick(Sender: TObject);
begin
  try
    try
      BTgravar.Enabled := False;
      Screen.Cursor := crSQLWait;
      BTfechar.Enabled := False;
      if BancodeDados.Contatos.State in [dsedit, dsinsert] then
        BancodeDados.Contatos.Post;
    finally
      BTgravar.Enabled := true;
      BTfechar.Enabled := true;
      Screen.Cursor := crDefault;
      ModalResult := mrOk;
    end;
  except
    on E: Exception do
      TraduzErro(E.Message);
  end;
  Screen.Cursor := crDefault;
end;

procedure TCadContatosForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and not(ActiveControl is TDBMemo) and
    not(ActiveControl is TDBGrid) then
  begin
    Key := #0;
    Perform(WM_NextDlgCtl, 0, 0);
  end;
  if (Key = #27)
  { and not (BancodeDados.Unidades.State in [dsInsert,dsEdit]) and not (BancodeDados.Inst.State in [dsInsert,dsEdit]) }
  then
  begin
    Key := #0;
    Close;
  end;
end;

procedure TCadContatosForm.FormShow(Sender: TObject);
begin
  TabSheet1.Show;
  EditNome.SetFocus;
end;

procedure TCadContatosForm.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
    Key := 9;
end;

procedure TCadContatosForm.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
    Key := 9;
end;

procedure TCadContatosForm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if Mensagem('Deseja sair agora?', mtConfirmation, [mbyes, mbNo], mryes, 0) = idNo
  then
    CanClose := False;
end;

procedure TCadContatosForm.BTfecharClick(Sender: TObject);
begin
  Close;
end;

procedure TCadContatosForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  if BancodeDados.Contatos.State in [dsedit, dsinsert] then
    BancodeDados.Contatos.Cancel;
end;

end.
