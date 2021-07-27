unit IndicaRelComparativo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ExtCtrls, SEDDateEdit, Vcl.Menus, Vcl.Imaging.jpeg;

type
  TIndicaRelComparativoForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DtIni: TSedDateEdit;
    DtFim: TSedDateEdit;
    Panel2: TPanel;
    BtOK: TButton;
    BtCancelar: TButton;
    MainMenu1: TMainMenu;
    Label3: TLabel;
    procedure FormShow(Sender: TObject);
    procedure BtOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  IndicaRelComparativoForm: TIndicaRelComparativoForm;

implementation

uses Principal, RelComparativo, Base, unRecursos;

{$R *.dfm}

procedure TIndicaRelComparativoForm.FormShow(Sender: TObject);
var
  Ano, Mes, Dia: Word;
begin
  DecodeDate(Date, Ano, Mes, Dia);
  DtIni.DateTime := EncodeDate(Ano, 1, 1);
  DtFim.DateTime := EncodeDate(Ano, 12, 31);
end;

procedure TIndicaRelComparativoForm.BtOKClick(Sender: TObject);
var
  txtContas, txtContas2: String;
  Ano, Mes, Dia: Word;
  DtTmp: TDate;
begin
  try
    HabilitarBotoes(Self, False);
    if not Assigned(RelComparativoForm) then
      RelComparativoForm := TRelComparativoForm.Create(Application);

    with RelComparativoForm.Temp do
    begin
      if Active then
        Close;
      FileName := DiretorioTemp + 'rlcomp.xml';
      CreateDataSet;
      Open;
      IndexFieldNames := 'DATA';
    end;

    RelComparativoForm.Temp.Append;
    RelComparativoForm.TempDATA.Value := 0;
    RelComparativoForm.Temp.Post;

    DecodeDate(DtIni.DateTime, Ano, Mes, Dia);
    DtTmp := EncodeDate(Ano, Mes, 1);
    while (DtTmp <= DtFim.DateTime) do
    begin
      RelComparativoForm.Temp.Append;
      RelComparativoForm.TempDATA.Value := DtTmp;
      RelComparativoForm.Temp.Post;

      DtTmp := UltimoDiaMes(DtTmp) + 1;
    end;

    RelComparativoForm.lbPeriodo.Caption := 'Período de ' + FormatDateTime('dd/mm/yyyy', DtIni.DateTime) + ' a ' + FormatDateTime('dd/mm/yyyy', DtFim.DateTime);

    RelComparativoForm.Temp.AutoCalcFields := True;

    DecodeDate(Date, Ano, Mes, Dia);
    DataCor := EncodeDate(Ano, Mes, 1);

    if RelComparativoForm.ContasCaixa.Active then
      RelComparativoForm.ContasCaixa.Close;
    RelComparativoForm.ContasCaixa.Open;
    RelComparativoForm.ContasCaixa.First;
    txtContas := '';
    while not RelComparativoForm.ContasCaixa.Eof do
    begin

      if Trim(txtContas) = '' then
        txtContas := RelComparativoForm.ContasCaixaCONTA_ID.AsString + ' / ' + RelComparativoForm.ContasCaixaCONTA.Value
      else
        txtContas := txtContas + #13 + RelComparativoForm.ContasCaixaCONTA_ID.AsString + ' / ' + RelComparativoForm.ContasCaixaCONTA.Value;

      if Trim(txtContas2) = '' then
        txtContas2 := FormatFloat(',0.00', RelComparativoForm.ContasCaixaSALDO.Value)
      else
        txtContas2 := txtContas2 + #13 + FormatFloat(',0.00', RelComparativoForm.ContasCaixaSALDO.Value);

      RelComparativoForm.ContasCaixa.Next;
    end;

    RelComparativoForm.lbContas.Lines.Text := txtContas;
    RelComparativoForm.lbContas2.Lines.Text := txtContas2;

    BancodeDados.PrepararRel(RelComparativoForm.RLReport1);
  finally
    RelComparativoForm.Release;
    RelComparativoForm := nil;
    HabilitarBotoes(Self, True);
  end;
end;

end.
