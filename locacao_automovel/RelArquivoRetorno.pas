unit RelArquivoRetorno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, DB, SEDDBImage;

type
  TRelArquivoRetornoForm = class(TForm)
    RLReport1: TRLReport;
    RLBand3: TRLBand;
    lbTitulo: TRLLabel;
    lbSituacao1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLDBImage1: TSedRLDBImage;
    RLGroup1: TRLGroup;
    RLBand1: TRLBand;
    lbCorPadrao1: TRLLabel;
    RLDraw2: TRLDraw;
    RLDraw4: TRLDraw;
    RLDraw5: TRLDraw;
    RLDraw6: TRLDraw;
    RLDraw9: TRLDraw;
    RLLabel2: TRLLabel;
    lbNossoNum: TRLLabel;
    RLDraw24: TRLDraw;
    RLDraw26: TRLDraw;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLDraw30: TRLDraw;
    RLLabel11: TRLLabel;
    RLDraw31: TRLDraw;
    RLDraw32: TRLDraw;
    RLLabel4: TRLLabel;
    RLDraw7: TRLDraw;
    RLLabel10: TRLLabel;
    lbArquivo1: TRLLabel;
    RLBand2: TRLBand;
    dbNossoNum: TRLDBText;
    RLDraw10: TRLDraw;
    RLDraw12: TRLDraw;
    RLDraw15: TRLDraw;
    RLDraw16: TRLDraw;
    RLDraw18: TRLDraw;
    RLDraw19: TRLDraw;
    RLDraw22: TRLDraw;
    RLDraw25: TRLDraw;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText11: TRLDBText;
    RLDraw28: TRLDraw;
    RLDBText10: TRLDBText;
    RLBand4: TRLBand;
    RLDraw29: TRLDraw;
    RLDraw33: TRLDraw;
    RLDraw34: TRLDraw;
    RLDraw35: TRLDraw;
    RLDraw37: TRLDraw;
    RLDraw38: TRLDraw;
    RLDraw39: TRLDraw;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLDBResult4: TRLDBResult;
    RLDBResult6: TRLDBResult;
    RLDraw8: TRLDraw;
    RLLabel1: TRLLabel;
    RLDraw3: TRLDraw;
    RLDBText2: TRLDBText;
    RLLabel7: TRLLabel;
    RLDraw73: TRLDraw;
    RLReport2: TRLReport;
    RLBand5: TRLBand;
    lbTitulo1: TRLLabel;
    lbPeriodo2: TRLLabel;
    RLSystemInfo4: TRLSystemInfo;
    RLSystemInfo5: TRLSystemInfo;
    RLSystemInfo6: TRLSystemInfo;
    RLDBImage2: TSedRLDBImage;
    RLBand10: TRLBand;
    RLDraw63: TRLDraw;
    RLDraw65: TRLDraw;
    RLDraw66: TRLDraw;
    RLDraw68: TRLDraw;
    RLDraw69: TRLDraw;
    RLDraw70: TRLDraw;
    RLDBResult3: TRLDBResult;
    RLDBResult8: TRLDBResult;
    RLDBResult9: TRLDBResult;
    RLDBResult10: TRLDBResult;
    RLDBResult11: TRLDBResult;
    RLLabel29: TRLLabel;
    RLDraw76: TRLDraw;
    RLReport3: TRLReport;
    RLBand8: TRLBand;
    lbTitulo3: TRLLabel;
    lbPeriodo3: TRLLabel;
    RLSystemInfo7: TRLSystemInfo;
    RLSystemInfo8: TRLSystemInfo;
    RLSystemInfo9: TRLSystemInfo;
    RLDBImage3: TSedRLDBImage;
    RLGroup3: TRLGroup;
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
    RLLabel31: TRLLabel;
    RLDraw82: TRLDraw;
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
    RLDraw94: TRLDraw;
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
    RLDBText30: TRLDBText;
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
    RLBand11: TRLBand;
    LbNomeInstituicao3: TRLLabel;
    LbEndereco3: TRLLabel;
    LbSite3: TRLLabel;
    RLDraw90: TRLDraw;
    RLBand6: TRLBand;
    LbNomeInstituicao1: TRLLabel;
    LbEndereco1: TRLLabel;
    LbSite1: TRLLabel;
    RLDraw11: TRLDraw;
    RLBand7: TRLBand;
    LbNomeInstituicao: TRLLabel;
    LbEndereco: TRLLabel;
    LbSite: TRLLabel;
    RLDraw1: TRLDraw;
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
    RLDraw113: TRLDraw;
    RLDraw114: TRLDraw;
    RLLabel41: TRLLabel;
    RLLabel50: TRLLabel;
    RLLabel52: TRLLabel;
    RLLabel53: TRLLabel;
    RLDraw117: TRLDraw;
    RLDBResult18: TRLDBResult;
    RLDBResult19: TRLDBResult;
    RLDBText34: TRLDBText;
    db3NossoNum: TRLDBText;
    RLDBText36: TRLDBText;
    RLDBText37: TRLDBText;
    db3VlAbat: TRLDBText;
    db3DtCred: TRLDBText;
    RLDBText40: TRLDBText;
    db3vlPago: TRLDBText;
    RLLabel15: TRLLabel;
    RLDraw118: TRLDraw;
    lbEmpresaNome3: TRLLabel;
    lbEmpresaSite3: TRLLabel;
    lbSistemaNome3: TRLLabel;
    lbEmpresaNome2: TRLLabel;
    lbEmpresaSite2: TRLLabel;
    lbSistemaNome2: TRLLabel;
    lbEmpresaNome: TRLLabel;
    lbEmpresaSite: TRLLabel;
    lbSistemaNome: TRLLabel;
    lbSituacao2: TRLLabel;
    lbSituacao3: TRLLabel;
    RLGroup2: TRLGroup;
    RLBand15: TRLBand;
    lbCorPadrao2: TRLLabel;
    RLDraw14: TRLDraw;
    RLDraw40: TRLDraw;
    RLLabel18: TRLLabel;
    lb2NossoNum: TRLLabel;
    RLDraw42: TRLDraw;
    RLLabel20: TRLLabel;
    RLDraw43: TRLDraw;
    RLDraw44: TRLDraw;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLDraw46: TRLDraw;
    RLLabel23: TRLLabel;
    RLDraw48: TRLDraw;
    RLLabel24: TRLLabel;
    RLLabel26: TRLLabel;
    RLDraw50: TRLDraw;
    RLLabel28: TRLLabel;
    RLDraw74: TRLDraw;
    RLDraw116: TRLDraw;
    RLLabel54: TRLLabel;
    RLDraw58: TRLDraw;
    RLLabel13: TRLLabel;
    RLBand9: TRLBand;
    db2NossoNum: TRLDBText;
    RLDraw51: TRLDraw;
    RLDraw53: TRLDraw;
    RLDraw54: TRLDraw;
    RLDraw55: TRLDraw;
    RLDraw57: TRLDraw;
    RLDraw59: TRLDraw;
    RLDraw60: TRLDraw;
    RLDBText4: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLDraw62: TRLDraw;
    RLDBText20: TRLDBText;
    RLDraw75: TRLDraw;
    RLDraw115: TRLDraw;
    RLDBText32: TRLDBText;
    RLDraw47: TRLDraw;
    RLDBText22: TRLDBText;
    RLDraw127: TRLDraw;
    RLDraw128: TRLDraw;
    RLDraw13: TRLDraw;
    RLDBText12: TRLDBText;
    RLDraw20: TRLDraw;
    RLLabel5: TRLLabel;
    RLDraw71: TRLDraw;
    RLDBText21: TRLDBText;
    RLDraw72: TRLDraw;
    RLLabel6: TRLLabel;
    RLDraw17: TRLDraw;
    RLLabel12: TRLLabel;
    RLDraw27: TRLDraw;
    RLDBText9: TRLDBText;
    RLDBResult5: TRLDBResult;
    RLDBResult7: TRLDBResult;
    RLDraw36: TRLDraw;
    RLReport4: TRLReport;
    RLBand16: TRLBand;
    lbTitulo4: TRLLabel;
    RLSystemInfo10: TRLSystemInfo;
    RLSystemInfo11: TRLSystemInfo;
    RLSystemInfo12: TRLSystemInfo;
    ACRLDBImage1: TSedRLDBImage;
    RLGroup4: TRLGroup;
    RLBand18: TRLBand;
    lbCorPadrao4: TRLLabel;
    RLDraw129: TRLDraw;
    RLDraw130: TRLDraw;
    RLDraw131: TRLDraw;
    RLDraw132: TRLDraw;
    RLDraw133: TRLDraw;
    RLLabel48: TRLLabel;
    RLLabel49: TRLLabel;
    RLLabel55: TRLLabel;
    RLDraw135: TRLDraw;
    RLDraw136: TRLDraw;
    RLLabel56: TRLLabel;
    RLLabel57: TRLLabel;
    RLDraw137: TRLDraw;
    RLDraw138: TRLDraw;
    RLDraw139: TRLDraw;
    RLLabel59: TRLLabel;
    RLLabel60: TRLLabel;
    RLDraw140: TRLDraw;
    RLLabel61: TRLLabel;
    RLLabel62: TRLLabel;
    RLDraw141: TRLDraw;
    RLDraw142: TRLDraw;
    RLBand19: TRLBand;
    RLDBText50: TRLDBText;
    RLDraw143: TRLDraw;
    RLDraw144: TRLDraw;
    RLDraw146: TRLDraw;
    RLDraw147: TRLDraw;
    RLDraw148: TRLDraw;
    RLDraw149: TRLDraw;
    RLDraw150: TRLDraw;
    RLDraw151: TRLDraw;
    RLDBText52: TRLDBText;
    RLDBText53: TRLDBText;
    RLDBText54: TRLDBText;
    RLDBText55: TRLDBText;
    RLDBText56: TRLDBText;
    RLDraw152: TRLDraw;
    RLDBText57: TRLDBText;
    RLDraw153: TRLDraw;
    RLDBText58: TRLDBText;
    RLDraw154: TRLDraw;
    RLDBText59: TRLDBText;
    RLBand20: TRLBand;
    RLDraw155: TRLDraw;
    RLDraw156: TRLDraw;
    RLDraw157: TRLDraw;
    RLDraw158: TRLDraw;
    RLDBResult25: TRLDBResult;
    RLDBResult26: TRLDBResult;
    RLLabel63: TRLLabel;
    RLDraw159: TRLDraw;
    RLDBResult27: TRLDBResult;
    RLDraw160: TRLDraw;
    RLDBResult28: TRLDBResult;
    RLDraw161: TRLDraw;
    RLBand21: TRLBand;
    LbNomeInstituicao4: TRLLabel;
    LbEndereco4: TRLLabel;
    LbSite4: TRLLabel;
    RLDraw162: TRLDraw;
    lbEmpresaNome4: TRLLabel;
    lbEmpresaSite4: TRLLabel;
    lbSistemaNome4: TRLLabel;
    RLDBText61: TRLDBText;
    RLDBText62: TRLDBText;
    RLDBText63: TRLDBText;
    RLDBText64: TRLDBText;
    RLDBText65: TRLDBText;
    RLDBText66: TRLDBText;
    RLDBText67: TRLDBText;
    RLDBText68: TRLDBText;
    RLDBText69: TRLDBText;
    RLDBText70: TRLDBText;
    RLLabel43: TRLLabel;
    RLLabel45: TRLLabel;
    ret2_ret_id: TRLLabel;
    ret2_nosso_n: TRLLabel;
    ret2_dt_recb: TRLLabel;
    ret2_vl_doc: TRLLabel;
    ret2_vl_mora: TRLLabel;
    ret2_dt_cred: TRLLabel;
    ret2_vl_abat: TRLLabel;
    ret2_vl_pago: TRLLabel;
    ret2_n_arq: TRLLabel;
    ret2_nome_arq: TRLLabel;
    RLLabel46: TRLLabel;
    lbDescricao2: TRLLabel;
    RLDraw45: TRLDraw;
    RLLabel25: TRLLabel;
    RLDraw56: TRLDraw;
    RLDBText16: TRLDBText;
    RLLabel47: TRLLabel;
    RLDBResult12: TRLDBResult;
    RLDraw21: TRLDraw;
    dbTxtAlunos: TRLMemo;
    RLLabel42: TRLLabel;
    RLReport10: TRLReport;
    RLBand17: TRLBand;
    lbTitulo_10: TRLLabel;
    lbPeriodo10: TRLLabel;
    RLSystemInfo13: TRLSystemInfo;
    RLSystemInfo14: TRLSystemInfo;
    RLSystemInfo15: TRLSystemInfo;
    lbSituacao10: TRLLabel;
    SedRLDBImage1: TSedRLDBImage;
    RLBand22: TRLBand;
    LbNomeInstituicao10: TRLLabel;
    LbEndereco10: TRLLabel;
    LbSite10: TRLLabel;
    RLDraw23: TRLDraw;
    lbEmpresaNome10: TRLLabel;
    lbEmpresaSite10: TRLLabel;
    lbSistemaNome10: TRLLabel;
    RLGroup10: TRLGroup;
    RLBand23: TRLBand;
    lbCorPadrao10: TRLLabel;
    RLDraw41: TRLDraw;
    RLDraw52: TRLDraw;
    RLDraw61: TRLDraw;
    RLDraw64: TRLDraw;
    RLDraw67: TRLDraw;
    RLDraw119: TRLDraw;
    RLLabel19: TRLLabel;
    RLLabel38: TRLLabel;
    RLDraw120: TRLDraw;
    RLLabel58: TRLLabel;
    RLLabel64: TRLLabel;
    RLDraw122: TRLDraw;
    RLDraw123: TRLDraw;
    RLLabel65: TRLLabel;
    RLDraw124: TRLDraw;
    RLLabel66: TRLLabel;
    RLDraw125: TRLDraw;
    RLLabel67: TRLLabel;
    RLDraw126: TRLDraw;
    RLDraw134: TRLDraw;
    RLLabel68: TRLLabel;
    RLLabel69: TRLLabel;
    RLDraw145: TRLDraw;
    RLLabel70: TRLLabel;
    RLDraw163: TRLDraw;
    RLLabel71: TRLLabel;
    lbArquivo10: TRLLabel;
    RLBand24: TRLBand;
    lbCorProtest10_1: TRLLabel;
    RLDBText1: TRLDBText;
    RLDraw164: TRLDraw;
    RLDraw165: TRLDraw;
    RLDraw166: TRLDraw;
    RLDraw167: TRLDraw;
    RLDraw169: TRLDraw;
    RLDraw170: TRLDraw;
    RLDraw171: TRLDraw;
    RLDraw172: TRLDraw;
    RLDraw173: TRLDraw;
    RLDraw174: TRLDraw;
    RLDraw175: TRLDraw;
    RLDraw176: TRLDraw;
    RLDBText3: TRLDBText;
    RLDBText35: TRLDBText;
    RLDBText38: TRLDBText;
    RLDBText39: TRLDBText;
    RLDBText41: TRLDBText;
    RLDBText42: TRLDBText;
    RLDBText43: TRLDBText;
    RLDBText44: TRLDBText;
    RLDBText45: TRLDBText;
    RLDraw177: TRLDraw;
    RLDBText46: TRLDBText;
    RLBand25: TRLBand;
    RLDraw178: TRLDraw;
    RLDraw179: TRLDraw;
    RLDraw180: TRLDraw;
    RLDraw181: TRLDraw;
    RLDraw182: TRLDraw;
    RLDraw183: TRLDraw;
    RLDraw184: TRLDraw;
    RLDraw185: TRLDraw;
    RLDBResult13: TRLDBResult;
    RLDBResult14: TRLDBResult;
    RLDBResult20: TRLDBResult;
    RLDBResult22: TRLDBResult;
    RLDBResult23: TRLDBResult;
    RLDraw186: TRLDraw;
    RLDBResult24: TRLDBResult;
    RLBand26: TRLBand;
    RLDraw187: TRLDraw;
    RLDraw188: TRLDraw;
    RLDBResult29: TRLDBResult;
    RLDBResult30: TRLDBResult;
    RLDBResult31: TRLDBResult;
    RLDBResult32: TRLDBResult;
    RLDraw189: TRLDraw;
    RLDraw190: TRLDraw;
    RLLabel73: TRLLabel;
    RLDBResult33: TRLDBResult;
    RLLabel74: TRLLabel;
    RLLabel75: TRLLabel;
    RLDraw191: TRLDraw;
    RLLabel76: TRLLabel;
    lbPeriodo1: TRLLabel;
    RLDraw192: TRLDraw;
    RLLabel3: TRLLabel;
    RLDraw193: TRLDraw;
    RLDBText48: TRLDBText;
    RLDBText51: TRLDBText;
    RLDBText60: TRLDBText;
    lbTipoQuitacao10: TRLLabel;
    lbTipoQuitacao1: TRLLabel;
    RLReport5: TRLReport;
    RLBand27: TRLBand;
    lbTitulo5: TRLLabel;
    lbSituacao5: TRLLabel;
    RLSystemInfo16: TRLSystemInfo;
    RLSystemInfo17: TRLSystemInfo;
    RLSystemInfo18: TRLSystemInfo;
    SedRLDBImage2: TSedRLDBImage;
    lbPeriodo5: TRLLabel;
    lbTipoQuitacao51: TRLLabel;
    RLGroup5: TRLGroup;
    RLBand28: TRLBand;
    lbCorPadrao105: TRLLabel;
    RLDraw194: TRLDraw;
    RLDraw195: TRLDraw;
    RLDraw196: TRLDraw;
    RLDraw197: TRLDraw;
    RLDraw198: TRLDraw;
    RLLabel82: TRLLabel;
    RLLabel83: TRLLabel;
    RLDraw199: TRLDraw;
    RLDraw201: TRLDraw;
    RLLabel86: TRLLabel;
    RLDraw204: TRLDraw;
    RLLabel88: TRLLabel;
    lbArquivo5_1: TRLLabel;
    RLDraw206: TRLDraw;
    RLDraw207: TRLDraw;
    RLLabel92: TRLLabel;
    RLBand29: TRLBand;
    RLDBText49: TRLDBText;
    RLDraw210: TRLDraw;
    RLDBText71: TRLDBText;
    RLDBText75: TRLDBText;
    RLDraw217: TRLDraw;
    RLDBText76: TRLDBText;
    RLDBText79: TRLDBText;
    RLBand30: TRLBand;
    RLDraw222: TRLDraw;
    RLDraw224: TRLDraw;
    RLDraw226: TRLDraw;
    RLDraw227: TRLDraw;
    RLDraw228: TRLDraw;
    RLDBResult34: TRLDBResult;
    RLDBResult37: TRLDBResult;
    RLLabel94: TRLLabel;
    RLBand31: TRLBand;
    LbNomeInstituicao5: TRLLabel;
    LbEndereco5: TRLLabel;
    LbSite5: TRLLabel;
    RLDraw234: TRLDraw;
    lbEmpresaNome5: TRLLabel;
    lbEmpresaSite5: TRLLabel;
    lbSistemaNome5: TRLLabel;
    RLLabel78: TRLLabel;
    RLDBText74: TRLDBText;
    RLDraw242: TRLDraw;
    RLLabel103: TRLLabel;
    RLDBText82: TRLDBText;
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLGroup4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand9BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport10BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand24BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RelArquivoRetornoForm: TRelArquivoRetornoForm;
  // campoAgrupa: String;

