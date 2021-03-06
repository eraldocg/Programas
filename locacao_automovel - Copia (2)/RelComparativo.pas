unit RelComparativo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, Provider, DB, DBClient, jpeg, SEDDBImage,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TRelComparativoForm = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel8: TRLLabel;
    lbPeriodo: TRLLabel;
    lbCorPadrao: TRLLabel;
    RLDraw1: TRLDraw;
    RLDraw2: TRLDraw;
    RLLabel1: TRLLabel;
    RLLabel5: TRLLabel;
    RLDraw3: TRLDraw;
    RLLabel4: TRLLabel;
    RLBand2: TRLBand;
    RLDraw8: TRLDraw;
    RLDraw12: TRLDraw;
    RLDraw13: TRLDraw;
    RLDBText3: TRLDBText;
    RLDraw23: TRLDraw;
    RLBand5: TRLBand;
    RLDraw11: TRLDraw;
    RLDraw4: TRLDraw;
    RLDraw16: TRLDraw;
    RLLabel2: TRLLabel;
    RLDraw26: TRLDraw;
    RLBand4: TRLBand;
    RLDraw14: TRLDraw;
    Temp: TClientDataSet;
    DSTemp: TDataSource;
    Boletos: TFDQuery;
    Pagar: TFDQuery;
    TempDATA: TDateField;
    TempLICENCA: TCurrencyField;
    TempMENSALIDADE: TCurrencyField;
    RLDraw27: TRLDraw;
    RLLabel3: TRLLabel;
    RLDraw28: TRLDraw;
    RLDBText2: TRLDBText;
    RLDBResult6: TRLDBResult;
    RLDraw29: TRLDraw;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLDraw20: TRLDraw;
    RLDraw21: TRLDraw;
    RLDraw22: TRLDraw;
    RLDraw25: TRLDraw;
    RLDraw32: TRLDraw;
    RLDraw33: TRLDraw;
    RLDraw34: TRLDraw;
    RLDraw35: TRLDraw;
    RLDBText1: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDraw5: TRLDraw;
    RLDraw6: TRLDraw;
    RLDraw10: TRLDraw;
    RLDraw36: TRLDraw;
    RLDraw37: TRLDraw;
    RLDraw38: TRLDraw;
    RLDraw39: TRLDraw;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLDBResult3: TRLDBResult;
    RLDBResult4: TRLDBResult;
    RLDBResult5: TRLDBResult;
    RLDBResult7: TRLDBResult;
    RLDBResult8: TRLDBResult;
    RLDBResult9: TRLDBResult;
    TempARECEBER: TCurrencyField;
    TempRECEBIDO: TCurrencyField;
    TempTOT_ENT: TCurrencyField;
    TempAPAGAR: TCurrencyField;
    TempPAGO: TCurrencyField;
    TempTOT_SAI: TCurrencyField;
    TempSALDO: TCurrencyField;
    Caixa: TFDQuery;
    TempOUTRAS_SAIDAS: TCurrencyField;
    RLDraw40: TRLDraw;
    RLDBText11: TRLDBText;
    RLLabel13: TRLLabel;
    RLDraw42: TRLDraw;
    RLDBResult10: TRLDBResult;
    TempOUTRAS_ENTRADAS: TCurrencyField;
    RLDraw43: TRLDraw;
    RLDBText12: TRLDBText;
    RLLabel14: TRLLabel;
    RLDraw45: TRLDraw;
    RLDBResult11: TRLDBResult;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLDraw15: TRLDraw;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLDraw50: TRLDraw;
    RLDBText13: TRLDBText;
    RLDraw51: TRLDraw;
    RLDraw52: TRLDraw;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDraw53: TRLDraw;
    RLDraw54: TRLDraw;
    RLDBResult12: TRLDBResult;
    RLDBResult13: TRLDBResult;
    TempLIC_RECEBIDO: TCurrencyField;
    TempMENSAL_RECEBIDO: TCurrencyField;
    TempJUROS: TCurrencyField;
    RLDraw7: TRLDraw;
    TempACUMULADO: TCurrencyField;
    RLLabel24: TRLLabel;
    RLDraw9: TRLDraw;
    RLDraw17: TRLDraw;
    RLDraw18: TRLDraw;
    RLDraw19: TRLDraw;
    RLDraw24: TRLDraw;
    RLDraw30: TRLDraw;
    RLDraw31: TRLDraw;
    RLDraw41: TRLDraw;
    RLDraw44: TRLDraw;
    RLDraw46: TRLDraw;
    RLDraw47: TRLDraw;
    RLDraw48: TRLDraw;
    RLDraw49: TRLDraw;
    RLDraw55: TRLDraw;
    RLDBText16: TRLDBText;
    RLDraw56: TRLDraw;
    RLDBResult14: TRLDBResult;
    RLDraw57: TRLDraw;
    RLDraw58: TRLDraw;
    RLImage1: TSedRLDBImage;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    CorMes: TRLLabel;
    lbContas: TRLMemo;
    ContasCaixa: TFDQuery;
    lbContas2: TRLMemo;
    lbEmpresaNome: TRLLabel;
    lbEmpresaSite: TRLLabel;
    lbSistemaNome: TRLLabel;
    BoletosVALOR_MENSAL: TFloatField;
    BoletosVALOR_LIC: TFloatField;
    BoletosJUROS: TFloatField;
    BoletosVALOR_INTEGRAL: TFloatField;
    PagarVALOR: TFloatField;
    CaixaSALDO: TFloatField;
    ContasCaixaCONTA_ID: TIntegerField;
    ContasCaixaCONTA: TStringField;
    ContasCaixaSALDO: TFloatField;
    TempMES: TStringField;
    procedure TempCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RelComparativoForm: TRelComparativoForm;
  vlAcumulado: Currency = 0;
  DataCor: TDate;

