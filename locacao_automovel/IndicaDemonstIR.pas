unit IndicaDemonstIR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, Mask, DB, DBCtrls, ExtCtrls, jpeg, SEDDateEdit, 
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, 
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, 
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TIndicaDemonstIRForm = class(TForm)
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
    chkBol: TCheckBox;
    rgOrdenar: TRadioGroup;
    chkAvulso: TCheckBox;
    cbData: TComboBox;
    Label4: TLabel;
    TipoContasCONTA_ID: TIntegerField;
    TipoContasCONTA: TStringField;
    TipoContasABREV: TStringField;
    TipoContasOBSERVACAO: TMemoField;
    TipoContasREFERENCIA: TStringField;
    TipoContasUSR_CAD: TIntegerField;
    TipoContasUSUARIO_ID: TIntegerField;
    TipoContasDT_ALTERADO: TDateField;
    Label5: TLabel;
    procedure FormShow(Sender: TObject);
    procedure BtOKClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  IndicaDemonstIRForm: TIndicaDemonstIRForm;

implementation

uses
  Base, RelDemonstIR, Principal, unRecursos;

{$R *.dfm}

procedure TIndicaDemonstIRForm.FormShow(Sender: TObject);
var
  dtTmp: TDate;
  Ano, Mes, Dia: Word;
begin
  DecodeDate(Date, Ano, Mes, Dia);
  dtTmp := EncodeDate(Ano, Mes, 1) - 1;
  DecodeDate(dtTmp, Ano, Mes, Dia);
  dtIni.DateTime := EncodeDate(Ano, Mes, 1);
  dtFim.DateTime := UltimoDiaMes(dtIni.DateTime);
  TipoContas.Open;
  TipoContas.Last;
end;

procedure TIndicaDemonstIRForm.BtOKClick(Sender: TObject);
var
  podePassar: Boolean;
  ordenar, CampoData: String;
  vlInt, vlComJuros: currency;
