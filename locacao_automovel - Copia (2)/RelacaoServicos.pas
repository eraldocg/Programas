unit RelacaoServicos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Grids, Vcl.DBGrids, db,
  SedDBGrid, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TRelacaoServicosForm = class(TForm)
    Panel1: TPanel;
    BtOk: TButton;
    BtNovo: TButton;
    BtCancelar: TButton;
    DBGrid4: TSedDBGrid;
    BtImprimir: TButton;
    PopupMenu2: TPopupMenu;
    Excluir1: TMenuItem;
    btLocacaoVeic: TButton;
    procedure BtNovoClick(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
    procedure BtImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid4DblClick(Sender: TObject);
    procedure DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btLocacaoVeicClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RelacaoServicosForm: TRelacaoServicosForm;

implementation

{$R *.dfm}

uses Base, Principal, ImprimirContrato, unRecursos, CadServCliente,
  GeraBoletoVeic;

procedure TRelacaoServicosForm.BtImprimirClick(Sender: TObject);
begin
  if BancodeDados.Cont_Serv_ClienVEICULO_ID.Value > 0 then
  begin
    if not Assigned(ImprimirContratoForm) then
      ImprimirContratoForm := tImprimirContratoForm.Create(Application);
    try
      // ImprimirContratoForm.EditCodigo.Value   :=BancodeDados.Cont_Serv_ClienCLI_ID.Value;
      // ImprimirContratoForm.LbNome.Caption     :=BancodeDados.ClientesNOME.Value;
      // ImprimirContratoForm.ShowModal;
      ImprimirContratoForm.BtImprimirClick(self);
    finally
      ImprimirContratoForm.Release;
      ImprimirContratoForm := nil;
    end;

  end;
end;

procedure TRelacaoServicosForm.BtNovoClick(Sender: TObject);
begin
  try
    if not Assigned(CadServClienteForm) then
      CadServClienteForm := TCadServClienteForm.Create(Application);
    try

      BancodeDados.Cont_Serv_Clien.Append;
      // BancodeDados.Cont_Serv_Clien.Refresh;

      CadServClienteForm.ShowModal;
    finally
      CadServClienteForm.Release;
      CadServClienteForm := nil;

    end;
  except
    On E: Exception do
      TraduzErro(E.Message);
  end;

end;

procedure TRelacaoServicosForm.btLocacaoVeicClick(Sender: TObject);
begin
  if BancodeDados.Cont_Serv_ClienVEICULO_ID.Value > 0 then
    try
      HabilitarBotoes(self, False);
      if not Assigned(GeraBoletoVeicForm) then
        GeraBoletoVeicForm := tGeraBoletoVeicForm.Create(Application);
      GeraBoletoVeicForm.ShowModal;
    finally
      GeraBoletoVeicForm.Release;
      GeraBoletoVeicForm := nil;
      HabilitarBotoes(self, true);
    end;
end;

procedure TRelacaoServicosForm.DBGrid4DblClick(Sender: TObject);
begin
  if not Assigned(CadServClienteForm) then
    CadServClienteForm := TCadServClienteForm.Create(Application);
  try

    CadServClienteForm.ShowModal;
  finally
    CadServClienteForm.Release;
    CadServClienteForm := nil;
  end;

end;

procedure TRelacaoServicosForm.DBGrid4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

  if BancodeDados.Cont_Serv_ClienVEICULO_ID.Value > 0 then
  begin
    if (BancodeDados.Cont_Serv_ClienSIT.Value = 1) // 1 - Locado
    then
    begin
      DBGrid4.Canvas.Font.Color := clBlue;
      DBGrid4.Canvas.Font.Style := [fsBold];
    end
    else if (BancodeDados.Cont_Serv_ClienSIT.Value = 2) then // 2 - Cancelado
    begin
      DBGrid4.Canvas.Font.Color := $009F9F9F;
    end
    else if (BancodeDados.Cont_Serv_ClienSIT.Value = 3) then // 3 - Devolvido
    begin
      DBGrid4.Canvas.Font.Color := clNavy;
    end;

    DBGrid4.DefaultDrawDataCell(Rect, DBGrid4.Columns[DataCol].Field, State);
  end;

end;

procedure TRelacaoServicosForm.Excluir1Click(Sender: TObject);
begin
  if Mensagem('Tem certeza que deseja excluir?', mtConfirmation, [mbyes, mbNo],
    mryes, 0) = idYes then
  begin
    if not BancodeDados.FDConnection1.InTransaction then
      BancodeDados.FDConnection1.StartTransaction;
    BancodeDados.Cont_Serv_Clien.Delete;
    BancodeDados.FDConnection1.CommitRetaining;
  end;

end;

procedure TRelacaoServicosForm.FormCreate(Sender: TObject);
begin
  BancodeDados.Cont_Serv_Clien.Close;
  BancodeDados.Cont_Serv_Clien.SQL.Text :=
    'select * from cont_serv_clien where cli_id = ' +
    IntToStr(BancodeDados.ClientesCLI_ID.Value) + ' order by sit, dt_cad desc';
  BancodeDados.Cont_Serv_Clien.Open;

end;

procedure TRelacaoServicosForm.FormShow(Sender: TObject);
begin

  DBGrid4.SetFocus;

end;

end.
