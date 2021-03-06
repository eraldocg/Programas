unit RelCarneCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, DB, jpeg, Provider, SEDDBImage, RLBarcode,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TRelCarneCaixaForm = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLDraw5: TRLDraw;
    RLDraw7: TRLDraw;
    RLDraw8: TRLDraw;
    RLDraw9: TRLDraw;
    RLDraw10: TRLDraw;
    RLDraw12: TRLDraw;
    RLDraw13: TRLDraw;
    RLDraw14: TRLDraw;
    RLDraw15: TRLDraw;
    RLDraw17: TRLDraw;
    RLDraw19: TRLDraw;
    RLDraw21: TRLDraw;
    RLDraw23: TRLDraw;
    RLLabel1: TRLLabel;
    RLDraw2: TRLDraw;
    RLLabel3: TRLLabel;
    RLDraw24: TRLDraw;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel7: TRLLabel;
    RLDraw16: TRLDraw;
    RLLabel13: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText11: TRLDBText;
    RLDraw20: TRLDraw;
    RLDraw26: TRLDraw;
    RLDraw27: TRLDraw;
    RLDraw28: TRLDraw;
    RLDraw29: TRLDraw;
    RLDraw30: TRLDraw;
    RLDraw31: TRLDraw;
    RLDBText22: TRLDBText;
    RLLabel34: TRLLabel;
    RLDBText24: TRLDBText;
    RLLabel36: TRLLabel;
    RLDBText25: TRLDBText;
    RLLabel37: TRLLabel;
    RLLabel38: TRLLabel;
    RLDBText26: TRLDBText;
    RLLabel39: TRLLabel;
    RLDBText27: TRLDBText;
    RLLabel35: TRLLabel;
    RLLabel40: TRLLabel;
    RLLabel30: TRLLabel;
    RLDraw32: TRLDraw;
    RLDraw1: TRLDraw;
    RLDraw3: TRLDraw;
    drawPontilhado: TRLDraw;
    RLDraw11: TRLDraw;
    RLDraw6: TRLDraw;
    RLLabel2: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel11: TRLLabel;
    RLDBText14: TRLDBText;
    RLDraw25: TRLDraw;
    RLLabel12: TRLLabel;
    RLDBText15: TRLDBText;
    RLDraw33: TRLDraw;
    RLLabel16: TRLLabel;
    RLDBText16: TRLDBText;
    RLDraw34: TRLDraw;
    RLLabel21: TRLLabel;
    RLDBText17: TRLDBText;
    RLDraw35: TRLDraw;
    RLLabel22: TRLLabel;
    RLDBText18: TRLDBText;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLLabel27: TRLLabel;
    RLLabel8: TRLLabel;
    RLDBBarcode1: TRLDBBarcode;
    RLDraw36: TRLDraw;
    RLLabel28: TRLLabel;
    RLDBText1: TRLDBText;
    RLDraw22: TRLDraw;
    RLDraw37: TRLDraw;
    RLLabel29: TRLLabel;
    RLDBText10: TRLDBText;
    RLDBText12: TRLDBText;
    RLDraw38: TRLDraw;
    RLDraw39: TRLDraw;
    RLDBMemo12: TRLDBMemo;
    RLDBMemo2: TRLDBMemo;
    RLDBImage1: TSedRLDBImage;
    RLDBImage2: TSedRLDBImage;
    RLDBText13: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLDraw41: TRLDraw;
    RLLabel31: TRLLabel;
    QryBancos: TFDQuery;
    qryBoletos: TFDQuery;
    QryBancosBANCO_ID: TIntegerField;
    QryBancosCODIGO_BANCO: TIntegerField;
    QryBancosDIG_BANCO: TIntegerField;
    QryBancosLOGOMARCA: TBlobField;
    QryBancosCONVENIO: TIntegerField;
    QryBancosNOSSO_NUMERO: TIntegerField;
    QryBancosCARTEIRA: TIntegerField;
    QryBancosDIAS_TOLERANCIA: TIntegerField;
    QryBancosUSR_CAD: TIntegerField;
    QryBancosUSUARIO_ID: TIntegerField;
    QryBancosDT_ALTERADO: TDateField;
    QryBancosMENSAGEM_1: TMemoField;
    QryBancosMENSAGEM_2: TMemoField;
    QryBancosMENSAGEM_3: TMemoField;
    QryBancosOBSERVACAO_1: TMemoField;
    qryBoletosBOLETO_ID: TIntegerField;
    qryBoletosDESCONTO: TFloatField;
    qryBoletosACRESCIMO: TFloatField;
    qryBoletosVALOR_APAGAR: TFloatField;
    qryBoletosJUROS: TFloatField;
    qryBoletosMULTA: TFloatField;
    qryBoletosVALOR_PAGO: TFloatField;
    qryBoletosVENCIMENTO: TDateField;
    qryBoletosRECEBIMENTO: TDateField;
    qryBoletosCLI_ID: TIntegerField;
    qryBoletosGRADE_ID: TIntegerField;
    qryBoletosBANCO_ID: TIntegerField;
    qryBoletosRETORNO_ID: TIntegerField;
    qryBoletosOBS: TMemoField;
    qryBoletosOBS_BOLETO: TMemoField;
    qryBoletosUSR_CAD: TIntegerField;
    qryBoletosUSR_ID: TIntegerField;
    qryBoletosDT_ALTERADO: TDateField;
    RLReport2: TRLReport;
    RLBand2: TRLBand;
    lbCliente: TRLLabel;
    CapaFrente: TSedRLDBImage;
    CapaVerso: TSedRLDBImage;
    RLLabel10: TRLLabel;
    RLLabel9: TRLLabel;
    lbEmpresaNome: TRLLabel;
    lbEmpresaSite: TRLLabel;
    RLReport3: TRLReport;
    RLGroup1: TRLGroup;
    RLBand3: TRLBand;
    RLDraw4: TRLDraw;
    RLDraw18: TRLDraw;
    RLDraw40: TRLDraw;
    RLDraw42: TRLDraw;
    RLDraw43: TRLDraw;
    RLDraw44: TRLDraw;
    RLDraw45: TRLDraw;
    RLDraw46: TRLDraw;
    RLDraw47: TRLDraw;
    RLDraw48: TRLDraw;
    RLDraw49: TRLDraw;
    RLDraw50: TRLDraw;
    RLLabel32: TRLLabel;
    RLDraw51: TRLDraw;
    RLLabel33: TRLLabel;
    RLDraw52: TRLDraw;
    RLLabel41: TRLLabel;
    RLLabel42: TRLLabel;
    RLLabel43: TRLLabel;
    RLDraw53: TRLDraw;
    RLLabel44: TRLLabel;
    RLLabel45: TRLLabel;
    RLLabel46: TRLLabel;
    RLLabel47: TRLLabel;
    RLLabel48: TRLLabel;
    RLLabel49: TRLLabel;
    RLLabel50: TRLLabel;
    RLLabel51: TRLLabel;
    RLDBText23: TRLDBText;
    RLDBText28: TRLDBText;
    RLDBText29: TRLDBText;
    RLDBText30: TRLDBText;
    RLDBText31: TRLDBText;
    RLDBText32: TRLDBText;
    RLDBText33: TRLDBText;
    RLDraw54: TRLDraw;
    RLDBText34: TRLDBText;
    RLDraw55: TRLDraw;
    RLDraw56: TRLDraw;
    RLDraw57: TRLDraw;
    RLDraw58: TRLDraw;
    RLDraw59: TRLDraw;
    RLDraw60: TRLDraw;
    RLDraw61: TRLDraw;
    RLDBText35: TRLDBText;
    RLLabel52: TRLLabel;
    RLDBText36: TRLDBText;
    RLLabel53: TRLLabel;
    RLDBText37: TRLDBText;
    RLLabel54: TRLLabel;
    RLLabel55: TRLLabel;
    RLDBText38: TRLDBText;
    RLLabel56: TRLLabel;
    RLDBText39: TRLDBText;
    RLLabel57: TRLLabel;
    RLLabel58: TRLLabel;
    RLLabel59: TRLLabel;
    RLDraw62: TRLDraw;
    RLDraw63: TRLDraw;
    RLDraw64: TRLDraw;
    RLDraw66: TRLDraw;
    RLDraw67: TRLDraw;
    RLLabel60: TRLLabel;
    RLDBText40: TRLDBText;
    RLLabel61: TRLLabel;
    RLDBText41: TRLDBText;
    RLDraw68: TRLDraw;
    RLLabel62: TRLLabel;
    RLDBText42: TRLDBText;
    RLDraw69: TRLDraw;
    RLLabel63: TRLLabel;
    RLDBText43: TRLDBText;
    RLDraw70: TRLDraw;
    RLLabel64: TRLLabel;
    RLDBText44: TRLDBText;
    RLDraw71: TRLDraw;
    RLLabel65: TRLLabel;
    RLDBText45: TRLDBText;
    RLLabel66: TRLLabel;
    RLLabel67: TRLLabel;
    RLLabel68: TRLLabel;
    RLLabel69: TRLLabel;
    RLLabel70: TRLLabel;
    RLLabel71: TRLLabel;
    RLDBBarcode2: TRLDBBarcode;
    RLDraw72: TRLDraw;
    RLLabel72: TRLLabel;
    RLDBText46: TRLDBText;
    RLDraw73: TRLDraw;
    RLDraw74: TRLDraw;
    RLLabel73: TRLLabel;
    RLDBText47: TRLDBText;
    RLDBText48: TRLDBText;
    RLDraw75: TRLDraw;
    RLDraw76: TRLDraw;
    RLDBMemo1: TRLDBMemo;
    RLDBMemo3: TRLDBMemo;
    SedRLDBImage1: TSedRLDBImage;
    SedRLDBImage2: TSedRLDBImage;
    RLDBText49: TRLDBText;
    RLDBText50: TRLDBText;
    RLDBText51: TRLDBText;
    RLDBText52: TRLDBText;
    RLDraw77: TRLDraw;
    RLLabel74: TRLLabel;
    RLLabel75: TRLLabel;
    RLLabel76: TRLLabel;
    RLLabel77: TRLLabel;
    RLLabel78: TRLLabel;
    QryBancosNOME_CEDENTE: TStringField;
    QryBancosLOCAL_PAGAMENTO: TStringField;
    qryBoletosEMISSAO: TDateField;
    QryBancosHOMOLOGACAO: TSmallintField;
    QryBancosDESC_TOL: TSmallintField;
    QryBancosDIAS_BAIXAR_BANCO: TSmallintField;
    qryBoletosDESCRICAO: TStringField;
    qryBoletosDESCRICAO_PAGO: TStringField;
    qryBoletosSITUACAO_BOLETO: TStringField;
    qryBoletosPARCELA: TStringField;
    QryBancosBANCO_NOME: TStringField;
    QryBancosAGENCIA: TStringField;
    QryBancosDIG_AGENCIA: TStringField;
    QryBancosDIG_CONTA_CORRENTE: TStringField;
    QryBancosCODIGO_CEDENTE: TStringField;
    QryBancosDIG_COD_CEDENTE: TStringField;
    QryBancosCONTA_CORRENTE: TStringField;
    QryBancosMENS_CABECALHO: TStringField;
    QryBancosABREV: TStringField;
    qryBoletosVALOR_INTEGRAL: TFloatField;
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RelCarneCaixaForm: TRelCarneCaixaForm;

implementation

uses
  Base;

{$R *.dfm}

procedure TRelCarneCaixaForm.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  CapaFrente.Picture.LoadFromFile(ExtractFilePath(ParamStr(0)) +
    'Capa Frente.jpg');
  CapaVerso.Picture.Assign(nil);
end;

end.
