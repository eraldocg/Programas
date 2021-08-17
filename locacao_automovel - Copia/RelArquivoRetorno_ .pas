unit RelArquivoRetorno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, DB;

type
  TRelArquivoRetornoForm = class(TForm)
    RLReport1: TRLReport;
    RLBand3: TRLBand;
    lbTitulo: TRLLabel;
    lbPeriodo: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLDBImage1: TRLDBImage;
    RLGroup1: TRLGroup;
    RLBand1: TRLBand;
    lbCorPadrao1: TRLLabel;
    RLDraw2: TRLDraw;
    RLDraw4: TRLDraw;
    RLDraw5: TRLDraw;
    RLDraw6: TRLDraw;
    RLDraw9: TRLDraw;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLDraw20: TRLDraw;
    RLLabel5: TRLLabel;
    RLDraw24: TRLDraw;
    RLDraw26: TRLDraw;
    RLLabel8: TRLLabel;
    RLDraw27: TRLDraw;
    RLLabel9: TRLLabel;
    RLDraw30: TRLDraw;
    RLLabel11: TRLLabel;
    RLDraw31: TRLDraw;
    RLDraw32: TRLDraw;
    RLLabel4: TRLLabel;
    RLLabel12: TRLLabel;
    RLDraw7: TRLDraw;
    RLLabel10: TRLLabel;
    lbArquivo: TRLLabel;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDraw10: TRLDraw;
    RLDraw12: TRLDraw;
    RLDraw13: TRLDraw;
    RLDraw15: TRLDraw;
    RLDraw16: TRLDraw;
    RLDraw17: TRLDraw;
    RLDraw18: TRLDraw;
    RLDraw19: TRLDraw;
    RLDraw22: TRLDraw;
    RLDraw25: TRLDraw;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDraw28: TRLDraw;
    RLDBText10: TRLDBText;
    RLBand4: TRLBand;
    RLDraw29: TRLDraw;
    RLDraw33: TRLDraw;
    RLDraw34: TRLDraw;
    RLDraw35: TRLDraw;
    RLDraw36: TRLDraw;
    RLDraw37: TRLDraw;
    RLDraw38: TRLDraw;
    RLDraw39: TRLDraw;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLDBResult4: TRLDBResult;
    RLDBResult6: TRLDBResult;
    RLDBResult5: TRLDBResult;
    RLDraw8: TRLDraw;
    RLLabel1: TRLLabel;
    RLDraw3: TRLDraw;
    RLDBText2: TRLDBText;
    RLLabel7: TRLLabel;
    RLDraw71: TRLDraw;
    RLLabel6: TRLLabel;
    RLDraw72: TRLDraw;
    RLDBText21: TRLDBText;
    RLDraw73: TRLDraw;
    RLReport2: TRLReport;
    RLBand5: TRLBand;
    lbTitulo1: TRLLabel;
    lbPeriodo1: TRLLabel;
    RLSystemInfo4: TRLSystemInfo;
    RLSystemInfo5: TRLSystemInfo;
    RLSystemInfo6: TRLSystemInfo;
    RLDBImage2: TRLDBImage;
    RLBand9: TRLBand;
    RLDBText3: TRLDBText;
    RLDraw51: TRLDraw;
    RLDraw52: TRLDraw;
    RLDraw53: TRLDraw;
    RLDraw54: TRLDraw;
    RLDraw55: TRLDraw;
    RLDraw56: TRLDraw;
    RLDraw57: TRLDraw;
    RLDraw58: TRLDraw;
    RLDraw59: TRLDraw;
    RLDraw60: TRLDraw;
    RLDBText4: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDraw61: TRLDraw;
    RLDBText19: TRLDBText;
    RLDraw62: TRLDraw;
    RLDBText20: TRLDBText;
    RLDraw75: TRLDraw;
    RLDBText22: TRLDBText;
    RLBand10: TRLBand;
    RLDraw63: TRLDraw;
    RLDraw64: TRLDraw;
    RLDraw65: TRLDraw;
    RLDraw66: TRLDraw;
    RLDraw67: TRLDraw;
    RLDraw68: TRLDraw;
    RLDraw69: TRLDraw;
    RLDraw70: TRLDraw;
    RLDBResult7: TRLDBResult;
    RLDBResult8: TRLDBResult;
    RLDBResult9: TRLDBResult;
    RLDBResult10: TRLDBResult;
    RLDBResult11: TRLDBResult;
    RLDBResult12: TRLDBResult;
    RLLabel29: TRLLabel;
    RLDraw76: TRLDraw;
    RLDBResult14: TRLDBResult;
    lbCorPadrao2: TRLLabel;
    RLDraw14: TRLDraw;
    RLDraw21: TRLDraw;
    RLDraw23: TRLDraw;
    RLDraw40: TRLDraw;
    RLDraw41: TRLDraw;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLDraw42: TRLDraw;
    RLLabel20: TRLLabel;
    RLDraw43: TRLDraw;
    RLDraw44: TRLDraw;
    RLLabel21: TRLLabel;
    RLDraw45: TRLDraw;
    RLLabel22: TRLLabel;
    RLDraw46: TRLDraw;
    RLLabel23: TRLLabel;
    RLDraw47: TRLDraw;
    RLDraw48: TRLDraw;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLDraw50: TRLDraw;
    RLLabel28: TRLLabel;
    RLDraw74: TRLDraw;
    RLLabel13: TRLLabel;
    RLReport3: TRLReport;
    RLBand8: TRLBand;
    lbTitulo3: TRLLabel;
    lbPeriodo3: TRLLabel;
    RLSystemInfo7: TRLSystemInfo;
    RLSystemInfo8: TRLSystemInfo;
    RLSystemInfo9: TRLSystemInfo;
    RLDBImage3: TRLDBImage;
    RLGroup2: TRLGroup;
    RLBand14: TRLBand;
    lbCorPadrao3: TRLLabel;
    RLDraw49: TRLDraw;
    RLDraw77: TRLDraw;
    RLDraw78: TRLDraw;
    RLDraw79: TRLDraw;
    RLDraw80: TRLDraw;
    RLLabel27: TRLLabel;
    RLLabel30: TRLLabel;
    RLDraw81: TRLDraw;
    RLDraw83: TRLDraw;
    RLLabel32: TRLLabel;
    RLLabel33: TRLLabel;
    RLDraw85: TRLDraw;
    RLLabel34: TRLLabel;
    RLDraw86: TRLDraw;
    RLDraw87: TRLDraw;
    RLLabel35: TRLLabel;
    RLLabel37: TRLLabel;
    RLDraw89: TRLDraw;
    RLLabel39: TRLLabel;
    RLBand12: TRLBand;
    RLDBText23: TRLDBText;
    RLDraw91: TRLDraw;
    RLDraw92: TRLDraw;
    RLDraw93: TRLDraw;
    RLDraw95: TRLDraw;
    RLDraw97: TRLDraw;
    RLDraw98: TRLDraw;
    RLDraw99: TRLDraw;
    RLDraw100: TRLDraw;
    RLDBText24: TRLDBText;
    RLDBText25: TRLDBText;
    RLDBText26: TRLDBText;
    RLDBText27: TRLDBText;
    RLDBText29: TRLDBText;
    RLDraw101: TRLDraw;
    RLDBText31: TRLDBText;
    RLDraw103: TRLDraw;
    RLDBText33: TRLDBText;
    RLBand13: TRLBand;
    RLDraw105: TRLDraw;
    RLDraw109: TRLDraw;
    RLDraw110: TRLDraw;
    RLDraw111: TRLDraw;
    RLDBResult15: TRLDBResult;
    RLDBResult17: TRLDBResult;
    RLLabel44: TRLLabel;
    RLDraw112: TRLDraw;
    RLDBResult21: TRLDBResult;
    RLDraw107: TRLDraw;
    RLDraw84: TRLDraw;
    RLDBText28: TRLDBText;
    RLLabel14: TRLLabel;
    RLDraw88: TRLDraw;
    RLDBResult16: TRLDBResult;
    RLDraw96: TRLDraw;
    RLLabel15: TRLLabel;
    RLBand11: TRLBand;
    RLDraw90: TRLDraw;
    lbActive: TRLLabel;
    lbActiveSite: TRLLabel;
    RLLabel38: TRLLabel;
    RLBand6: TRLBand;
    RLDraw11: TRLDraw;
    RLLabel43: TRLLabel;
    RLLabel45: TRLLabel;
    RLLabel46: TRLLabel;
    RLBand7: TRLBand;
    RLDraw1: TRLDraw;
    RLLabel47: TRLLabel;
    RLLabel48: TRLLabel;
    RLLabel49: TRLLabel;
    RLDraw102: TRLDraw;
    lbTotalAbat1: TRLDBResult;
    lbTotalJuros1: TRLDBResult;
    lbTotalDoc1: TRLDBResult;
    RLDraw104: TRLDraw;
    RLDraw106: TRLDraw;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel36: TRLLabel;
    RLLabel40: TRLLabel;
    RLLabel51: TRLLabel;
    lbTotLiquido1: TRLLabel;
    RLDraw108: TRLDraw;
    lbTotalAbat2: TRLDBResult;
    lbTotalJuros2: TRLDBResult;
    lbTotalDoc2: TRLDBResult;
    RLDraw113: TRLDraw;
    RLDraw114: TRLDraw;
    RLLabel41: TRLLabel;
    RLLabel42: TRLLabel;
    RLLabel50: TRLLabel;
    RLLabel52: TRLLabel;
    RLLabel53: TRLLabel;
    RLDraw115: TRLDraw;
    RLDBText32: TRLDBText;
    RLDraw116: TRLDraw;
    RLLabel54: TRLLabel;
    RLDraw117: TRLDraw;
    RLDBResult18: TRLDBResult;
    RLDBResult19: TRLDBResult;
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand10BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RelArquivoRetornoForm: TRelArquivoRetornoForm;

implementation

uses VisualizaRetorno, Base, BaixaNEfetuada;

{$R *.dfm}

procedure TRelArquivoRetornoForm.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
vlTotal, vlTotJuros, vlAbat : Currency;
begin
{try
  vlTotal:=lbTotalDoc1.Value;
except
  vlTotal:=0;
end;
try
  vlTotJuros:=lbTotalJuros1.Value;
except
  vlTotJuros:=0;
end;
try
  vlAbat:=lbTotalAbat1.Value;
except
  vlAbat:=0;
end;

lbTotLiquido1.Caption:=FormatFloat(',0.00',(vlTotal + vlTotJuros) - vlAbat); }
end;

procedure TRelArquivoRetornoForm.RLBand10BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
//lbTotLiquido2.Caption:=FormatFloat(',0.00',(lbTotalDoc2.Value + lbTotalJuros2.Value) - lbTotalAbat2.Value);
end;

end.