implementation

uses VisualizaRetorno, Base, BaixaNEfetuada, Retorno;

{$R *.dfm}

procedure TRelArquivoRetornoForm.RLBand24BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if (BancodeDados.BoletosProtestado.Value = 'SIM') and
    (BancodeDados.BoletosSITUACAO_BOLETO.Value = 'RECEBIDO') then
  begin { 'QUITADO EM PROTESTO' }
    lbCorProtest10_1.Color := $00BFBFFF;
    lbCorProtest10_1.Font.Color := $00BFBFFF;
  end
  else if (BancodeDados.BoletosProtestado.Value = 'SIM') and
    (BancodeDados.BoletosSITUACAO_BOLETO.Value <> 'RECEBIDO') then
  begin { 'EM PROTESTO' }
    lbCorProtest10_1.Font.Color := clRed;
  end
  else
  begin
    lbCorProtest10_1.Visible := false;
    lbCorProtest10_1.Color := clWhite;
    lbCorProtest10_1.Font.Color := clWhite;
  end;
end;

procedure TRelArquivoRetornoForm.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  lbTotLiquido1.Caption := FormatFloat(',0.00',
    (lbTotalDoc1.Value + lbTotalJuros1.Value) - lbTotalAbat1.Value);
end;

procedure TRelArquivoRetornoForm.RLGroup4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  ret2_ret_id.Caption := 'Ret.: ' + FormatFloat('000000',
    RetornoForm.TitQuitado2RET2_RETORNO_ID.Value);
  ret2_n_arq.Caption := 'N�: ' +
    IntToStr(RetornoForm.TitQuitado2RET2_NUMERO_ARQUIVO.Value);
  ret2_nosso_n.Caption := 'Nosso n�mero: ' +
    RetornoForm.TitQuitado2RET2_NOSSO_NUMERO.AsString;
  ret2_dt_recb.Caption := 'Dt. Venc.: ' +
    RetornoForm.TitQuitado2RET2_DATA_VENCIMENTO.AsString;
  ret2_dt_recb.Caption := 'Dt. Receb.: ' +
    RetornoForm.TitQuitado2RET2_DATA_RECEBIMENTO.AsString;
  ret2_dt_cred.Caption := 'Dt. Cr�dito: ' +
    RetornoForm.TitQuitado2RET2_DATA_CREDITO.AsString;
  ret2_vl_abat.Caption := 'Vl. Abat.: ' + FormatFloat(',0.00',
    RetornoForm.TitQuitado2RET2_VALOR_ABATIMENTO.Value);
  ret2_vl_mora.Caption := 'Vl. Multa.: ' + FormatFloat(',0.00',
    RetornoForm.TitQuitado2RET2_VALOR_MORA.Value);
  ret2_vl_doc.Caption := 'Vl. Doc.: ' + FormatFloat(',0.00',
    RetornoForm.TitQuitado2RET2_VALOR_DOCUMENTO.Value);
  ret2_vl_pago.Caption := 'Vl. Pago: ' + FormatFloat(',0.00',
    RetornoForm.TitQuitado2RET2_VALOR_PAGO.Value);
  ret2_nome_arq.Caption := 'Nome: ' +
    RetornoForm.TitQuitado2RET2_NOME_ARQ.AsString;