begin
  podePassar := False;
  if (EditConta.Text <> '') then
    podePassar := True
  else if Mensagem('Tem certeza que deseja imprimir com todas as contas?', mtConfirmation, [mbYes, mbNo], mrNo, 0) = idYes then
    podePassar := True;

  if (podePassar = True) then
    try
      HabilitarBotoes(Self, False);
      if not Assigned(RelDemonstIRForm) then
        RelDemonstIRForm := TRelDemonstIRForm.Create(Application);
      Screen.Cursor := crSQLWait;
      RelDemonstIRForm.Receitas.Close;
      with RelDemonstIRForm.Receitas.FormatOptions do
      begin
        OwnMapRules := True;
        with MapRules.Add do
        begin
          TargetDataType := dtInt32;
          SourceDataType := dtInt64;
        end;
      end;

      if chkAvulso.Checked then
      begin
        case rgOrdenar.ItemIndex of
          0:
            ordenar := '1';
          1:
            ordenar := '5';
          2:
            ordenar := '6';
        end;
      end
      else
      begin
        case rgOrdenar.ItemIndex of
          0:
            ordenar := 'c.nome';
          1:
            ordenar := 'prim_data';
          2:
            ordenar := 'ult_data';
        end;
      end;

      case cbData.ItemIndex of
        0:
          CampoData := 'b.recebimento';
        1:
          CampoData := 'l.data';
      end;
      RelDemonstIRForm.Receitas.SQL.Text := 'select c.nome as cliente, c.cnpj, coalesce(b.valor_mensal, 0) + coalesce(b.valor_lic, 0) as valor_integral, sum(b.valor_pago) as valor_com_juros, ' + ' min(l.data) as prim_data, max(l.data) as ult_data, count(b.boleto_id) as qtd' + ' from boletos b' +
        ' left join livro_caixa l on (l.boleto_id = b.boleto_id)' + ' left join clientes c on (c.cli_id = b.cli_id)' + ' where ' + CampoData + ' between ' + QuotedStr(FormatDateTime('yyyy/mm/dd',dtIni.DateTime)) + ' and ' + QuotedStr(FormatDateTime('yyyy/mm/dd',dtFim.DateTime));

      if chkBol.Checked then
        RelDemonstIRForm.Receitas.SQL.Add(' and b.retorno_id>0');

      if EditConta.Text <> '' then
        RelDemonstIRForm.Receitas.SQL.Add(' and l.conta_id = ' + IntToStr(EditConta.KeyValue));

      RelDemonstIRForm.Receitas.SQL.Add(' group by c.nome, c.cnpj, valor_integral');

      if chkAvulso.Checked then
      begin
        RelDemonstIRForm.Receitas.SQL.Add('union all' + ' select descricao, ' + QuotedStr('') + ', entrada, coalesce(entrada,0)-coalesce(saida,0) as saldo , data, data, 1' + ' from livro_caixa' + ' where data between ' + QuotedStr(FormatDateTime('yyyy/mm/dd',dtIni.DateTime)) + ' and ' + QuotedStr(FormatDateTime('yyyy/mm/dd',dtFim.DateTime)) );
        if EditConta.Text <> '' then
          RelDemonstIRForm.Receitas.SQL.Add(' and conta_id = ' + IntToStr(EditConta.KeyValue));

        RelDemonstIRForm.Receitas.SQL.Add(' and (boleto_id is null or boleto_id = 0) and entrada>0');
        // RelDemonstIRForm.Receitas.SQL.Add(' and (origem_id is null or origem_id = 0)');
        RelDemonstIRForm.Receitas.SQL.Add(' and (conta_id_dest is null or conta_id_dest = 0)');
      end;

      RelDemonstIRForm.Receitas.SQL.Add(' order by ' + ordenar);

      RelDemonstIRForm.Receitas.Open;
      if RelDemonstIRForm.Receitas.IsEmpty then
        Mensagem('Não há dados no período indicado.', mtInformation, [mbOk], mrOk, 0)
      else
      begin
        vlInt := 0;
        vlComJuros := 0;
        RelDemonstIRForm.Receitas.First;
        while not RelDemonstIRForm.Receitas.Eof do
        begin
          vlInt := vlInt + RelDemonstIRForm.ReceitasvlIntegralCalc.Value;
          vlComJuros := vlComJuros + RelDemonstIRForm.ReceitasVALOR_COM_JUROS.Value;
          RelDemonstIRForm.Receitas.Next;
        end;

        if cbData.ItemIndex = 0 then
          RelDemonstIRForm.lbPeriodo.Caption := 'Período de Recebimento: ' + dtIni.DateTimeStr + ' até ' + dtFim.DateTimeStr
        else
          RelDemonstIRForm.lbPeriodo.Caption := 'Período de Crédito: ' + dtIni.DateTimeStr + ' até ' + dtFim.DateTimeStr;

        if chkBol.Checked then
          RelDemonstIRForm.lbOpcoes.Caption := 'Apenas boletos de cobrança'
        else
          RelDemonstIRForm.lbOpcoes.Caption := 'Todas as entradas';

        if EditConta.Text <> '' then
          RelDemonstIRForm.lbConta.Caption := 'Conta: ' + EditConta.Text
        else
          RelDemonstIRForm.lbConta.Caption := 'Todas as contas';

        Screen.Cursor := crDefault;
        RelDemonstIRForm.lbTotInt.Caption:=FormatFloat(',0.00;(,0.00)', vlInt);
        RelDemonstIRForm.lbTotComJuros.Caption:=FormatFloat(',0.00;(,0.00)', vlComJuros);
        BancodeDados.PrepararRel(RelDemonstIRForm.RLReport1);
      end;
    finally
      RelDemonstIRForm.Release;
      RelDemonstIRForm := nil;
      Screen.Cursor := crDefault;
      HabilitarBotoes(Self, True);
    end;
end;

procedure TIndicaDemonstIRForm.FormKeyPress(Sender: TObject; var Key: Char);
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
