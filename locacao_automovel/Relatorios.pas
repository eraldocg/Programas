unit Relatorios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, jpeg, Vcl.Menus;

type
  TRelatoriosForm = class(TForm)
    Panel2: TPanel;
    BtOK: TButton;
    BtCancelar: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet3: TTabSheet;
    lbComparativo: TRadioButton;
    lbSaldoContas: TRadioButton;
    lbDemonstIR: TRadioButton;
    chkLigacoes: TRadioButton;
    MainMenu1: TMainMenu;
    TabSheet2: TTabSheet;
    Image3: TImage;
    Image2: TImage;
    Image4: TImage;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BtOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RelatoriosForm: TRelatoriosForm;

implementation

uses IndicaRelComparativo, IndicaSaldoContas, Principal, IndicaDemonstIR,
  IndicaLigacoes;

{$R *.dfm}

procedure TRelatoriosForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
  begin
    Key := #0;
    Close;
  end;

  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NextDlgCtl, 0, 0);
  end;
end;

procedure TRelatoriosForm.FormShow(Sender: TObject);
begin
  TabSheet1.Show;
  TabSheet2.TabVisible:=False;

end;

procedure TRelatoriosForm.BtOKClick(Sender: TObject);
begin
  HabilitarBotoes(Self, False);



  if chkLigacoes.Checked then
  begin
    if not Assigned(IndicaLigacoesForm) then
      IndicaLigacoesForm := TIndicaLigacoesForm.Create(Application);
    try
      IndicaLigacoesForm.ShowModal;
    finally
      IndicaLigacoesForm.Release;
      IndicaLigacoesForm := nil;
    end;
  end;


  if lbComparativo.Checked then
  begin
    if not Assigned(IndicaRelComparativoForm) then
      IndicaRelComparativoForm := TIndicaRelComparativoForm.Create(Application);
    try
      IndicaRelComparativoForm.ShowModal;
    finally
      IndicaRelComparativoForm.Release;
      IndicaRelComparativoForm := nil;
    end;
  end;

  if lbSaldoContas.Checked then
  begin
    if not Assigned(IndicaSaldoContasForm) then
      IndicaSaldoContasForm := TIndicaSaldoContasForm.Create(Application);
    try
      IndicaSaldoContasForm.ShowModal;
    finally
      IndicaSaldoContasForm.Release;
      IndicaSaldoContasForm := nil;
    end;
  end;

  if lbDemonstIR.Checked then
  begin
    if not Assigned(IndicaDemonstIRForm) then
      IndicaDemonstIRForm := TIndicaDemonstIRForm.Create(Application);
    try
      IndicaDemonstIRForm.ShowModal;
    finally
      IndicaDemonstIRForm.Release;
      IndicaDemonstIRForm := nil;
    end;
  end;

  HabilitarBotoes(Self, True);
end;

end.
