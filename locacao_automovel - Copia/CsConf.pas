unit CsConf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, StdCtrls, jpeg, Menus, db, SedDBGrid;

type
  TCsConfForm = class(TForm)
    Panel1: TPanel;
    DBGrid1: TSedDBGrid;
    BtOk: TButton;
    BtNovo1: TButton;
    BtCancelar: TButton;
    Label2: TLabel;
    Label4: TLabel;
    CBOpcao: TComboBox;
    EditConsulta: TEdit;
    CBTipo: TComboBox;
    PopupMenu1: TPopupMenu;
    Excluir1: TMenuItem;
    Editar1: TMenuItem;
    N1: TMenuItem;
    MainMenu1: TMainMenu;
    Excluir2: TMenuItem;
    Editar2: TMenuItem;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure EditNomeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtNovo1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    // procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CsConfForm: TCsConfForm;

implementation

uses Base, Principal, unRecursos, CadConfig;

{$R *.dfm}

procedure TCsConfForm.DBGrid1CellClick(Column: TColumn);
begin
{  if not BancodeDados.Servicos.IsEmpty then
  begin
    if Column.fieldname = 'ATIVO' then
    begin
      BancodeDados.MarcarAtivo(listaServ, BancodeDados.ServicosVEICULO_ID.Value, BancodeDados.ServicosATIVO);
    end;
  end; }
end;

procedure TCsConfForm.DBGrid1DblClick(Sender: TObject);
begin
   if BancodeDados.ConfigCONF_ID.Value > 0 then
    try
      if not assigned(CadConfigForm) then
        CadConfigForm := tCadConfigForm.Create(Application);
      try
        Screen.Cursor := crSQLWait;
        BtNovo1.Enabled := False;
        BtOk.Enabled := False;
        BtCancelar.Enabled := False;
        CadConfigForm.ShowModal;
      finally
        CadConfigForm.Release;
        CadConfigForm := nil;
        Screen.Cursor := crDefault;
        BtNovo1.Enabled := true;
        BtOk.Enabled := true;
        BtCancelar.Enabled := true;
      end;
    except
      on E: Exception do
        TraduzErro(E.Message);
    end;
  Screen.Cursor := crDefault;
end;

procedure TCsConfForm.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
{
  if not BancodeDados.Servicos.IsEmpty then
  begin
    DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.columns[DataCol].field, State);

    (* pinta checkbox *)
    if Column.field = BancodeDados.ServicosATIVO then
    begin
      DBGrid1.Canvas.FillRect(Rect);
      PrincipalForm.ImageList1.Draw(DBGrid1.Canvas, Rect.Left + 10, Rect.Top + 1, 0);
      if BancodeDados.ServicosATIVO.AsBoolean then
        PrincipalForm.ImageList1.Draw(DBGrid1.Canvas, Rect.Left + 10, Rect.Top + 1, 2)
      else
        PrincipalForm.ImageList1.Draw(DBGrid1.Canvas, Rect.Left + 10, Rect.Top + 1, 1);
    end;

  end;}
end;

procedure TCsConfForm.FormShow(Sender: TObject);
begin
  Screen.Cursor := crSQLWait;
  BancodeDados.Config.Close;
  BancodeDados.Config.SQL.Text := 'select * from config order by conf_id';
  BancodeDados.Config.Open;
  Screen.Cursor := crDefault;
  EditConsulta.SetFocus;
end;

procedure TCsConfForm.DBGrid1TitleClick(Column: TColumn);
begin
  BancodeDados.MudaOrdem(BancodeDados.Config, Column.field);
end;

procedure TCsConfForm.EditNomeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_DOWN) and not(ActiveControl is TDBGrid) then
    DBGrid1.SetFocus;
end;

procedure TCsConfForm.BtNovo1Click(Sender: TObject);
begin
   //try
    if not assigned(CadConfigForm) then
    CadConfigForm := tCadConfigForm.Create(Application);
    try
    Screen.Cursor := crSQLWait;
    BtNovo1.Enabled := False;
    BtOk.Enabled := False;
    BtCancelar.Enabled := False;
    BancodeDados.Config.Append;
    CadConfigForm.ShowModal;
    finally
    CadConfigForm.Release;
    CadConfigForm := nil;
    Screen.Cursor := crDefault;
    BtNovo1.Enabled := true;
    BtOk.Enabled := true;
    BtCancelar.Enabled := true;
    end;
//    except
//    on E: Exception do
//    TraduzErro(E.Message);
//    end;
    Screen.Cursor := crDefault;

end;

procedure TCsConfForm.FormCreate(Sender: TObject);
begin
  listaServ.Clear;
end;

procedure TCsConfForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NextDlgCtl, 0, 0);
  end;

  if Key = #27 then
  begin
    Key := #0;
    Close;
  end;

end;

End.
