unit relSituacaoTitulos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, RLReport, DB, SEDDBImage;

type
  TrelSituacaoTitulosForm = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    lbDesc1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLDraw51: TRLDraw;
    RLDraw53: TRLDraw;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    RLDraw18: TRLDraw;
    RLDraw20: TRLDraw;
    RLDraw22: TRLDraw;
    RLDraw24: TRLDraw;
    RLDraw25: TRLDraw;
    RLDraw28: TRLDraw;
    RLDraw29: TRLDraw;
    RLDraw30: TRLDraw;
    RLDraw31: TRLDraw;
    RLDraw36: TRLDraw;
    RLDBText2: TRLDBText;
    lbAluno1_2: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText15: TRLDBText;
    lbUsProtDB_2: TRLDBText;
    RLDraw37: TRLDraw;
    RLDraw35: TRLDraw;
    RLBand3: TRLBand;
    lbCorPadrao1_: TRLLabel;
    RLDraw39: TRLDraw;
    RLDraw40: TRLDraw;
    RLDraw41: TRLDraw;
    RLDraw44: TRLDraw;
    RLDraw45: TRLDraw;
    RLDraw46: TRLDraw;
    RLDraw47: TRLDraw;
    RLDraw48: TRLDraw;
    RLLabel20: TRLLabel;
    RLDBResult2: TRLDBResult;
    RLDBResult3: TRLDBResult;
    RLDBResult6: TRLDBResult;
    RLDBResult7: TRLDBResult;
    RLDBResult8: TRLDBResult;
    RLDBResult9: TRLDBResult;
    RLDraw54: TRLDraw;
    RLDraw55: TRLDraw;
    RLBand4: TRLBand;
    lbCorPadrao1: TRLLabel;
    RLDraw4: TRLDraw;
    RLDraw6: TRLDraw;
    RLDraw7: TRLDraw;
    lbAluno1_1: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLDraw9: TRLDraw;
    RLLabel7: TRLLabel;
    RLDraw8: TRLDraw;
    RLLabel8: TRLLabel;
    RLDraw11: TRLDraw;
    RLLabel11: TRLLabel;
    RLDraw17: TRLDraw;
    RLLabel12: TRLLabel;
    RLDraw19: TRLDraw;
    RLLabel13: TRLLabel;
    RLDraw21: TRLDraw;
    RLLabel14: TRLLabel;
    RLDraw23: TRLDraw;
    RLDraw14: TRLDraw;
    RLLabel16: TRLLabel;
    lbUsProt_2: TRLLabel;
    RLDraw1: TRLDraw;
    RLDraw12: TRLDraw;
    RLDraw2: TRLDraw;
    lbPeriodo: TRLLabel;
    RLDraw32: TRLDraw;
    lbHora1_1: TRLLabel;
    lbHora1_2: TRLDBText;
    RLDraw33: TRLDraw;
    lbTitulo1: TRLLabel;
    RLBand6: TRLBand;
    RLDraw49: TRLDraw;
    RLDBResult19: TRLDBResult;
    RLDBImage1: TSedRLDBImage;
    RLDraw69: TRLDraw;
    RLLabel1: TRLLabel;
    RLDraw68: TRLDraw;
    RLDBText17: TRLDBText;
    lbTipo_1: TRLLabel;
    RLBand5: TRLBand;
    RLDraw75: TRLDraw;
    LbNomeInstituicao: TRLLabel;
    LbEndereco: TRLLabel;
    LbSite: TRLLabel;
    lbEmpresaNome: TRLLabel;
    lbEmpresaSite: TRLLabel;
    lbSistemaNome: TRLLabel;
    RLReport2: TRLReport;
    RLBand7: TRLBand;
    lbTitulo2: TRLLabel;
    lbPeriodo2: TRLLabel;
    RLSystemInfo4: TRLSystemInfo;
    RLSystemInfo5: TRLSystemInfo;
    RLSystemInfo6: TRLSystemInfo;
    lbDesc2: TRLLabel;
    ACRLDBImage1: TSedRLDBImage;
    lbTipo2: TRLLabel;
    RLGroup2: TRLGroup;
    RLBand8: TRLBand;
    lbCorPadrao2: TRLLabel;
    RLDraw38: TRLDraw;
    RLDraw52: TRLDraw;
    RLDraw56: TRLDraw;
    RLDraw70: TRLDraw;
    RLDraw71: TRLDraw;
    RLDraw72: TRLDraw;
    RLLabel23: TRLLabel;
    lbAluno2_1: TRLLabel;
    RLDraw73: TRLDraw;
    lbMat2_1: TRLLabel;
    RLLabel27: TRLLabel;
    RLDraw77: TRLDraw;
    RLLabel29: TRLLabel;
    RLDraw79: TRLDraw;
    RLLabel30: TRLLabel;
    RLDraw80: TRLDraw;
    RLDraw81: TRLDraw;
    RLLabel31: TRLLabel;
    lbDtReceb2_1: TRLLabel;
    RLDraw82: TRLDraw;
    RLLabel33: TRLLabel;
    RLLabel34: TRLLabel;
    RLDraw83: TRLDraw;
    RLDetailGrid1: TRLDetailGrid;
    RLDraw84: TRLDraw;
    RLDraw85: TRLDraw;
    RLDraw86: TRLDraw;
    RLDraw87: TRLDraw;
    RLDraw88: TRLDraw;
    lbMat2_2: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLDraw90: TRLDraw;
    lbAluno2_2: TRLDBText;
    RLDraw91: TRLDraw;
    RLDraw92: TRLDraw;
    RLDBText24: TRLDBText;
    RLDraw94: TRLDraw;
    RLDBText26: TRLDBText;
    RLDraw95: TRLDraw;
    lbDtReceb2_2: TRLDBText;
    RLDraw96: TRLDraw;
    RLDBText28: TRLDBText;
    RLDraw97: TRLDraw;
    RLDBText29: TRLDBText;
    RLBand9: TRLBand;
    RLDraw99: TRLDraw;
    RLDraw100: TRLDraw;
    RLDraw101: TRLDraw;
    RLDraw102: TRLDraw;
    RLDraw103: TRLDraw;
    RLDraw104: TRLDraw;
    RLDraw105: TRLDraw;
    RLLabel35: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLDBResult10: TRLDBResult;
    RLDBResult22: TRLDBResult;
    RLDBResult23: TRLDBResult;
    RLDraw106: TRLDraw;
    RLDBResult24: TRLDBResult;
    RLBand10: TRLBand;
    RLDraw107: TRLDraw;
    RLDBResult29: TRLDBResult;
    RLBand11: TRLBand;
    LbNomeInstituicao2: TRLLabel;
    LbEndereco2: TRLLabel;
    LbSite2: TRLLabel;
    RLDraw111: TRLDraw;
    lbEmpresaNome2: TRLLabel;
    lbEmpresaSite2: TRLLabel;
    lbSistemaNome2: TRLLabel;
    rlProtest_1: TRLDraw;
    RLLabel22: TRLLabel;
    rlProtest_2: TRLDraw;
    RLDBText25: TRLDBText;
    RLDraw5: TRLDraw;
    lbMat1_1: TRLLabel;
    RLDraw16: TRLDraw;
    lbMat1_2: TRLDBText;
    RLDraw13: TRLDraw;
    RLLabel9: TRLLabel;
    RLDraw15: TRLDraw;
    RLDBText9: TRLDBText;
    RLDraw26: TRLDraw;
    RLDraw27: TRLDraw;
    RLDraw42: TRLDraw;
    lb2_1: TRLLabel;
    lbTotalRec: TRLLabel;
    lbTotalInt: TRLLabel;
    RLDBResult13: TRLDBResult;
    RLDraw43: TRLDraw;
    RLDraw50: TRLDraw;
    lbDtReceb1_1: TRLLabel;
    lbDtReceb1_2: TRLDBText;
    lbAnoLet2: TRLLabel;
    lbAnoLet1: TRLLabel;
    lbCorProtest2_1: TRLLabel;
    lbCorProtest1_1: TRLLabel;
    lbTotalARec: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel6: TRLLabel;
    RLDraw58: TRLDraw;
    lb1_0: TRLLabel;
    RLDraw59: TRLDraw;
    RLLabel28: TRLLabel;
    RLLabel32: TRLLabel;
    RLDraw60: TRLDraw;
    lb2_0: TRLLabel;
    RLDraw61: TRLDraw;
    RLLabel17: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel10: TRLLabel;
    lbTotalCanc: TRLLabel;
    RLLabel37: TRLLabel;
    lbTotalReneg: TRLLabel;
    RLDraw34: TRLDraw;
    RLDraw57: TRLDraw;
    RLLabel19: TRLLabel;
    lbTotalRec_: TRLLabel;
    lbTotalInt_: TRLLabel;
    lbTotalARec_: TRLLabel;
    RLLabel52: TRLLabel;
    RLLabel53: TRLLabel;
    RLLabel54: TRLLabel;
    RLLabel55: TRLLabel;
    lbTotalCanc_: TRLLabel;
    RLLabel57: TRLLabel;
    lbTotalReneg_: TRLLabel;
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLDetailGrid1BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  relSituacaoTitulosForm: TrelSituacaoTitulosForm;

