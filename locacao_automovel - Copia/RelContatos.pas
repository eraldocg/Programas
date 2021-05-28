unit RelContatos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, RLReport, DB, SedDBImage, StdCtrls, jpeg, FireDAC.Stan.Intf, 
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, 
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, 
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TRelContatosForm = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLDetailGrid1: TRLDetailGrid;
    RLDBText1: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText14: TRLDBText;
    RLReport2: TRLReport;
    RLBand2: TRLBand;
    lbTitulo: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLDraw51: TRLDraw;
    RLDraw53: TRLDraw;
    lbPeriodo: TRLLabel;
    RLLabel17: TRLLabel;
    RLGroup1: TRLGroup;
    RLBand3: TRLBand;
    RLDraw20: TRLDraw;
    RLDraw22: TRLDraw;
    RLDraw36: TRLDraw;
    lbCampo: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText16: TRLDBText;
    RLDraw37: TRLDraw;
    RLDraw35: TRLDraw;
    RLDraw33: TRLDraw;
    RLDraw19: TRLDraw;
    RLDraw25: TRLDraw;
    RLDraw26: TRLDraw;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLBand4: TRLBand;
    RLDraw48: TRLDraw;
    RLDraw54: TRLDraw;
    RLDraw55: TRLDraw;
    RLDBResult19: TRLDBResult;
    RLBand5: TRLBand;
    lbCorPadrao1: TRLLabel;
    RLDraw4: TRLDraw;
    RLDraw7: TRLDraw;
    RLLabel3: TRLLabel;
    RLDraw9: TRLDraw;
    lbDescCampo: TRLLabel;
    RLLabel18: TRLLabel;
    RLDraw1: TRLDraw;
    RLDraw12: TRLDraw;
    RLDraw2: TRLDraw;
    RLDraw32: TRLDraw;
    RLDraw11: TRLDraw;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLDraw15: TRLDraw;
    RLLabel10: TRLLabel;
    RLLabel4: TRLLabel;
    RLDraw13: TRLDraw;
    RLLabel2: TRLLabel;
    RLDraw3: TRLDraw;
    RLDBText2: TRLDBText;
    RLDraw5: TRLDraw;
    RLImage1: TSedRLDBImage;
    RLBand6: TRLBand;
    RLDraw6: TRLDraw;
    Contatos: TFDQuery;
    dsContatos: TDataSource;
    ContatosCONTATO_ID: TIntegerField;
    RLLabel5: TRLLabel;
    lbEmpresaNome: TRLLabel;
    lbEmpresaSite: TRLLabel;
    lbSistemaNome: TRLLabel;
    ContatosEMPRESA: TStringField;
    ContatosLOGRADOURO: TStringField;
    ContatosNUMERO: TStringField;
    ContatosBAIRRO: TStringField;
    ContatosCEP: TStringField;
    ContatosCIDADE: TStringField;
    ContatosUF: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RelContatosForm: TRelContatosForm;

implementation

uses
  Base;

{$R *.dfm}

end.
