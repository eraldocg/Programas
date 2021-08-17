unit RecBol;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, StdCtrls, DB, Menus, SedDBGrid;

type
  TRecBolForm = class(TForm)
    DBGrid1: TSedDBGrid;
    Panel1: TPanel;
    btOk: TButton;
    btOriginal: TButton;
    lbDtReceb: TLabel;
    lbTotalCreditos: TLabel;
    MainMenu1: TMainMenu;
    F51: TMenuItem;
    lbTotalAPagar: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    lbVlTotal: TLabel;
    Label3: TLabel;
    lbTotalPago: TLabel;
    Label5: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btOriginalClick(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RecBolForm: TRecBolForm;

implementation

uses Base, Baixa2, Principal;

{$R *.dfm}

procedure TRecBolForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (BancodeDados.RecBol.State in [dsInsert, dsEdit]) then
    BancodeDados.RecBol.Post;
end;

procedure TRecBolForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
  begin
    Key := #0;
    Close;
  end;
end;

procedure TRecBolForm.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if Assigned(Baixa2Form) then
  begin
    if (BancodeDados.RecBolSITUACAO_BOLETO.Value = 'A RECEBER') and
      (BancodeDados.RecBolVENCIMENTO.Value < Baixa2Form.Dt_Pagar.DateTime) then
      DBGrid1.Canvas.Font.Color := clRed;
  end
  else
  begin
    if (BancodeDados.RecBolSITUACAO_BOLETO.Value = 'A RECEBER') and
      (BancodeDados.RecBolVENCIMENTO.Value < Date) then
      DBGrid1.Canvas.Font.Color := clRed;
  end;

  DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.columns[DataCol].field, State);
end;

procedure TRecBolForm.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
    Key := 9;
end;

procedure TRecBolForm.btOriginalClick(Sender: TObject);
begin
  if Assigned(Baixa2Form) then
  begin
    PrincipalForm.CalcularValorBaixaIndividual
      (Baixa2Form.Dt_Pagar.DateTime, False);
  end
  else
  begin
    PrincipalForm.CalcularValorBaixaIndividual(Date, False);
  end;
  lbVlTotal.Caption := FormatFloat('R$ ,0.00', vlTotalAPagar + vlTotalCredito);
  lbTotalAPagar.Caption := FormatFloat('R$ ,0.00', vlTotalAPagar);
  lbTotalCreditos.Caption := FormatFloat('R$ ,0.00', vlTotalCredito);
end;

procedure TRecBolForm.btOkClick(Sender: TObject);
// var
// PodePassar : Boolean;
begin
  { PodePassar:=True;
    BancodeDados.RecBol.First;
    while not BancodeDados.RecBol.Eof do begin
    if not (BancodeDados.RecBolVALOR_PAGO.Value > 0) then begin
    PodePassar:=False;
    Mensagem('O valor pago de um ou mais títulos está zerado.', mtWarning, [mbOk], mrOk, 0);
    break;
    end else
    BancodeDados.RecBol.Next;
    end;
    if (PodePassar = true) then }
  ModalResult := mrOk;
end;

procedure TRecBolForm.DBGrid1ColExit(Sender: TObject);
begin
  if (DBGrid1.SelectedIndex = 9) or (DBGrid1.SelectedIndex = 10) then
  begin
    if (BancodeDados.RecBol.State in [dsInsert, dsEdit]) then
    begin
      if not(BancodeDados.RecBolDIAS.Value > 0) then
      begin
        BancodeDados.RecBolMULTA.Value := 0;
        BancodeDados.RecBolJUROS.Value := 0;
      end;
      BancodeDados.RecBolVALOR_APAGAR.Value :=
        BancodeDados.RecBolVALOR_INTEGRAL.Value +
        BancodeDados.RecBolACRESCIMO.Value + BancodeDados.RecBolMULTA.Value +
        BancodeDados.RecBolJUROS.Value;
      if (RetirarDesc = true) then
      begin
        if not(BancodeDados.RecBolDIAS.Value > 0) then
          BancodeDados.RecBolVALOR_APAGAR.Value :=
            BancodeDados.RecBolVALOR_APAGAR.Value -
            BancodeDados.RecBolDESCONTO.Value;
      end
      else
      begin
        BancodeDados.RecBolVALOR_APAGAR.Value :=
          BancodeDados.RecBolVALOR_APAGAR.Value -
          BancodeDados.RecBolDESCONTO.Value;
      end;
    end;
  end;
end;

procedure TRecBolForm.FormShow(Sender: TObject);
begin
  BancodeDados.RecBol.EnableControls;
end;

end.
