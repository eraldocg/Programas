unit IndicaSaldoContas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DB, DBCtrls, ExtCtrls, jpeg, SEDDateEdit,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TIndicaSaldoContasForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    dtIni: TSedDateEdit;
    dtFim: TSedDateEdit;
    Label3: TLabel;
    EditConta: TDBLookupComboBox;
    DTTipoContas: TDataSource;
    Panel2: TPanel;
    BtOK: TButton;
    BtCancelar: TButton;
    TipoContas: TFDQuery;
    TipoContasCONTA_ID: TIntegerField;
    TipoContasOBSERVACAO: TMemoField;
    TipoContasUSR_CAD: TIntegerField;
    TipoContasUSUARIO_ID: TIntegerField;
    TipoContasDT_ALTERADO: TDateField;
    TipoContasCONTA: TStringField;
    TipoContasABREV: TStringField;
    TipoContasREFERENCIA: TStringField;
    Label4: TLabel;
    procedure FormShow(Sender: TObject);
    procedure BtOKClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  IndicaSaldoContasForm: TIndicaSaldoContasForm;

implementation

uses
  Base, relSaldoContas, Principal, unRecursos;

{$R *.dfm}

procedure TIndicaSaldoContasForm.FormShow(Sender: TObject);
var
  Ano, Mes, Dia: Word;
begin
  DecodeDate(Date, Ano, Mes, Dia);
  dtIni.DateTime := EncodeDate(Ano, Mes, 1);
  dtFim.DateTime := Date;
  TipoContas.Open;
  TipoContas.Last;
end;

procedure TIndicaSaldoContasForm.BtOKClick(Sender: TObject);
var
  totAnt, totSai, totEnt, totSaldo: Currency;
begin
  if not Assigned(relSaldoContasForm) then
    relSaldoContasForm := TrelSaldoContasForm.Create(Application);
  try
    HabilitarBotoes(Self, False);
    Screen.Cursor := crSQLWait;
    relSaldoContasForm.ContasCaixa.Close;
    relSaldoContasForm.ContasCaixa.SQL.Text :=
      'select conta_id, conta from tipo_contas where conta_id > 0';
    if not TeclaPressionada(VK_CONTROL) then
      relSaldoContasForm.ContasCaixa.SQL.Add(' and coalesce(oculto, 0)=0');

    if EditConta.Text <> '' then
      relSaldoContasForm.ContasCaixa.SQL.Add(' and conta_id=' +
        IntToStr(EditConta.KeyValue));

    relSaldoContasForm.ContasCaixa.SQL.Add(' order by conta');
    // (relSaldoContasForm.ContasCaixa.SQL.Text);
    relSaldoContasForm.ContasCaixa.Open;
    if relSaldoContasForm.ContasCaixa.IsEmpty then
      Mensagem('Não há dados no período indicado.', mtInformation,
        [mbOk], mrOk, 0)
    else
    begin
      totAnt := 0;
      totSai := 0;
      totEnt := 0;
      totSaldo := 0;
      relSaldoContasForm.ContasCaixa.First;
      while not relSaldoContasForm.ContasCaixa.Eof do
      begin
        totAnt := totAnt + relSaldoContasForm.ContasCaixaSaldoAnt.Value;
        totSai := totSai + relSaldoContasForm.ContasCaixaSAIDA.Value;
        totEnt := totEnt + relSaldoContasForm.ContasCaixaENTRADA.Value;
        totSaldo := totSaldo + relSaldoContasForm.ContasCaixaSaldoAtual.Value;
        relSaldoContasForm.ContasCaixa.Next;
      end;

      relSaldoContasForm.lbTotSaldoAnt.Caption :=
        FormatFloat(',0.00;(,0.00)', totAnt);
      relSaldoContasForm.lbTotSai.Caption :=
        FormatFloat(',0.00;(,0.00)', totSai);
      relSaldoContasForm.lbTotEnt.Caption :=
        FormatFloat(',0.00;(,0.00)', totEnt);
      relSaldoContasForm.lbTotSub.Caption := FormatFloat(',0.00;(,0.00)',
        totEnt - totSai);
      relSaldoContasForm.lbTotSaldo.Caption := FormatFloat(',0.00;(,0.00)',
        totSaldo);

      relSaldoContasForm.lbPeriodo.Caption := 'Período: ' +
        FormatDateTime('dd/mm/yyyy', dtIni.DateTime) + ' até ' +
        FormatDateTime('dd/mm/yyyy', dtFim.DateTime);
      Screen.Cursor := crDefault;
      BancodeDados.PrepararRel(relSaldoContasForm.RLReport1);
    end;
  finally
    relSaldoContasForm.Release;
    relSaldoContasForm := nil;
    Screen.Cursor := crDefault;
    HabilitarBotoes(Self, True);
  end;
end;

procedure TIndicaSaldoContasForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NextDlgCtl, 0, 0);
  end;
  if Key = #27 then
  begin
    Key := #0;
    Close;
  end;
end;

end.
