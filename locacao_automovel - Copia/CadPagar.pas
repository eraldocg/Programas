unit CadPagar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls, db, Buttons, jpeg, Grids,
  DBGrids, Menus, ComCtrls, Spin, SEDDBDateEdit, SedDBGrid;

type
  TCadPagarForm = class(TForm)
    Panel1: TPanel;
    DBText5: TDBText;
    Label13: TLabel;
    BtGravar: TButton;
    BtCancelar: TButton;
    MainMenu1: TMainMenu;
    F21: TMenuItem;
    F31: TMenuItem;
    f41: TMenuItem;
    F51: TMenuItem;
    Panel23: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    lbForne: TLabel;
    LbFornecedor: TDBText;
    BTForne: TSpeedButton;
    Label1: TLabel;
    Label14: TLabel;
    Label2: TLabel;
    Label10: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label9: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label11: TLabel;
    BTContaTip: TSpeedButton;
    lbContas: TDBText;
    Label7: TLabel;
    EditFornecedor: TDBEdit;
    EditDescricao: TDBEdit;
    EditDescAbreviada: TDBEdit;
    DBNavigator1: TDBNavigator;
    GroupBox1: TGroupBox;
    Label23: TLabel;
    Label24: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label21: TLabel;
    EditVEncimento: TSedDbDateEdit;
    EditEmisaao: TSedDbDateEdit;
    EditDias: TDBEdit;
    EditPagamento: TSedDbDateEdit;
    EditDescPago: TDBEdit;
    EditDesconto: TDBEdit;
    EditAcrescimo: TDBEdit;
    EditAcrescimoEx: TDBEdit;
    EditValorPagar: TDBEdit;
    EditValorPago: TDBEdit;
    EditJurosReal: TDBEdit;
    EditMultaReal: TDBEdit;
    EditValorIntegral: TDBEdit;
    EditBoleto: TDBMemo;
    DBComboBox1: TDBComboBox;
    EditContas: TDBEdit;
    EditVlFalta: TDBEdit;
    TabSheet2: TTabSheet;
    DBGrid1: TSedDBGrid;
    Image2: TImage;
    Label12: TLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BtGravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BTForneClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure EditValorExit(Sender: TObject);
    procedure EditDescontosExit(Sender: TObject);
    procedure EditMargemExit(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EditValorPagarExit(Sender: TObject);
    procedure EditValorPagoEnter(Sender: TObject);
    procedure BTContaTipClick(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure PageControl1Change(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  CadPagarForm: TCadPagarForm;

implementation

uses Base, Principal, CsFornecedores, CsTipo_Contas, unRecursos;

{$R *.dfm}

procedure TCadPagarForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and not(ActiveControl is TDBMemo) then
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

procedure TCadPagarForm.BtGravarClick(Sender: TObject);
begin
  try
    try
      BtGravar.Enabled := False;
      Screen.Cursor := crSQLWait;
      if BancodeDados.Pagar.State in [dsInsert, dsEdit] then
      begin
        if not BancodeDados.FDConnection1.InTransaction then
          BancodeDados.FDConnection1.StartTransaction;
        BancodeDados.Pagar.Post;
        BancodeDados.FDConnection1.CommitRetaining;
      end;
    finally
      BtGravar.Enabled := True;
      Screen.Cursor := crDefault;
    end;

  except
    on E: Exception do
      TraduzErro(E.Message);
  end;
  Close;
end;

procedure TCadPagarForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if BancodeDados.Pagar.State in [dsInsert, dsEdit] then
    BancodeDados.Pagar.Cancel;

  BancodeDados.CaixaPagar.Close;
end;

procedure TCadPagarForm.BTForneClick(Sender: TObject);
begin
  if BancodeDados.Pagar.State in [dsInsert, dsEdit] then
    try
      if not Assigned(CsFornecedoresForm) then
        CsFornecedoresForm := TCsFornecedoresForm.Create(Application);
      try
        BtGravar.Enabled := False;
        BtCancelar.Enabled := False;
        if CsFornecedoresForm.ShowModal = mrok then
        begin
          BancodeDados.PagarFORNE_ID.Value :=
            BancodeDados.FornecedoresFORNE_ID.Value;
          if (BancodeDados.FornecedoresBANCO_ID.Value > 0) then
            BancodeDados.PagarBANCO_ID.Value :=
              BancodeDados.FornecedoresBANCO_ID.Value
          else
            BancodeDados.PagarBANCO_ID.Value := 0;
        end;
      finally
        CsFornecedoresForm.Release;
        CsFornecedoresForm := nil;
        BtGravar.Enabled := True;
        BtCancelar.Enabled := True;
      end;
    except
      on E: Exception do
        TraduzErro(E.Message);
    end;

end;

procedure TCadPagarForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if ((BancodeDados.PagarCONTA_ID.Value = 0) or
    (BancodeDados.PagarCONTA_ID.IsNull)) then
    if Mensagem('Tem certeza que deseja sair?', mtConfirmation, [mbyes, mbNo],
      mryes, 0) = idNo then
      CanClose := False;

  if (not(BancodeDados.PagarCONTA_ID.Value = 0) or
    not(BancodeDados.PagarCONTA_ID.IsNull)) then
    if ((BancodeDados.PagarCONTA_ID.IsNull) or
      (BancodeDados.PagarCONTA_ID.Value = 0)) then
    begin
      CanClose := False;
      Mensagem('Importante:'#13 + 'Informar a conta!', mtInformation,
        [mbok], mrok, 0);
    end
    else

      if Mensagem('Tem certeza que deseja sair?', mtConfirmation, [mbyes, mbNo],
      mryes, 0) = idNo then
      CanClose := False;
end;

procedure TCadPagarForm.EditValorExit(Sender: TObject);
var
  ctrl: TWinControl;
begin
  ctrl := ActiveControl;
  ActiveControl := nil;
  PostMessage(TWinControl(ctrl).Handle, WM_SETFOCUS, 0, 0);
  TWinControl(ctrl).SetFocus;
end;

procedure TCadPagarForm.EditDescontosExit(Sender: TObject);
var
  ctrl: TWinControl;
begin
  ctrl := ActiveControl;
  ActiveControl := nil;
  PostMessage(TWinControl(ctrl).Handle, WM_SETFOCUS, 0, 0);
  TWinControl(ctrl).SetFocus;

end;

procedure TCadPagarForm.EditMargemExit(Sender: TObject);
var
  ctrl: TWinControl;
begin
  ctrl := ActiveControl;
  ActiveControl := nil;
  PostMessage(TWinControl(ctrl).Handle, WM_SETFOCUS, 0, 0);
  TWinControl(ctrl).SetFocus;
end;

procedure TCadPagarForm.BtCancelarClick(Sender: TObject);
begin
  { if BancodeDados.Pagar.State in [dsInsert,dsEdit] then begin
    BancodeDados.Pagar.Cancel;
    BancodeDados.Pagar.close;
    Close;
    end else
    Close; }
end;

procedure TCadPagarForm.FormShow(Sender: TObject);
begin
  TabSheet1.Show;
  // if BancodeDados.PagarSITUACAO_PAGAR.Value='PAGO' then Panel2.Enabled:=False else Panel2.Enabled:=true;
end;

procedure TCadPagarForm.PageControl1Change(Sender: TObject);
begin
  if (PageControl1.ActivePage = TabSheet2) then
  begin
    BancodeDados.CaixaPagar.Close;
    BancodeDados.CaixaPagar.Params[0].Value := BancodeDados.PagarPAGAR_ID.Value;
    BancodeDados.CaixaPagar.Open;
  end;
end;

procedure TCadPagarForm.EditValorPagarExit(Sender: TObject);
var
  ctrl: TWinControl;
begin
  ctrl := ActiveControl;
  ActiveControl := nil;
  PostMessage(TWinControl(ctrl).Handle, WM_SETFOCUS, 0, 0);
  TWinControl(ctrl).SetFocus;
  PrincipalForm.CalcularValorPagar;
end;

procedure TCadPagarForm.EditValorPagoEnter(Sender: TObject);
begin
  // if BancodeDados.PagarVALOR_APAGAR.Value>0 then
  // BancodeDados.PagarVALOR_PAGO.Value:=BancodeDados.PagarVALOR_APAGAR.Value;
end;

procedure TCadPagarForm.BTContaTipClick(Sender: TObject);
begin
  if BancodeDados.Pagar.State in [dsInsert, dsEdit] then
    try
      if not Assigned(CsTipo_ContasForm) then
        CsTipo_ContasForm := tCsTipo_ContasForm.Create(Application);
      try
        BtGravar.Enabled := False;
        BtCancelar.Enabled := False;
        if CsTipo_ContasForm.ShowModal = mrok then
        begin
          BancodeDados.PagarCONTA_ID.Value := BancodeDados.ContasCONTA_ID.Value;
        end;
      finally
        CsTipo_ContasForm.Release;
        CsTipo_ContasForm := nil;
        BtGravar.Enabled := True;
        BtCancelar.Enabled := True;
      end;
    except
      on E: Exception do
        TraduzErro(E.Message);
    end;
end;

procedure TCadPagarForm.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  if BancodeDados.PagarSITUACAO_PAGAR.Value = 'PAGO' then
    Panel2.Enabled := False
  else
    Panel2.Enabled := True;
end;

end.
