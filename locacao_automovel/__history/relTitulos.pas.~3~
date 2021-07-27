unit relTitulos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, SedDBImage, jpeg, DB, DBClient;

type
  TrelTitulosForm = class(TForm)
    RLReport2: TRLReport;
    RLBand5: TRLBand;
    RLLabel6: TRLLabel;
    lbPeriodo: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    lbTitulo: TRLLabel;
    lbTipo: TRLLabel;
    RLGroup2: TRLGroup;
    RLBand6: TRLBand;
    lbCorPadrao1: TRLLabel;
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
    RLDraw30: TRLDraw;
    RLLabel11: TRLLabel;
    RLDraw31: TRLDraw;
    RLDraw32: TRLDraw;
    RLLabel4: TRLLabel;
    RLLabel12: TRLLabel;
    RLDraw3: TRLDraw;
    RLLabel16: TRLLabel;
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
    RLDBText5: TRLDBText;
    RLDraw17: TRLDraw;
    RLDBText7: TRLDBText;
    RLDraw23: TRLDraw;
    RLDraw25: TRLDraw;
    RLDBText9: TRLDBText;
    RLDraw33: TRLDraw;
    RLDBText11: TRLDBText;
    RLDraw34: TRLDraw;
    RLDBText12: TRLDBText;
    RLDraw7: TRLDraw;
    RLDBText3: TRLDBText;
    RLBand2: TRLBand;
    RLDraw35: TRLDraw;
    RLDraw37: TRLDraw;
    RLDraw38: TRLDraw;
    RLDraw39: TRLDraw;
    RLDraw40: TRLDraw;
    RLDraw41: TRLDraw;
    RLDraw42: TRLDraw;
    RLDraw44: TRLDraw;
    RLLabel13: TRLLabel;
    lbTotAPagarCalc: TRLDBResult;
    RLDBResult1: TRLDBResult;
    RLBand1: TRLBand;
    RLDraw19: TRLDraw;
    RLDBResult2: TRLDBResult;
    lbCor: TRLLabel;
    RLDBText8: TRLDBText;
    lbTotJurosCalc: TRLDBResult;
    RLDraw1: TRLDraw;
    RLLabel7: TRLLabel;
    RLDBText6: TRLDBText;
    RLDraw13: TRLDraw;
    RLDraw18: TRLDraw;
    lbTotPago: TRLDBResult;
    RLImage1: TSedRLDBImage;
    lbEmpresaNome: TRLLabel;
    lbEmpresaSite: TRLLabel;
    lbSistemaNome: TRLLabel;
    lbTotInt: TRLDBResult;
    tempTotal: TClientDataSet;
    tempTotalVL_INT: TCurrencyField;
    tempTotalVL_JUROS: TCurrencyField;
    tempTotalVL_APAGAR: TCurrencyField;
    tempTotalVL_PAGO: TCurrencyField;
    RLDraw21: TRLDraw;
    RLDraw27: TRLDraw;
    RLDraw28: TRLDraw;
    RLLabel10: TRLLabel;
    RLDBResult3: TRLDBResult;
    RLDBResult4: TRLDBResult;
    RLDBResult5: TRLDBResult;
    RLDBResult6: TRLDBResult;
    lbConfiavel: TRLLabel;
    procedure RLDetailGrid1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  relTitulosForm: TrelTitulosForm;

implementation

uses Base;

{$R *.dfm}

procedure TrelTitulosForm.RLDetailGrid1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  lbCor.Color := clWhite;

  if (BancodeDados.BoletosVENCIMENTO.Value < Date) and
    (BancodeDados.BoletosSITUACAO_BOLETO.Value = 'A RECEBER') then
  begin
    if (BancodeDados.BoletosQtdDias.Value > BancodeDados.BoletosDiasTolCalc.
      Value) then
      lbCor.Color := $00D7D7FF
    else
      lbCor.Color := $00C1FFFE;
  end;

  if BancodeDados.BoletosSITUACAO_BOLETO.Value = 'CANCELADO' then
  begin
    lbCor.Color := $00DBDBDB;
  end;

end;

end.
