unit RelPagBanco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, DB, jpeg, SEDDBImage;

type
  TRelPagBancoForm = class(TForm)
    RLReport1: TRLReport;
    RLBand3: TRLBand;
    RLLabel6: TRLLabel;
    lbPeriodo: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    lbTitulo: TRLLabel;
    RLBand7: TRLBand;
    RLDraw1: TRLDraw;
    RLGroup1: TRLGroup;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLBand4: TRLBand;
    RLBand5: TRLBand;
    RLDBText1: TRLDBText;
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
    RLLabel1: TRLLabel;
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
    RLDraw3: TRLDraw;
    RLLabel16: TRLLabel;
    RLDraw7: TRLDraw;
    RLDraw10: TRLDraw;
    RLDraw11: TRLDraw;
    RLDraw12: TRLDraw;
    RLDraw13: TRLDraw;
    RLDraw15: TRLDraw;
    RLDraw16: TRLDraw;
    RLDraw17: TRLDraw;
    RLDraw18: TRLDraw;
    RLDraw19: TRLDraw;
    RLDraw22: TRLDraw;
    RLDraw23: TRLDraw;
    RLDraw25: TRLDraw;
    RLDBText2: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDraw28: TRLDraw;
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
    RLDBResult3: TRLDBResult;
    RLDBResult4: TRLDBResult;
    RLLabel10: TRLLabel;
    RLDBText10: TRLDBText;
    RLDBResult6: TRLDBResult;
    RLDraw40: TRLDraw;
    RLDBResult7: TRLDBResult;
    RLDraw45: TRLDraw;
    RLDBResult12: TRLDBResult;
    RLDBResult11: TRLDBResult;
    RLDBResult10: TRLDBResult;
    RLDBResult9: TRLDBResult;
    RLDraw46: TRLDraw;
    RLDraw47: TRLDraw;
    RLLabel14: TRLLabel;
    RLDBResult5: TRLDBResult;
    lbArquivo: TRLLabel;
    RLImage1: TSedRLDBImage;
    lbEmpresaNome: TRLLabel;
    lbEmpresaSite: TRLLabel;
    lbSistemaNome: TRLLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RelPagBancoForm: TRelPagBancoForm;

implementation

uses Base, CsBaixaBanco;

{$R *.dfm}

end.