end;

procedure TRelArquivoRetornoForm.RLReport10BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  // RLGroup1.DataFields := campoAgrupa;
end;

procedure TRelArquivoRetornoForm.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if (BancodeDados.RetornoTIPO.Value = 2) then
  begin
    lbNossoNum.Caption := 'Seu N�mero';
    dbNossoNum.DataField := 'SEU_NUMERO';
  end;
end;

procedure TRelArquivoRetornoForm.RLReport2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if (BaixaNEfetuadaForm.BaixaNTIPO.Value = 2) then
  begin
    lb2NossoNum.Caption := 'Seu N�mero';
    db2NossoNum.DataField := 'SEU_NUMERO';
  end;
end;

procedure TRelArquivoRetornoForm.RLReport3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if (BaixaNEfetuadaForm.BaixaNTIPO.Value = 2) then
  begin
    db3NossoNum.Text := 'Seu N�mero: ';
    db3NossoNum.DataField := 'SEU_NUMERO';
    db3DtCred.Text := 'Motivo: ';
    db3DtCred.DataField := 'RetornoDebAuto';
    db3VlAbat.Visible := false;
    db3vlPago.Visible := false;
  end;
end;

procedure TRelArquivoRetornoForm.RLBand9BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  dbTxtAlunos.Lines.Text := BaixaNEfetuadaForm.BaixaNtxtAlunos.AsString;
end;

end.
