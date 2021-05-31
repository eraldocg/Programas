unit IndicaLigacoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, 
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, 
  Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, SEDDateEdit, Data.DB, 
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, 
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, 
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Imaging.jpeg;

type
  TIndicaLigacoesForm = class(TForm)
    cbSituacao: TComboBox;
    cbTipo: TComboBox;
    Label19: TLabel;
    Label20: TLabel;
    Dt_Inicial: TSedDateEdit;
    Dt_Final: TSedDateEdit;
    Panel1: TPanel;
    BtOK: TButton;
    btCancelar: TButton;
    gbAgrupar: TGroupBox;
    chkAgrup3: TRadioButton;
    chkAgrup1: TRadioButton;
    GroupBox2: TGroupBox;
    cbxModelo: TComboBox;
    lbCod1: TLabel;
    EditCodigo: TEdit;
    btF2: TSpeedButton;
    CsClientes: TFDQuery;
    CsClientesCLI_ID: TIntegerField;
    CsClientesNOME: TStringField;
    CsClientesFANTASIA: TStringField;
    DsCsClientes: TDataSource;
    qryContador: TFDQuery;
    qryContadorTOTAL: TIntegerField;
    CsClientesTOTALIZADO: TIntegerField;
    CsClientesSUPORTE: TIntegerField;
    CsClientesCLIENTE: TIntegerField;
    qryC2: TFDQuery;
    qryC2TOTAL: TIntegerField;
    CsClientesWHATSAPP: TIntegerField;
    CsClientesSMS: TIntegerField;
    CsClientesFANTASIA2: TStringField;
    CsClientesVISITA: TIntegerField;
    CsClientesOUTRO: TIntegerField;
    CsClientesCOBRANCA: TIntegerField;
    gbOrdenar: TGroupBox;
    rb1: TRadioButton;
    rb2: TRadioButton;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    procedure FormShow(Sender: TObject);
    procedure BtOKClick(Sender: TObject);
    procedure CsClientesCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  IndicaLigacoesForm: TIndicaLigacoesForm;

implementation

{$R *.dfm}

uses
  Base, CsClientes, Principal, RelLigacoes;

procedure TIndicaLigacoesForm.BtOKClick(Sender: TObject);
begin



if not assigned(RelLigacoesForm) then
  RelLigacoesForm := tRelLigacoesForm.create(Application);
try
  Screen.Cursor := crSQLWait;
  HabilitarBotoes(Self, False);


 CsClientes.Close;
 CsClientes.SQL.Clear;
 CsClientes.SQL.Text := 'select * from clientes where sit=1';

  if Trim(EditCodigo.Text) <> '' then
  CsClientes.SQL.Add(' and CLI_ID in (' + (EditCodigo.Text) +')') else
  CsClientes.SQL.Add(' and TIPO = '+QuotedStr('001 - Escola')+' order by fantasia');
  CsClientes.Open;

  if not CsClientes.IsEmpty then  begin

  //RelLigacoesForm.lbPeriodo1.Caption:='Período: '+Dt_Inicial.DateTimeStr +' até '+ Dt_Final.DateTimeStr;
    RelLigacoesForm.lbSituacao1.Caption :='Situação: '+cbSituacao.Text;
    RelLigacoesForm.lbTipo1.Caption     :='Tipo: '+cbTipo.Text;
    RelLigacoesForm.lbPeriodo1.Caption  :='Período: '+Dt_Inicial.DateTimeStr +' até '+Dt_Final.DateTimeStr;
    if EditCodigo.Text<>'' then
    //RelLigacoesForm.lbCliente1.Caption  :='Cliente: '+LbNome.Caption else RelLigacoesForm.lbCliente1.Caption  :='';


  BancodeDados.PrepararRel(RelLigacoesForm.RLReport1);

  end;

finally
  RelLigacoesForm.Release;
  RelLigacoesForm := nil;
  Screen.Cursor := crDefault;
  HabilitarBotoes(Self, true);
end;







end;

procedure TIndicaLigacoesForm.CsClientesCalcFields(DataSet: TDataSet);
begin
//SUPORTE LIGOU
qryC2.Close;
with qryC2.FormatOptions do
begin
  OwnMapRules := True;
  with MapRules.Add do
  begin
    TargetDataType := dtInt32;
    SourceDataType := dtInt64;
  end;
end;
qryC2.SQL.Text:='select count(ligacao_id) as total from ligacoes where cli_id ='+IntToStr(CsClientesCLI_ID.Value)+' and tipo = 1 and (dt_ligar between '+QuotedStr(FormatDateTime('yyyy/mm/dd',Dt_Inicial.DateTime))+' and '+QuotedStr(FormatDateTime('yyyy/mm/dd',Dt_Final.DateTime)+' 23:59:59') +')';
qryC2.open;
CsClientesSUPORTE.Value:=qryC2TOTAL.Value;
//CLIENTE LIGOU
qryC2.Close;
with qryC2.FormatOptions do
begin
  OwnMapRules := True;
  with MapRules.Add do
  begin
    TargetDataType := dtInt32;
    SourceDataType := dtInt64;
  end;
