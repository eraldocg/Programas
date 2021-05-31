unit CadVeiculos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ExtCtrls, DB, Mask, 
  Buttons, jpeg, Menus, ComCtrls, Grids, DBGrids, SEDDBComboBox,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TCadVeiculosForm = class(TForm)
    Panel1: TPanel;
    DBText5: TDBText;
    Label13: TLabel;
    BtInserir: TButton;
    btCancelar: TButton;
    Label2: TLabel;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    EditPlaca: TDBEdit;
    EditObs: TDBEdit;
    Label4: TLabel;
    EditLocatodor: TDBLookupComboBox;
    Label5: TLabel;
    EditMarca: TDBEdit;
    Label6: TLabel;
    EditModelo: TDBEdit;
    Label7: TLabel;
    EditAnoFabr: TDBEdit;
    Label8: TLabel;
    EditCor: TDBEdit;
    Label9: TLabel;
    EditRenavam: TDBEdit;
    qryPlaca: TFDQuery;
    qryPlacaVEICULO_ID: TIntegerField;
    qryPlacaPLACA: TStringField;
    qryPlacaCOR: TStringField;
    qryPlacaMODELO: TStringField;
    Label3: TLabel;
    EditValorFranq: TDBEdit;
    Label10: TLabel;
    EditContrato: TDBLookupComboBox;
    Label11: TLabel;
    Label12: TLabel;
    EditAnoMod: TDBEdit;
    EditPlacaAnterior: TDBEdit;
    Image2: TImage;
    Label14: TLabel;
    procedure BtInserirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure EditPlacaExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadVeiculosForm: TCadVeiculosForm;

implementation

uses Base, Principal, unRecursos;

{$R *.dfm}

procedure TCadVeiculosForm.BtInserirClick(Sender: TObject);
var
PodeIR : Boolean;

begin
podeIR:=True;
BtInserir.Enabled:=False;
Screen.Cursor:=crSQLWait;

  if podeIR then
  if Trim(BancodeDados.VeiculosPLACA.Value)=EmptyStr then
  begin
    Mensagem('Placa inválida!', mtInformation, [mbok], mrok, 0);
    EditPlaca.SetFocus;
    podeIR:=False;
  end;

  if podeIR then
  if Trim(BancodeDados.VeiculosMARCA.Value)=EmptyStr then
  begin
    Mensagem('Marca inválida!', mtInformation, [mbok], mrok, 0);
    EditMarca.SetFocus;
    podeIR:=False;
  end;

  if podeIR then
  if Trim(BancodeDados.VeiculosMODELO.Value)=EmptyStr then
  begin
    Mensagem('Modelo inválido!', mtInformation, [mbok], mrok, 0);
    EditModelo.SetFocus;
    podeIR:=False;
  end;
  if podeIR then
  if Trim(BancodeDados.VeiculosCOR.Value)=EmptyStr then
  begin
    Mensagem('Cor inválida!', mtInformation, [mbok], mrok, 0);
    EditCor.SetFocus;
    podeIR:=False;
  end;

  if podeIR then
  if not (BancodeDados.VeiculosANO_FAB.Value>0) then
  begin
    Mensagem('Ano de fabricação inválido!', mtInformation, [mbok], mrok, 0);
    EditAnoFabr.SetFocus;
    podeIR:=False;
  end;

  if podeIR then
  if Trim(BancodeDados.VeiculosRENAVAM.Value)=EmptyStr then
  begin
    Mensagem('Código RENAVAM inválido!', mtInformation, [mbok], mrok, 0);
    EditRenavam.SetFocus;
    podeIR:=False;
  end;

  if podeIR then
  if not (BancodeDados.VeiculosCONF_ID.Value>0) then
  begin
    Mensagem('Locador inválido!', mtInformation, [mbok], mrok, 0);
    EditLocatodor.SetFocus;
    podeIR:=False;
  end;

  if podeIR then
  if not (BancodeDados.VeiculosDOC_ID.Value>0) then
  begin
    Mensagem('Contrato inválido!', mtInformation, [mbok], mrok, 0);
    EditContrato.SetFocus;
    podeIR:=False;
  end;

  if podeIR then
  try
  if BancodeDados.Veiculos.State in [dsInsert, dsEdit] then
  begin
  BancodeDados.Veiculos.Post;
  end;
  finally
  close;
  end;

BtInserir.Enabled:=True;
Screen.Cursor:=crDefault;

end;


procedure TCadVeiculosForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then begin
key:=#0;
Perform(WM_NextDlgCtl,0,0);
end;

if key=#27 then begin
key:=#0;
Close;
end;
end;

procedure TCadVeiculosForm.FormShow(Sender: TObject);
begin
if not BancodeDados.Config.Active then BancodeDados.Config.Open;
BancodeDados.Config.Last;
BancodeDados.Config.First;

EditPlaca.SetFocus;



if not BancodeDados.Documentos.Active then BancodeDados.Documentos.Open;
BancodeDados.Documentos.Last;
BancodeDados.Documentos.First;

end;

procedure TCadVeiculosForm.EditPlacaExit(Sender: TObject);
var
  cpfTmp: String;
begin
  if (BancodeDados.Veiculos.State in [dsinsert, dsedit]) then
    if Length(EditPlaca.Text) > 0 then
    begin
      cpfTmp := EditPlaca.Text; //TestaCPFCNPJ(EditPlaca.Text);
      if Length(cpfTmp) > 0 then
      begin
        qryPlaca.Close;
        qryPlaca.SQL.Text := 'select veiculo_id, placa, cor, modelo from veiculos where placa = ' + QuotedStr(cpfTmp) + ' and not veiculo_id = ' + IntToStr(BancodeDados.VeiculosVEICULO_ID.Value);
        qryPlaca.Open;

        if not qryPlaca.IsEmpty then
        begin
          cpfTmp := '';
          Mensagem('Veículo já cadastrado:'#13 + FormatFloat('000000', qryPlacaVEICULO_ID.Value) + '/' + qryPlacaPLACA.Value+ '/' + qryPlacaMODELO.Value+ '/' + qryPlacaCOR.Value, mtInformation, [mbok], mrok, 0);
        end;
      end;
      BancodeDados.VeiculosPLACA.Value := cpfTmp;
      if trim(cpfTmp) = '' then
        EditPlaca.SetFocus;
    end;

end;

procedure TCadVeiculosForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if BancodeDados.Veiculos.State in [dsInsert,dsEdit] then BancodeDados.Veiculos.Cancel;
end;

procedure TCadVeiculosForm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if Mensagem('Tem certeza que deseja sair?',mtConfirmation,[mbyes,mbNo],mryes,0)=idNo then
  CanClose:=False;
end;

end.
