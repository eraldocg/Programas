unit relSaldoContas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, DB, RLReport, jpeg, SEDDBImage, FireDAC.Stan.Intf, 
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, 
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, 
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TrelSaldoContasForm = class(TForm)
    RLReport1: TRLReport;
    DTContasCaixa: TDataSource;
    RLBand4: TRLBand;
    RLDraw14: TRLDraw;
    QryContas: TFDQuery;
    ContasCaixa: TFDQuery;
    QryContasSALDO: TFloatField;
    ContasCaixaENTRADA: TFloatField;
    ContasCaixaSAIDA: TFloatField;
    ContasCaixaSALDO: TFloatField;
    ContasCaixaSaldoAtual: TCurrencyField;
    ContasCaixaSaldoAnt: TCurrencyField;
    ContasCaixaSubTotal: TCurrencyField;
    QryContas2: TFDQuery;
    QryContas2ENTRADA: TFloatField;
    QryContas2SAIDA: TFloatField;
    QryContas2SALDO: TFloatField;
    lbEmpresaNome: TRLLabel;
    lbEmpresaSite: TRLLabel;
    lbSistemaNome: TRLLabel;
    ContasCaixaCONTA_ID: TIntegerField;
    RLGroup1: TRLGroup;
    RLBand1: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel8: TRLLabel;
    lbPeriodo: TRLLabel;
    lbCorPadrao: TRLLabel;
    RLDraw1: TRLDraw;
    RLDraw2: TRLDraw;
    RLDraw7: TRLDraw;
    RLLabel3: TRLLabel;
    RLLabel1: TRLLabel;
    RLDraw15: TRLDraw;
    RLDraw17: TRLDraw;
    RLDraw18: TRLDraw;
    RLDraw19: TRLDraw;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLDraw3: TRLDraw;
    RLDraw24: TRLDraw;
    RLLabel4: TRLLabel;
    RLDraw27: TRLDraw;
    RLLabel9: TRLLabel;
    RLImage1: TSedRLDBImage;
    RLBand2: TRLBand;
    RLDraw8: TRLDraw;
    RLDraw12: TRLDraw;
    RLDraw13: TRLDraw;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDraw9: TRLDraw;
    RLDraw20: TRLDraw;
    RLDraw21: TRLDraw;
    RLDraw22: TRLDraw;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDraw23: TRLDraw;
    RLDraw25: TRLDraw;
    RLDBText1: TRLDBText;
    RLDraw28: TRLDraw;
    RLDBText4: TRLDBText;
    RLBand3: TRLBand;
    RLDraw5: TRLDraw;
    RLDraw6: TRLDraw;
    RLDraw10: TRLDraw;
    RLDraw11: TRLDraw;
    RLDBResult1: TRLDBResult;
    RLDraw4: TRLDraw;
    RLDraw16: TRLDraw;
    RLLabel2: TRLLabel;
    RLDraw26: TRLDraw;
    RLDraw29: TRLDraw;
    lbTotSaldoAnt: TRLLabel;
    lbTotEnt: TRLLabel;
    lbTotSai: TRLLabel;
    lbTotSub: TRLLabel;
    lbTotSaldo: TRLLabel;
    ContasCaixaCONTA: TStringField;
    procedure ContasCaixaCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  relSaldoContasForm: TrelSaldoContasForm;

implementation

uses
  Base, IndicaSaldoContas, Principal, SEDDateEdit;

{$R *.dfm}

procedure TrelSaldoContasForm.ContasCaixaCalcFields(DataSet: TDataSet);
begin
  QryContas.Close;
  QryContas.Params[0].Value := ContasCaixaCONTA_ID.Value;
  QryContas.Params[1].Value := IndicaSaldoContasForm.dtIni.DateTime;
  QryContas.Open;
  ContasCaixaSaldoAnt.Value := QryContasSALDO.Value;
  QryContas.Close;

  QryContas2.Close;
  QryContas2.Params[0].Value := IndicaSaldoContasForm.dtIni.DateTime;
  QryContas2.Params[1].Value := IndicaSaldoContasForm.dtFim.DateTime;
  QryContas2.Params[2].Value := ContasCaixaCONTA_ID.Value;
  QryContas2.Open;
  ContasCaixaENTRADA.Value := QryContas2ENTRADA.Value;
  ContasCaixaSAIDA.Value := QryContas2SAIDA.Value;
  ContasCaixaSALDO.Value := QryContas2SALDO.Value;
  QryContas2.Close;

  ContasCaixaSubTotal.Value := ContasCaixaENTRADA.Value - ContasCaixaSAIDA.Value;

  try
  ContasCaixaSaldoAtual.Value := ContasCaixaSaldoAnt.Value + ContasCaixaSALDO.Value;
  except
  ContasCaixaSaldoAtual.Value := ContasCaixaSaldoAnt.Value + ContasCaixaSALDO.Value;
  end;
end;

end.