end;
qryC2.SQL.Text:='select count(ligacao_id) as total from ligacoes where cli_id ='+IntToStr(CsClientesCLI_ID.Value)+' and tipo = 2 and (dt_ligar between '+QuotedStr(FormatDateTime('yyyy/mm/dd',Dt_Inicial.DateTime))+' and '+QuotedStr(FormatDateTime('yyyy/mm/dd',Dt_Final.DateTime)+' 23:59:59') +')';
qryC2.open;
CsClientesCLIENTE.Value:=qryC2TOTAL.Value;
//WHATSAPP
qryC2.Close;
with qryC2.FormatOptions do
begin
  OwnMapRules := True;
  with MapRules.Add do
  begin
    TargetDataType := dtInt32;
    SourceDataType := dtInt64;
  end;
end;
qryC2.SQL.Text:='select count(ligacao_id) as total from ligacoes where cli_id ='+IntToStr(CsClientesCLI_ID.Value)+' and tipo = 3 and (dt_ligar between '+QuotedStr(FormatDateTime('yyyy/mm/dd',Dt_Inicial.DateTime))+' and '+QuotedStr(FormatDateTime('yyyy/mm/dd',Dt_Final.DateTime)+' 23:59:59') +')';
qryC2.open;
CsClientesWHATSAPP.Value:=qryC2TOTAL.Value;
//SMS
qryC2.Close;
with qryC2.FormatOptions do
begin
  OwnMapRules := True;
  with MapRules.Add do
  begin
    TargetDataType := dtInt32;
    SourceDataType := dtInt64;
  end;
end;
qryC2.SQL.Text:='select count(ligacao_id) as total from ligacoes where cli_id ='+IntToStr(CsClientesCLI_ID.Value)+' and tipo = 4 and (dt_ligar between '+QuotedStr(FormatDateTime('yyyy/mm/dd',Dt_Inicial.DateTime))+' and '+QuotedStr(FormatDateTime('yyyy/mm/dd',Dt_Final.DateTime)+' 23:59:59') +')';
qryC2.open;
CsClientesSMS.Value:=qryC2TOTAL.Value;
//VISITA
qryC2.Close;
with qryC2.FormatOptions do
begin
  OwnMapRules := True;
  with MapRules.Add do
  begin
    TargetDataType := dtInt32;
    SourceDataType := dtInt64;
  end;
end;
qryC2.SQL.Text:='select count(ligacao_id) as total from ligacoes where cli_id ='+IntToStr(CsClientesCLI_ID.Value)+' and tipo = 5 and (dt_ligar between '+QuotedStr(FormatDateTime('yyyy/mm/dd',Dt_Inicial.DateTime))+' and '+QuotedStr(FormatDateTime('yyyy/mm/dd',Dt_Final.DateTime)+' 23:59:59') +')';
qryC2.open;
CsClientesVISITA.Value:=qryC2TOTAL.Value;
//COBRANÇA
qryC2.Close;
with qryC2.FormatOptions do
begin
  OwnMapRules := True;
  with MapRules.Add do
  begin
    TargetDataType := dtInt32;
    SourceDataType := dtInt64;
  end;
end;
qryC2.SQL.Text:='select count(ligacao_id) as total from ligacoes where cli_id ='+IntToStr(CsClientesCLI_ID.Value)+' and tipo = 6 and (dt_ligar between '+QuotedStr(FormatDateTime('yyyy/mm/dd',Dt_Inicial.DateTime))+' and '+QuotedStr(FormatDateTime('yyyy/mm/dd',Dt_Final.DateTime)+' 23:59:59') +')';
qryC2.open;
CsClientesCOBRANCA.Value:=qryC2TOTAL.Value;
//OUTRO
qryC2.Close;
with qryC2.FormatOptions do
begin
  OwnMapRules := True;
  with MapRules.Add do
  begin
    TargetDataType := dtInt32;
    SourceDataType := dtInt64;
  end;
end;
qryC2.SQL.Text:='select count(ligacao_id) as total from ligacoes where cli_id ='+IntToStr(CsClientesCLI_ID.Value)+' and tipo = 7 and (dt_ligar between '+QuotedStr(FormatDateTime('yyyy/mm/dd',Dt_Inicial.DateTime))+' and '+QuotedStr(FormatDateTime('yyyy/mm/dd',Dt_Final.DateTime)+' 23:59:59') +')';
qryC2.open;
CsClientesOUTRO.Value:=qryC2TOTAL.Value;
qryC2.Close;


qryContador.Close;
with qryContador.FormatOptions do
begin
  OwnMapRules := True;
  with MapRules.Add do
  begin
    TargetDataType := dtInt32;
    SourceDataType := dtInt64;
  end;
end;
qryContador.SQL.Text:='select count(ligacao_id) as total from ligacoes where cli_id ='+IntToStr(CsClientesCLI_ID.Value)+' and (dt_ligar between '+QuotedStr(FormatDateTime('yyyy/mm/dd',Dt_Inicial.DateTime))+' and '+QuotedStr(FormatDateTime('yyyy/mm/dd',Dt_Final.DateTime)+' 23:59:59') +')';
qryContador.open;
CsClientesTOTALIZADO.Value:=qryContadorTOTAL.Value;
qryContador.Close;


//deixar no final
if (IndicaLigacoesForm.CsClientesTOTALIZADO.Value > 0) then
CsClientesFANTASIA2.AsString:=CsClientesFANTASIA.Value else CsClientesFANTASIA2.AsString:='* '+CsClientesFANTASIA.Value;



end;

procedure TIndicaLigacoesForm.FormShow(Sender: TObject);
var
ano, mes, dia : word;

begin
DecodeDate(date, ano, mes, dia);

Dt_Inicial.DateTime:=EncodeDate(Ano, mes, 1);
Dt_Final.DateTime:=Date;


end;

end.