implementation

uses Base, CsTitulos;

{$R *.dfm}

procedure TrelSituacaoTitulosForm.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
{if CsTitulosForm.CbTipoBoleto.Text<>'EVENTOS' then begin
if CsTitulosForm.situacao='RECEBIDO' then
RLGroup1.DataFields:='DESCRICAO;RECEBIMENTO' else

if CsTitulosForm.situacao='A RECEBER' then
RLGroup1.DataFields:='DESCRICAO;VENCIMENTO' else

if CsTitulosForm.situacao='CANCELADO' then
RLGroup1.DataFields:='DESCRICAO;VENCIMENTO';
end;

iF CsTitulosForm.CbTipoBoleto.Text='EVENTOS' then
RLGroup1.DataFields:='DESCRICAO';       }
end;

procedure TrelSituacaoTitulosForm.RLReport2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
{if CsTitulosForm.CbTipoBoleto.Text<>'EVENTOS' then begin
if CsTitulosForm.situacao='RECEBIDO' then
RLGroup2.DataFields:='DESCRICAO;RECEBIMENTO' else

if (CsTitulosForm.situacao='A RECEBER') then
RLGroup2.DataFields:='DESCRICAO;VENCIMENTO' else

if CsTitulosForm.situacao='CANCELADO' then
RLGroup2.DataFields:='DESCRICAO;VENCIMENTO';
end;

if CsTitulosForm.CbTipoBoleto.Text='EVENTOS' then
RLGroup2.DataFields:='DESCRICAO';  }

