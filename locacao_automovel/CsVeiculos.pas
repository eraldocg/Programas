unit CsVeiculos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, StdCtrls, jpeg, Menus, db, SedDBGrid,
  Vcl.Buttons;

type
  TCsVeiculosForm = class(TForm)
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
    lbVisualizar: TLabel;
    cbVisualizar: TComboBox;
    BtExecutar: TSpeedButton;
    N2: TMenuItem;
    Ativo1: TMenuItem;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure EditNomeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtNovo1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure BtExecutarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbVisualizarChange(Sender: TObject);
    procedure EditConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Ativo1Click(Sender: TObject);
    procedure PopupMenu1Change(Sender: TObject; Source: TMenuItem;
      Rebuild: Boolean);
    // procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CsVeiculosForm: TCsVeiculosForm;

implementation

uses Base, Principal, CadTipoContas, unRecursos, CadVeiculos;

{$R *.dfm}

procedure TCsVeiculosForm.DBGrid1CellClick(Column: TColumn);
begin
{  if not BancodeDados.Servicos.IsEmpty then
  begin
    if Column.fieldname = 'ATIVO' then
    begin
      BancodeDados.MarcarAtivo(listaServ, BancodeDados.ServicosVEICULO_ID.Value, BancodeDados.ServicosATIVO);
    end;
  end; }
end;

procedure TCsVeiculosForm.DBGrid1DblClick(Sender: TObject);
begin
  if BancodeDados.VeiculosVEICULO_ID.Value > 0 then
    try
      if not assigned(CadVeiculosForm) then
        CadVeiculosForm := tCadVeiculosForm.Create(Application);
      try
        Screen.Cursor := crSQLWait;
        BtNovo1.Enabled := False;
        BtOk.Enabled := False;
        BtCancelar.Enabled := False;
        // BancodeDados.Servicos.Edit;
        CadVeiculosForm.ShowModal;
      finally
        CadVeiculosForm.Release;
        CadVeiculosForm := nil;
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

procedure TCsVeiculosForm.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
if not (gdSelected in State) then
if BancodeDados.VeiculosVEICULO_ID.Value>0 then
begin
  if BancodeDados.VeiculosSIT.Value=1 then
  DBGrid1.Canvas.Font.Color:=$009F9F9F;

  DBGrid1.DefaultDrawDataCell(Rect,DBGrid1.Columns[datacol].Field,State);
end;
end;

procedure TCsVeiculosForm.DBGrid1TitleClick(Column: TColumn);
begin
  BancodeDados.MudaOrdem(BancodeDados.Veiculos, Column.field);
end;

procedure TCsVeiculosForm.EditConsultaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_Return) then
    BtExecutarClick(Sender);
end;

procedure TCsVeiculosForm.EditNomeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_DOWN) and not(ActiveControl is TDBGrid) then
    DBGrid1.SetFocus;
end;

procedure TCsVeiculosForm.Ativo1Click(Sender: TObject);
begin
if BancodeDados.VeiculosVEICULO_ID.Value>0 then
if PrincipalForm.LiberaAcesso then
begin
    if not (BancodeDados.Veiculos.State in [dsEdit]) then
    begin
      BancodeDados.Veiculos.edit;
      if BancodeDados.VeiculosSIT.Value=1 then
      BancodeDados.VeiculosSIT.Value  := 0 else BancodeDados.VeiculosSIT.Value:= 1;
      BancodeDados.Veiculos.Post;

    if not BancodeDados.FDConnection1.InTransaction then BancodeDados.FDConnection1.StartTransaction;
    Bancodedados.FDConnection1.CommitRetaining;
    end;
end;

end;

procedure TCsVeiculosForm.BtExecutarClick(Sender: TObject);
var
  Opcao, csTexto : string;
begin
//if BtNovo.Enabled and BtNovo.Visible then
begin
  case CBOpcao.ItemIndex of
    0:
      Opcao := 'placa';
    1:
      Opcao := 'marca';
    2:
      Opcao := 'modelo';
    3:
      Opcao := 'Ano';
    4:
      Opcao := 'Cor';
  end;


  HabilitarBotoes(Self,false);
  Try
    with BancodeDados.Veiculos do
    begin
      Close;
      SQL.Clear;
      SQL.Text:='select * from veiculos where 1=1';

      if cbVisualizar.ItemIndex>0 then
      SQL.Add(' and coalesce(sit,0)='+IntToStr(cbVisualizar.ItemIndex-1));

      if Trim(EditConsulta.Text)<>EmptyStr then
      begin
        csTexto:= PrincipalForm.csContainingLIKE(Trim(EditConsulta.Text), CBTipo.ItemIndex);
        if Trim(csTexto)<>EmptyStr then
        SQL.Add(' and (UPPER('+Opcao+')'+csTexto+')');
      end;
      SQL.Add(' order by '+Opcao);
      //(SQL.Text);
      Open;

      if IsEmpty then
      begin
        if EditConsulta=Sender then
        Mensagem('Não foi encontrada informação para essa consulta!',mtInformation,[mbok],mrok,0);
        EditConsulta.SetFocus;
      end;

    end;
  except
    on E : Exception do
    TraduzErro(E.Message);
  end;
  HabilitarBotoes(Self,True);

end;

end;

procedure TCsVeiculosForm.BtNovo1Click(Sender: TObject);
begin
   try
    if not assigned(CadVeiculosForm) then
    CadVeiculosForm := tCadVeiculosForm.Create(Application);
    try
    Screen.Cursor := crSQLWait;
    BtNovo1.Enabled := False;
    BtOk.Enabled := False;
    BtCancelar.Enabled := False;
    BancodeDados.Veiculos.Append;
    CadVeiculosForm.ShowModal;
    finally
    CadVeiculosForm.Release;
    CadVeiculosForm := nil;
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

procedure TCsVeiculosForm.cbVisualizarChange(Sender: TObject);
begin
BtExecutarClick(Sender);
end;

procedure TCsVeiculosForm.FormCreate(Sender: TObject);
begin
//  listaServ.Clear;
end;

procedure TCsVeiculosForm.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TCsVeiculosForm.FormShow(Sender: TObject);
begin
BtExecutarClick(Sender);
end;

procedure TCsVeiculosForm.PopupMenu1Change(Sender: TObject; Source: TMenuItem;
  Rebuild: Boolean);
begin
 if (BancodeDados.VeiculosSIT.Value)<>1 then Ativo1.Caption:='Desativar' else Ativo1.Caption:='Ativar';
end;

End.

