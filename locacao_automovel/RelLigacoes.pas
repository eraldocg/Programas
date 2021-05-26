unit RelLigacoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, 
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, 
  SEDDBImage, Data.DB;

type
  TRelLigacoesForm = class(TForm)
    RLReport4: TRLReport;
    RLBand12: TRLBand;
    LbTitulo4: TRLLabel;
    RLSystemInfo10: TRLSystemInfo;
    RLSystemInfo11: TRLSystemInfo;
    RLSystemInfo12: TRLSystemInfo;
    SedRLDBImage3: TSedRLDBImage;
    SedRLDBImage4: TSedRLDBImage;
    lbSituacao4: TRLLabel;
    lbTipo4: TRLLabel;
    lbPeriodo4: TRLLabel;
    lbCliente4: TRLLabel;
    RLGroup4: TRLGroup;
    RLBand18: TRLBand;
    lbCorPadrao4: TRLLabel;
    RLDraw73: TRLDraw;
    RLDraw74: TRLDraw;
    RLDraw76: TRLDraw;
    RLDraw77: TRLDraw;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLDraw79: TRLDraw;
    RLDraw80: TRLDraw;
    RLDraw81: TRLDraw;
    RLDraw82: TRLDraw;
    lbCampoAgrupa4: TRLDBText;
    RLLabel30: TRLLabel;
    RLDraw78: TRLDraw;
    RLLabel29: TRLLabel;
    RLDetailGrid3: TRLDetailGrid;
    RLDraw83: TRLDraw;
    RLDraw84: TRLDraw;
    RLDraw86: TRLDraw;
    RLDraw87: TRLDraw;
    RLDBText25: TRLDBText;
    RLDBText27: TRLDBText;
    RLDBText28: TRLDBText;
    RLDraw89: TRLDraw;
    RLDraw90: TRLDraw;
    RLDBText30: TRLDBText;
    RLDraw88: TRLDraw;
    RLDBText26: TRLDBText;
    RLBand19: TRLBand;
    RLDBResult6: TRLDBResult;
    RLBand20: TRLBand;
    RLDraw91: TRLDraw;
    RLDBResult7: TRLDBResult;
    RLBand21: TRLBand;
    LbNomeInstituicao4: TRLLabel;
    LbEndereco4: TRLLabel;
    LbSite4: TRLLabel;
    RLDraw92: TRLDraw;
    lbEmpresaNome4: TRLLabel;
    lbEmpresaSite4: TRLLabel;
    lbSistemaNome4: TRLLabel;
    RLDraw1: TRLDraw;
    RLLabel1: TRLLabel;
    RLDraw2: TRLDraw;
    RLDBText1: TRLDBText;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    LbTitulo1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    SedRLDBImage1: TSedRLDBImage;
    SedRLDBImage2: TSedRLDBImage;
    lbSituacao1: TRLLabel;
    lbTipo1: TRLLabel;
    lbPeriodo1: TRLLabel;
    lbCliente1: TRLLabel;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    lbCorPadrao1: TRLLabel;
    RLDraw3: TRLDraw;
    RLDraw4: TRLDraw;
    RLDraw6: TRLDraw;
    RLLabel8: TRLLabel;
    RLLabel10: TRLLabel;
    RLDraw7: TRLDraw;
    RLDraw8: TRLDraw;
    RLDraw9: TRLDraw;
    RLDraw10: TRLDraw;
    RLDraw11: TRLDraw;
    RLDraw12: TRLDraw;
    RLDetailGrid1: TRLDetailGrid;
    RLDraw13: TRLDraw;
    RLDraw14: TRLDraw;
    RLDraw16: TRLDraw;
    lb1: TRLDBText;
    lb2: TRLDBText;
    RLDraw17: TRLDraw;
    RLDraw18: TRLDraw;
    lb4: TRLDBText;
    RLDraw19: TRLDraw;
    lb5: TRLDBText;
    RLDraw20: TRLDraw;
    lb6: TRLDBText;
    RLBand3: TRLBand;
    RLDBResult1: TRLDBResult;
    RLBand4: TRLBand;
    RLDraw21: TRLDraw;
    RLDBResult2: TRLDBResult;
    RLBand5: TRLBand;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLDraw22: TRLDraw;
    lbEmpresaNome1: TRLLabel;
    lbEmpresaSite1: TRLLabel;
    lbSistemaNome1: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    lb3: TRLDBText;
    RLDraw5: TRLDraw;
    RLDraw15: TRLDraw;
    RLLabel9: TRLLabel;
    RLDraw23: TRLDraw;
    RLDraw24: TRLDraw;
    RLDraw25: TRLDraw;
    RLDraw26: TRLDraw;
    RLDraw27: TRLDraw;
    RLDraw28: TRLDraw;
    RLDBResult3: TRLDBResult;
    RLDBResult4: TRLDBResult;
    RLDBResult5: TRLDBResult;
    RLDBResult8: TRLDBResult;
    RLDraw29: TRLDraw;
    RLDraw30: TRLDraw;
    RLDraw31: TRLDraw;
    RLLabel3: TRLLabel;
    RLDraw32: TRLDraw;
    lb7: TRLDBText;
    RLDraw33: TRLDraw;
    RLDBResult9: TRLDBResult;
    RLDraw34: TRLDraw;
    RLDraw35: TRLDraw;
    RLDraw36: TRLDraw;
    RLLabel4: TRLLabel;
    lb8: TRLDBText;
    RLDBResult10: TRLDBResult;
    RLDraw37: TRLDraw;
    RLLabel2: TRLLabel;
    RLDraw38: TRLDraw;
    lb9: TRLDBText;
    RLDraw39: TRLDraw;
    RLDBResult11: TRLDBResult;
    procedure RLDetailGrid1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RelLigacoesForm: TRelLigacoesForm;

implementation

{$R *.dfm}

uses
  Base, IndicaLigacoes;

procedure TRelLigacoesForm.RLDetailGrid1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin

if (IndicaLigacoesForm.CsClientesTOTALIZADO.Value > 0) then begin
  lb1.Font.Color:=clBlack;
  lb2.Font.Color:=clBlack;
  lb3.Font.Color:=clBlack;
  lb4.Font.Color:=clBlack;
  lb5.Font.Color:=clBlack;
  lb6.Font.Color:=clBlack;
  lb7.Font.Color:=clBlack;
  lb8.Font.Color:=clBlack;
  lb9.Font.Color:=clBlack;
end else begin
  lb1.Font.Color:=clRed;
  lb2.Font.Color:=clRed;
  lb3.Font.Color:=clRed;
  lb4.Font.Color:=clRed;
  lb5.Font.Color:=clRed;
  lb6.Font.Color:=clRed;
  lb7.Font.Color:=clRed;
  lb8.Font.Color:=clRed;
  lb9.Font.Color:=clRed;
end;


end;

end.
