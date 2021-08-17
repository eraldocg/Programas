unit RelAnalitico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, DB, jpeg, SEDDBImage;

type
  TRelAnaliticoForm = class(TForm)
    RLReport2: TRLReport;
    RLBand5: TRLBand;
    RLGroup2: TRLGroup;
    RLLabel6: TRLLabel;
    lbPeriodo: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLBand6: TRLBand;
    RLDetailGrid1: TRLDetailGrid;
    RLDraw10: TRLDraw;
    RLDraw11: TRLDraw;
    RLDraw12: TRLDraw;
    RLDraw14: TRLDraw;
    RLDraw15: TRLDraw;
    RLDraw16: TRLDraw;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText4: TRLDBText;
    RLDraw17: TRLDraw;
    RLDBText7: TRLDBText;
    RLBand2: TRLBand;
    RLDBResult1: TRLDBResult;
    RLBand1: TRLBand;
    RLDraw19: TRLDraw;
    RLDBResult2: TRLDBResult;
    RLDraw2: TRLDraw;
    RLDraw4: TRLDraw;
    RLDraw5: TRLDraw;
    RLDraw6: TRLDraw;
    RLDraw8: TRLDraw;
    RLDraw9: TRLDraw;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLDraw20: TRLDraw;
    RLLabel5: TRLLabel;
    RLDraw22: TRLDraw;
    RLLabel1: TRLLabel;
    RLDraw24: TRLDraw;
    RLDraw26: TRLDraw;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLDraw23: TRLDraw;
    RLDraw25: TRLDraw;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDraw30: TRLDraw;
    RLLabel11: TRLLabel;
    RLDraw32: TRLDraw;
    RLDBText11: TRLDBText;
    RLDraw34: TRLDraw;
    RLLabel12: TRLLabel;
    RLDBText12: TRLDBText;
    RLDraw35: TRLDraw;
    RLDraw37: TRLDraw;
    RLDraw38: TRLDraw;
    RLDraw40: TRLDraw;
    RLDraw41: TRLDraw;
    RLDraw42: TRLDraw;
    RLDraw44: TRLDraw;
    RLLabel13: TRLLabel;
    RLDBResult5: TRLDBResult;
    RLDBResult6: TRLDBResult;
    RLDBResult7: TRLDBResult;
    RLDraw45: TRLDraw;
    RLDBResult11: TRLDBResult;
    RLDBResult10: TRLDBResult;
    RLDBResult9: TRLDBResult;
    RLDraw46: TRLDraw;
    RLDraw47: TRLDraw;
    RLLabel14: TRLLabel;
    lbTitulo: TRLLabel;
    lbCorPadrao1: TRLLabel;
    RLLabel7: TRLLabel;
    RLDraw3: TRLDraw;
    RLDraw7: TRLDraw;
    RLDBText3: TRLDBText;
    RLBand4: TRLBand;
    RLDraw1: TRLDraw;
    RLLabel4: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    lbCor: TRLLabel;
    RLImage1: TSedRLDBImage;
    lbEmpresaNome: TRLLabel;
    lbEmpresaSite: TRLLabel;
    lbSistemaNome: TRLLabel;
    procedure QryBoletosCalcFields(DataSet: TDataSet);
    procedure RLReport2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLDetailGrid1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RelAnaliticoForm: TRelAnaliticoForm;

implementation

uses Base, CsPagar;

{$R *.dfm}

procedure TRelAnaliticoForm.QryBoletosCalcFields(DataSet: TDataSet);
begin

  // BancodeDados.QryBoletosJurosMultaAcresc.Value:=(QryBoletosJUROSREAL.Value+QryBoletosACRESCIMO.Value+QryBoletosACRESCIMO_EXTRA.Value+QryBoletosMULTAREAL.Value);

end;

procedure TRelAnaliticoForm.RLReport2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  case CsPagarForm.CBData.ItemIndex of
    0:
      RLGroup2.DataFields := 'EMISSAO';
    1:
      RLGroup2.DataFields := 'VENCIMENTO';
    2:
      RLGroup2.DataFields := 'PAGAMENTO';
  end;
end;

procedure TRelAnaliticoForm.RLDetailGrid1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if (BancodeDados.PagarVENCIMENTO.Value < Date) and
    (BancodeDados.PagarSITUACAO_PAGAR.Value = 'A PAGAR') then
    lbCor.Color := $00D7D7FF
  else
    lbCor.Color := clWhite;
end;

end.
