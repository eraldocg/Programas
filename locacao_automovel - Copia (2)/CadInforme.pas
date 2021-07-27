unit CadInforme;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, SEDCurrency, Mask, SEDDateEdit, ExtCtrls, db,
  SEDDBDateEdit, ComCtrls, dbcgrids, Provider, Grids, DBGrids, Menus;

type
  TCadInformeForm = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    EditData: TSedDbDateEdit;
    Panel1: TPanel;
    BtGravar: TButton;
    EditComenta: TDBMemo;
    Button1: TButton;
    Button2: TButton;
    PopupMenu1: TPopupMenu;
    MainMenu1: TMainMenu;
    Gravar1: TMenuItem;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadInformeForm: TCadInformeForm;

implementation

uses Base, Principal, unRecursos;

{$R *.dfm}

procedure TCadInformeForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
if (key=#13) and not (ActiveControl is TDBMemo) then begin
key:=#0;
Perform(WM_NextDlgCtl,0,0);
end;

if key=#27 then begin
key:=#0;
Close;
end;
end;

procedure TCadInformeForm.FormShow(Sender: TObject);
begin
EditComenta.SetFocus;
end;

end.