implementation

uses
  Base, Principal, IndicaRelComparativo, unRecursos;

{$R *.dfm}

procedure TRelComparativoForm.TempCalcFields(DataSet: TDataSet);
var
  Ano, Mes, Dia: Word;
  DtTmp: TDate;
begin
  if TempDATA.Value > 0 then
  begin
    TempMES.Value := FormatDateTime('mmmm / yyyy', TempDATA.Value);

    Boletos.Close;
    Boletos.SQL.Text :=
      'select sum(valor_mensal) as valor_mensal, sum(valor_lic) as valor_lic, sum(juros + multa) as juros, coalesce(valor_mensal, 0) + coalesce(valor_lic, 0) as valor_integral from boletos'
      + ' where vencimento between ' +
      QuotedStr(FormatDateTime('yyyy/mm/dd', TempDATA.Value)) + ' and ' +
      QuotedStr(FormatDateTime('yyyy/mm/dd', UltimoDiaMes(TempDATA.Value))) +
      ' and situacao_boleto = ' + QuotedStr('A RECEBER') +
      ' group by  valor_integral';

    Boletos.Open;

    TempLICENCA.Value := BoletosVALOR_LIC.Value;
    TempMENSALIDADE.Value := BoletosVALOR_MENSAL.Value;
    TempARECEBER.Value := BoletosVALOR_INTEGRAL.Value;

    Boletos.Close;
    Boletos.SQL.Text :=
      'select sum(valor_mensal) as valor_mensal, sum(valor_lic) as valor_lic, sum(juros + multa) as juros, sum(valor_pago) as valor_integral from boletos'
      + ' where dt_credito between ' +
      QuotedStr(FormatDateTime('yyyy/mm/dd', TempDATA.Value)) + ' and ' +
      QuotedStr(FormatDateTime('yyyy/mm/dd', UltimoDiaMes(TempDATA.Value))) +
      ' and caixa_id>0' + ' and situacao_boleto = ' + QuotedStr('RECEBIDO') +
      ' group by  valor_pago';

    Boletos.Open;
    TempLIC_RECEBIDO.Value := BoletosVALOR_LIC.Value;
    TempMENSAL_RECEBIDO.Value := BoletosVALOR_MENSAL.Value;
    TempJUROS.Value := BoletosJUROS.Value;
    TempRECEBIDO.Value := BoletosVALOR_INTEGRAL.Value;

    Boletos.Close;

    Caixa.Close;
    Caixa.SQL.Text :=
      'select sum(entrada) as saldo from livro_caixa where (pagar_id is null or pagar_id=0) and (conta_id_dest is null or conta_id_dest=0)'
      + ' and (origem_id is null or origem_id=0) and (boleto_id is null or boleto_id=0) and data between '
      + QuotedStr(FormatDateTime('yyyy/mm/dd', TempDATA.Value)) + ' and ' +
      QuotedStr(FormatDateTime('yyyy/mm/dd', UltimoDiaMes(TempDATA.Value)));
    Caixa.Open;
    TempOUTRAS_ENTRADAS.Value := CaixaSALDO.Value;

    //
    Pagar.Close;
    Pagar.SQL.Text := 'select sum(valor_falta) as valor from v_pagar' +
      ' where vencimento between ' +
      QuotedStr(FormatDateTime('yyyy/mm/dd', TempDATA.Value)) + ' and ' +
      QuotedStr(FormatDateTime('yyyy/mm/dd', UltimoDiaMes(TempDATA.Value))) +
      ' and situacao_pagar = ' + QuotedStr('A PAGAR');
    Pagar.Open;
    TempAPAGAR.Value := PagarVALOR.Value;

    Pagar.Close;

    Caixa.Close;
    Caixa.SQL.Text :=
      'select sum(saida) as saldo from livro_caixa where (pagar_id is null or pagar_id=0) and (conta_id_dest is null or conta_id_dest=0)'
      + ' and (origem_id is null or origem_id=0) and (boleto_id is null or boleto_id=0) and data between '
      + QuotedStr(FormatDateTime('yyyy/mm/dd', TempDATA.Value)) + ' and ' +
      QuotedStr(FormatDateTime('yyyy/mm/dd', UltimoDiaMes(TempDATA.Value)));
    Caixa.Open;
    TempOUTRAS_SAIDAS.Value := CaixaSALDO.Value;

    Caixa.Close;
    Caixa.SQL.Text :=
      'select sum(coalesce(entrada,0)-coalesce(saida,0)) as saldo from livro_caixa where (pagar_id>0) and data between '
      + QuotedStr(FormatDateTime('yyyy/mm/dd', TempDATA.Value)) + ' and ' +
      QuotedStr(FormatDateTime('yyyy/mm/dd', UltimoDiaMes(TempDATA.Value)));

    Caixa.Open;
    TempPAGO.Value := CaixaSALDO.Value * -1;

    Caixa.Close;
  end
  else
  begin
    TempMES.Value := 'Meses anteriores';

    DecodeDate(IndicaRelComparativoForm.DtIni.DateTime, Ano, Mes, Dia);
    DtTmp := EncodeDate(Ano, Mes, 1);

    Boletos.Close;
    Boletos.SQL.Text :=
      'select sum(valor_mensal) as valor_mensal, sum(valor_lic) as valor_lic, sum(juros + multa) as juros, coalesce(valor_mensal, 0) + coalesce(valor_lic, 0) as valor_integral from boletos'
      + ' where vencimento < ' + QuotedStr(FormatDateTime('yyyy/mm/dd', DtTmp))
      + ' and situacao_boleto = ' + QuotedStr('A RECEBER') +
      ' group by  valor_integral';

    Boletos.Open;
    TempLICENCA.Value := BoletosVALOR_LIC.Value;
    TempMENSALIDADE.Value := BoletosVALOR_MENSAL.Value;
    TempARECEBER.Value := BoletosVALOR_INTEGRAL.Value;

    Boletos.Close;
    Boletos.SQL.Text :=
      'select sum(valor_mensal) as valor_mensal, sum(valor_lic) as valor_lic, sum(juros + multa) as juros, sum(valor_pago) as valor_integral from boletos'
      + ' where dt_credito < ' + QuotedStr(FormatDateTime('yyyy/mm/dd', DtTmp))
      + ' and caixa_id>0' + ' and situacao_boleto = ' + QuotedStr('RECEBIDO') +
      ' group by valor_pago';
    Boletos.Open;
    TempLIC_RECEBIDO.Value := BoletosVALOR_LIC.Value;
    TempMENSAL_RECEBIDO.Value := BoletosVALOR_MENSAL.Value;
    TempJUROS.Value := BoletosJUROS.Value;
    TempRECEBIDO.Value := BoletosVALOR_INTEGRAL.Value;
    Boletos.Close;

    Caixa.Close;
    Caixa.SQL.Text :=
      'select sum(entrada) as saldo from livro_caixa where (pagar_id is null or pagar_id=0) and (conta_id_dest is null or conta_id_dest=0)'
      + ' and (origem_id is null or origem_id=0) and (boleto_id is null or boleto_id=0) and data < '
      + QuotedStr(FormatDateTime('yyyy/mm/dd', DtTmp));
    Caixa.Open;
    TempOUTRAS_ENTRADAS.Value := CaixaSALDO.Value;

    //
    Pagar.Close;
    Pagar.SQL.Text := 'select sum(valor_falta) as valor from v_pagar' +
      ' where vencimento < ' + QuotedStr(FormatDateTime('yyyy/mm/dd', DtTmp)) +
      ' and situacao_pagar = ' + QuotedStr('A PAGAR');
    Pagar.Open;
    TempAPAGAR.Value := PagarVALOR.Value;

    Pagar.Close;

    Caixa.Close;
    Caixa.SQL.Text :=
      'select sum(saida) as saldo from livro_caixa where (pagar_id is null or pagar_id=0) and (conta_id_dest is null or conta_id_dest=0)'
      + ' and (origem_id is null or origem_id=0) and (boleto_id is null or boleto_id=0) and data < '
      + QuotedStr(FormatDateTime('yyyy/mm/dd', DtTmp));

    Caixa.Open;
    TempOUTRAS_SAIDAS.Value := CaixaSALDO.Value;

    Caixa.Close;
    Caixa.SQL.Text :=
      'select sum(coalesce(entrada,0)-coalesce(saida,0)) saldo from livro_caixa where (pagar_id>0) and data < '
      + QuotedStr(FormatDateTime('yyyy/mm/dd', DtTmp));

    Caixa.Open;
    TempPAGO.Value := CaixaSALDO.Value * -1;

    Caixa.Close;
  end;

  // TempTOT_ENT.Value:=TempARECEBER.Value + TempRECEBIDO.Value + TempOUTRAS_ENTRADAS.Value;
  TempTOT_ENT.Value := TempRECEBIDO.Value + TempOUTRAS_ENTRADAS.Value;

  // TempTOT_SAI.Value:=TempAPAGAR.Value + TempPAGO.Value + TempOUTRAS_SAIDAS.Value;
  TempTOT_SAI.Value := TempPAGO.Value + TempOUTRAS_SAIDAS.Value;

  TempSALDO.Value := TempTOT_ENT.Value - TempTOT_SAI.Value;

  if Temp.Bof then
    vlAcumulado := 0;

  if (TempSALDO.Value <> 0) then
  begin
    vlAcumulado := vlAcumulado + TempSALDO.Value;
    TempACUMULADO.Value := vlAcumulado;
  end;
end;

procedure TRelComparativoForm.FormCreate(Sender: TObject);
begin
  vlAcumulado := 0;
end;

procedure TRelComparativoForm.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if TempDATA.Value = DataCor then
    CorMes.Color := $00FFF1E8
  else
    CorMes.Color := clWhite;
end;

end.
