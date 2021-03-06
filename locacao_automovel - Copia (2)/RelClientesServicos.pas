unit RelClientesServicos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, jpeg, ExtCtrls, DB, SEDDBImage, RLBarcode,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TRelClientesServicosForm = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLBand3: TRLBand;
    RLBand4: TRLBand;
    LbNomeInstituicao: TRLLabel;
    LbEndereco: TRLLabel;
    LbSite: TRLLabel;
    RLDraw14: TRLDraw;
    RLGroup1: TRLGroup;
    RLBand5: TRLBand;
    RLDraw3: TRLDraw;
    lbCorPadrao: TRLLabel;
    RLDraw1: TRLDraw;
    RLDraw2: TRLDraw;
    RLDraw6: TRLDraw;
    RLDraw7: TRLDraw;
    RLLabel3: TRLLabel;
    RLLabel5: TRLLabel;
    RLDraw17: TRLDraw;
    RLLabel6: TRLLabel;
    RLDraw22: TRLDraw;
    lbCampoAgrupa1: TRLDBText;
    RLBand6: TRLBand;
    RLDraw8: TRLDraw;
    RLDraw11: TRLDraw;
    RLDraw12: TRLDraw;
    RLDraw13: TRLDraw;
    RLDBText2: TRLDBText;
    RLDBText4: TRLDBText;
    RLDraw20: TRLDraw;
    RLDBText7: TRLDBText;
    RLBand2: TRLBand;
    RLDraw24: TRLDraw;
    RLDBResult20: TRLDBResult;
    RLDraw9: TRLDraw;
    RLLabel7: TRLLabel;
    RLDraw15: TRLDraw;
    RLDBText1: TRLDBText;
    RLDraw16: TRLDraw;
    RLDraw23: TRLDraw;
    lbCampoDesc1: TRLLabel;
    RLDBResult1: TRLDBResult;
    lbEmpresaNome: TRLLabel;
    lbEmpresaSite: TRLLabel;
    lbSistemaNome: TRLLabel;
    RLDBImage2: TSEDRLDBImage;
    lbTipoFiltro1: TRLLabel;
    LbTitulo1: TRLLabel;
    lbPeriodo1: TRLLabel;
    lbOpcoes1: TRLLabel;
    lbOpcoes11: TRLLabel;
    csClientesServicos: TFDQuery;
    dsClientesServ: TDataSource;
    csClientesServicosCLI_ID: TIntegerField;
    csClientesServicosNOME: TStringField;
    csClientesServicosCNPJ: TStringField;
    csClientesServicosCLIENTE_DESDE: TDateField;
    csClientesServicosCIDADE: TStringField;
    csClientesServicosESTADO: TStringField;
    csClientesServicosFONE1: TStringField;
    csClientesServicosCONTATO: TStringField;
    RLDBMemo1: TRLDBMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RelClientesServicosForm: TRelClientesServicosForm;

implementation

uses
  Base, IndicaClientesServicos;

{$R *.dfm}

end.