end;

procedure TrelSituacaoTitulosForm.RLDetailGrid1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);

begin (*
if (BancodeDados.BoletosProtestado.Value = 'SIM') and (BancodeDados.BoletosSITUACAO_BOLETO.Value='RECEBIDO') then begin {'QUITADO EM PROTESTO'}
  lbCorProtest2_1.Color     :=$00BFBFFF;
  lbCorProtest2_1.Font.Color:=$00BFBFFF;
end else
if (BancodeDados.BoletosProtestado.Value = 'SIM') and (BancodeDados.BoletosSITUACAO_BOLETO.Value<>'RECEBIDO') then begin {'EM PROTESTO'}
    lbCorProtest2_1.Font.Color:=clRed;
end else begin
  lbCorProtest2_1.Color     :=clWhite;
  lbCorProtest2_1.Font.Color:=clWhite;
end; *)
end;

procedure TrelSituacaoTitulosForm.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
(*
if (BancodeDados.BoletosProtestado.Value = 'SIM') and (BancodeDados.BoletosSITUACAO_BOLETO.Value='RECEBIDO') then begin {'QUITADO EM PROTESTO'}
  lbCorProtest1_1.Color     :=$00BFBFFF;
  lbCorProtest1_1.Font.Color:=$00BFBFFF;
end else
if (BancodeDados.BoletosProtestado.Value = 'SIM') and (BancodeDados.BoletosSITUACAO_BOLETO.Value<>'RECEBIDO') then begin {'EM PROTESTO'}
  lbCorProtest1_1.Font.Color:=clRed;
end else begin
  lbCorProtest1_1.Color     :=clWhite;
  lbCorProtest1_1.Font.Color:=clWhite;

end;*)


end;

end.
