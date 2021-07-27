unit RelNFSe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, DB, RLReport, SEDDBImage, FireDAC.Stan.Intf, FireDAC.Stan.Option, 
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, 
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, 
  FireDAC.Comp.Client;

type
  TRelNFSeForm = class(TForm)
    RLReport1: TRLReport;
    RLGroup1: TRLGroup;
    RLBand4: TRLBand;
    LbNomeInstituicao: TRLLabel;
    LbEndereco: TRLLabel;
    LbSite: TRLLabel;
    RLDraw1: TRLDraw;
    lbEmpresaNome: TRLLabel;
    lbEmpresaSite: TRLLabel;
    lbSistemaNome: TRLLabel;
    RLBand5: TRLBand;
    lbPrefeitura: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    lbNFSe: TRLLabel;
    lbPrestador: TRLLabel;
    lbSecFin: TRLLabel;
    RLDBImage1: TSedRLDBImage;
    qryNFSe: TFDQuery;
    dsNFse: TDataSource;
    RLDraw2: TRLDraw;
    RLDraw4: TRLDraw;
    RLDraw5: TRLDraw;
    RLLabel1: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel2: TRLLabel;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLLabel4: TRLLabel;
    lbTomador: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLDraw6: TRLDraw;
    RLDraw7: TRLDraw;
    RLLabel11: TRLLabel;
    RLDBText11: TRLDBText;
    RLLabel12: TRLLabel;
    RLDBText12: TRLDBText;
    RLLabel14: TRLLabel;
    RLDBText14: TRLDBText;
    RLLabel16: TRLLabel;
    RLDBText16: TRLDBText;
    RLLabel17: TRLLabel;
    RLDBText17: TRLDBText;
    RLLabel13: TRLLabel;
    RLDraw8: TRLDraw;
    lbTotalNota: TRLLabel;
    RLDraw9: TRLDraw;
    RLDraw10: TRLDraw;
    RLDraw11: TRLDraw;
    RLDraw12: TRLDraw;
    RLDraw13: TRLDraw;
    RLDraw14: TRLDraw;
    RLLabel15: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLDraw15: TRLDraw;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLDBText19: TRLDBText;
    RLLabel27: TRLLabel;
    RLDBText20: TRLDBText;
    memoServicos: TRLMemo;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLDBText23: TRLDBText;
    RLLabel28: TRLLabel;
    RLLabel29: TRLLabel;
    bandHomologacao: TRLBand;
    lbHomologacao: TRLLabel;
    RLLabel31: TRLLabel;
    qryNFSeNFS_ID: TIntegerField;
    qryNFSeNFSE_NUMERO: TIntegerField;
    qryNFSeNFSE_COD_VERIF: TStringField;
    qryNFSeNFSE_DT_EMISSAO: TDateTimeField;
    qryNFSeDT_RPS: TDateField;
    qryNFSeNFSE_AMBIENTE: TSmallintField;
    qryNFSeCLI_ID: TIntegerField;
    qryNFSeNOME: TStringField;
    qryNFSeCNPJ: TStringField;
    qryNFSeLOGRADOURO: TStringField;
    qryNFSeBAIRRO: TStringField;
    qryNFSeCIDADE: TStringField;
    qryNFSeESTADO: TStringField;
    qryNFSeCEP: TStringField;
    qryNFSeVL_TOTAL: TFloatField;
    qryNFSeVL_BS_CALC: TFloatField;
    qryNFSeVL_ISS: TFloatField;
    qryNFSePERC_ISS: TFloatField;
    lb_razaoSocial: TRLLabel;
    lb_cnpj: TRLLabel;
    lb_fantasia: TRLLabel;
    lb_logradouro: TRLLabel;
    lb_insc_municipal: TRLLabel;
    lb_cidade: TRLLabel;
    lb_uf: TRLLabel;
    lb_bairro: TRLLabel;
    lb_cep: TRLLabel;
    SedRLDBImage2: TSedRLDBImage;
    RLLabel30: TRLLabel;
    qryNFSeEMAIL_CONTATO2: TStringField;
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLGroup1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
  end;

var
  RelNFSeForm: TRelNFSeForm;

implementation

uses
  Base, Principal;

{$R *.dfm}
{ TRelNFSeForm }

procedure TRelNFSeForm.RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  lbPrefeitura.Caption := 'PREFEITURA MUNICIPAL DE CAMPINA GRANDE';
end;

procedure TRelNFSeForm.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if not Bancodedados.Config.Active then Bancodedados.Config.Open;

  lb_razaoSocial.Caption    := Bancodedados.ConfigNOME.Value;
  lb_cnpj.Caption           := Bancodedados.ConfigCNPJ.Value;
  lb_fantasia.Caption       := Bancodedados.ConfigFANTASIA.Value;
  lb_logradouro.Caption     := Bancodedados.ConfigLOGRADOURO.Value;
  lb_insc_municipal.Caption := Bancodedados.ConfigINSC_MUNIC.Value;
  lb_cidade.Caption         := Bancodedados.ConfigCIDADE_NOME.Value;
  lb_uf.Caption             := Bancodedados.ConfigUF.Value;
  lb_bairro.Caption         := Bancodedados.ConfigBAIRRO.Value;
  lb_cep.Caption            := Bancodedados.ConfigCEP.Value;




end;

procedure TRelNFSeForm.RLGroup1BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  lbTotalNota.Caption := 'VALOR TOTAL DA NOTA = ' + FormatFloat('R$ ,0.00', qryNFSeVL_TOTAL.Value);
  if (qryNFSeNFSE_AMBIENTE.Value = 1) then
    bandHomologacao.Visible := false
  else
    bandHomologacao.Visible := true;
  memoServicos.Lines.Text := BancodeDados.PegaListaServicos(qryNFSeNFS_ID.Value);
end;

end.

