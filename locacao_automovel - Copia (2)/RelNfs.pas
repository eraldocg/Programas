unit RelNfs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, SEDDBImage;

type
  TRelNfsForm = class(TForm)
    RLReport2: TRLReport;
    RLBand5: TRLBand;
    RLLabel6: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    lbPeriodo: TRLLabel;
    RLImage1: TSedRLDBImage;
    RLGroup2: TRLGroup;
    RLBand6: TRLBand;
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
    RLDraw22: TRLDraw;
    RLLabel7: TRLLabel;
    RLDraw3: TRLDraw;
    RLDetailGrid1: TRLDetailGrid;
    RLDraw10: TRLDraw;
    RLDraw11: TRLDraw;
    RLDraw12: TRLDraw;
    RLDraw14: TRLDraw;
    RLDraw15: TRLDraw;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText7: TRLDBText;
    RLDraw7: TRLDraw;
    RLDBText3: TRLDBText;
    RLBand2: TRLBand;
    RLDBResult1: TRLDBResult;
    RLDraw40: TRLDraw;
    RLDraw41: TRLDraw;
    RLDraw42: TRLDraw;
    RLDraw44: TRLDraw;
    RLDBResult5: TRLDBResult;
    RLBand4: TRLBand;
    RLDraw1: TRLDraw;
    lbEmpresaNome: TRLLabel;
    lbEmpresaSite: TRLLabel;
    lbSistemaNome: TRLLabel;
    RLDBText4: TRLDBText;
    RLDraw8: TRLDraw;
    RLDraw13: TRLDraw;
    RLDBText5: TRLDBText;
    RLDraw16: TRLDraw;
    RLLabel1: TRLLabel;
    RLDraw17: TRLDraw;
    RLLabel4: TRLLabel;
    RLLabel8: TRLLabel;
    RLDraw18: TRLDraw;
    RLDraw19: TRLDraw;
    RLDBText6: TRLDBText;
    RLDraw21: TRLDraw;
    RLDBResult2: TRLDBResult;
    RLDraw23: TRLDraw;
    RLDraw24: TRLDraw;
    RLDBText8: TRLDBText;
    RLLabel9: TRLLabel;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel10: TRLLabel;
    RLSystemInfo4: TRLSystemInfo;
    RLSystemInfo5: TRLSystemInfo;
    RLSystemInfo6: TRLSystemInfo;
    lbPeriodo_1: TRLLabel;
    SedRLDBImage1: TSedRLDBImage;
    RLGroup1: TRLGroup;
    RLBand3: TRLBand;
    RLLabel12: TRLLabel;
    RLDraw25: TRLDraw;
    RLDraw26: TRLDraw;
    RLDraw27: TRLDraw;
    RLDraw28: TRLDraw;
    RLDraw29: TRLDraw;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLDraw31: TRLDraw;
    RLLabel16: TRLLabel;
    RLDraw33: TRLDraw;
    RLDraw35: TRLDraw;
    RLDraw36: TRLDraw;
    RLLabel20: TRLLabel;
    RLDetailGrid2: TRLDetailGrid;
    RLDraw37: TRLDraw;
    RLDraw38: TRLDraw;
    RLDraw39: TRLDraw;
    RLDraw43: TRLDraw;
    RLDraw45: TRLDraw;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText13: TRLDBText;
    RLDraw49: TRLDraw;
    RLDraw50: TRLDraw;
    RLDBText16: TRLDBText;
    RLBand7: TRLBand;
    RLDBResult3: TRLDBResult;
    RLDraw52: TRLDraw;
    RLDraw53: TRLDraw;
    RLDraw54: TRLDraw;
    RLBand8: TRLBand;
    RLDraw56: TRLDraw;
    lbEmpresaNome_1: TRLLabel;
    lbEmpresaSite_1: TRLLabel;
    lbSistemaNome_1: TRLLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RelNfsForm: TRelNfsForm;

implementation

uses Base, Principal;

{$R *.dfm}

end.
