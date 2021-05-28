unit Visualizar_Lista_Remessa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, SedDBGrid, Mask, SEDDateEdit,
  jpeg, db, Menus;

type
  TVisualizar_Lista_RemessaForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BtOk: TButton;
    BtCancelar: TButton;
    DBGrid1: TSedDBGrid;
    PnPeriodo: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    dtIni: TSedDateEdit;
    dtFim: TSedDateEdit;
    cbData: TComboBox;
    Image1: TImage;
    Image2: TImage;
    Label4: TLabel;
    Label1: TLabel;
    CBOpcao: TComboBox;
    EditConsulta: TEdit;
    CBTipo: TComboBox;
    lbl2: TLabel;
    Label5: TLabel;
    PopupMenu1: TPopupMenu;
    AlterarDadosdoSacado1: TMenuItem;
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure AlterarDadosdoSacado1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Visualizar_Lista_RemessaForm: TVisualizar_Lista_RemessaForm;

implementation

uses Remessa, Base, Principal, CadClientes;

{$R *.dfm}

procedure TVisualizar_Lista_RemessaForm.AlterarDadosdoSacado1Click(
  Sender: TObject);
begin
DBGrid1DblClick(Sender);
end;

procedure TVisualizar_Lista_RemessaForm.DBGrid1CellClick(Column: TColumn);
begin
  if not RemessaForm.Boletos.IsEmpty then
  begin
    if Column.FieldName = 'ATIVO' then
    begin
      if not (RemessaForm.Boletos.State in [dsEdit]) then  RemessaForm.Boletos.Edit;
      BancodeDados.MarcarAtivo(listaV_Boletos, RemessaForm.BoletosEMISSAO_ID.Value, RemessaForm.BoletosATIVO);
    end;
  end;
end;

procedure TVisualizar_Lista_RemessaForm.DBGrid1DblClick(Sender: TObject);
begin

  if (RemessaForm.BoletosCLI_ID.Value > 0) then
  begin
    if not Assigned(CadClientesForm) then  CadClientesForm := tCadClientesForm.Create(Application);
    try
      Screen.Cursor := crSQLWait;
      HabilitarBotoes(Self, False);
      BancodeDados.Clientes.Close;
      BancodeDados.Clientes.SQL.Text:=PrincipalForm.SQLrepositorio(1) +' and c.cli_id = '+IntToStr(RemessaForm.BoletosCLI_ID.Value);;
      BancodeDados.Clientes.open;

      CadClientesForm.ShowModal;
    finally
      CadClientesForm.Release;
      CadClientesForm := nil;
      Screen.Cursor := crDefault;
      HabilitarBotoes(Self, True);
    end;
  end;
  Screen.Cursor := crDefault;


end;

procedure TVisualizar_Lista_RemessaForm.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   if RemessaForm.BoletosEMISSAO_ID.Value>0 then begin

      if not(gdSelected in State) then
      begin

        //if TestaCPFCNPJ(RemessaForm.BoletosCPF_RESP.AsString) then
        //DBGrid1.Canvas.Font.Color := clRed;

        if not (RemessaForm.BoletosTem_End.Value='SIM') then
          DBGrid1.Canvas.Font.Color := clRed;

        DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.columns[DataCol].field, State);
      end;

      (* pinta checkbox *)
      if Column.field = RemessaForm.BoletosATIVO then
      begin

        DBGrid1.Canvas.FillRect(Rect);
        PrincipalForm.ImageList1.Draw(DBGrid1.Canvas, Rect.Left + 10, Rect.Top + 1, 0);
        if RemessaForm.BoletosATIVO.AsBoolean then
          PrincipalForm.ImageList1.Draw(DBGrid1.Canvas, Rect.Left + 10, Rect.Top + 1, 2)
        else
          PrincipalForm.ImageList1.Draw(DBGrid1.Canvas, Rect.Left + 10, Rect.Top + 1, 1);
      end;
   end;
end;

procedure TVisualizar_Lista_RemessaForm.DBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 32 then
  begin
    Key := 0;
    DBGrid1CellClick(DBGrid1.columns[0]);
  end;
end;

procedure TVisualizar_Lista_RemessaForm.DBGrid1TitleClick(Column: TColumn);
begin
BancodeDados.MudaOrdem(RemessaForm.Boletos,Column.Field);
end;

procedure TVisualizar_Lista_RemessaForm.FormShow(Sender: TObject);
begin
RemessaForm.Boletos.EnableControls;
RemessaForm.Boletos.First;

if Assigned(RemessaForm) then begin
  dtIni.DateTime := RemessaForm.dtIni.DateTime;
  dtFim.DateTime := RemessaForm.dtFim.DateTime;
  cbData.ItemIndex:=RemessaForm.cbData.ItemIndex;
  dtIni.Enabled:=false;
  dtFim.Enabled:=false;
  cbData.Enabled:=false;
end else begin
  dtIni.DateTime := date;
  dtFim.DateTime := date;
end;


Width :=742;
Height:=549;
end;

end.


