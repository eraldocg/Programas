unit RelDemonstIR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, RLReport, jpeg, DB, SEDDBImage, FireDAC.Stan.Intf, 
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, 
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, 
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TRelDemonstIRForm = class(TForm)
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
    RLDraw7: TRLDraw;
    RLLabel1: TRLLabel;
    RLDraw19: TRLDraw;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLDraw3: TRLDraw;
    RLDraw24: TRLDraw;
    RLDraw27: TRLDraw;
    RLLabel9: TRLLabel;
    RLImage1: TSedRLDBImage;
    RLBand2: TRLBand;
    RLDraw8: TRLDraw;
    RLDraw12: TRLDraw;
    RLDraw13: TRLDraw;
    RLDBText3: TRLDBText;
    RLDraw22: TRLDraw;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDraw23: TRLDraw;
    RLDraw25: TRLDraw;
    RLDraw28: TRLDraw;
    RLDBText4: TRLDBText;
    RLBand5: TRLBand;
    RLDraw10: TRLDraw;
    RLDraw11: TRLDraw;
    RLDBResult1: TRLDBResult;
    RLDraw4: TRLDraw;
    RLDraw16: TRLDraw;
    RLLabel2: TRLLabel;
    RLDraw29: TRLDraw;
    RLBand4: TRLBand;
    RLDraw14: TRLDraw;
    Receitas: TFDQuery;
    lbConta: TRLLabel;
    dsReceitas: TDataSource;
    ReceitasVALOR_INTEGRAL: TFloatField;
    ReceitasVALOR_COM_JUROS: TFloatField;
    lbOpcoes: TRLLabel;
    ReceitasPRIM_DATA: TDateField;
    ReceitasULT_DATA: TDateField;
    RLDraw5: TRLDraw;
    RLLabel3: TRLLabel;
    RLDraw6: TRLDraw;
    RLDBText1: TRLDBText;
    RLDraw9: TRLDraw;
    RLLabel4: TRLLabel;
    RLDraw15: TRLDraw;
    RLDBText2: TRLDBText;
    RLLabel5: TRLLabel;
    RLDraw17: TRLDraw;
    RLDBText5: TRLDBText;
    RLDraw18: TRLDraw;
    ReceitasQTD: TIntegerField;
    RLDraw20: TRLDraw;
    ReceitasvlIntegralCalc: TCurrencyField;
    lbEmpresaNome: TRLLabel;
    lbEmpresaSite: TRLLabel;
    lbSistemaNome: TRLLabel;
    lbTotInt: TRLLabel;
    lbTotComJuros: TRLLabel;
    ReceitasCLIENTE: TStringField;
    ReceitasCNPJ: TStringField;
    procedure ReceitasCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RelDemonstIRForm: TRelDemonstIRForm;

implementation

uses
  Base;

{$R *.dfm}

procedure TRelDemonstIRForm.ReceitasCalcFields(DataSet: TDataSet);
begin
if ReceitasVALOR_INTEGRAL.Value < ReceitasVALOR_COM_JUROS.Value then
ReceitasvlIntegralCalc.Value:=ReceitasVALOR_INTEGRAL.Value else
ReceitasvlIntegralCalc.Value:=ReceitasVALOR_COM_JUROS.Value;
end;

end.
