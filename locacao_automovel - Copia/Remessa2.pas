unit Remessa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, Mask, SEDDateEdit, ExtCtrls, DB, Buttons, Gauges, jpeg, 
  Menus, Grids, Vcl.DBGrids, SedDBGrid, FireDAC.Stan.Intf, FireDAC.Stan.Option, 
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, 
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, 
  FireDAC.Comp.Client;

type



  TRemessaForm = class(TForm)
    Label1: TLabel;
    EditBanco: TComboBox;
    gbPeriodo: TGroupBox;
    dtIni: TSedDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    dtFim: TSedDateEdit;
    Label4: TLabel;
    EditCaminho: TEdit;
    Panel1: TPanel;
    BTIniciar: TButton;
    BTFechar: TButton;
    Boletos: TFDQuery;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    lbQtd: TLabel;
    Label7: TLabel;
    lbVlInt: TLabel;
    qryPesq: TFDQuery;
    qryEnd_OFF: TFDQuery;
    Gauge1: TGauge;
    rgCarteira: TRadioGroup;
    cbData: TComboBox;
    Image1: TImage;
    qryEnd_OFFEND_ID: TIntegerField;
    qryEnd_OFFLOGRADOURO: TStringField;
    qryEnd_OFFUF_CIDADE: TStringField;
    qryEnd_OFFCEP: TStringField;
    qryEnd_OFFBAIRRO: TStringField;
    qryEnd_OFFNACIONAL: TStringField;
    qryEnd_OFFTIPO: TStringField;
    qryEnd_OFFCID_COD: TIntegerField;
    qryEnd_OFFCID_NOME: TStringField;
    qryEnd_OFFUF_NOME: TStringField;
    btCamRem: TSpeedButton;
    MainMenu1: TMainMenu;
    f31: TMenuItem;
    dsBol: TDataSource;
    Label6: TLabel;
    PopupMenu1: TPopupMenu;
    VisualizarListadeTtulosparaRemessa1: TMenuItem;
    LbTipoDeLayout: TLabel;
    BoletosEMISSAO_ID: TIntegerField;
    BoletosBANCO_ID: TIntegerField;
    BoletosCOD_BANCO: TIntegerField;
    BoletosDIG_BANCO: TIntegerField;
    BoletosAGENCIA: TStringField;
    BoletosDIG_AGENCIA: TStringField;
    BoletosCONTA_CORRENTE: TStringField;
    BoletosDIG_CONTA_CORRENTE: TStringField;
    BoletosCONVENIO: TIntegerField;
    BoletosLOGOMARCA: TBlobField;
    BoletosLOCAL_PAGAMENTO: TStringField;
    BoletosNOME_CEDENTE: TStringField;
    BoletosCARTEIRA: TIntegerField;
    BoletosCOD_CEDENTE: TStringField;
    BoletosDIG_COD_CEDENTE: TStringField;
    BoletosDIAS_TOLERANCIA: TIntegerField;
    BoletosCLI_ID: TIntegerField;
    BoletosCLI_NOME: TStringField;
    BoletosCLI_ABREV: TStringField;
    BoletosGRADE_ID: TIntegerField;
    BoletosSITUACAO_BOLETO: TStringField;
    BoletosEMISSAO: TDateField;
    BoletosVENCIMENTO: TDateField;
    BoletosESPECIE: TStringField;
    BoletosACEITE: TStringField;
    BoletosMOEDA: TStringField;
    BoletosQTD_MOEDA: TIntegerField;
    BoletosVALOR_MOEDA: TFloatField;
    BoletosSEQ_NOSSO_NUM: TIntegerField;
    BoletosNOSSO_NUMERO: TStringField;
    BoletosVALOR_DOC: TFloatField;
    BoletosDESCONTO: TFloatField;
    BoletosCOD_BARRAS: TStringField;
    BoletosLINHA_DIG: TStringField;
    BoletosDATA_RECEBIMENTO: TDateField;
    BoletosVALOR_RECEBIDO: TFloatField;
    BoletosPARCELA: TStringField;
    BoletosRETORNO_ID: TIntegerField;
    BoletosOBS: TWideMemoField;
    BoletosCANCELADO: TSmallintField;
    BoletosDT_PROCES: TDateField;
    BoletosFORNE_ID: TIntegerField;
    BoletosLOGRADOURO: TStringField;
    BoletosBAIRRO: TStringField;
    BoletosCIDADE: TStringField;
    BoletosESTADO: TStringField;
    BoletosCEP: TStringField;
    BoletosCLI_DEBITO_AUTO: TSmallintField;
    BoletosCLI_CNPJ_CPF: TStringField;
    BoletosCLI_BANCO_ID: TIntegerField;
    BoletosCLI_BANC_AGENCIA: TStringField;
    BoletosCLI_BANC_CONTA: TStringField;
    BoletosCLI_BANC_OPERACAO: TIntegerField;
    BoletosCLI_BANC_ACATAMENTO: TWideMemoField;
    BoletosATIVO: TBooleanField;
    BoletosREMESSA: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure BTIniciarClick(Sender: TObject);
    procedure EditBancoChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btCamRemClick(Sender: TObject);
    procedure BoletosCalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  
  end;


var
  RemessaForm: TRemessaForm;
  CaminhoRem: String;
  CodBanco    : integer;
  qtdtmp      : integer = 0;
  NSeqReg     : integer = 0;
  NSeqLote    : integer = 0;
  idRemessa   : integer = 0;
  NSeqArquivo : int64 = 0;
 // IdInst      : integer = 0;
  vlIntTmp: Currency = 0;
  FRem: TextFile;
  ArquivoRem: String = '';
  DtHrArq: TDateTime = 0;
  IDEmissao       : String = '';
  CodigoDeLayout  : integer;
  TipoDeLayout    : string='';

implementation

uses
  Base, Principal, SEDRegistro, acFuncoesBoleto, unRecursos, unImpressao;

{$R *.dfm}

procedure ContaRegistros;
var
  campo: String;
begin
  if (RemessaForm.EditBanco.ItemIndex >= 0) then
  begin

    IDEmissao := BancodeDados.PegarAtivo(listaV_Boletos);
    Screen.Cursor := crSQLWait;
    vlIntTmp := 0;
    qtdtmp := 0;
    if BancodeDados.Bancos.Active then
    begin
      if BancodeDados.Bancos.Locate('BANCO_ID', StrToInt(Copy(RemessaForm.EditBanco.Text, 1, 6)), [loCaseInsensitive]) then
      begin
        if (RemessaForm.dtIni.DateTime > 0) and (RemessaForm.dtFim.DateTime > 0) then
        begin
          if (RemessaForm.dtFim.DateTime >= RemessaForm.dtIni.DateTime) then
          begin

            case RemessaForm.cbData.ItemIndex of
              1: campo := 'DT_PROCES';
              2: campo := 'EMISSAO';
              3: campo := 'VENCIMENTO';
            end;

            RemessaForm.Boletos.Close;
            RemessaForm.Boletos.SQL.Text := 'select * from v_boletos where BANCO_ID = ' + IntToStr(BancodeDados.BancosBANCO_ID.Value) + ' and SITUACAO_BOLETO = ' + QuotedStr('A RECEBER') +
              ' and (COALESCE(RETORNO_ID, 0) = 0) and (REMESSA is null or REMESSA = 0) and (COALESCE(CANCELADO, 0) = 0) and (COALESCE(CLI_DEBITO_AUTO, 0) = 0)';

            if trim(IDEmissao)<>'' then
            RemessaForm.Boletos.SQL.Add(' and emissao_id in (' + IDEmissao + ')');

            //if Assigned(Visualizar_Lista_RemessaForm) then BEGIN
            //  if Visualizar_Lista_RemessaForm.EditConsulta.Text <> '' then
            //  BancodeDados.Alunos.SQL.Add(' where (UPPER('+Opcao+')'+Tipo+QuotedStr(Trim(AnsiUpperCase(EditConsulta.Text)))+' )');
            //END;

            if (RemessaForm.cbData.ItemIndex > 0) then
              RemessaForm.Boletos.SQL.Add(' and (' + campo + ' between ' + RemessaForm.dtIni.DateTimeQuoted + ' and ' + RemessaForm.dtFim.DateTimeQuoted + ')');

            RemessaForm.Boletos.SQL.Add(' and exists(select boleto_id from boletos where emissao_id = v_boletos.emissao_id and situacao_boleto = ' + QuotedStr('A RECEBER') + ')');
            RemessaForm.Boletos.SQL.Add(' order by VENCIMENTO, CLI_NOME');

           // if CodUsuario<0 then
            //(RemessaForm.Boletos.SQL.Text);
            //(RemessaForm.Boletos.SQL.Text);

            RemessaForm.Boletos.Open;
            if not RemessaForm.Boletos.IsEmpty then
            begin
              //IdInst := RemessaForm.BoletoscINST_ID.Value;
              RemessaForm.Boletos.DisableControls;
              RemessaForm.Boletos.First;
              while not RemessaForm.Boletos.Eof do
              begin
                inc(qtdtmp);
                vlIntTmp := vlIntTmp + RemessaForm.BoletosVALOR_DOC.Value;
                RemessaForm.Boletos.Next;
              end;
              RemessaForm.Boletos.EnableControls;
            end;
          end;
        end;
      end;
    end;
    if RemessaForm.Boletos.IsEmpty then  RemessaForm.VisualizarListadeTtulosparaRemessa1.Enabled:=false else RemessaForm.VisualizarListadeTtulosparaRemessa1.Enabled:=true;
    
    RemessaForm.lbQtd.Caption := FormatFloat('0', qtdtmp);
    RemessaForm.lbVlInt.Caption := FormatFloat(',0.00', vlIntTmp);
    Screen.Cursor := crDefault;

  end;
end;

procedure TRemessaForm.FormShow(Sender: TObject);
// var
// Registro : TSEDRegistro;
begin
  dtIni.DateTime := Date;
  dtFim.DateTime := Date;
  LbTipoDeLayout.Caption:='';
  { Registro:=TSEDRegistro.Create;
    try
    if Registro.AbrirChave(ChaveRegConf) then begin
    CaminhoRem:=Registro.LerTexto('camrem', '');
    Registro.FecharChave;
    end;
    finally
    Registro.Free;
    end;
    if trim(CaminhoRem)<>'' then EditCaminho.Text:=trim(CaminhoRem); }

  EditBanco.Clear;

  ///if not BancodeDados.Bancos.Active then BancodeDados.Bancos.Open;

  BancodeDados.Bancos.Close;
  BancodeDados.Bancos.SQL.Text := 'select * from BANCOS where CODIGO_BANCO > 0 and coalesce(CONT_ENCERRADA,0)= 0 order by BANCO_NOME';
  BancodeDados.Bancos.Open;

  BancodeDados.Bancos.First;
  while not BancodeDados.Bancos.Eof do
  begin
    try
      if (Trim(BancodeDados.BancosCODIGO_CEDENTE.Value) <> '') and (BancodeDados.BancosCOB_REG.Value = 1) then
      begin
        EditBanco.Items.Add(FormatFloat('000000', BancodeDados.BancosBANCO_ID.Value) + ' - ' + BancodeDados.BancosBANCO_NOME.Value);
      end;
    except
    end;
    BancodeDados.Bancos.Next;
  end;


Width :=298;
Height:=458;
if Assigned(listaV_Boletos) then listaV_Boletos.Clear;
//if Boletos.IsEmpty then btListaTitulos.Enabled:=false;

end;



function RetornaNumeros(em: string; comEspaco: boolean = false): string;
var
  i: integer;
  temp: string;
  letras: string;
  x: integer;
begin
  // letras:='abcdefghijlmnopqrstuvxzykwáéíóúãõABCDEFGHIJLMNOPQRSTUVXZÁÉÍÓÚÃÕÊYWKçÇ0123456789 ';
  if (comEspaco = true) then
    letras := '0123456789 '
  else
    letras := '0123456789';

  for x := 1 to Length(em) do
    for i := 1 to Length(letras) do
      if em[x] = letras[i] then
        temp := temp + em[x];

  result := Trim(temp);
end;

function RetornaNumerosComDV(em: string): string;
var
  i: integer;
  temp: string;
  letras: string;
  x: integer;
begin
  em := UpperCase(em);
  letras := '0123456789XP';

  for x := 1 to Length(em) do
    for i := 1 to Length(letras) do
      if em[x] = letras[i] then
        temp := temp + em[x];

  result := Trim(temp);
end;

function SemAcento(Nome: String): String;
const
  ComAcentuacao = 'àáâãäèéêëìíîïòóôõöùúûüçÀÁÂÃÄÈÉÊËÌÍÎÏÒÓÔÕÖÙÚÛÜÇ~^´`¨¦§€_/\;:?"!@#$¬&*()_+={}[]<>|£¹²³' + '''';
  SemAcentuacao = 'aaaaaeeeeiiiiooooouuuucAAAAAEEEEIIIIOOOOOUUUUC                                       ';
var
  i: integer;
begin
  for i := 1 to Length(Nome) do
    if Pos(Nome[i], ComAcentuacao) <> 0 then
      Nome[i] := SemAcentuacao[Pos(Nome[i], ComAcentuacao)];
  while (Pos('  ', Nome) > 0) do
    Delete(Nome, Pos('  ', Nome), 1);
  result := Trim(Nome);
end;

function Formatar(Texto: string; TamanhoDesejado: integer; AcrescentarADireita: boolean = true; CaracterAcrescentar: Char = ' '): string;
var
  QuantidadeAcrescentar, TamanhoTexto, PosicaoInicial, i: integer;
begin
  case CaracterAcrescentar of
    '0' .. '9', 'a' .. 'z', 'A' .. 'Z':
      ; { Não faz nada }
  else
    CaracterAcrescentar := ' ';
  end;

  Texto := Trim(Texto);
  TamanhoTexto := Length(Texto);
  for i := 1 to (TamanhoTexto) do
  begin
    if Pos(Texto[i], ' 0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZªº`~''"!@#$%^&*()_-+=|/\{}[]:;,.<>') = 0 then
    begin
      case Texto[i] of
        'á', 'Á', 'ã', 'Ã':
          Texto[i] := 'A';
        'é', 'É':
          Texto[i] := 'E';
        'í', 'Í':
          Texto[i] := 'I';
        'ó', 'Ó':
          Texto[i] := 'O';
        'ú', 'Ú':
          Texto[i] := 'U';
        'à', 'À':
          Texto[i] := 'A';
        'è', 'È':
          Texto[i] := 'E';
        'ì', 'Ì':
          Texto[i] := 'I';
        'ò', 'Ò':
          Texto[i] := 'O';
        'ù', 'Ù':
          Texto[i] := 'U';
        'â', 'Â':
          Texto[i] := 'A';
        'ê', 'Ê':
          Texto[i] := 'E';
        'î', 'Î':
          Texto[i] := 'I';
        'ô', 'Ô', 'õ', 'Õ':
          Texto[i] := 'O';
        'û', 'Û':
          Texto[i] := 'U';
        'ä', 'Ä':
          Texto[i] := 'A';
        'ë', 'Ë':
          Texto[i] := 'E';
        'ï', 'Ï':
          Texto[i] := 'I';
        'ö', 'Ö':
          Texto[i] := 'O';
        'ü', 'Ü':
          Texto[i] := 'U';
        'ç', 'Ç':
          Texto[i] := 'C';
        'ñ', 'Ñ':
          Texto[i] := 'N';
        '%':
          Texto[i] := '%';
      else
        Texto[i] := ' ';
      end;
    end;
  end;

  QuantidadeAcrescentar := TamanhoDesejado - TamanhoTexto;
  if QuantidadeAcrescentar < 0 then
    QuantidadeAcrescentar := 0;
  if CaracterAcrescentar = '' then
    CaracterAcrescentar := ' ';
  if TamanhoTexto >= TamanhoDesejado then
    PosicaoInicial := TamanhoTexto - TamanhoDesejado + 1
  else
    PosicaoInicial := 1;

  if AcrescentarADireita then
    Texto := Copy(Texto, 1, TamanhoDesejado) + StringOfChar(CaracterAcrescentar, QuantidadeAcrescentar)
  else
    Texto := StringOfChar(CaracterAcrescentar, QuantidadeAcrescentar) + Copy(Texto, PosicaoInicial, TamanhoDesejado);

  result := AnsiUpperCase(Texto);
end;

function EscreveCampo(TamanhoMax: integer; Tipo, Valor: String; Padrao: String = ''): String;
var
  DataTmp: TDate;
  HoraTmp: TTime;
begin
  result := '';

  if UpperCase(Tipo) = 'X' then
  begin
    if (Trim(Valor) = '') and (Trim(Padrao) <> '') then
      Valor := Padrao;
    result := Formatar(SemAcento(Valor), TamanhoMax);
    result := AnsiUpperCase(result);
  end
  else if UpperCase(Tipo) = 'N' then
  begin
    try
      if (Trim(Valor) = '0') and (StrToInt64(Trim(Padrao)) > 0) then
        Valor := Padrao;
    except
    end;
    result := Copy(RetornaNumeros(Valor), 1, TamanhoMax);
    if (Padrao = ' ') then
    begin
      result := Formatar(result, TamanhoMax);
    end
    else
    begin
      if result = '' then
        result := '0';
      result := Formatar(result, TamanhoMax, false, '0');
    end;
  end
  else if UpperCase(Tipo) = 'D' then
  begin
    try
      DataTmp := StrToDate(Valor);
    except
      DataTmp := 0;
    end;
    if (DataTmp > 1) then
      result := FormatDateTime('ddmmyyyy', DataTmp);
    result := Formatar(result, TamanhoMax);
  end
  else if UpperCase(Tipo) = 'D2' then
  begin
    try
      DataTmp := StrToDate(Valor);
    except
      DataTmp := 0;
    end;
    if (DataTmp > 1) then
      result := FormatDateTime('ddmmyy', DataTmp);
    result := Formatar(result, TamanhoMax);
  end
  else if UpperCase(Tipo) = 'D3' then
  begin
    try
      DataTmp := StrToDate(Valor);
    except
      DataTmp := 0;
    end;
    if (DataTmp > 1) then
      result := FormatDateTime('yyyymmdd', DataTmp);
    result := Formatar(result, TamanhoMax);
  end
  else if UpperCase(Tipo) = 'H' then
  begin
    try
      HoraTmp := StrToTime(Valor);
    except
      HoraTmp := 0;
    end;

    if (HoraTmp > 0) then
      result := FormatDateTime('hhnnss', HoraTmp);
    result := Formatar(result, TamanhoMax);
  end;
end;

procedure HeaderArquivo2; //cabeçalho ou início do arquivo
var
  i  : integer;
  Linha : String;
  CampoReg: Array [1 .. 28] of String;

begin
  for i := 1 to Length(CampoReg) do
    CampoReg[i] := '';

  with RemessaForm do
  begin
    if (CodBanco = 33) then
    begin
      if (Trim(BancodeDados.BancosFOL_CONTRAT_REM.Value) = '') then
      begin
        Exception.Create('É necessário informar o número do contrato de remessa (Cod. transmissão)');
      end;

      CampoReg[01] := EscreveCampo(03, 'N', IntToStr(CodBanco)); //Posicao: 001 - 003 > Código do Banco na compensação: 353 / 008 / 033
      CampoReg[02] := EscreveCampo(04, 'N', '0000');//Posicao: 004 - 007
      CampoReg[03] := EscreveCampo(01, 'X', '0'); //Posicao: 008 - 008
      CampoReg[04] := EscreveCampo(08, 'X', ''); //Posicao: 009 - 016 > Reservado (uso Banco)

      if Length(RetornaNumeros(BancodeDados.ConfigCNPJ.Value)) = 11 then  //Posicao: 017 - 017 > Tipo de inscrição da empresa: 2 = CNPJ
        CampoReg[05] := EscreveCampo(01, 'X', '1')
      else
        CampoReg[05] := EscreveCampo(01, 'X', '2');
                                                          //  ContaNumeroDV:= ;

      CampoReg[06] := EscreveCampo(15, 'N', BancodeDados.ConfigCNPJ.AsString);//Posicao: 018 – 032 > No de inscrição da empresa

      if trim(BancodeDados.BancosFOL_CONTRAT_REM.Value)<>'' then //Posicao: 033 – 047 > Código de Transmissão
      CampoReg[07] := EscreveCampo(15, 'N', BancodeDados.BancosFOL_CONTRAT_REM.Value) else
      CampoReg[07] := EscreveCampo(15, 'N', FormatFloat('00000000000', StrToInt(BancodeDados.BancosCONTA_CORRENTE.Value + BancodeDados.BancosDIG_CONTA_CORRENTE.Value))) ;   //eraldo  04/11/16

      CampoReg[08] := EscreveCampo(25, 'X', ''); //Posicao: 048 - 072 > Reservado (uso Banco)
      CampoReg[09] := EscreveCampo(30, 'X', BancodeDados.ConfigFANTASIA.Value); //posição 73 até 102
      CampoReg[10] := EscreveCampo(30, 'X', 'BANCO SANTANDER');//BancodeDados.BancosBANCO_NOME.Value); //posição 103 até 132
      CampoReg[11] := EscreveCampo(10, 'X', '');//posição 133 até 142 | reservado ao banco | deixar em branco
      CampoReg[12] := EscreveCampo(01, 'X', '1');//posição 143 - 143 > Código remessa: 1 = Remessa
      CampoReg[13] := EscreveCampo(08, 'D', DateToStr(Date)); //posição: 144 até 151 > Data de geração do arquivo
      CampoReg[14] := EscreveCampo(06, 'X', ''); //posição: 152 - 157 >> Reservado (uso Banco)
      CampoReg[15] := EscreveCampo(06, 'N', IntToStr(NSeqArquivo)); //posição: 158 - 163 > No seqüencial do arquivo
      CampoReg[16] := EscreveCampo(03, 'X', '040');//posição: 164 - 166 > No da versão do layout do arquivo
      CampoReg[17] := EscreveCampo(74, 'X', ''); //posição: 167 - 240 > Reservado (uso Banco)
    end
    else
    begin
      CampoReg[01] := EscreveCampo(03, 'N', IntToStr(CodBanco)); //posição:
      CampoReg[02] := EscreveCampo(04, 'N', '0000');//posição:
      CampoReg[03] := EscreveCampo(01, 'X', '0');  //posição:
      CampoReg[04] := EscreveCampo(09, 'X', '');  //posição:

      if Length(RetornaNumeros(BancodeDados.ConfigCNPJ.Value)) = 11 then  //"1" = CPF, "2" CNPJ - de
        CampoReg[05] := EscreveCampo(01, 'X', '1')
      else
        CampoReg[05] := EscreveCampo(01, 'X', '2');                               //"1" = CPF, "2" CNPJ - de
        CampoReg[06] := EscreveCampo(14, 'N', BancodeDados.ConfigCNPJ.AsString); //CNPJ |--> posição 19 até 32

      if (CodBanco = 1) then begin //eraldo inclui o teste ao lado e estas novas lindas abaixo
        if trim(BancodeDados.BancosFOL_CONTRAT_REM.AsString)<>'' then  //Convenio+contrato |--> posição de 33 até 14
          CampoReg[07] := EscreveCampo(20, 'X', BancodeDados.BancosFOL_CONTRAT_REM.AsString) else
            CampoReg[07] := EscreveCampo(09, 'N', BancodeDados.BancosCONVENIO.AsString) + EscreveCampo(04, 'N', '0014') +EscreveCampo(02, 'N', BancodeDados.BancosCARTEIRA.AsString) + EscreveCampo(03, 'N', BancodeDados.BancosVAR_CARTEIRA.AsString) + '  ';
      end else
        CampoReg[07] := EscreveCampo(20, 'N', '0');

        CampoReg[08] := EscreveCampo(05, 'N', BancodeDados.BancosAGENCIA.Value);
        CampoReg[09] := EscreveCampo(01, 'X', BancodeDados.BancosDIG_AGENCIA.Value);


      if (CodBanco = 1) then
      begin
        CampoReg[10] := EscreveCampo(12, 'N', BancodeDados.BancosCONTA_CORRENTE.Value);
        CampoReg[11] := EscreveCampo(01, 'X', BancodeDados.BancosDIG_CONTA_CORRENTE.Value);
      end
      else if (CodBanco = 104) then
      begin
        CampoReg[10] := EscreveCampo(06, 'N', BancodeDados.BancosCODIGO_CEDENTE.Value);
        CampoReg[11] := EscreveCampo(07, 'N', '0');
      end;

      CampoReg[12] := EscreveCampo(01, 'N', '0');
      CampoReg[13] := EscreveCampo(30, 'X', BancodeDados.ConfigFANTASIA.Value);

      if (CodBanco = 104) then
      CampoReg[14] := EscreveCampo(30, 'X', 'CAIXA ECONOMICA FEDERAL') else
      CampoReg[14] := EscreveCampo(30, 'X', BancodeDados.BancosBANCO_NOME.Value);

      CampoReg[15] := EscreveCampo(10, 'X', '');
      CampoReg[16] := EscreveCampo(01, 'X', '1');
      CampoReg[17] := EscreveCampo(08, 'D', DateToStr(Date));
      CampoReg[18] := EscreveCampo(06, 'H', TimeToStr(Time));
      CampoReg[19] := EscreveCampo(06, 'N', IntToStr(NSeqArquivo));

      if (CodBanco = 1) then
      begin
        CampoReg[20] := EscreveCampo(03, 'X', '030');
        CampoReg[21] := EscreveCampo(05, 'X', '00000');
        CampoReg[22] := EscreveCampo(20, 'X', '');
        CampoReg[23] := EscreveCampo(20, 'X', '');
        CampoReg[24] := EscreveCampo(11, 'X', '');
        CampoReg[25] := EscreveCampo(03, 'X', '');
        CampoReg[26] := EscreveCampo(03, 'X', '');
        CampoReg[27] := EscreveCampo(02, 'X', '');
        CampoReg[28] := EscreveCampo(10, 'X', '');
      end
      else if (CodBanco = 104) then
      begin
        CampoReg[20] := EscreveCampo(03, 'X', '050');
        CampoReg[21] := EscreveCampo(05, 'N', '0');
        CampoReg[22] := EscreveCampo(20, 'X', '');
        CampoReg[23] := EscreveCampo(20, 'X', 'REMESSA-PRODUCAO'); //usado pelo olimpo marista
        CampoReg[24] := EscreveCampo(04, 'X', '');
        CampoReg[25] := EscreveCampo(25, 'X', '');
      end;

    end;

    Linha := '';
    for i := 1 to Length(CampoReg) do
      Linha := Linha + CampoReg[i];

    Writeln(FRem, Linha);
  end;
end;

procedure HeaderLote2;
var
  i: integer;
  Linha: String;
  CampoReg: Array [1 .. 23] of String;
begin
  for i := 1 to Length(CampoReg) do
    CampoReg[i] := '';

  with RemessaForm do
  begin
    if (CodBanco = 33) then
    begin
      CampoReg[01] := EscreveCampo(03, 'N', IntToStr(CodBanco));
      CampoReg[02] := EscreveCampo(04, 'N', '1'); // N Lote
      CampoReg[03] := EscreveCampo(01, 'X', '1');
      CampoReg[04] := EscreveCampo(01, 'X', 'R');
      CampoReg[05] := EscreveCampo(02, 'X', '01');
      CampoReg[06] := EscreveCampo(02, 'X', '');
      CampoReg[07] := EscreveCampo(03, 'X', '030');
      CampoReg[08] := EscreveCampo(01, 'X', '');

      if Length(RetornaNumeros(BancodeDados.ConfigCNPJ.Value)) = 11 then
        CampoReg[09] := EscreveCampo(01, 'X', '1')
      else
        CampoReg[09] := EscreveCampo(01, 'X', '2');

      CampoReg[10] := EscreveCampo(15, 'N', BancodeDados.ConfigCNPJ.AsString);

      CampoReg[11] := EscreveCampo(20, 'X', '');
      CampoReg[12] := EscreveCampo(15, 'N', BancodeDados.BancosFOL_CONTRAT_REM.Value);
      CampoReg[13] := EscreveCampo(05, 'X', '');
      CampoReg[14] := EscreveCampo(30, 'X', BancodeDados.ConfigFANTASIA.Value);
      CampoReg[15] := EscreveCampo(40, 'X', '');
      CampoReg[16] := EscreveCampo(40, 'X', '');
      CampoReg[17] := EscreveCampo(08, 'N', IntToStr(NSeqArquivo));
      CampoReg[18] := EscreveCampo(08, 'D', DateToStr(Date));
      CampoReg[19] := EscreveCampo(41, 'X', '');
    end
    else
    begin
      CampoReg[01] := EscreveCampo(03, 'N', IntToStr(CodBanco));
      CampoReg[02] := EscreveCampo(04, 'N', '1'); // N Lote
      CampoReg[03] := EscreveCampo(01, 'X', '1');
      CampoReg[04] := EscreveCampo(01, 'X', 'R');
      CampoReg[05] := EscreveCampo(02, 'X', '01');
      CampoReg[06] := EscreveCampo(02, 'N', '0');

      if (CodBanco = 1) then
      begin
        CampoReg[07] := EscreveCampo(03, 'X', '020');
      end
      else if (CodBanco = 104) then
      begin
        CampoReg[07] := EscreveCampo(03, 'X', '030');
      end;

      CampoReg[08] := EscreveCampo(01, 'X', '');

      if Length(RetornaNumeros(BancodeDados.ConfigCNPJ.Value)) = 11 then
        CampoReg[09] := EscreveCampo(01, 'X', '1')
      else
        CampoReg[09] := EscreveCampo(01, 'X', '2');

      CampoReg[10] := EscreveCampo(15, 'N', BancodeDados.ConfigCNPJ.AsString);

      if (CodBanco = 1) then
      begin                         
        CampoReg[11] := EscreveCampo(09, 'N', BancodeDados.BancosCONVENIO.AsString) + EscreveCampo(04, 'N', '0014') +
          EscreveCampo(02, 'N', BancodeDados.BancosCARTEIRA.AsString) + EscreveCampo(03, 'N', BancodeDados.BancosVAR_CARTEIRA.AsString) + '  ';
      end
      else if (CodBanco = 104) then
      begin
        CampoReg[11] := EscreveCampo(06, 'N', BancodeDados.BancosCODIGO_CEDENTE.Value) + EscreveCampo(14, 'N', '0');
      end;

      CampoReg[12] := EscreveCampo(05, 'N', BancodeDados.BancosAGENCIA.Value);
      CampoReg[13] := EscreveCampo(01, 'X', BancodeDados.BancosDIG_AGENCIA.Value);

      if (CodBanco = 1) then
      begin          
        CampoReg[14] := EscreveCampo(12, 'N', BancodeDados.BancosCONTA_CORRENTE.Value);
        CampoReg[15] := EscreveCampo(01, 'X', BancodeDados.BancosDIG_CONTA_CORRENTE.Value);
        CampoReg[16] := EscreveCampo(01, 'X', '');
      end
      else if (CodBanco = 104) then
      begin
        CampoReg[14] := EscreveCampo(06, 'N', BancodeDados.BancosCODIGO_CEDENTE.Value);
        CampoReg[15] := EscreveCampo(07, 'N', '0');
        CampoReg[16] := EscreveCampo(01, 'N', '0');
      end;

      CampoReg[17] := EscreveCampo(30, 'X', BancodeDados.ConfigFANTASIA.Value);

      // CampoReg[18]:=EscreveCampo(40, 'X', SubstituirString(Copy(BoletosOBS.AsString, 1, 40), #13, ' '));
      // CampoReg[19]:=EscreveCampo(40, 'X', SubstituirString(Copy(BoletosOBS.AsString, 41, 40), #13, ' '));
      CampoReg[18] := EscreveCampo(40, 'X', '');
      CampoReg[19] := EscreveCampo(40, 'X', '');

      CampoReg[20] := EscreveCampo(08, 'N', IntToStr(NSeqArquivo));
      CampoReg[21] := EscreveCampo(08, 'D', DateToStr(Date));
      CampoReg[22] := EscreveCampo(08, 'N', '0');

      CampoReg[23] := EscreveCampo(33, 'X', '');
      // CampoReg[23]:=EscreveCampo(33, 'X', '00000000001643928        CBR10811');
    end;
    Linha := '';
    for i := 1 to Length(CampoReg) do
      Linha := Linha + CampoReg[i];

    Writeln(FRem, Linha);
  end;
end;

procedure SegmentoP2;
var
  i               : integer;
  Linha           : String;
  vlJuros         : Currency;
  CampoReg: Array [1 .. 45] of String;
  vencTmp         : TDate;
  Ano, Mes, Dia   : Word;
begin



  for i := 1 to Length(CampoReg) do
    CampoReg[i] := '';

  with RemessaForm do
  begin
    inc(NSeqLote);

    if (CodBanco = 33) then
    begin
      CampoReg[01] := EscreveCampo(03, 'N', IntToStr(CodBanco)); //posição 1 a 3 | Código do banco na compensação A  (valor: 353 / 008 / 033)
      CampoReg[02] := EscreveCampo(04, 'N', '1');  //posição 4 a7  | numero de lote  |
      CampoReg[03] := EscreveCampo(01, 'N', '3');  //posição 8 | tipo de registro  | valor: 3
      CampoReg[04] := EscreveCampo(05, 'N', IntToStr(NSeqLote)); //posição: 9 - 13 | seq do registro de lote |
      CampoReg[05] := EscreveCampo(01, 'X', 'P'); // posição: 14 - 14 | código de seguimento do registro detalhe | valor: P
      CampoReg[06] := EscreveCampo(01, 'X', '');  // posição 15 a 15  | resevado ao banco: |  valor: branco
      CampoReg[07] := EscreveCampo(02, 'N', '01');// Posição: 16 a 17  | Código de movimento remessa |
      CampoReg[08] := EscreveCampo(04, 'N', BancodeDados.BancosAGENCIA.Value); // Posição: 18 a 21
      CampoReg[09] := EscreveCampo(01, 'X', BancodeDados.BancosDIG_AGENCIA.Value); // Posição: 22 a 22
      CampoReg[10] := EscreveCampo(09, 'N', BancodeDados.BancosCONTA_CORRENTE.Value); // Posição: 23 a 31
      CampoReg[11] := EscreveCampo(01, 'X', BancodeDados.BancosDIG_CONTA_CORRENTE.Value);// Posição: 32 a 32
      CampoReg[12] := EscreveCampo(09, 'N', BancodeDados.BancosCONTA_CORRENTE.Value); // Posição: 33 a 41 | conta cobrança |
      CampoReg[13] := EscreveCampo(01, 'X', BancodeDados.BancosDIG_CONTA_CORRENTE.Value); // Posição: 42 a 42
      CampoReg[14] := EscreveCampo(02, 'X', ''); // Posição: 43 a 44 | resevado ao banco | valor: deixar em branco
      CampoReg[15] := EscreveCampo(13, 'X', RetornaNumerosComDV(BoletosNOSSO_NUMERO.Value)); // Posição: 45 a 57 | identificador de título
      CampoReg[16] := EscreveCampo(01, 'X', '5'); // Posição: 58 a 58 | Tipo de cobrança
      CampoReg[17] := EscreveCampo(01, 'X', '1'); // Posição: 59 a 59 | forma de cadastramento
      CampoReg[18] := EscreveCampo(01, 'X', '1'); // Posição: 60 a 60 | tipo de docuemnto | valor: 1- tradiconal ou 2 - escritural
      CampoReg[19] := EscreveCampo(01, 'X', ''); // Posição: 61 a 61 | resevado ao banco   | valor: deixar em branco
      CampoReg[20] := EscreveCampo(01, 'X', ''); // Posição: 62 a 62 | resevado ao banco   | valor: deixar em branco
      CampoReg[21] := EscreveCampo(15, 'X', IntToStr(BoletosEMISSAO_ID.Value));
      CampoReg[22] := EscreveCampo(08, 'D', DateToStr(BoletosVENCIMENTO.Value));
      CampoReg[23] := EscreveCampo(15, 'N', FormatFloat(',0.00', BoletosVALOR_DOC.Value));
      CampoReg[24] := EscreveCampo(04, 'N', '0');
      CampoReg[25] := EscreveCampo(01, 'N', '0');
      CampoReg[26] := EscreveCampo(01, 'X', '');
      CampoReg[27] := EscreveCampo(02, 'X', '02');
      CampoReg[28] := EscreveCampo(01, 'X', 'N');

      if (BoletosEMISSAO.Value > 0) then
        CampoReg[29] := EscreveCampo(08, 'D', DateToStr(BoletosEMISSAO.Value))
      else
        CampoReg[29] := EscreveCampo(08, 'D', DateToStr(BoletosDT_PROCES.Value));

      vlJuros := 0;
      if (BancodeDados.GradeFin.Locate('GRADE_ID', BoletosGRADE_ID.Value, [])) then
      begin
        vlJuros := StrToCurr(FormatFloat('0.00', ((BoletosVALOR_DOC.Value * BancodeDados.GradeFinJUROS.Value) / 100)));
      end;

      if (vlJuros > 0) then
      begin
        if (BoletosDIAS_TOLERANCIA.Value > 0) then
        begin
          CampoReg[30] := EscreveCampo(01, 'X', '5');
        end
        else
        begin
          CampoReg[30] := EscreveCampo(01, 'X', '1');
        end;
        CampoReg[31] := EscreveCampo(08, 'D', DateToStr(BoletosVENCIMENTO.Value + BoletosDIAS_TOLERANCIA.Value));
        CampoReg[32] := EscreveCampo(15, 'N', FormatFloat(',0.00', vlJuros))
      end
      else
      begin
        CampoReg[30] := EscreveCampo(01, 'X', '3');
        CampoReg[31] := EscreveCampo(08, 'N', '0');
        CampoReg[32] := EscreveCampo(15, 'N', FormatFloat(',0.00', 0)); // JUROS
      end;

      if (BoletosDESCONTO.Value > 0) then
      begin
        CampoReg[33] := EscreveCampo(01, 'N', '1');
        CampoReg[34] := EscreveCampo(08, 'D', DateToStr(BoletosVENCIMENTO.Value + BoletosDIAS_TOLERANCIA.Value));
        CampoReg[35] := EscreveCampo(15, 'N', FormatFloat(',0.00', BoletosDESCONTO.Value)); // DESC
      end
      else
      begin
        CampoReg[33] := EscreveCampo(01, 'N', '0');
        CampoReg[34] := EscreveCampo(08, 'N', '0');
        CampoReg[35] := EscreveCampo(15, 'N', FormatFloat(',0.00', 0)); // DESC
      end;

      CampoReg[36] := EscreveCampo(15, 'N', FormatFloat(',0.00', 0)); // IOF
      CampoReg[37] := EscreveCampo(15, 'N', FormatFloat(',0.00', 0)); // ABAT
      CampoReg[38] := EscreveCampo(25, 'X', IntToStr(BoletosEMISSAO_ID.Value));

      //UTILIZANDO PROTESTO OU NAO
      if (BancodeDados.BancosDIAS_PROTESTO.Value > 0) then
      begin
        //COM PROTESTO
        CampoReg[39] := EscreveCampo(01, 'X', '1'); // PROTESTAR DIAS CORRIDOS | Cóigo para protesto
        CampoReg[40] := EscreveCampo(02, 'N', IntToStr(BancodeDados.BancosDIAS_PROTESTO.Value)); // Número de dias para protesto
      end
      else
      begin
        //SEM PROTESTO
        CampoReg[39] := EscreveCampo(01, 'X', '0'); //posição 221 a 221 | Cóigo para protesto
        CampoReg[40] := EscreveCampo(02, 'N', '0'); //posição 222 a 223 | Número de dias para protesto
      end;

      CampoReg[41] := EscreveCampo(01, 'N', '2'); //posição 224 a 224 | Código para baixar baixar/devolucao
      CampoReg[42] := EscreveCampo(01, 'N', '0'); //posição 225 a 225 | uso do banco
      CampoReg[43] := EscreveCampo(02, 'N', '00'); //posição 226 a 227 | número de dias para baixar baixar/devolucao
      CampoReg[44] := EscreveCampo(02, 'N', '00'); //posição 228 a 229 | Moeda
      CampoReg[45] := EscreveCampo(11, 'X', ''); //posição 230 a 240 | uso do banco
    end
    else
    begin
      CampoReg[01] := EscreveCampo(03, 'N', IntToStr(CodBanco));
      CampoReg[02] := EscreveCampo(04, 'N', '1');
      CampoReg[03] := EscreveCampo(01, 'N', '3');
      CampoReg[04] := EscreveCampo(05, 'N', IntToStr(NSeqLote));
      CampoReg[05] := EscreveCampo(01, 'X', 'P');
      CampoReg[06] := EscreveCampo(01, 'X', '');
      CampoReg[07] := EscreveCampo(02, 'N', '01');
      CampoReg[08] := EscreveCampo(05, 'N', BancodeDados.BancosAGENCIA.Value);
      CampoReg[09] := EscreveCampo(01, 'X', BancodeDados.BancosDIG_AGENCIA.Value);

      if (CodBanco = 1) then
      begin
        CampoReg[10] := EscreveCampo(12, 'N', BancodeDados.BancosCONTA_CORRENTE.Value);
        CampoReg[11] := EscreveCampo(01, 'X', BancodeDados.BancosDIG_CONTA_CORRENTE.Value);
        CampoReg[12] := EscreveCampo(01, 'X', '');
        CampoReg[13] := EscreveCampo(20, 'X', RetornaNumerosComDV(BoletosNOSSO_NUMERO.Value));
      end
      else if (CodBanco = 104) then
      begin
        CampoReg[10] := EscreveCampo(06, 'N', BancodeDados.BancosCODIGO_CEDENTE.Value);
        CampoReg[11] := EscreveCampo(11, 'N', '0');
        CampoReg[12] := '';
        CampoReg[13] := EscreveCampo(17, 'N', RetornaNumerosComDV(BoletosNOSSO_NUMERO.Value));
      end;

      if rgCarteira.ItemIndex = 0 then
        CampoReg[14] := EscreveCampo(01, 'N', '1')
      else
        CampoReg[14] := EscreveCampo(01, 'N', '4');

      CampoReg[15] := EscreveCampo(01, 'N', '1');
      CampoReg[16] := EscreveCampo(01, 'N', '2'); // Escritural
      CampoReg[17] := EscreveCampo(01, 'N', '2');
      CampoReg[18] := EscreveCampo(01, 'N', '0'); // Postagem pelo Cedente
      CampoReg[19] := EscreveCampo(15, 'X', IntToStr(BoletosEMISSAO_ID.Value));//posição: 63 até 77
      CampoReg[20] := EscreveCampo(08, 'D', DateToStr(BoletosVENCIMENTO.Value));//posição:  78  até 85
      CampoReg[21] := EscreveCampo(15, 'N', FormatFloat(',0.00', BoletosVALOR_DOC.Value));//posição: 86  até 100

      // CampoReg[22]:=EscreveCampo(05, 'N', BancodeDados.BancosAGENCIA.Value);
      // CampoReg[23]:=EscreveCampo(01, 'X', BancodeDados.BancosDIG_AGENCIA.Value);
      CampoReg[22] := EscreveCampo(05, 'N', '0');//posição: 101 até 105 | Agência Encarregada da Cobrança

      if (CodBanco = 1) then
        CampoReg[23] := EscreveCampo(01, 'X', ' ') else//posição: 106 até 106 | Dígito Verificador da Agência  //eraldo inclui este teste
          CampoReg[23] := EscreveCampo(01, 'N', '0');//posição: 106 até 106 | Dígito Verificador da Agência

      CampoReg[24] := EscreveCampo(02, 'N', '02');// posição: 107 até 108 | DM- Duplicata Mercantil
      CampoReg[25] := EscreveCampo(01, 'X', 'A'); //posição: 109 | Identific. de Título Aceito/Não Aceito
      CampoReg[26] := EscreveCampo(08, 'D', DateToStr(BoletosEMISSAO.Value)); //posição: 110 ate 117 | Data da Emissão do Título
      CampoReg[27] := EscreveCampo(01, 'X', '1'); // Juros por dia

        bancodeDados.GradeFin.close;
        bancodeDados.GradeFin.SQL.text:='select * from GRADE_FINANCEIRA where GRADE_ID = '+IntToStr(BoletosGRADE_ID.Value);
        bancodeDados.GradeFin.open;


      //JUROS Não há carência de juros. //posição: 119 ate 126 >>> eraldo incluiu teste teste, pois a data de cobranca de juros da CEF nao poder ser igual a vancimento
      if (CodBanco in [1]) then begin
        if BancodeDados.GradeFinJUROS.Value>0 then     //eraldo
        CampoReg[28] := EscreveCampo(08, 'D', DateToStr(BoletosVENCIMENTO.Value + 1)) else //ATENÇÃO, caso a informação seja inválida ou não informada, o sistema assumirá data igual à Data de Vencimento + 1
        CampoReg[28] := EscreveCampo(08, 'N', '0');
      end else
      if BoletosDIAS_TOLERANCIA.Value>0 then begin //Preencher com a data indicativa do início  da cobrança de Juros de Mora, no formato DDMMAAAA (Dia, Mês e Ano), devendo ser maior que a Data de Vencimento;
          CampoReg[28] := EscreveCampo(08, 'D', DateToStr(BoletosVENCIMENTO.Value + BoletosDIAS_TOLERANCIA.Value))
      end else
          CampoReg[28] := EscreveCampo(08, 'D', DateToStr(BoletosVENCIMENTO.Value + 1)); //ATENÇÃO, caso a informação seja inválida ou não informada, o sistema assumirá data igual à Data de Vencimento + 1


        if BancodeDados.GradeFinJUROS.Value>0 then //Juros de Mora por Dia/Taxa, posição: 127 até 141
          CampoReg[29] := EscreveCampo(15, 'N', FormatFloat(',0.00', (BoletosVALOR_DOC.Value * BancodeDados.GradeFinJUROS.Value) / 100))
        else
          CampoReg[29] := EscreveCampo(15, 'N', FormatFloat(',0.00', 0)); // JUROS


      if (BoletosDESCONTO.Value > 0) then
      begin

        if BancodeDados.ConfigTIPO_BOLETO.value=2 then begin
          DecodeDate(BoletosVENCIMENTO.Value, Ano, Mes, Dia);
          vencTmp := EncodeDate(Ano, Mes, BancodeDados.BancosDESC_TOL.Value);
          CampoReg[30] := EscreveCampo(01, 'N', '1');
          CampoReg[31] := EscreveCampo(08, 'D', DateToStr(vencTmp));
          CampoReg[32] := EscreveCampo(15, 'N', FormatFloat(',0.00', BoletosDESCONTO.Value)); // DESC
        end else begin
          CampoReg[30] := EscreveCampo(01, 'N', '1');
          CampoReg[31] := EscreveCampo(08, 'D', DateToStr(BoletosVENCIMENTO.Value + BoletosDIAS_TOLERANCIA.Value));
          CampoReg[32] := EscreveCampo(15, 'N', FormatFloat(',0.00', BoletosDESCONTO.Value)); // DESC
        end;//bancodedados.ConfigTIPO_BOLETO.value=2

      end
      else
      begin
        CampoReg[30] := EscreveCampo(01, 'N', '0');
        CampoReg[31] := EscreveCampo(08, 'N', '0');
        CampoReg[32] := EscreveCampo(15, 'N', FormatFloat(',0.00', 0)); // DESC
      end;


      CampoReg[33] := EscreveCampo(15, 'N', FormatFloat(',0.00', 0)); // IOF
      CampoReg[34] := EscreveCampo(15, 'N', FormatFloat(',0.00', 0)); // ABAT
      CampoReg[35] := EscreveCampo(25, 'X', IntToStr(BoletosEMISSAO_ID.Value));

      if (BancodeDados.BancosDIAS_PROTESTO.Value > 0) then
      begin
        CampoReg[36] := EscreveCampo(01, 'X', '1'); // PROTESTAR DIAS CORRIDOS
        CampoReg[37] := EscreveCampo(02, 'N', IntToStr(BancodeDados.BancosDIAS_PROTESTO.Value));
      end
      else
      begin
        CampoReg[36] := EscreveCampo(01, 'X', '3'); // NAO PROTESTAR
        CampoReg[37] := EscreveCampo(02, 'N', '0');
      end;

      //ta sendo usado pelo Olimpo marista, tem q criar config
      CampoReg[38] := EscreveCampo(01, 'N', '1');//Código p/ Baixa/Devolução
      CampoReg[39] := EscreveCampo(03, 'N', '10'); //Número de Dias para Baixa/Devolução


      CampoReg[40] := EscreveCampo(02, 'N', '9');

      if (CodBanco = 1) then
      begin       //coluna: 34
      //if BancodeDados.BancosCONTRATO.Value>0 then
        CampoReg[41] := EscreveCampo(10, 'N', BancodeDados.BancosCONTRATO.AsString); //posição: 230 ATE 239 | Campo não tratado pelo sistema. Pode ser informado 'zeros' ou o número do contrato de cobrança
      end
      else if (CodBanco = 104) then
      begin
        CampoReg[41] := EscreveCampo(10, 'N', '0');
      end;

      CampoReg[42] := EscreveCampo(01, 'X', ''); //posição: 240 | Informar 'brancos' (espaços).
    end;

    Linha := '';
    for i := 1 to Length(CampoReg) do
      Linha := Linha + CampoReg[i];

    Writeln(FRem, Linha);
  end;
end;

procedure SegmentoQ2;
var
  i: integer;
  Linha, CPFSacado, NomeSacado: String;
  CampoReg: Array [1 .. 23] of String;
begin
  for i := 1 to Length(CampoReg) do
    CampoReg[i] := '';

  with RemessaForm do
  begin

    inc(NSeqLote);

    if (BoletosFORNE_ID.Value > 0) then
    begin
      qryPesq.Close;
      qryPesq.SQL.Text := 'select NOME, END_ID, NUMERO, CNPJ from FORNECEDORES where FORNE_ID = ' + IntToStr(BoletosFORNE_ID.Value);
      qryPesq.Open;
      CPFSacado   := TestaCPFCNPJ(qryPesq.Fields[3].AsString, false);
      CPFSacado   := RetornaNumeros(CPFSacado);
      NomeSacado  := qryPesq.FieldByName('NOME').AsString;
    end
    else
    begin

      qryPesq.Close;
      qryPesq.SQL.Text := 'select NOME, FANTASIA, CNPJ, LOGRADOURO, BAIRRO, CIDADE, ESTADO as UF, CEP from CLIENTES where CLI_ID= ' + IntToStr(BoletosCLI_ID.Value);
      qryPesq.Open;

      CPFSacado   := TestaCPFCNPJ(BoletosCLI_CNPJ_CPF.Value, false);
      CPFSacado   := RetornaNumeros(CPFSacado);
      NomeSacado  := qryPesq.FieldByName('NOME').AsString; //qryPesq.Fields[0].AsString;
    end;

    //qryEnd.Close;
    //qryEnd.SQL.Text := 'select * from enderecos where end_id = ' + IntToStr(qryPesq.Fields[1].AsInteger);
    //qryEnd.Open;

    if (CodBanco = 33) then
    begin
      CampoReg[01] := EscreveCampo(03, 'N', IntToStr(CodBanco));
      CampoReg[02] := EscreveCampo(04, 'N', '1');
      CampoReg[03] := EscreveCampo(01, 'N', '3');
      CampoReg[04] := EscreveCampo(05, 'N', IntToStr(NSeqLote));
      CampoReg[05] := EscreveCampo(01, 'X', 'Q');
      CampoReg[06] := EscreveCampo(01, 'X', '');
      CampoReg[07] := EscreveCampo(02, 'N', '01');

      if Length(CPFSacado) = 11 then
        CampoReg[08] := EscreveCampo(01, 'X', '1')
      else
        CampoReg[08] := EscreveCampo(01, 'X', '2');

      CampoReg[09] := EscreveCampo(15, 'N', CPFSacado);
      CampoReg[10] := EscreveCampo(40, 'X', NomeSacado);

      CampoReg[11] := EscreveCampo(40, 'X', qryPesq.FieldByName('LOGRADOURO').AsString);
      CampoReg[12] := EscreveCampo(15, 'X', qryPesq.FieldByName('BAIRRO').AsString);
      CampoReg[13] := EscreveCampo(08, 'N', qryPesq.FieldByName('CEP').AsString);
      CampoReg[14] := EscreveCampo(15, 'X', qryPesq.FieldByName('CIDADE').AsString);
      CampoReg[15] := EscreveCampo(02, 'X', qryPesq.FieldByName('UF').AsString);

      CampoReg[16] := EscreveCampo(01, 'N', '0');
      CampoReg[17] := EscreveCampo(15, 'N', '0');
      CampoReg[18] := EscreveCampo(40, 'X', '');
      CampoReg[19] := EscreveCampo(03, 'N', '0');
      CampoReg[20] := EscreveCampo(03, 'N', '0');
      CampoReg[21] := EscreveCampo(03, 'N', '0');
      CampoReg[22] := EscreveCampo(03, 'N', '0');
      CampoReg[23] := EscreveCampo(19, 'X', '');
    end
    else
    begin
      CampoReg[01] := EscreveCampo(03, 'N', IntToStr(CodBanco));
      CampoReg[02] := EscreveCampo(04, 'N', '1');
      CampoReg[03] := EscreveCampo(01, 'N', '3');
      CampoReg[04] := EscreveCampo(05, 'N', IntToStr(NSeqLote));
      CampoReg[05] := EscreveCampo(01, 'X', 'Q');
      CampoReg[06] := EscreveCampo(01, 'X', '');
      CampoReg[07] := EscreveCampo(02, 'N', '01');

      if Length(CPFSacado) = 11 then
        CampoReg[08] := EscreveCampo(01, 'X', '1')
      else
        CampoReg[08] := EscreveCampo(01, 'X', '2');

      CampoReg[09] := EscreveCampo(15, 'N', CPFSacado);
      CampoReg[10] := EscreveCampo(40, 'X', NomeSacado);
      CampoReg[11] := EscreveCampo(40, 'X', qryPesq.FieldByName('LOGRADOURO').AsString);
      CampoReg[12] := EscreveCampo(15, 'X', qryPesq.FieldByName('BAIRRO').AsString);
      CampoReg[13] := EscreveCampo(08, 'N', qryPesq.FieldByName('CEP').AsString);
      CampoReg[14] := EscreveCampo(15, 'X', qryPesq.FieldByName('CIDADE').AsString);
      CampoReg[15] := EscreveCampo(02, 'X', qryPesq.FieldByName('UF').AsString);

      CampoReg[16] := EscreveCampo(01, 'X', '0');
      CampoReg[17] := EscreveCampo(15, 'N', '0');
      CampoReg[18] := EscreveCampo(40, 'X', '');

      if (CodBanco = 1) then
      begin
        CampoReg[19] := EscreveCampo(03, 'N', '0');
      end
      else
      if (CodBanco = 104) then
      begin
        CampoReg[19] := EscreveCampo(03, 'X', '');
      end;

      CampoReg[20] := EscreveCampo(28, 'X', '');
    end;

    Linha := '';
    for i := 1 to Length(CampoReg) do
      Linha := Linha + CampoReg[i];

    Writeln(FRem, Linha);
  end;
end;

procedure SegmentoR2;
var
  i: integer;
  Linha: String;
  CampoReg: Array [1 .. 24] of String;
begin
  for i := 1 to Length(CampoReg) do
    CampoReg[i] := '';

  with RemessaForm do
  begin
    inc(NSeqLote);

    if (CodBanco = 33) then
    begin
      CampoReg[01] := EscreveCampo(03, 'N', IntToStr(CodBanco));
      CampoReg[02] := EscreveCampo(04, 'N', '1');
      CampoReg[03] := EscreveCampo(01, 'N', '3');
      CampoReg[04] := EscreveCampo(05, 'N', IntToStr(NSeqLote));  //seq de lote
      CampoReg[05] := EscreveCampo(01, 'X', 'R');                 //registro detalhe
      CampoReg[06] := EscreveCampo(01, 'X', '');                  //exclusivo cnab
      CampoReg[07] := EscreveCampo(02, 'N', '01');                //movimento remessa
      CampoReg[08] := EscreveCampo(01, 'N', '0');
      CampoReg[09] := EscreveCampo(08, 'N', '0');
      CampoReg[10] := EscreveCampo(15, 'N', FormatFloat(',0.00', 0)); // DESC
      CampoReg[11] := EscreveCampo(24, 'X', '');


      bancodeDados.GradeFin.close;
      bancodeDados.GradeFin.SQL.text:='select * from GRADE_FINANCEIRA where GRADE_ID = '+IntToStr(BoletosGRADE_ID.Value);
      bancodeDados.GradeFin.open;

      if not BancodeDados.GradeFin.IsEmpty then
      begin
        CampoReg[12] := EscreveCampo(01, 'N', '1');
        CampoReg[13] := EscreveCampo(08, 'D', DateToStr(BoletosVENCIMENTO.Value + BoletosDIAS_TOLERANCIA.Value));
        CampoReg[14] := EscreveCampo(15, 'N', FormatFloat(',0.00', (BoletosVALOR_DOC.Value * BancodeDados.GradeFinMULTA.Value) / 100));
      end
      else
      begin
        CampoReg[12] := EscreveCampo(01, 'N', '1');
        CampoReg[13] := EscreveCampo(08, 'D', DateToStr(BoletosVENCIMENTO.Value));
        CampoReg[14] := EscreveCampo(15, 'N', FormatFloat(',0.00', 0)); // MULTA
      end;

      CampoReg[15] := EscreveCampo(10, 'X', '');
      CampoReg[16] := EscreveCampo(40, 'X', '');
      CampoReg[17] := EscreveCampo(40, 'X', '');
      CampoReg[18] := EscreveCampo(61, 'X', '');
    end
    else
    begin
      CampoReg[01] := EscreveCampo(03, 'N', IntToStr(CodBanco));
      CampoReg[02] := EscreveCampo(04, 'N', '1');
      CampoReg[03] := EscreveCampo(01, 'N', '3');
      CampoReg[04] := EscreveCampo(05, 'N', IntToStr(NSeqLote)); //seq registro lote
      CampoReg[05] := EscreveCampo(01, 'X', 'R'); //registro detalhe
      CampoReg[06] := EscreveCampo(01, 'X', ''); //exclusivo cnab
      CampoReg[07] := EscreveCampo(02, 'N', '01'); //movimento remessa

      if (CodBanco = 1) then
      begin
        CampoReg[08] := EscreveCampo(01, 'N', '0');
        CampoReg[09] := EscreveCampo(08, 'N', '0');
        CampoReg[10] := EscreveCampo(15, 'N', FormatFloat(',0.00', 0)); // DESC
        CampoReg[11] := EscreveCampo(01, 'N', '0');
        CampoReg[12] := EscreveCampo(08, 'N', '0');
        CampoReg[13] := EscreveCampo(15, 'N', FormatFloat(',0.00', 0)); // DESC
      end
      else if (CodBanco = 104) then
      begin
        CampoReg[08] := EscreveCampo(01, 'N', '');
        CampoReg[09] := EscreveCampo(08, 'N', '');
        CampoReg[10] := EscreveCampo(15, 'N', '');
        CampoReg[11] := EscreveCampo(01, 'N', '');
        CampoReg[12] := EscreveCampo(08, 'N', '');
        CampoReg[13] := EscreveCampo(15, 'N', '');
      end;


      bancodeDados.GradeFin.close;
      bancodeDados.GradeFin.SQL.text:='select * from GRADE_FINANCEIRA where GRADE_ID = '+IntToStr(BoletosGRADE_ID.Value);
      bancodeDados.GradeFin.open;

      //MULTA
      if BancodeDados.GradeFinMULTA.Value>0 then //eraldo trocou este teste em 29/03/16
      begin
        CampoReg[14] := EscreveCampo(01, 'N', '1');
        CampoReg[15] := EscreveCampo(08, 'D', DateToStr(BoletosVENCIMENTO.Value + BoletosDIAS_TOLERANCIA.Value));
        CampoReg[16] := EscreveCampo(15, 'N', FormatFloat(',0.00', (BoletosVALOR_DOC.Value * BancodeDados.GradeFinMULTA.Value) / 100));
      end
      else //caso o campo multa não esta preenchido
      begin

        if (CodBanco in [1]) then
        begin //em 29/03/16
          CampoReg[14] := EscreveCampo(01, 'N', '0'); // posição 66 a 66 | Informamos que em caso de cobrança de multa, esta percentual/valor é fixo, sendo cobrado apenas uma única vez. Caso não tenha multa, informar '0' (zero).
          //CampoReg[15] := EscreveCampo(08, 'N', '0');  //posição: 67 à 74 | Caso não tenha multa, informar 'zeros'. Sistema aceita a mesma data do vencimento, ou dia seguinte.
          CampoReg[15] := EscreveCampo(08, 'D', DateToStr(BoletosVENCIMENTO.Value + BoletosDIAS_TOLERANCIA.Value)); //Eraldo em 11/08/16
          CampoReg[16] := EscreveCampo(15, 'N', FormatFloat(',0.00', 0)); //posição: 75 à 89 | Caso não tenha multa, informar 'zeros'.
        end
        else
        begin
          CampoReg[14] := EscreveCampo(01, 'N', '1'); // posição 66 a 66 |
          CampoReg[15] := EscreveCampo(08, 'D', DateToStr(BoletosVENCIMENTO.Value)); //posição: 67 à 74 |
          CampoReg[16] := EscreveCampo(15, 'N', FormatFloat(',0.00', 0)); //posição: 75 à 89
        end;
      end; //caso o campo multa não esta preenchido

      CampoReg[17] := EscreveCampo(10, 'X', '');
      CampoReg[18] := EscreveCampo(40, 'X', '');
      CampoReg[19] := EscreveCampo(40, 'X', '');

      // CampoReg[20]:=EscreveCampo(03, 'N', IntToStr(BancodeDados.BancosCODIGO_BANCO.Value));
      // CampoReg[21]:=EscreveCampo(04, 'N', BancodeDados.BancosAGENCIA.Value);
      // CampoReg[22]:=EscreveCampo(13, 'N', BancodeDados.BancosCONTA_CORRENTE.Value);

      if (CodBanco = 1) then
      begin
        CampoReg[20] := EscreveCampo(03, 'N', '0');
        CampoReg[21] := EscreveCampo(04, 'N', '0');
        CampoReg[22] := EscreveCampo(13, 'N', '0');
        CampoReg[23] := EscreveCampo(08, 'N', '0');
      end
      else if (CodBanco = 104) then
      begin
        CampoReg[20] := EscreveCampo(03, 'X', '');
        CampoReg[21] := EscreveCampo(04, 'X', '');
        CampoReg[22] := EscreveCampo(13, 'X', '');
        CampoReg[23] := EscreveCampo(08, 'X', '');
      end;

      CampoReg[24] := EscreveCampo(33, 'X', '');
    end;

    Linha := '';
    for i := 1 to Length(CampoReg) do
      Linha := Linha + CampoReg[i];

    Writeln(FRem, Linha);
  end;
end;

procedure TrailerLote2;
var
  i: integer;
  Linha: String;
  CampoReg: Array [1 .. 17] of String;
begin
  for i := 1 to Length(CampoReg) do
    CampoReg[i] := '';

  with RemessaForm do
  begin
    if (CodBanco = 33) then
    begin
      CampoReg[01] := EscreveCampo(03, 'N', IntToStr(CodBanco));
      CampoReg[02] := EscreveCampo(04, 'N', '1');
      CampoReg[03] := EscreveCampo(01, 'N', '5');
      CampoReg[04] := EscreveCampo(09, 'X', '');
      CampoReg[05] := EscreveCampo(06, 'N', IntToStr(NSeqLote + 2));
      CampoReg[06] := EscreveCampo(217, 'X', '');
    end
    else
    begin
      CampoReg[01] := EscreveCampo(03, 'N', IntToStr(CodBanco));
      CampoReg[02] := EscreveCampo(04, 'N', '1');
      CampoReg[03] := EscreveCampo(01, 'N', '5');
      CampoReg[04] := EscreveCampo(09, 'X', '');
      CampoReg[05] := EscreveCampo(06, 'N', IntToStr(NSeqLote + 2));
      CampoReg[06] := EscreveCampo(06, 'N', IntToStr(Boletos.RecordCount));
      CampoReg[07] := EscreveCampo(17, 'N', FormatFloat(',0.00', vlIntTmp));
      CampoReg[08] := EscreveCampo(06, 'N', IntToStr(0));
      CampoReg[09] := EscreveCampo(17, 'N', FormatFloat(',0.00', 0));
      CampoReg[10] := EscreveCampo(06, 'N', IntToStr(0));
      CampoReg[11] := EscreveCampo(17, 'N', FormatFloat(',0.00', 0));


      if (CodBanco = 1) then
      begin
        CampoReg[12] := EscreveCampo(06, 'N', IntToStr(0));
        CampoReg[13] := EscreveCampo(17, 'N', FormatFloat(',0.00', 0));
        CampoReg[14] := EscreveCampo(08, 'N', FormatFloat(',0.00', 0));
        CampoReg[15] := EscreveCampo(117, 'X', '');
      end
      else
      if (CodBanco = 104) then
      begin
        CampoReg[12] := EscreveCampo(31, 'X', '');
        CampoReg[13] := EscreveCampo(117, 'X', '');
      end;
    end;

    Linha := '';
    for i := 1 to Length(CampoReg) do
      Linha := Linha + CampoReg[i];

    Writeln(FRem, Linha);
  end;
end;

procedure TrailerArquivo2;
var
  i: integer;
  Linha: String;
  CampoReg: Array [1 .. 8] of String;
begin
  for i := 1 to Length(CampoReg) do
    CampoReg[i] := '';

  with RemessaForm do
  begin
     
    if (CodBanco = 33) then
    begin
      CampoReg[01] := EscreveCampo(03, 'N', IntToStr(CodBanco));
      CampoReg[02] := EscreveCampo(04, 'N', '9999');
      CampoReg[03] := EscreveCampo(01, 'N', '9');
      CampoReg[04] := EscreveCampo(09, 'X', '');
      CampoReg[05] := EscreveCampo(06, 'N', '1');
      CampoReg[06] := EscreveCampo(06, 'N', IntToStr(NSeqLote + 4));
      CampoReg[07] := EscreveCampo(211, 'X', '');
    end
    else
    begin
      CampoReg[01] := EscreveCampo(03, 'N', IntToStr(CodBanco));
      CampoReg[02] := EscreveCampo(04, 'N', '9999');
      CampoReg[03] := EscreveCampo(01, 'N', '9');
      CampoReg[04] := EscreveCampo(09, 'X', '');
      CampoReg[05] := EscreveCampo(06, 'N', IntToStr(1));
      CampoReg[06] := EscreveCampo(06, 'N', IntToStr(NSeqLote + 4));

      if (CodBanco = 1) then
      begin
        CampoReg[07] := EscreveCampo(06, 'N', IntToStr(0));
      end
      else if (CodBanco = 104) then
      begin
        CampoReg[07] := EscreveCampo(06, 'X', '');
      end;

      CampoReg[08] := EscreveCampo(205, 'X', '');
    end;

    Linha := '';
    for i := 1 to Length(CampoReg) do
      Linha := Linha + CampoReg[i];

    Writeln(FRem, Linha);
  end;
end;

procedure Header400;
var
  i: integer;
  Linha: String;
  CampoReg: Array [1 .. 20] of String;
begin
  for i := 1 to Length(CampoReg) do
    CampoReg[i] := '';

  with RemessaForm do
  begin
    inc(NSeqReg);
         //(RetornaNumeros(BancodeDados.BancosCONTA_CORRENTE.AsString) + RetornaNumeros(BancodeDados.BancosDIG_CONTA_CORRENTE.AsString));
    if (CodBanco = 104) then  //Caixa Econômica Federal
    begin
      CampoReg[01] := EscreveCampo(01, 'N', '0','0'); //001 a 001 > A identicação do header deve ser “0”(zero)
      CampoReg[02] := EscreveCampo(01, 'N', '1'); //002 a 002 > A identificação do arquivo de remessa deve ser "1"
      CampoReg[03] := EscreveCampo(07, 'X', 'REMESSA'); //003 a 009 > “REMESSA”
      CampoReg[04] := EscreveCampo(02, 'N', '01'); //010 a 011 > O código de serviço de cobrança é “01”
      CampoReg[05] := EscreveCampo(15, 'X', 'COBRANCA');//012 a 026 > “COBRANCA”
      CampoReg[06] := EscreveCampo(04, 'N', BancodeDados.BancosAGENCIA.Value + BancodeDados.BancosDIG_AGENCIA.Value); //027 a 030 > Código do beneficiário
      CampoReg[07] := EscreveCampo(06, 'N', RetornaNumeros(BancodeDados.BancosCONTA_CORRENTE.AsString) + RetornaNumeros(BancodeDados.BancosDIG_CONTA_CORRENTE.AsString));
      CampoReg[08] := EscreveCampo(10, 'X', ''); //37 a 46 > Preencher espaços
      CampoReg[09] := EscreveCampo(30, 'X', BancodeDados.ConfigNOME.Value); //47 a 76 >> Preencher com o Nome da Empresa
      CampoReg[10] := EscreveCampo(03, 'N', IntToStr(CodBanco));//077 a 079 > Número do banco
      CampoReg[11] := EscreveCampo(15, 'X', 'C ECON FEDERAL'); //080 a 094  > Preencher 'C ECON FEDERAL'
      CampoReg[12] := EscreveCampo(06, 'X', RetornaNumeros(FormatDateTime('dd/mm/yy',Date)) ); //95 a 100 > Preencher com a data da criação do arquivo, no formato DDMMAA
      CampoReg[13] := EscreveCampo(289, 'X', '');//101 a 389 > Preencher espaços
      CampoReg[14] := EscreveCampo(05, 'N', FormatFloat('00000',NSeqArquivo)); //390 a 394 >  iniciar a partir de ‘00001’' e evoluir de 1 em 1 para cada Header de Arquivo
      CampoReg[15] := EscreveCampo(06, 'N', FormatFloat('000000',NSeqReg));//395 400 > Alinhado à direita e zeros à esquerda;
    end
    else
    if (CodBanco = 748) then  //Sicredi e UNICRED
    begin
      CampoReg[01] := EscreveCampo(01, 'N', '0'); //001 a 001 > A identicação do header deve ser “0”(zero)
      CampoReg[02] := EscreveCampo(01, 'N', '1'); //002 a 002 > A identificação do arquivo de remessa deve ser "1"
      CampoReg[03] := EscreveCampo(07, 'X', 'REMESSA'); //003 a 009 > “REMESSA”
      CampoReg[04] := EscreveCampo(02, 'N', '01'); //010 a 011 > O código de serviço de cobrança é “01”
      CampoReg[05] := EscreveCampo(15, 'X', 'COBRANCA');//012 a 026 > “COBRANCA”
      CampoReg[06] := EscreveCampo(05, 'N', BancodeDados.BancosCODIGO_CEDENTE.AsString); //027 a 031 > Código do beneficiário
      CampoReg[07] := EscreveCampo(14, 'N', RetornaNumeros(BancodeDados.ConfigCNPJ.Value));//032 a 045 > Informar CPF/CNPJ do beneficiário. Alinhado à direita e zeros à esquerda;
      CampoReg[08] := EscreveCampo(31, 'X', '');//046 a 076 > Deixar em Brancos (sem preenchimento)
      CampoReg[09] := EscreveCampo(03, 'N', IntToStr(CodBanco));//077 a 079 > Número do Sicredi
      CampoReg[10] := EscreveCampo(15, 'X', 'SICREDI'); //080 a 094  > Literal Sicredi
      CampoReg[11] := EscreveCampo(08, 'X', RetornaNumeros(FormatDateTime('yyyy/mm/dd',Date)) ); //095 a 102 > O Formato da data de geração do arquivo deve  estar no padrão: AAAAMMDD
      CampoReg[12] := EscreveCampo(08, 'X', '');//103 a 110 > Deixar em Branco (sem preenchimento)
      CampoReg[13] := EscreveCampo(07, 'N', IntToStr(NSeqArquivo)); //111 a 117 > Deve ser maior que zero: número do último arquivo remessa + 1;
      CampoReg[14] := EscreveCampo(273,'X', ''); //118 a 390 >  Deixar em Branco (sem preenchimento)
      CampoReg[15] := EscreveCampo(04, 'X', '2.00');//391 a 394  > 2.00 (o ponto deve ser colocado)
      CampoReg[16] := EscreveCampo(06, 'N', FormatFloat('000000',NSeqReg));//395 a 400 > Alinhado à direita e zeros à esquerda;
    end
    else                                                       
    if (CodBanco = 237) then  //Banco Bradesco S.A.
    begin
      CampoReg[01] := EscreveCampo(01, 'N', '0');
      CampoReg[02] := EscreveCampo(01, 'N', '1');
      CampoReg[03] := EscreveCampo(07, 'X', 'REMESSA');
      CampoReg[04] := EscreveCampo(02, 'N', '01');
      CampoReg[05] := EscreveCampo(15, 'X', 'COBRANCA');
      CampoReg[06] := EscreveCampo(20, 'N', BancodeDados.BancosCONVENIO.AsString);
      CampoReg[07] := EscreveCampo(30, 'X', BancodeDados.ConfigNOME.Value);
      CampoReg[08] := EscreveCampo(03, 'N', IntToStr(CodBanco));
      CampoReg[09] := EscreveCampo(15, 'X', BancodeDados.BancosBANCO_NOME.Value);
      CampoReg[10] := EscreveCampo(06, 'D2', DateToStr(Date));
      CampoReg[11] := EscreveCampo(08, 'X', '');
      CampoReg[12] := EscreveCampo(02, 'X', 'MX');
      CampoReg[13] := EscreveCampo(07, 'N', IntToStr(NSeqArquivo));
      CampoReg[14] := EscreveCampo(277, 'X', '');
      CampoReg[15] := EscreveCampo(06, 'N', IntToStr(NSeqReg));
    end
    else if (CodBanco = 341) then //Itaú Unibanco S.A.
    begin
      CampoReg[01] := EscreveCampo(01, 'N', '0');
      CampoReg[02] := EscreveCampo(01, 'N', '1');
      CampoReg[03] := EscreveCampo(07, 'X', 'REMESSA');
      CampoReg[04] := EscreveCampo(02, 'N', '01');
      CampoReg[05] := EscreveCampo(15, 'X', 'COBRANCA');
      CampoReg[06] := EscreveCampo(04, 'N', BancodeDados.BancosAGENCIA.Value) + EscreveCampo(02, 'N', '0') +
        EscreveCampo(05, 'N', BancodeDados.BancosCONTA_CORRENTE.Value) + EscreveCampo(01, 'N', BancodeDados.BancosDIG_CONTA_CORRENTE.Value) +
        EscreveCampo(08, 'X', '');
      CampoReg[07] := EscreveCampo(30, 'X', BancodeDados.ConfigNOME.Value);
      CampoReg[08] := EscreveCampo(03, 'N', IntToStr(CodBanco));
      CampoReg[09] := EscreveCampo(15, 'X', BancodeDados.BancosBANCO_NOME.Value);
      CampoReg[10] := EscreveCampo(06, 'D2', DateToStr(Date));
      CampoReg[11] := EscreveCampo(294, 'X', '');
      CampoReg[12] := '';
      CampoReg[13] := '';
      CampoReg[14] := '';
      CampoReg[15] := EscreveCampo(06, 'N', IntToStr(NSeqReg));
    end
    else

      if (CodBanco = 399) then // HSBC Bank Brasil S.A. - Banco Múltiplo
    begin
      CampoReg[01] := EscreveCampo(01, 'N', '0');
      CampoReg[02] := EscreveCampo(01, 'N', '1');
      CampoReg[03] := EscreveCampo(07, 'X', 'REMESSA');
      CampoReg[04] := EscreveCampo(02, 'N', '01');
      CampoReg[05] := EscreveCampo(15, 'X', 'COBRANCA');
      CampoReg[06] := EscreveCampo(01, 'N', '0');
      CampoReg[07] := EscreveCampo(04, 'N', BancodeDados.BancosAGENCIA.Value);
      CampoReg[08] := EscreveCampo(02, 'N', '55');
      CampoReg[09] := EscreveCampo(04, 'N', BancodeDados.BancosAGENCIA.Value) +
        EscreveCampo(07, 'N', BancodeDados.BancosCONTA_CORRENTE.Value + BancodeDados.BancosDIG_CONTA_CORRENTE.Value);
      CampoReg[10] := EscreveCampo(02, 'X', '');
      CampoReg[11] := EscreveCampo(30, 'X', BancodeDados.ConfigNOME.Value);
      CampoReg[12] := EscreveCampo(03, 'N', IntToStr(CodBanco));
      CampoReg[13] := EscreveCampo(15, 'X', 'HSBC');
      CampoReg[14] := EscreveCampo(06, 'D2', DateToStr(Date));
      CampoReg[15] := EscreveCampo(05, 'N', '01600');
      CampoReg[16] := EscreveCampo(03, 'X', 'BPI');
      CampoReg[17] := EscreveCampo(02, 'X', '');
      CampoReg[18] := EscreveCampo(07, 'X', 'LANCV08');
      CampoReg[19] := EscreveCampo(277, 'X', '');
      CampoReg[20] := EscreveCampo(06, 'N', IntToStr(NSeqReg));
    end
    else

      if (CodBanco = 070) then //BRB - Banco de Brasília S.A.
    begin
      CampoReg[01] := EscreveCampo(03, 'X', 'DCB');
      CampoReg[02] := EscreveCampo(03, 'N', '001');
      CampoReg[03] := EscreveCampo(03, 'N', '075');
      CampoReg[04] := EscreveCampo(03, 'N', BancodeDados.BancosAGENCIA.Value);
      CampoReg[05] := EscreveCampo(07, 'N', BancodeDados.BancosCONTA_CORRENTE.Value + BancodeDados.BancosDIG_CONTA_CORRENTE.Value);
      CampoReg[06] := EscreveCampo(08, 'D3', DateToStr(Date));
      CampoReg[07] := EscreveCampo(06, 'H', TimeToStr(Time));
      CampoReg[08] := EscreveCampo(06, 'N', IntToStr(Boletos.RecordCount + 1));
    end
    else

      if (CodBanco = 320) then //Banco Industrial e Comercial S.A.
    begin
      CampoReg[01] := EscreveCampo(01, 'N', '0');
      CampoReg[02] := EscreveCampo(01, 'N', '1');
      CampoReg[03] := EscreveCampo(07, 'X', 'REMESSA');
      CampoReg[04] := EscreveCampo(02, 'N', '02');
      CampoReg[05] := EscreveCampo(15, 'X', 'COBRANCA');
      CampoReg[06] := EscreveCampo(10, 'N', FormatFloat('000', BancodeDados.BancosTIPO_CONTA_CORRENTE.Value) + FormatFloat('000000',
        BancodeDados.BancosCONTA_CORRENTE.AsInteger) + BancodeDados.BancosDIG_CONTA_CORRENTE.Value);
      CampoReg[07] := EscreveCampo(07, 'X', '');
      CampoReg[08] := EscreveCampo(03, 'N', BancodeDados.BancosAGENCIA.Value);
      CampoReg[09] := EscreveCampo(30, 'X', BancodeDados.ConfigNOME.Value);
      CampoReg[10] := EscreveCampo(03, 'N', IntToStr(CodBanco));
      CampoReg[11] := EscreveCampo(15, 'X', 'BICBANCO');
      CampoReg[12] := EscreveCampo(06, 'D2', DateToStr(Date));
      CampoReg[13] := EscreveCampo(05, 'N', '01600');
      CampoReg[14] := EscreveCampo(03, 'X', 'BPI');
      CampoReg[15] := EscreveCampo(07, 'N', IntToStr(NSeqArquivo));
      CampoReg[16] := EscreveCampo(279, 'X', '');
      CampoReg[17] := EscreveCampo(06, 'N', IntToStr(NSeqReg));
    end
    else

    if (CodBanco = 707) then // Banco Daycoval S.A.
    begin
      CampoReg[01] := EscreveCampo(01, 'N', '0');
      CampoReg[02] := EscreveCampo(01, 'N', '1');
      CampoReg[03] := EscreveCampo(07, 'X', 'REMESSA');
      CampoReg[04] := EscreveCampo(02, 'N', '01');
      CampoReg[05] := EscreveCampo(15, 'X', 'COBRANCA');
      CampoReg[06] := EscreveCampo(20, 'X', BancodeDados.BancosCODIGO_CEDENTE.Value);
      CampoReg[07] := EscreveCampo(30, 'X', BancodeDados.ConfigNOME.Value);
      CampoReg[08] := EscreveCampo(03, 'N', IntToStr(CodBanco));
      CampoReg[09] := EscreveCampo(15, 'X', 'BANCO DAYCOVAL');
      CampoReg[10] := EscreveCampo(06, 'D2', DateToStr(Date));
      CampoReg[11] := EscreveCampo(294, 'X', '');
      CampoReg[12] := EscreveCampo(06, 'N', IntToStr(NSeqReg));
    end
    else

      if (CodBanco = 356) then  // Banco Real S.A.
    begin
      CampoReg[01] := EscreveCampo(01, 'N', '0');
      CampoReg[02] := EscreveCampo(25, 'X', '1REMESSA01COBRANCA');
      CampoReg[03] := EscreveCampo(01, 'N', '0');
      CampoReg[04] := EscreveCampo(04, 'N', BancodeDados.BancosAGENCIA.Value);
      CampoReg[05] := EscreveCampo(01, 'N', '0');
      CampoReg[06] := EscreveCampo(07, 'N', BancodeDados.BancosCONTA_CORRENTE.Value);
      CampoReg[07] := EscreveCampo(07, 'X', '');
      CampoReg[08] := EscreveCampo(30, 'X', BancodeDados.ConfigNOME.Value);
      CampoReg[09] := EscreveCampo(03, 'N', IntToStr(CodBanco));
      CampoReg[10] := EscreveCampo(15, 'X', 'BANCO REAL');
      CampoReg[11] := EscreveCampo(06, 'D2', DateToStr(Date));
      CampoReg[12] := EscreveCampo(08, 'X', '01600BPI');
      CampoReg[13] := EscreveCampo(286, 'X', '');
      CampoReg[14] := EscreveCampo(06, 'N', IntToStr(NSeqReg));
    end
    else

      if (CodBanco = 389) then //Banco Mercantil do Brasil S.A.
    begin
      CampoReg[01] := EscreveCampo(01, 'N', '0');
      CampoReg[02] := EscreveCampo(01, 'N', '1');
      CampoReg[03] := EscreveCampo(07, 'X', 'REMESSA');
      CampoReg[04] := EscreveCampo(02, 'N', BancodeDados.BancosCARTEIRA.AsString); // COB. SIMPLES COM REGISTRO
      CampoReg[05] := EscreveCampo(08, 'X', 'COBRANCA');
      CampoReg[06] := EscreveCampo(07, 'X', '');
      CampoReg[07] := EscreveCampo(04, 'N', BancodeDados.BancosAGENCIA.Value);
      CampoReg[08] := EscreveCampo(15, 'N', BancodeDados.ConfigCNPJ.Value);
      CampoReg[09] := EscreveCampo(01, 'X', '');
      CampoReg[10] := EscreveCampo(30, 'X', BancodeDados.ConfigNOME.Value);
      CampoReg[11] := EscreveCampo(03, 'N', IntToStr(CodBanco));
      CampoReg[12] := EscreveCampo(15, 'X', 'BANCANTIL');
      CampoReg[13] := EscreveCampo(06, 'D2', DateToStr(Date));
      CampoReg[14] := EscreveCampo(281, 'X', '');
      CampoReg[15] := EscreveCampo(05, 'N', '01600');
      CampoReg[16] := EscreveCampo(03, 'X', '');
      CampoReg[17] := EscreveCampo(05, 'N', IntToStr(NSeqArquivo));
      CampoReg[18] := EscreveCampo(06, 'N', IntToStr(NSeqReg));
    end
    else

      if (CodBanco = 422) then // Banco Safra S.A.
    begin
      CampoReg[01] := EscreveCampo(01, 'N', '0');
      CampoReg[02] := EscreveCampo(01, 'N', '1');
      CampoReg[03] := EscreveCampo(07, 'X', 'REMESSA');
      CampoReg[04] := EscreveCampo(02, 'N', '01');
      CampoReg[05] := EscreveCampo(08, 'X', 'COBRANCA');
      CampoReg[06] := EscreveCampo(07, 'X', '');
      CampoReg[07] := EscreveCampo(14, 'N', BancodeDados.BancosCODIGO_CEDENTE.Value);
      CampoReg[08] := EscreveCampo(06, 'X', '');
      CampoReg[09] := EscreveCampo(30, 'X', BancodeDados.ConfigNOME.Value);
      CampoReg[10] := EscreveCampo(03, 'N', IntToStr(CodBanco));
      CampoReg[11] := EscreveCampo(11, 'X', 'BANCO SAFRA');
      CampoReg[12] := EscreveCampo(04, 'X', '');
      CampoReg[13] := EscreveCampo(06, 'D2', DateToStr(Date));
      CampoReg[14] := EscreveCampo(291, 'X', '');
      CampoReg[17] := EscreveCampo(03, 'N', IntToStr(NSeqArquivo));
      CampoReg[18] := EscreveCampo(06, 'N', IntToStr(NSeqReg));
    end
    else

      if (CodBanco = 756) then // Banco Cooperativo do Brasil S.A. - BANCOOB
    begin
      CampoReg[01] := EscreveCampo(01, 'N', '0');
      CampoReg[02] := EscreveCampo(01, 'N', '1');
      CampoReg[03] := EscreveCampo(07, 'X', 'REMESSA');
      CampoReg[04] := EscreveCampo(02, 'N', '01');
      CampoReg[05] := 'COBRANÇA';
      CampoReg[06] := EscreveCampo(07, 'X', '');
      CampoReg[07] := EscreveCampo(04, 'N', BancodeDados.BancosAGENCIA.Value);
      CampoReg[08] := EscreveCampo(01, 'X', BancodeDados.BancosDIG_AGENCIA.Value);
      CampoReg[09] := EscreveCampo(08, 'N', BancodeDados.BancosCODIGO_CEDENTE.Value);
      CampoReg[10] := EscreveCampo(01, 'X', BancodeDados.BancosDIG_COD_CEDENTE.Value);
      CampoReg[11] := EscreveCampo(06, 'X', '');
      CampoReg[12] := EscreveCampo(30, 'X', BancodeDados.ConfigNOME.Value);
      CampoReg[13] := EscreveCampo(18, 'X', '756BANCOOBCED');
      CampoReg[14] := EscreveCampo(06, 'D2', DateToStr(Date));
      CampoReg[15] := EscreveCampo(07, 'N', IntToStr(NSeqArquivo));
      CampoReg[16] := EscreveCampo(287, 'X', '');
      CampoReg[17] := EscreveCampo(06, 'N', IntToStr(NSeqReg));
    end;

    Linha := '';
    for i := 1 to Length(CampoReg) do
      Linha := Linha + CampoReg[i];

    Writeln(FRem, Linha);
  end;
end;

function PegaCodCarteiraItau(cartTmp: integer): String;
begin
  result := '';
  case cartTmp of
    112:
      result := 'I';
    115:
      result := 'I';
    104:
      result := 'I';
    147:
      result := 'E';
    188:
      result := 'I';
    108:
      result := 'I';
    109:
      result := 'I';
    150:
      result := 'U';
    121:
      result := 'I';
    180:
      result := 'I';
    175:
      result := 'I';
    198:
      result := 'I';
    142:
      result := 'I';
    143:
      result := 'I';
    174:
      result := 'I';
    177:
      result := 'I';
    129:
      result := 'I';
    139:
      result := 'I';
    169:
      result := 'I';
    172:
      result := 'I';
    102:
      result := 'I';
    107:
      result := 'I';
    173:
      result := 'I';
    103:
      result := 'I';
    196:
      result := 'I';
  end;
end;

procedure Detalhe400;
var
  i: integer;
  Linha, CPFSacado, NomeSacado: String;
  CampoReg: Array [1 .. 54] of String;
  vencTmp         : TDate;
  Ano, Mes, Dia   : Word;
  TotalParc       : ShortString;

begin
  for i := 1 to Length(CampoReg) do
    CampoReg[i] := '';

  with RemessaForm do
  begin
    inc(NSeqReg);


    qryPesq.Close;
    qryPesq.SQL.Text := 'select NOME, FANTASIA, CNPJ, LOGRADOURO, BAIRRO, CIDADE, ESTADO as UF, CEP  from clientes where CLI_ID = ' + IntToStr(BoletosCLI_ID.Value);
    qryPesq.Open;

    CPFSacado     := TestaCPFCNPJ(BoletosCLI_CNPJ_CPF.Value, false);
    CPFSacado     := RetornaNumeros(CPFSacado);
    NomeSacado    := qryPesq.FieldByName('NOME').AsString;

    //qryEnd.Close;
   // qryEnd.SQL.Text := 'select * from enderecos where end_id = ' + IntToStr(qryPesq.Fields[1].AsInteger);
    //qryEnd.Open;


    if (CodBanco = 104) then  begin //CAIXA ECONÔMICA FEDERAL
      CampoReg[01] := EscreveCampo(01, 'N', '1'); //Posição: 1 a 1 >> Preencher ‘1’

      if Length(RetornaNumeros(BancodeDados.ConfigCNPJ.Value)) = 11 then //Posição:  2 a 3 >> Preencher com o tipo de Inscrição da Empresa Beneficiária: ‘01’ = CPF ou ‘02’ = CNPJ
        CampoReg[02] := EscreveCampo(02, 'N', '01')
      else
      CampoReg[02] := EscreveCampo(02, 'N', '02');

      CampoReg[03] := EscreveCampo(14, 'N', BancodeDados.ConfigCNPJ.Value);//Posição: 4 17 >> Preencher com Número de inscrição da Empresa (CNPJ) ou Pessoa Física (CPF) a que se está fazendo referência, de acordo com o código do campo acima
      CampoReg[04] := EscreveCampo(04, 'N', FormatFloat('0000', BancodeDados.BancosAGENCIA.AsInteger) ); //Posição: 18 a 21 >> Preencher com o Código da Agência de vinculação do Beneficiário, com 4 dígitos
      CampoReg[05] := EscreveCampo(06, 'N', FormatFloat('000000', (BancodeDados.BancosCONTA_CORRENTE.AsInteger + BancodeDados.BancosDIG_CONTA_CORRENTE.AsInteger)) ); //Posição: 22 a 27 >>Preencher com o Código que identifica a Empresa na CAIXA, fornecido pela agência de vinculação
      CampoReg[06] := EscreveCampo(01, 'X', '2');//Posição: 28 a 28 >> Preencher com a forma de emissão  do boleto desejada: ‘1’ = Banco Emite ou ‘2’ = Cliente Emite
      CampoReg[07] := EscreveCampo(01, 'N', '0');//Posição: 29 a 29 >> Identificação da Entrega/ Distribuição do Boleto
      CampoReg[08] := EscreveCampo(02, 'N', '00');//Posição: 30 a 31 >> Informar ‘00’

      CampoReg[09] := EscreveCampo(25, 'X', IntToStr(BoletosEMISSAO_ID.Value)); //Posição: 32 a 56 >>  Preencher com Seu Número de controle do título (exemplos: nº da duplicata no caso de cobrança de duplicatas, nº da apólice, em caso de cobrança de seguros)

     {     if Carteira='24' then
          rNossoNumero := '24' + '80' + Formatar(IntToStr(SeqNossoNumero), 13, False, '0');
          rNossoNumero := Carteira + '90' + Formatar(IntToStr(SeqNossoNumero), 13, False, '0');  }
      if BancodeDados.BancosCARTEIRA.AsString='24' then begin
        CampoReg[10] := EscreveCampo(02, 'N', BancodeDados.BancosCARTEIRA.AsString);//Posição: 57 a 58 >> Identificação do Título na CAIXA
        CampoReg[11] := EscreveCampo(15, 'N', BoletosNOSSO_NUMERO.Value); //
      end else begin
        CampoReg[10] := EscreveCampo(17, 'N', BoletosNOSSO_NUMERO.Value); //
      end;

      CampoReg[12] := EscreveCampo(03, 'X', '');//Posição: 74 a 76 >> Preencher com espaços
      CampoReg[13] := EscreveCampo(30, 'X', '');//Posição: 77 a 106 >> Preencher com Mensagem a ser impressa no boleto
      CampoReg[14] := EscreveCampo(02, 'N', '01');//Posição: 107 a 108 >> Preencher de acordo com  a modalidade de cobrança contratada: ‘01’ = Cobrança Registrada ou ‘02’ = Cobrança Sem Registro
      CampoReg[15] := EscreveCampo(02, 'N', '01'); //Posição: 109 a 110 >> Identificação Tipo Ocorrência do arquivo remessa: 01 Entrada de Título

      CampoReg[16] := EscreveCampo(10, 'X', IntToStr(BoletosEMISSAO_ID.Value)); //Posição: 111 a 120 >>  Preencher com Seu Número de  controle do título (exemplos: nº da duplicata no caso de cobrança de  duplicatas, nº da apólice, em caso de cobrança de seguros)
      CampoReg[17] := EscreveCampo(06, 'N', RetornaNumeros(FormatDateTime('dd/mm/yy',BoletosVENCIMENTO.Value)));//Posição: 121 a 126 >> Preencher com a Data de Vencimento do Título, no formato DDMMAA
      CampoReg[18] := EscreveCampo(13, 'N', FormatFloat(',0.00', BoletosVALOR_DOC.Value));//Posição: 127 a 139
      CampoReg[19] := EscreveCampo(03, 'N', IntToStr(CodBanco));//Posição: 140 a 142 >> Preencher ‘104’
      CampoReg[20] := EscreveCampo(05, 'N', '00000');//Posição: 143 a 147 >>  Preencher com zeros

      //Identificação de Título - Aceito / Não Aceito
      //Código adotado para identificar se o título de cobrança foi aceito (reconhecimento da dívida pelo
      //Pagador).
      //‘A’ = Aceite
      //‘N’ = Não Aceite
      CampoReg[21] := EscreveCampo(02, 'N', '01');//Posição: 148 a 149 >>  Espécie do Título

      CampoReg[22] := EscreveCampo(01, 'N', '01');//Posição: 150 150 >>  Identificação de Título - Aceito / Não Aceito
      CampoReg[23] := EscreveCampo(06, 'D2', (FormatDateTime('dd/mm/yy',BoletosEMISSAO.Value)));//Posição: 151 156 >>  Data da Emissão do Título


      if (BancodeDados.BancosDIAS_PROTESTO.Value > 0) then
      begin
        CampoReg[24] := EscreveCampo(02, 'X', '01'); // INSTRUCAO 1 >> ‘01’ = Protestar Dias Corridos
      end
      else
      begin
        CampoReg[24] := EscreveCampo(02, 'X', '10'); // INSTRUCAO 1 >> ‘02’ = Devolver (Não Protestar)
      end;

      CampoReg[25] := EscreveCampo(02, 'X', '00'); // Posição: 159 a 160 >> INSTRUCAO 2

      bancodeDados.GradeFin.close;
      bancodeDados.GradeFin.SQL.text:='select * from GRADE_FINANCEIRA where GRADE_ID = '+IntToStr(BoletosGRADE_ID.Value);
      bancodeDados.GradeFin.open;

      if not BancodeDados.GradeFin.IsEmpty then
      begin
        CampoReg[26] := EscreveCampo(13, 'N', FormatFloat(',0.00', (BoletosVALOR_DOC.Value * BancodeDados.GradeFinJUROS.Value) / 100));
      end
      else
      begin
        CampoReg[26] := EscreveCampo(13, 'N', FormatFloat(',0.00', 0)); //Posição: 161 a 173 >> JUROS
      end;

      CampoReg[27] := EscreveCampo(06, 'D2', (FormatDateTime('dd/mm/yy',BoletosVENCIMENTO.Value + BoletosDIAS_TOLERANCIA.Value ))); // Posicao: 174 a 179 >> Data limite para concessão do desconto
      CampoReg[28] := EscreveCampo(13, 'N', FormatFloat(',0.00', BoletosDESCONTO.Value)); // Posicao: 180 a 192 >> Valor do Desconto a ser concedido
      CampoReg[29] := EscreveCampo(13, 'N', FormatFloat(',0.00', 0));// Posicao: 193 a 205 >> IOF
      CampoReg[30] := EscreveCampo(13, 'N', FormatFloat(',0.00', 0));// Posicao: >> 206 a 218 >> ABATIMENTO


      if Length(CPFSacado) = 11 then   //Posicao: 219 a 220 >> Identificador do Tipo de Inscrição do Pagador
        CampoReg[31] := EscreveCampo(02, 'N', '1')
      else
        CampoReg[31] := EscreveCampo(02, 'N', '2');


      CampoReg[32] := EscreveCampo(14, 'N', CPFSacado);//POsição: 221 234 >> Número de Inscrição do Pagador
      CampoReg[33] := EscreveCampo(40, 'X', NomeSacado);//POsição: 235 a 274 >> Nome do Pagador
      CampoReg[34] := EscreveCampo(40, 'X', qryPesq.FieldByName('LOGRADOURO').AsString); //Posição: 275 314  Endereço do Pagador
      CampoReg[35] := EscreveCampo(12, 'X', qryPesq.FieldByName('BAIRRO').AsString);//Posição: 315 a 326 >> Bairro do Pagador
      CampoReg[36] := EscreveCampo(08, 'N', qryPesq.FieldByName('CEP').AsString);//Posição: 327 a 334 >> CEP do Pagador
      CampoReg[37] := EscreveCampo(15, 'X', qryPesq.FieldByName('CIDADE').AsString);//Posição: 335 a 349 >> Cidade do Pagador
      CampoReg[38] := EscreveCampo(02, 'X', qryPesq.FieldByName('UF').AsString);//Posição: 350 351  >> Unidade da Federação do Pagador
      CampoReg[39] := EscreveCampo(06, 'D2',FormatDateTime('dd/mm/yy',(BoletosVENCIMENTO.Value + BoletosDIAS_TOLERANCIA.Value)));//Posição: 352 a 357 >> Definição da data para pagamento de multa


      CampoReg[40] := EscreveCampo(10, 'N', FormatFloat(',0.00', BancodeDados.GradeFinMULTA.Value)); ///Posição: 358 a 367 >> Valor nominal da multa; 2 decimais
      CampoReg[41] := EscreveCampo(22, 'X', ''); //Posição: 368 a 389 >> Nome do Sacador/Avalista
      CampoReg[42] := EscreveCampo(02, 'N', '01');//Posição: 390 a 391 >> Terceira Instrução de Cobrança

      if (BancodeDados.BancosDIAS_PROTESTO.Value > 0) then  //Posição: 392 a 393 >> Número de dias para início do protesto/devolução
      begin
        CampoReg[43] := EscreveCampo(02, 'N', IntToStr(BancodeDados.BancosDIAS_PROTESTO.Value));
      end
      else
      begin
        CampoReg[43] := EscreveCampo(02, 'N', '0');
      end;

      CampoReg[44] := EscreveCampo(01, 'N', '1');//Posição: 394 a 394 >> ‘1’
      CampoReg[45] := EscreveCampo(06, 'N', IntToStr(NSeqReg)); //Posição:  395 a 400 >> Número Sequencial do Registro no Arquivo

    end
    else

      if (CodBanco = 399) then
    begin
      CampoReg[01] := EscreveCampo(01, 'N', '1');

      if Length(RetornaNumeros(BancodeDados.ConfigCNPJ.Value)) = 11 then
        CampoReg[02] := EscreveCampo(02, 'N', '1')
      else
        CampoReg[02] := EscreveCampo(02, 'N', '2');
      CampoReg[03] := EscreveCampo(14, 'N', BancodeDados.ConfigCNPJ.Value);

      CampoReg[04] := EscreveCampo(01, 'N', '0');
      CampoReg[05] := EscreveCampo(04, 'N', BancodeDados.BancosAGENCIA.Value);
      CampoReg[06] := EscreveCampo(02, 'N', '55');
      CampoReg[07] := EscreveCampo(04, 'N', BancodeDados.BancosAGENCIA.AsString) +
        EscreveCampo(07, 'N', BancodeDados.BancosCONTA_CORRENTE.AsString + BancodeDados.BancosDIG_CONTA_CORRENTE.Value);
      CampoReg[08] := EscreveCampo(02, 'X', '');
      CampoReg[09] := EscreveCampo(25, 'X', IntToStr(BoletosEMISSAO_ID.Value));
      CampoReg[10] := EscreveCampo(11, 'N', BoletosNOSSO_NUMERO.Value);
      CampoReg[11] := EscreveCampo(06, 'N', '0');
      CampoReg[12] := EscreveCampo(11, 'N', '0');
      CampoReg[13] := EscreveCampo(06, 'N', '0');
      CampoReg[14] := EscreveCampo(11, 'N', '0');

      CampoReg[15] := EscreveCampo(01, 'N', BancodeDados.BancosCARTEIRA.AsString);
      CampoReg[16] := EscreveCampo(02, 'N', '01');
      CampoReg[17] := EscreveCampo(10, 'X', IntToStr(BoletosEMISSAO_ID.Value));
      CampoReg[18] := EscreveCampo(06, 'D2', DateToStr(BoletosVENCIMENTO.Value));
      CampoReg[19] := EscreveCampo(13, 'N', FormatFloat(',0.00', BoletosVALOR_DOC.Value));
      CampoReg[20] := EscreveCampo(03, 'N', IntToStr(CodBanco));
      CampoReg[21] := EscreveCampo(05, 'N', '0');
      CampoReg[22] := EscreveCampo(02, 'N', '01');
      CampoReg[23] := EscreveCampo(01, 'X', 'A');
      CampoReg[24] := EscreveCampo(06, 'D2', DateToStr(BoletosEMISSAO.Value));
      CampoReg[25] := EscreveCampo(02, 'N', '0');
      CampoReg[26] := EscreveCampo(02, 'N', '0');

      bancodeDados.GradeFin.close;
      bancodeDados.GradeFin.SQL.text:='select * from GRADE_FINANCEIRA where GRADE_ID = '+IntToStr(BoletosGRADE_ID.Value);
      bancodeDados.GradeFin.open;

      if not BancodeDados.GradeFin.IsEmpty then
      begin
        CampoReg[27] := EscreveCampo(13, 'N', FormatFloat(',0.00', (BoletosVALOR_DOC.Value * BancodeDados.GradeFinJUROS.Value) / 100));
      end
      else
      begin
        CampoReg[27] := EscreveCampo(13, 'N', FormatFloat(',0.00', 0)); // JUROS
      end;

      CampoReg[28] := EscreveCampo(06, 'D2', DateToStr(BoletosVENCIMENTO.Value));
      CampoReg[29] := EscreveCampo(13, 'N', FormatFloat(',0.00', BoletosDESCONTO.Value));
      CampoReg[30] := EscreveCampo(13, 'N', FormatFloat(',0.00', 0)); // IOF
      CampoReg[31] := EscreveCampo(13, 'N', FormatFloat(',0.00', 0)); // Abatimento ou multa

      if Length(CPFSacado) = 11 then
        CampoReg[32] := EscreveCampo(02, 'N', '1')
      else
        CampoReg[32] := EscreveCampo(02, 'N', '2');

      CampoReg[33] := EscreveCampo(14, 'N', CPFSacado);
      CampoReg[34] := EscreveCampo(40, 'X', NomeSacado);

      CampoReg[35] := EscreveCampo(38, 'X', qryPesq.FieldByName('LOGRADOURO').AsString);

      CampoReg[36] := EscreveCampo(02, 'N', '0');
      CampoReg[37] := EscreveCampo(12, 'X', qryPesq.FieldByName('BAIRRO').AsString);
      CampoReg[38] := EscreveCampo(08, 'N', qryPesq.FieldByName('CEP').AsString);
      CampoReg[39] := EscreveCampo(15, 'X', qryPesq.FieldByName('CIDADE').AsString);
      CampoReg[40] := EscreveCampo(02, 'X', qryPesq.FieldByName('UF').AsString);
      CampoReg[41] := EscreveCampo(39, 'X', '');
      CampoReg[42] := EscreveCampo(01, 'X', '');

      if (BancodeDados.BancosDIAS_PROTESTO.Value > 0) then
        CampoReg[43] := EscreveCampo(02, 'N', IntToStr(BancodeDados.BancosDIAS_PROTESTO.Value))
      else
        CampoReg[43] := EscreveCampo(02, 'X', '');

      CampoReg[44] := EscreveCampo(01, 'N', '9');
      CampoReg[45] := EscreveCampo(06, 'N', IntToStr(NSeqReg));
    end
    else

    if (CodBanco = 748) then  begin //Sicredi e UNICRED
      TotalParc:='';

      CampoReg[01] := EscreveCampo(01, 'N', '1'); //posicao: 001 a 001 > Identificação do registro detalhe de estar “1”
      CampoReg[02] := EscreveCampo(01, 'X', 'A'); //posicao: 002 a 002 > “A” - Sicredi Com Registro
      CampoReg[03] := EscreveCampo(01, 'X', 'A'); //posicao: 003 a 003 > “A” – Simples
      CampoReg[04] := EscreveCampo(01, 'X', 'B'); //posicao: 004 a 004 > “B” – Carnê
      CampoReg[05] := EscreveCampo(12, 'X', '');  //posicao: 005 a 016 > Deixar em Branco (sem preenchimento)
      CampoReg[06] := EscreveCampo(01, 'X', 'A'); //posicao: 017 a 017 > “A” – Real
      CampoReg[07] := EscreveCampo(01, 'X', 'A'); //posicao: 018 a 018 > “A” – Valor
      CampoReg[08] := EscreveCampo(01, 'X', 'A'); //posicao: 019 a 019 > “A” – Valor
      CampoReg[09] := EscreveCampo(28, 'X', '');  //posicao: 020 a 047 > Deixar em Branco (sem preenchimento)

      //posicao: 048 a 056 > xxxxx - número sequencial > d - dígito verificador calculado ou seja, a nomenclatura correta é: 132xxxxxD
      CampoReg[10] := EscreveCampo(09, 'X', RetornaNumerosComDV(BoletosNOSSO_NUMERO.Value));
      CampoReg[11] := EscreveCampo(06, 'X', '');//posicao: 057 a 062 > Deixar em Branco (sem preenchimento)
      DecodeDate(Date, Ano, Mes, Dia);
      CampoReg[12] := EscreveCampo(08, 'X', '',  FormatFloat('0000',ano) + FormatFloat('00',mes) + FormatFloat('00',dia) );//posicao: 063 a 070 > Data da Instrução: O Formato da data de instrução do arquivo deve estar no padrão: AAAAMMDD
      CampoReg[13] := EscreveCampo(01, 'X', '');//posicao: 071 a 071 > Campo alterado, quando instrução “31”, Campo deve estar vazio (sem preenchimento), só utilizar quando 109-110 for = 31
      CampoReg[14] := EscreveCampo(01, 'X', 'N');//posicao: 072 a 072 > Postagem do título: “N” - Não postar e remeter o título para o beneficiário
      CampoReg[15] := EscreveCampo(01, 'X', '');//posicao: 073 a 073 > Deixar em Branco (sem preenchimento)
      CampoReg[16] := EscreveCampo(01, 'X', 'B');//posicao: 074 a 074 > Emissão do boleto: “B” – Impressão é feita pelo Beneficiário
      CampoReg[17] := EscreveCampo(02, 'X', RetornaNumeros(Copy(BoletosPARCELA.AsString,1,2)) );//posicao: 075 a 076 > Número da parcela do carnê: Quando o tipo de impressão for “B – Carnê” (posição 004).
      TotalParc:=RetornaNumeros(Copy(BoletosPARCELA.value,3,3));
      CampoReg[18] := EscreveCampo(02, 'X', FormatFloat('00', StrToInt(TotalParc)) );//posicao: 077 a 078 > Número total de parcelas do carnê: Quando o tipo de impressão for “B – Carnê”  (posição 004)

      CampoReg[19] := EscreveCampo(04, 'X', ''); //posicao: 079 a 082 > Deixar em Branco (sem preenchimento)
      CampoReg[20] := EscreveCampo(10, 'N', '0');//posicao: 083 a 092 > Valor de desconto por dia de antecipação : Informar valor de desconto

      CampoReg[21] := EscreveCampo(04, 'N', '0');//posicao: 093 a 096 >   multa por pagamento em atraso
      CampoReg[22] := EscreveCampo(12, 'X', '');//Posicao: 097 a 108 > Brancos (sem preenchimento)
      CampoReg[23] := EscreveCampo(02, 'N', '01');//Posição: 109 a 110 > Instrução: 01 - Cadastro de título;
      CampoReg[24] := EscreveCampo(10, 'N', IntToStr(BoletosEMISSAO_ID.Value));//Posição: 111 a 120 > Seu número: normalmente usado neste campo o número da nota fiscal gerada para o pagador
      CampoReg[25] := EscreveCampo(06, 'D2', DateToStr(BoletosVENCIMENTO.Value)); //Posição: 121 a 126 > A data de vencimento deve ser sete dias MAIOR que o campo 151 a 156 “Data de emissão”. Formato: DDMMAA
      CampoReg[26] := EscreveCampo(13, 'N', FormatFloat(',0.00', (BoletosVALOR_DOC.Value))); //Posição: 127 a 139
      CampoReg[27] := EscreveCampo(09, 'X', ''); //Posição: 140 a 148 > Deixar em Branco (sem preenchimento)
      CampoReg[28] := EscreveCampo(01, 'X', 'O'); //Posição 149 a 149 > Espécie de documento: O – Boleto Proposta

      CampoReg[29] := EscreveCampo(01, 'X', BoletosACEITE.Value); //Posição: 150 a 150 > Aceite do título: “S” – sim  ou “N” – não
      CampoReg[30] := EscreveCampo(06, 'D2', DateToStr(BoletosEMISSAO.Value)); //Posição: 151 a 156 > Data de emissão: A data de emissão deve ser sete dias MENOR que o campo 121 a 126 “Data de vencimento”. Formato: DDMMAA

      if (BancodeDados.BancosDIAS_PROTESTO.Value > 0) then
      begin
        CampoReg[31] := EscreveCampo(02, 'N', '06');  //Posição: 157 a 158 >> 002 Instrução de protesto automático “00” - Não protestar automaticamente
        CampoReg[32] := EscreveCampo(02, 'N', IntToStr(BancodeDados.BancosDIAS_PROTESTO.Value)); //Posição: 159 a 160 >> Número de dias p/protesto automático:
      end
      else
      begin
        CampoReg[31] := EscreveCampo(02, 'N', '00');
        CampoReg[32] := EscreveCampo(02, 'N', '00');
      end;

      bancodeDados.GradeFin.close;
      bancodeDados.GradeFin.SQL.text:='select * from GRADE_FINANCEIRA where GRADE_ID = '+IntToStr(BoletosGRADE_ID.Value);
      bancodeDados.GradeFin.open;

      if not BancodeDados.GradeFin.IsEmpty then
      begin
        if BancodeDados.GradeFinJUROS.Value>0 then //Posição: 161 a 173 > Preencher com valor (alinhados à direita com zeros à esquerda) ou preencher com zeros
        CampoReg[33] := EscreveCampo(13, 'N', FormatFloat(',0.00', (BoletosVALOR_DOC.Value * BancodeDados.GradeFinJUROS.Value) / 100)) else CampoReg[30] := EscreveCampo(13, 'N', FormatFloat(',0.00', 0));

        if BoletosDIAS_TOLERANCIA.Value>0 then //Posição:  174 a 179 > Data limite p/concessão de desconto
        CampoReg[34] := EscreveCampo(06, 'D2', DateToStr(BoletosVENCIMENTO.Value + BoletosDIAS_TOLERANCIA.Value)) else CampoReg[34] := EscreveCampo(06, 'D2', 'N', FormatFloat('0.00', 0));
      end
      else
      begin
        CampoReg[33] := EscreveCampo(13, 'N', FormatFloat(',0.00', 0));
        CampoReg[34] := EscreveCampo(06, 'D2', 'N', FormatFloat('0.00', 0));
      end;

      CampoReg[35] := EscreveCampo(13, 'N', FormatFloat(',0.00', BoletosDESCONTO.Value)); //Posicao: 180 a 192 > Valor/% do desconto
      CampoReg[36] := EscreveCampo(13, 'N', '0');//posicao: 193 a 205 > Sempre preencher com zeros neste campo
      CampoReg[37] := EscreveCampo(13, 'N', FormatFloat(',0.00', 0)); //posicao: 206 a 218 >> Valor do abatimento
      //CampoReg[38] := EscreveCampo(13, 'N', FormatFloat(',0.00', 0)); // IOF

      if Length(CPFSacado) = 11 then  //posicao: 219 a 219  >> Tipo de pessoa do pagador: PF ou PJ: “1” - Pessoa Física ou “2” - Pessoa Jurídica
        CampoReg[38] := EscreveCampo(01, 'N', '1')
      else
        CampoReg[38] := EscreveCampo(01, 'N', '2');

      CampoReg[39] := EscreveCampo(01, 'N', '0');//Posicao: 220 a 220 >> Sempre preencher com zeros neste campo.
      CampoReg[40] := EscreveCampo(14, 'N', CPFSacado); //Posicao: 221 a 234 > CPF/CNPJ do Pagador

      CampoReg[41] := EscreveCampo(40, 'X', NomeSacado); //Posicao: 235 a 274 > Nome do pagador
      CampoReg[42] := EscreveCampo(40, 'X', qryPesq.FieldByName('LOGRADOURO').AsString + '-' + qryPesq.FieldByName('BAIRRO').AsString + '-' +
        qryPesq.FieldByName('CIDADE').AsString + ' ' + qryPesq.FieldByName('UF').AsString); //Posicao: 275 a 314 > Endereço do pagador



      CampoReg[43] := EscreveCampo(05, 'N', '0'); //Posicao: 315 a 319 > Código do pagador na cooperativa beneficiário: sempre zeros quando o sistema do beneficiário não utiliza esse campo
      CampoReg[44] := EscreveCampo(06, 'N', '0'); //posicao: 320 a 325 > Sempre preencher com zeros neste campo
      CampoReg[45] := EscreveCampo(01, 'X', ''); //posicao: 326 a 326 > Deixar em Branco (sem preenchimento)
      CampoReg[46] := EscreveCampo(08, 'N', qryPesq.FieldByName('CEP').AsString);  //Posicao: 327 a 334 > CEP do pagador

      CampoReg[47] := EscreveCampo(05, 'N', '0');//posicao: 335 a 339 > Código do Pagador junto ao cliente
      CampoReg[48] := EscreveCampo(14, 'X', '');//Posicao: 340 a 353  CPF/CNPJ do Sacador Avalista
      CampoReg[49] := EscreveCampo(41, 'X', ''); //Posicao: 354 a 394 > Nome do Sacador Avalista
      CampoReg[50] := EscreveCampo(06, 'N', IntToStr(NSeqReg));  //Posicao: 395 a 400 > Número sequencial do registro

    end else
    if (CodBanco = 237) then  //Banco Bradesco S.A.
    begin
      CampoReg[01] := EscreveCampo(01, 'N', '1');
      CampoReg[02] := EscreveCampo(05, 'N', '0');
      CampoReg[03] := EscreveCampo(01, 'X', '');
      CampoReg[04] := EscreveCampo(05, 'N', '0');
      CampoReg[05] := EscreveCampo(07, 'N', '0');
      CampoReg[06] := EscreveCampo(01, 'X', '');
      CampoReg[07] := EscreveCampo(17, 'N', '0' + EscreveCampo(03, 'N', BancodeDados.BancosCARTEIRA.AsString) + EscreveCampo(05, 'N',
        BancodeDados.BancosAGENCIA.AsString) + EscreveCampo(07, 'N', BancodeDados.BancosCONTA_CORRENTE.AsString) + EscreveCampo(01, 'X',
        BancodeDados.BancosDIG_CONTA_CORRENTE.Value));

      CampoReg[08] := EscreveCampo(25, 'X', IntToStr(BoletosEMISSAO_ID.Value));
      CampoReg[09] := EscreveCampo(03, 'N', '0');
      CampoReg[10] := EscreveCampo(05, 'N', '0');
      CampoReg[11] := EscreveCampo(12, 'X', Formatar(RetornaNumerosComDV(BoletosNOSSO_NUMERO.Value), 12, false, '0'));
      CampoReg[12] := EscreveCampo(10, 'N', '0');
      CampoReg[13] := EscreveCampo(01, 'N', '2');
      CampoReg[14] := EscreveCampo(01, 'X', ''); //
      CampoReg[15] := EscreveCampo(10, 'X', '');
      CampoReg[16] := EscreveCampo(01, 'X', ''); // RATEIO DE CREDITO
      CampoReg[17] := EscreveCampo(01, 'X', ''); //
      CampoReg[18] := EscreveCampo(02, 'X', '');
      CampoReg[19] := EscreveCampo(02, 'N', '01'); // OCORRENCIA
      CampoReg[20] := EscreveCampo(10, 'X', IntToStr(BoletosEMISSAO_ID.Value));

      CampoReg[21] := EscreveCampo(06, 'D2', DateToStr(BoletosVENCIMENTO.Value));
      CampoReg[22] := EscreveCampo(13, 'N', FormatFloat(',0.00', BoletosVALOR_DOC.Value));
      CampoReg[23] := EscreveCampo(03, 'N', '0'); //
      CampoReg[24] := EscreveCampo(05, 'N', '0'); //
      CampoReg[25] := EscreveCampo(02, 'N', '01');
      CampoReg[26] := EscreveCampo(01, 'X', 'N'); //
      CampoReg[27] := EscreveCampo(06, 'D2', DateToStr(BoletosEMISSAO.Value));

      if (BancodeDados.BancosDIAS_PROTESTO.Value > 0) then
      begin
        CampoReg[28] := EscreveCampo(02, 'N', '06');
        CampoReg[29] := EscreveCampo(02, 'N', IntToStr(BancodeDados.BancosDIAS_PROTESTO.Value));
      end
      else
      begin
        CampoReg[28] := EscreveCampo(02, 'N', '0');
        CampoReg[29] := EscreveCampo(02, 'N', '0');
      end;


      bancodeDados.GradeFin.close;
      bancodeDados.GradeFin.SQL.text:='select * from GRADE_FINANCEIRA where GRADE_ID = '+IntToStr(BoletosGRADE_ID.Value);
      bancodeDados.GradeFin.open;

      if not BancodeDados.GradeFin.IsEmpty then
      begin
        CampoReg[30] := EscreveCampo(13, 'N', FormatFloat(',0.00', (BoletosVALOR_DOC.Value * BancodeDados.GradeFinJUROS.Value) / 100));
        CampoReg[31] := EscreveCampo(06, 'D2', DateToStr(BoletosVENCIMENTO.Value + BoletosDIAS_TOLERANCIA.Value));
      end
      else
      begin
        CampoReg[30] := EscreveCampo(13, 'N', FormatFloat(',0.00', 0)); // JUROS
        CampoReg[31] := EscreveCampo(06, 'D2', DateToStr(BoletosVENCIMENTO.Value + 1)); // eraldo incluiu este + 1 Deverá ser no dia posterior ao vencimento
      end;

      CampoReg[32] := EscreveCampo(13, 'N', FormatFloat(',0.00', BoletosDESCONTO.Value));
      CampoReg[33] := EscreveCampo(13, 'N', FormatFloat(',0.00', 0)); // IOF
      CampoReg[34] := EscreveCampo(13, 'N', FormatFloat(',0.00', 0)); // ABATIMENTO

      if Length(CPFSacado) = 11 then
        CampoReg[35] := EscreveCampo(02, 'N', '1')
      else
        CampoReg[35] := EscreveCampo(02, 'N', '2');

      CampoReg[36] := EscreveCampo(14, 'N', CPFSacado);
      CampoReg[37] := EscreveCampo(40, 'X', NomeSacado);

      CampoReg[38] := EscreveCampo(40, 'X', qryPesq.FieldByName('LOGRADOURO').AsString + '-' + qryPesq.FieldByName('BAIRRO').AsString + '-' +
        qryPesq.FieldByName('CIDADE').AsString + ' ' + qryPesq.FieldByName('UF').AsString );


      CampoReg[39] := EscreveCampo(12, 'X', '');
      CampoReg[40] := EscreveCampo(08, 'N', qryPesq.FieldByName('CEP').AsString);
      CampoReg[41] := ''; // EscreveCampo(01,  'N', '');
      CampoReg[42] := EscreveCampo(60, 'X', '');
      CampoReg[43] := EscreveCampo(06, 'N', IntToStr(NSeqReg));
    end
    else

      if (CodBanco = 341) then //341 Itaú Unibanco S.A
    begin
      CampoReg[01] := EscreveCampo(01, 'N', '1');

      if Length(RetornaNumeros(BancodeDados.ConfigCNPJ.Value)) = 11 then
        CampoReg[02] := EscreveCampo(02, 'N', '1')
      else
        CampoReg[02] := EscreveCampo(02, 'N', '2');
      CampoReg[03] := EscreveCampo(14, 'N', BancodeDados.ConfigCNPJ.Value);

      CampoReg[04] := EscreveCampo(04, 'N', BancodeDados.BancosAGENCIA.Value) + '00';
      CampoReg[05] := EscreveCampo(05, 'N', BancodeDados.BancosCONTA_CORRENTE.Value) + BancodeDados.BancosDIG_CONTA_CORRENTE.Value;
      CampoReg[06] := EscreveCampo(04, 'X', '');
      CampoReg[07] := EscreveCampo(04, 'N', '0');

      CampoReg[08] := EscreveCampo(25, 'X', IntToStr(BoletosEMISSAO_ID.Value));
      CampoReg[09] := EscreveCampo(08, 'N', Copy(BoletosNOSSO_NUMERO.Value, 1, 8));
      CampoReg[10] := EscreveCampo(13, 'N', '0'); // Modea variavel
      CampoReg[11] := EscreveCampo(03, 'X', BancodeDados.BancosCARTEIRA.AsString);
      CampoReg[12] := EscreveCampo(21, 'X', '');
      CampoReg[13] := EscreveCampo(01, 'X', PegaCodCarteiraItau(BancodeDados.BancosCARTEIRA.Value));
      CampoReg[14] := EscreveCampo(02, 'N', '01');
      CampoReg[15] := EscreveCampo(10, 'X', IntToStr(BoletosEMISSAO_ID.Value));
      CampoReg[16] := EscreveCampo(06, 'D2', DateToStr(BoletosVENCIMENTO.Value));
      CampoReg[17] := EscreveCampo(13, 'N', FormatFloat(',0.00', BoletosVALOR_DOC.Value));
      CampoReg[18] := EscreveCampo(03, 'N', IntToStr(CodBanco));
      CampoReg[19] := EscreveCampo(05, 'N', '0');
      CampoReg[20] := EscreveCampo(02, 'N', '01');

      CampoReg[21] := EscreveCampo(01, 'X', 'A');
      CampoReg[22] := EscreveCampo(06, 'D2', DateToStr(BoletosEMISSAO.Value));

      if (BancodeDados.BancosDIAS_PROTESTO.Value > 0) then
      begin
        CampoReg[23] := EscreveCampo(02, 'X', '81'); // INSTRUCAO 1
      end
      else
      begin
        CampoReg[23] := EscreveCampo(02, 'X', '10'); // INSTRUCAO 1
      end;

      CampoReg[24] := EscreveCampo(02, 'X', '05'); // INSTRUCAO 2

      bancodeDados.GradeFin.close;
      bancodeDados.GradeFin.SQL.text:='select * from GRADE_FINANCEIRA where GRADE_ID = '+IntToStr(BoletosGRADE_ID.Value);
      bancodeDados.GradeFin.open;

      if not BancodeDados.GradeFin.IsEmpty then
      begin
        CampoReg[25] := EscreveCampo(13, 'N', FormatFloat(',0.00', (BoletosVALOR_DOC.Value * BancodeDados.GradeFinJUROS.Value) / 100));
      end
      else
      begin
        CampoReg[25] := EscreveCampo(13, 'N', FormatFloat(',0.00', 0)); // JUROS
      end;

      CampoReg[26] := EscreveCampo(06, 'D2', DateToStr(BoletosVENCIMENTO.Value));
      CampoReg[27] := EscreveCampo(13, 'N', FormatFloat(',0.00', BoletosDESCONTO.Value));
      CampoReg[28] := EscreveCampo(13, 'N', FormatFloat(',0.00', 0)); // IOF
      CampoReg[29] := EscreveCampo(13, 'N', FormatFloat(',0.00', 0)); // ABATIMENTO

      if Length(CPFSacado) = 11 then
        CampoReg[30] := EscreveCampo(02, 'N', '1')
      else
        CampoReg[30] := EscreveCampo(02, 'N', '2');

      CampoReg[31] := EscreveCampo(14, 'N', CPFSacado);
      CampoReg[32] := EscreveCampo(40, 'X', NomeSacado);

      CampoReg[33] := EscreveCampo(40, 'X', qryPesq.FieldByName('LOGRADOURO').AsString);
      CampoReg[34] := EscreveCampo(12, 'X', qryPesq.FieldByName('BAIRRO').AsString);
      CampoReg[35] := EscreveCampo(08, 'N', qryPesq.FieldByName('CEP').AsString);
      CampoReg[36] := EscreveCampo(15, 'X', qryPesq.FieldByName('CIDADE').AsString);
      CampoReg[37] := EscreveCampo(02, 'X', qryPesq.FieldByName('UF').AsString);






      CampoReg[38] := EscreveCampo(30, 'X', '');
      CampoReg[39] := EscreveCampo(04, 'X', '');

      CampoReg[40] := EscreveCampo(06, 'D2', DateToStr(BoletosVENCIMENTO.Value));

      if (BancodeDados.BancosDIAS_PROTESTO.Value > 0) then
      begin
        CampoReg[41] := EscreveCampo(02, 'N', IntToStr(BancodeDados.BancosDIAS_PROTESTO.Value));
      end
      else
      begin
        CampoReg[42] := EscreveCampo(02, 'N', '0');
      end;

      CampoReg[43] := EscreveCampo(01, 'X', '') + EscreveCampo(06, 'N', IntToStr(NSeqReg));
    end
    else

      if (CodBanco = 399) then
    begin
      CampoReg[01] := EscreveCampo(01, 'N', '1');

      if Length(RetornaNumeros(BancodeDados.ConfigCNPJ.Value)) = 11 then
        CampoReg[02] := EscreveCampo(02, 'N', '1')
      else
        CampoReg[02] := EscreveCampo(02, 'N', '2');
      CampoReg[03] := EscreveCampo(14, 'N', BancodeDados.ConfigCNPJ.Value);

      CampoReg[04] := EscreveCampo(01, 'N', '0');
      CampoReg[05] := EscreveCampo(04, 'N', BancodeDados.BancosAGENCIA.Value);
      CampoReg[06] := EscreveCampo(02, 'N', '55');
      CampoReg[07] := EscreveCampo(04, 'N', BancodeDados.BancosAGENCIA.AsString) +
        EscreveCampo(07, 'N', BancodeDados.BancosCONTA_CORRENTE.AsString + BancodeDados.BancosDIG_CONTA_CORRENTE.Value);
      CampoReg[08] := EscreveCampo(02, 'X', '');
      CampoReg[09] := EscreveCampo(25, 'X', IntToStr(BoletosEMISSAO_ID.Value));
      CampoReg[10] := EscreveCampo(11, 'N', BoletosNOSSO_NUMERO.Value);
      CampoReg[11] := EscreveCampo(06, 'N', '0');
      CampoReg[12] := EscreveCampo(11, 'N', '0');
      CampoReg[13] := EscreveCampo(06, 'N', '0');
      CampoReg[14] := EscreveCampo(11, 'N', '0');

      CampoReg[15] := EscreveCampo(01, 'N', BancodeDados.BancosCARTEIRA.AsString);
      CampoReg[16] := EscreveCampo(02, 'N', '01');
      CampoReg[17] := EscreveCampo(10, 'X', IntToStr(BoletosEMISSAO_ID.Value));
      CampoReg[18] := EscreveCampo(06, 'D2', DateToStr(BoletosVENCIMENTO.Value));
      CampoReg[19] := EscreveCampo(13, 'N', FormatFloat(',0.00', BoletosVALOR_DOC.Value));
      CampoReg[20] := EscreveCampo(03, 'N', IntToStr(CodBanco));
      CampoReg[21] := EscreveCampo(05, 'N', '0');
      CampoReg[22] := EscreveCampo(02, 'N', '01');
      CampoReg[23] := EscreveCampo(01, 'X', 'A');
      CampoReg[24] := EscreveCampo(06, 'D2', DateToStr(BoletosEMISSAO.Value));
      CampoReg[25] := EscreveCampo(02, 'N', '0');
      CampoReg[26] := EscreveCampo(02, 'N', '0');

      bancodeDados.GradeFin.close;
      bancodeDados.GradeFin.SQL.text:='select * from GRADE_FINANCEIRA where GRADE_ID = '+IntToStr(BoletosGRADE_ID.Value);
      bancodeDados.GradeFin.open;

      if not BancodeDados.GradeFin.IsEmpty then
      begin
        CampoReg[27] := EscreveCampo(13, 'N', FormatFloat(',0.00', (BoletosVALOR_DOC.Value * BancodeDados.GradeFinJUROS.Value) / 100));
      end
      else
      begin
        CampoReg[27] := EscreveCampo(13, 'N', FormatFloat(',0.00', 0)); // JUROS
      end;

      CampoReg[28] := EscreveCampo(06, 'D2', DateToStr(BoletosVENCIMENTO.Value));
      CampoReg[29] := EscreveCampo(13, 'N', FormatFloat(',0.00', BoletosDESCONTO.Value));
      CampoReg[30] := EscreveCampo(13, 'N', FormatFloat(',0.00', 0)); // IOF
      CampoReg[31] := EscreveCampo(13, 'N', FormatFloat(',0.00', 0)); // Abatimento ou multa

      if Length(CPFSacado) = 11 then
        CampoReg[32] := EscreveCampo(02, 'N', '1')
      else
        CampoReg[32] := EscreveCampo(02, 'N', '2');

      CampoReg[33] := EscreveCampo(14, 'N', CPFSacado);
      CampoReg[34] := EscreveCampo(40, 'X', NomeSacado);

      CampoReg[35] := EscreveCampo(38, 'X', qryPesq.FieldByName('LOGRADOURO').AsString);

      CampoReg[36] := EscreveCampo(02, 'N', '0');
      CampoReg[37] := EscreveCampo(12, 'X', qryPesq.FieldByName('BAIRRO').AsString);
      CampoReg[38] := EscreveCampo(08, 'N', qryPesq.FieldByName('CEP').AsString);
      CampoReg[39] := EscreveCampo(15, 'X', qryPesq.FieldByName('CIDADE').AsString);
      CampoReg[40] := EscreveCampo(02, 'X', qryPesq.FieldByName('UF').AsString);
      CampoReg[41] := EscreveCampo(39, 'X', '');
      CampoReg[42] := EscreveCampo(01, 'X', '');

      if (BancodeDados.BancosDIAS_PROTESTO.Value > 0) then
        CampoReg[43] := EscreveCampo(02, 'N', IntToStr(BancodeDados.BancosDIAS_PROTESTO.Value))
      else
        CampoReg[43] := EscreveCampo(02, 'X', '');

      CampoReg[44] := EscreveCampo(01, 'N', '9');
      CampoReg[45] := EscreveCampo(06, 'N', IntToStr(NSeqReg));
    end
    else

      if (CodBanco = 070) then
    begin
      CampoReg[01] := EscreveCampo(02, 'N', '01');
      CampoReg[02] := EscreveCampo(03, 'N', BancodeDados.BancosAGENCIA.Value);
      CampoReg[03] := EscreveCampo(07, 'N', BancodeDados.BancosCONTA_CORRENTE.Value + BancodeDados.BancosDIG_CONTA_CORRENTE.Value);
      CampoReg[04] := EscreveCampo(14, 'X', CPFSacado);
      CampoReg[05] := EscreveCampo(35, 'X', NomeSacado);

      CampoReg[06] := EscreveCampo(35, 'X', qryPesq.FieldByName('LOGRADOURO').AsString);
      CampoReg[07] := EscreveCampo(15, 'X', qryPesq.FieldByName('CIDADE').AsString);
      CampoReg[08] := EscreveCampo(02, 'X', qryPesq.FieldByName('UF').AsString);
      CampoReg[09] := EscreveCampo(08, 'N', qryPesq.FieldByName('CEP').AsString);

      if Length(CPFSacado) = 11 then
        CampoReg[10] := EscreveCampo(01, 'N', '1')
      else
        CampoReg[10] := EscreveCampo(01, 'N', '2');

      CampoReg[11] := EscreveCampo(13, 'X', BoletosEMISSAO_ID.AsString);
      CampoReg[12] := EscreveCampo(01, 'X', '2'); // Carteira Com Registro
      CampoReg[13] := EscreveCampo(08, 'D', DateToStr(BoletosEMISSAO.Value));
      CampoReg[14] := EscreveCampo(02, 'N', '21'); // DM
      CampoReg[15] := EscreveCampo(01, 'N', '0');
      CampoReg[16] := EscreveCampo(01, 'N', '0'); // No Vencimento
      CampoReg[17] := EscreveCampo(02, 'N', '02'); // REAL
      CampoReg[18] := EscreveCampo(03, 'N', IntToStr(CodBanco));
      CampoReg[19] := EscreveCampo(04, 'N', BancodeDados.BancosAGENCIA.Value);
      CampoReg[20] := EscreveCampo(30, 'X', '');
      CampoReg[21] := EscreveCampo(08, 'D', DateToStr(BoletosVENCIMENTO.Value));
      CampoReg[22] := EscreveCampo(14, 'N', FormatFloat('0.00', BoletosVALOR_DOC.Value));
      CampoReg[23] := EscreveCampo(12, 'N', BoletosNOSSO_NUMERO.Value);

      bancodeDados.GradeFin.close;
      bancodeDados.GradeFin.SQL.text:='select * from GRADE_FINANCEIRA where GRADE_ID = '+IntToStr(BoletosGRADE_ID.Value);
      bancodeDados.GradeFin.open;

      if not BancodeDados.GradeFin.IsEmpty then
      begin
        CampoReg[24] := EscreveCampo(02, 'N', '50');
        CampoReg[25] := EscreveCampo(14, 'N', FormatFloat(',0.00', (BoletosVALOR_DOC.Value * BancodeDados.GradeFinJUROS.Value) / 100));
      end
      else
      begin
        CampoReg[24] := EscreveCampo(02, 'N', '00');
        CampoReg[25] := EscreveCampo(14, 'N', FormatFloat(',0.00', 0)); // JUROS
      end;

      CampoReg[26] := EscreveCampo(14, 'N', FormatFloat(',0.00', 0));

      if (BoletosDESCONTO.Value > 0) then
      begin
        if BancodeDados.ConfigTIPO_BOLETO.value=2 then begin
          DecodeDate(BoletosVENCIMENTO.Value, Ano, Mes, Dia);
          vencTmp := EncodeDate(Ano, Mes, BancodeDados.BancosDESC_TOL.Value);
          CampoReg[27] := EscreveCampo(02, 'N', '53');
          CampoReg[28] := EscreveCampo(08, 'D', DateToStr(vencTmp));
          CampoReg[29] := EscreveCampo(14, 'N', FormatFloat(',0.00', BoletosDESCONTO.Value));
        end else begin
          CampoReg[27] := EscreveCampo(02, 'N', '53');
          CampoReg[28] := EscreveCampo(08, 'D', DateToStr(BoletosVENCIMENTO.Value));
          CampoReg[29] := EscreveCampo(14, 'N', FormatFloat(',0.00', BoletosDESCONTO.Value));
        end; //bancodedados.ConfigTIPO_BOLETO.value=2
      end
      else
      begin
        CampoReg[27] := EscreveCampo(02, 'N', '00');
        CampoReg[28] := EscreveCampo(08, 'N', '0');
        CampoReg[29] := EscreveCampo(14, 'N', FormatFloat(',0.00', 0));
      end;

      bancodeDados.GradeFin.close;
      bancodeDados.GradeFin.SQL.text:='select * from GRADE_FINANCEIRA where GRADE_ID = '+IntToStr(BoletosGRADE_ID.Value);
      bancodeDados.GradeFin.open;

      if not BancodeDados.GradeFin.IsEmpty then
      begin
        CampoReg[30] := EscreveCampo(02, 'N', '03');
        CampoReg[31] := EscreveCampo(02, 'N', IntToStr(BoletosDIAS_TOLERANCIA.Value));
        CampoReg[34] := EscreveCampo(05, 'N', FormatFloat(',0.00', BancodeDados.GradeFinMULTA.Value));
      end
      else
      begin
        CampoReg[30] := EscreveCampo(02, 'N', '0');
        CampoReg[31] := EscreveCampo(02, 'N', '0');
        CampoReg[34] := EscreveCampo(05, 'N', '0');
      end;

      if (BancodeDados.BancosDIAS_PROTESTO.Value > 0) then
      begin
        CampoReg[32] := EscreveCampo(02, 'N', '09');
        CampoReg[33] := EscreveCampo(02, 'N', IntToStr(BancodeDados.BancosDIAS_PROTESTO.Value));
      end
      else
      begin
        CampoReg[32] := EscreveCampo(02, 'N', '0');
        CampoReg[33] := EscreveCampo(02, 'N', '0');
      end;

      // o 34 ta mais em cima
      CampoReg[35] := EscreveCampo(40, 'X', BancodeDados.ConfigNOME.Value);
      CampoReg[36] := EscreveCampo(40, 'X', '');
      CampoReg[37] := EscreveCampo(32, 'X', '');
    end
    else

      if (CodBanco = 320) then
    begin
      CampoReg[01] := EscreveCampo(01, 'N', '1');

      if Length(RetornaNumeros(BancodeDados.ConfigCNPJ.Value)) = 11 then
        CampoReg[02] := EscreveCampo(02, 'N', '1')
      else
        CampoReg[02] := EscreveCampo(02, 'N', '2');
      CampoReg[03] := EscreveCampo(15, 'N', BancodeDados.ConfigCNPJ.Value);

      CampoReg[04] := EscreveCampo(10, 'N', FormatFloat('000', BancodeDados.BancosTIPO_CONTA_CORRENTE.Value) + FormatFloat('000000',
        BancodeDados.BancosCONTA_CORRENTE.AsInteger) + BancodeDados.BancosDIG_CONTA_CORRENTE.Value);
      CampoReg[05] := EscreveCampo(09, 'X', '');
      CampoReg[06] := EscreveCampo(25, 'X', IntToStr(BoletosEMISSAO_ID.Value));
      CampoReg[07] := EscreveCampo(08, 'N', BoletosNOSSO_NUMERO.Value);
      CampoReg[08] := EscreveCampo(37, 'X', '');
      CampoReg[09] := EscreveCampo(01, 'N', '3'); // Cobrança Caucionada
      CampoReg[10] := EscreveCampo(02, 'N', '01'); // Ocorrencia = Remessa
      CampoReg[11] := EscreveCampo(10, 'X', IntToStr(BoletosEMISSAO_ID.Value));
      CampoReg[12] := EscreveCampo(06, 'D2', DateToStr(BoletosVENCIMENTO.Value));
      CampoReg[13] := EscreveCampo(13, 'N', FormatFloat('0.00', BoletosVALOR_DOC.Value));
      CampoReg[14] := EscreveCampo(03, 'N', IntToStr(CodBanco));
      CampoReg[15] := EscreveCampo(05, 'N', '00900'); // Agencia Cobradora
      CampoReg[16] := EscreveCampo(02, 'N', '92'); // Especia - Este codigo não tem no manual, foi informado pelo banco.
      CampoReg[17] := EscreveCampo(01, 'X', 'N'); // aceite
      CampoReg[18] := EscreveCampo(06, 'D2', DateToStr(BoletosEMISSAO.Value));

      CampoReg[19] := EscreveCampo(02, 'X', '00');
      CampoReg[20] := EscreveCampo(02, 'X', '00');
      {
        if (BancodeDados.BancosDIAS_PROTESTO.Value > 0) then
        begin
        CampoReg[19]:=EscreveCampo(02, 'N', '07'); //PROTESTAR XX DIAS APÓS O VENCIMENTO
        end
        else
        begin
        CampoReg[19]:=EscreveCampo(02, 'X', '');
        end;
        CampoReg[20]:=EscreveCampo(02, 'X', '');
      }
      {
        CampoReg[19] := EscreveCampo(02, 'N', '03'); // NÃO DISPENSAR JUROS DE MORA
        CampoReg[20] := EscreveCampo(02, 'N', '94'); // MENSAGEM COM 40 POSIÇÕES
      }

      bancodeDados.GradeFin.close;
      bancodeDados.GradeFin.SQL.text:='select * from GRADE_FINANCEIRA where GRADE_ID = '+IntToStr(BoletosGRADE_ID.Value);
      bancodeDados.GradeFin.open;

      if not BancodeDados.GradeFin.IsEmpty then
      begin
        CampoReg[21] := EscreveCampo(13, 'N', FormatFloat(',0.00', (BoletosVALOR_DOC.Value * BancodeDados.GradeFinJUROS.Value) / 100));
      end
      else
      begin
        CampoReg[21] := EscreveCampo(13, 'N', FormatFloat(',0.00', 0)); // JUROS
      end;

      if (BoletosDESCONTO.Value > 0) then
      begin
        CampoReg[22] := EscreveCampo(06, 'D2', DateToStr(BoletosVENCIMENTO.Value));
        CampoReg[23] := EscreveCampo(13, 'N', FormatFloat('0.00', BoletosDESCONTO.Value));
      end
      else
      begin
        CampoReg[22] := EscreveCampo(06, 'N', '0');
        CampoReg[23] := EscreveCampo(13, 'N', FormatFloat('0.00', 0));
      end;

      CampoReg[24] := EscreveCampo(13, 'N', FormatFloat('0.00', 0)); // IOF
      CampoReg[25] := EscreveCampo(13, 'N', FormatFloat('0.00', 0)); // Abatimento

      if Length(CPFSacado) = 11 then
        CampoReg[26] := EscreveCampo(02, 'N', '1')
      else
        CampoReg[26] := EscreveCampo(02, 'N', '2');

      CampoReg[27] := EscreveCampo(15, 'N', CPFSacado);
      CampoReg[28] := EscreveCampo(40, 'X', NomeSacado);


      CampoReg[29] := EscreveCampo(40, 'X', qryPesq.FieldByName('LOGRADOURO').AsString);
      CampoReg[30] := EscreveCampo(12, 'X', qryPesq.FieldByName('BAIRRO').AsString);
      CampoReg[31] := EscreveCampo(08, 'N', qryPesq.FieldByName('CEP').AsString);
      CampoReg[32] := EscreveCampo(15, 'X', qryPesq.FieldByName('CIDADE').AsString);
      CampoReg[33] := EscreveCampo(02, 'X', qryPesq.FieldByName('UF').AsString);

      { if (BancodeDados.BancosSAC_AVALISTA.Value = 1) then begin
        CampoReg[34]:=EscreveCampo(40,  'X', BancodeDados.ConfigNOME.Value);
        end else begin
        CampoReg[34]:=EscreveCampo(40,  'X', '');
        end; }
      bancodeDados.GradeFin.close;
      bancodeDados.GradeFin.SQL.text:='select * from GRADE_FINANCEIRA where GRADE_ID = '+IntToStr(BoletosGRADE_ID.Value);
      bancodeDados.GradeFin.open;

      if not BancodeDados.GradeFin.IsEmpty then
      begin
        // CampoReg[34] := EscreveCampo(40, 'X', 'MULTA DE ' + FormatFloat(',0.##%', BancodeDados.GradeFinMULTA.Value) + ' APOS VENCIMENTO');
        CampoReg[34] := EscreveCampo(01, 'N', '2'); // Percentual
        CampoReg[35] := EscreveCampo(06, 'D2', DateToStr(BoletosVENCIMENTO.Value + 1));  //eraldo incluiu este + 1 Deverá ser no dia posterior ao vencimento
        CampoReg[36] := EscreveCampo(13, 'N', FormatFloat('0.00', BancodeDados.GradeFinMULTA.Value));
      end
      else
      begin
        // CampoReg[34] := EscreveCampo(40, 'X', '');
        CampoReg[34] := EscreveCampo(01, 'N', '3'); // Isento
        CampoReg[35] := EscreveCampo(06, 'N', '0');
        CampoReg[36] := EscreveCampo(13, 'N', '0');
      end;

      CampoReg[37] := EscreveCampo(19, 'X', '');

      if (BancodeDados.BancosDIAS_PROTESTO.Value > 0) then
      begin
        CampoReg[38] := EscreveCampo(02, 'N', IntToStr(BancodeDados.BancosDIAS_PROTESTO.Value));
      end
      else
      begin
        CampoReg[38] := EscreveCampo(02, 'N', '0');
      end;

      CampoReg[39] := EscreveCampo(01, 'N', '9');
      CampoReg[40] := EscreveCampo(06, 'N', IntToStr(NSeqReg));
    end
    else

    if (CodBanco = 707) then  {Daycoval comeco}
    begin
      CampoReg[01] := EscreveCampo(01, 'N', '1');

      if Length(RetornaNumeros(BancodeDados.ConfigCNPJ.Value)) = 11 then
        CampoReg[02] := EscreveCampo(02, 'N', '1')
      else
        CampoReg[02] := EscreveCampo(02, 'N', '2');
      CampoReg[03] := EscreveCampo(14, 'N', BancodeDados.ConfigCNPJ.Value);

      CampoReg[04] := EscreveCampo(20, 'X', BancodeDados.BancosCODIGO_CEDENTE.Value);
      CampoReg[05] := EscreveCampo(25, 'X', IntToStr(BoletosEMISSAO_ID.Value));
      CampoReg[06] := EscreveCampo(08, 'N', '0');

      //CampoReg[07] := EscreveCampo(13, 'N', (BoletosNOSSO_NUMERO.Value)); //eraldo cometou  em  24/02/2014   71-83  faltando o P //CampoReg[07] := EscreveCampo(13, 'N', BoletosNOSSO_NUMERO.Value);
      CampoReg[07] := EscreveCampo(13, 'X', ('0'+RetornaNumerosComDV(BoletosNOSSO_NUMERO.Value)) ); //incluir um '0' no inicio para formatar no tamanho certo

      CampoReg[08] := EscreveCampo(24, 'X', '');
      CampoReg[09] := EscreveCampo(01, 'N', '4'); // cod remessa
      CampoReg[10] := EscreveCampo(02, 'N', '01'); // Ocorrencia = Remessa
      CampoReg[11] := EscreveCampo(10, 'X', IntToStr(BoletosEMISSAO_ID.Value));
      CampoReg[12] := EscreveCampo(06, 'D2', DateToStr(BoletosVENCIMENTO.Value));
      CampoReg[13] := EscreveCampo(13, 'N', FormatFloat('0.00', BoletosVALOR_DOC.Value));
      CampoReg[14] := EscreveCampo(03, 'N', IntToStr(CodBanco));
      CampoReg[15] := EscreveCampo(05, 'N', '0'); // Agencia Cobradora
      CampoReg[16] := EscreveCampo(02, 'N', '01'); // Especie
      CampoReg[17] := EscreveCampo(01, 'X', 'N'); // aceite
      CampoReg[18] := EscreveCampo(06, 'D2', DateToStr(BoletosEMISSAO.Value));

      CampoReg[19] := '00';
      CampoReg[20] := '00';

      bancodeDados.GradeFin.close;
      bancodeDados.GradeFin.SQL.text:='select * from GRADE_FINANCEIRA where GRADE_ID = '+IntToStr(BoletosGRADE_ID.Value);
      bancodeDados.GradeFin.open;

      if not BancodeDados.GradeFin.IsEmpty then
      begin
        CampoReg[21] := EscreveCampo(13, 'N', FormatFloat(',0.00', 0)); // JUROS ///CampoReg[21] := EscreveCampo(13, 'N', FormatFloat(',0.00', (BoletosVALOR_DOC.Value * BancodeDados.GradeFinJUROS.Value) / 100));
      end //eraldo em 24/02/16: deve ser zeros - Juros de Mora deve ser encaminhado por email ao gerente Daycoval para cadastro fixo em sistema (Juros a.m.)
      else
      begin
        CampoReg[21] := EscreveCampo(13, 'N', FormatFloat(',0.00', 0)); // JUROS
      end;

      if (BoletosDESCONTO.Value > 0) then
      begin
        CampoReg[22] := EscreveCampo(06, 'D2', DateToStr(BoletosVENCIMENTO.Value));
        CampoReg[23] := EscreveCampo(13, 'N', FormatFloat('0.00', BoletosDESCONTO.Value));
      end
      else
      begin
        CampoReg[22] := EscreveCampo(06, 'N', '0');
        CampoReg[23] := EscreveCampo(13, 'N', FormatFloat('0.00', 0));
      end;

      CampoReg[24] := EscreveCampo(26, 'N', FormatFloat('0.00', 0)); // IOF

      if Length(CPFSacado) = 11 then
        CampoReg[25] := EscreveCampo(02, 'N', '1')
      else
        CampoReg[25] := EscreveCampo(02, 'N', '2');

      CampoReg[26] := EscreveCampo(14, 'N', CPFSacado);
      CampoReg[27] := EscreveCampo(30, 'X', NomeSacado);
      CampoReg[28] := EscreveCampo(10, 'X', '');

      CampoReg[29] := EscreveCampo(40, 'X', qryPesq.FieldByName('LOGRADOURO').AsString);
      CampoReg[30] := EscreveCampo(12, 'X', qryPesq.FieldByName('BAIRRO').AsString);
      CampoReg[31] := EscreveCampo(08, 'N', qryPesq.FieldByName('CEP').AsString);
      CampoReg[32] := EscreveCampo(15, 'X', qryPesq.FieldByName('CIDADE').AsString);
      CampoReg[33] := EscreveCampo(02, 'X', qryPesq.FieldByName('UF').AsString);
      //CampoReg[34] := EscreveCampo(30, 'X', '');  //eraldo cometou em 24/02/16 inluindo o nome do cedente no detalhe
      CampoReg[34] := EscreveCampo(30, 'X', copy(BancodeDados.ConfigNOME.Value,0,29));
      CampoReg[35] := EscreveCampo(04, 'X', '');
      CampoReg[36] := EscreveCampo(06, 'X', '');
      CampoReg[37] := '00';
      CampoReg[38] := '0';
      CampoReg[39] := EscreveCampo(06, 'N', IntToStr(NSeqReg));
    end
    else {Daycoval fim}

      if (CodBanco = 356) then
    begin
      CampoReg[01] := EscreveCampo(01, 'N', '1');

      if Length(RetornaNumeros(BancodeDados.ConfigCNPJ.Value)) = 11 then
        CampoReg[02] := EscreveCampo(02, 'N', '1')
      else
        CampoReg[02] := EscreveCampo(02, 'N', '2');
      CampoReg[03] := EscreveCampo(14, 'N', BancodeDados.ConfigCNPJ.Value);

      CampoReg[04] := EscreveCampo(01, 'N', '0');
      CampoReg[05] := EscreveCampo(04, 'N', BancodeDados.BancosAGENCIA.Value);
      CampoReg[06] := EscreveCampo(01, 'N', '0');
      CampoReg[07] := EscreveCampo(07, 'N', BancodeDados.BancosCONTA_CORRENTE.Value);
      CampoReg[08] := EscreveCampo(07, 'X', '');
      CampoReg[09] := EscreveCampo(25, 'X', IntToStr(BoletosEMISSAO_ID.Value));
      CampoReg[10] := EscreveCampo(02, 'N', '00');
      CampoReg[11] := EscreveCampo(07, 'N', BoletosNOSSO_NUMERO.Value);
      CampoReg[12] := EscreveCampo(01, 'N', '0'); // Multa - Sobre o valor Título
      CampoReg[13] := EscreveCampo(02, 'N', IntToStr(BoletosDIAS_TOLERANCIA.Value));

      CampoReg[14] := EscreveCampo(01, 'N', '0'); // Multa por valor



      bancodeDados.GradeFin.close;
      bancodeDados.GradeFin.SQL.text:='select * from GRADE_FINANCEIRA where GRADE_ID = '+IntToStr(BoletosGRADE_ID.Value);
      bancodeDados.GradeFin.open;

      if not BancodeDados.GradeFin.IsEmpty then
      begin
        CampoReg[15] := EscreveCampo(13, 'N', FormatFloat(',0.00', (BoletosVALOR_DOC.Value * BancodeDados.GradeFinMULTA.Value) / 100));
      end
      else
      begin
        CampoReg[15] := EscreveCampo(13, 'N', '0');
      end;

      CampoReg[16] := EscreveCampo(07, 'X', '');
      CampoReg[17] := EscreveCampo(09, 'N', IntToStr(BancodeDados.BancosCONTRATO.Value));
      CampoReg[18] := EscreveCampo(01, 'X', '');
      CampoReg[19] := EscreveCampo(02, 'N', IntToStr(BancodeDados.BancosCARTEIRA.Value));
      CampoReg[20] := EscreveCampo(01, 'N', '1'); // Cobrança Simples
      CampoReg[21] := EscreveCampo(02, 'N', '01'); // Código da Ocorrência
      CampoReg[22] := EscreveCampo(10, 'X', IntToStr(BoletosEMISSAO_ID.Value));
      CampoReg[23] := EscreveCampo(06, 'D2', DateToStr(BoletosVENCIMENTO.Value));
      CampoReg[24] := EscreveCampo(13, 'N', FormatFloat('0.00', BoletosVALOR_DOC.Value));
      CampoReg[25] := EscreveCampo(03, 'N', IntToStr(CodBanco));
      CampoReg[26] := EscreveCampo(05, 'N', '0'); // Agência Cobradora
      CampoReg[27] := EscreveCampo(02, 'N', '01'); // '01' – Duplicata
      CampoReg[28] := EscreveCampo(01, 'X', 'N'); // Aceite
      CampoReg[29] := EscreveCampo(06, 'D2', DateToStr(BoletosEMISSAO.Value));

      if (BancodeDados.BancosDIAS_PROTESTO.Value > 0) then
      begin
        CampoReg[30] := EscreveCampo(02, 'N', IntToStr(BancodeDados.BancosDIAS_PROTESTO.Value));
      end
      else
      begin
        CampoReg[30] := EscreveCampo(02, 'N', '99'); // Não protestar
      end;

      CampoReg[31] := EscreveCampo(02, 'X', '');

      CampoReg[32] := EscreveCampo(01, 'N', '0'); // Juros por valor


      bancodeDados.GradeFin.close;
      bancodeDados.GradeFin.SQL.text:='select * from GRADE_FINANCEIRA where GRADE_ID = '+IntToStr(BoletosGRADE_ID.Value);
      bancodeDados.GradeFin.open;

      if not BancodeDados.GradeFin.IsEmpty then
      begin
        CampoReg[33] := EscreveCampo(12, 'N', FormatFloat(',0.00', (BoletosVALOR_DOC.Value * BancodeDados.GradeFinJUROS.Value) / 100));
      end
      else
      begin
        CampoReg[33] := EscreveCampo(12, 'N', '0');
      end;

      CampoReg[34] := EscreveCampo(06, 'D2', DateToStr(BoletosVENCIMENTO.Value + BoletosDIAS_TOLERANCIA.Value));
      CampoReg[35] := EscreveCampo(13, 'N', FormatFloat('0.00', BoletosDESCONTO.Value));
      CampoReg[36] := EscreveCampo(13, 'N', '0');
      CampoReg[37] := EscreveCampo(13, 'N', '0');

      if Length(CPFSacado) = 11 then
      begin
        CampoReg[38] := EscreveCampo(02, 'N', '01');
        CampoReg[39] := EscreveCampo(14, 'N', Copy(CPFSacado, 1, 9) + '000' + Copy(CPFSacado, 10, 2));
      end
      else
      begin
        CampoReg[38] := EscreveCampo(02, 'N', '02');
        CampoReg[39] := EscreveCampo(14, 'N', CPFSacado);
      end;

      CampoReg[40] := EscreveCampo(40, 'X', NomeSacado);

      CampoReg[41] := EscreveCampo(40, 'X', qryPesq.FieldByName('LOGRADOURO').AsString);
      CampoReg[42] := EscreveCampo(12, 'X', qryPesq.FieldByName('BAIRRO').AsString);
      CampoReg[43] := EscreveCampo(08, 'N', qryPesq.FieldByName('CEP').AsString);
      CampoReg[44] := EscreveCampo(15, 'X', qryPesq.FieldByName('CIDADE').AsString);
      CampoReg[45] := EscreveCampo(02, 'X', qryPesq.FieldByName('UF').AsString);
      CampoReg[46] := EscreveCampo(40, 'X', ''); // Sacador
      CampoReg[47] := EscreveCampo(01, 'N', '0'); // Moeda
      CampoReg[48] := EscreveCampo(02, 'N', '07'); // Tipo/Moeda
      CampoReg[49] := EscreveCampo(06, 'N', IntToStr(NSeqReg));
    end
    else

      if (CodBanco = 389) then
    begin
      CampoReg[01] := EscreveCampo(01, 'N', '1');

      bancodeDados.GradeFin.close;
      bancodeDados.GradeFin.SQL.text:='select * from GRADE_FINANCEIRA where GRADE_ID = '+IntToStr(BoletosGRADE_ID.Value);
      bancodeDados.GradeFin.open;

      if not BancodeDados.GradeFin.IsEmpty then
      begin
        CampoReg[02] := EscreveCampo(02, 'N', '09');
        CampoReg[03] := EscreveCampo(01, 'N', '1');
        CampoReg[04] := EscreveCampo(13, 'N', FormatFloat(',0.00', (BoletosVALOR_DOC.Value * BancodeDados.GradeFinMULTA.Value) / 100));
        CampoReg[05] := EscreveCampo(06, 'D2', DateToStr(BoletosVENCIMENTO.Value + BoletosDIAS_TOLERANCIA.Value));
      end
      else
      begin
        CampoReg[02] := EscreveCampo(02, 'N', '00');
        CampoReg[03] := EscreveCampo(01, 'N', '0');
        CampoReg[04] := EscreveCampo(13, 'N', '0');
        CampoReg[05] := EscreveCampo(06, 'N', '0');
      end;

      CampoReg[06] := EscreveCampo(05, 'X', '');
      CampoReg[07] := EscreveCampo(09, 'N', IntToStr(BancodeDados.BancosCONTRATO.Value));
      CampoReg[08] := EscreveCampo(25, 'X', IntToStr(BoletosEMISSAO_ID.Value));
      CampoReg[09] := EscreveCampo(04, 'N', BancodeDados.BancosAGENCIA.Value);
      CampoReg[10] := EscreveCampo(11, 'N', BoletosNOSSO_NUMERO.Value);
      CampoReg[11] := EscreveCampo(05, 'X', '');
      CampoReg[12] := EscreveCampo(15, 'N', BancodeDados.ConfigCNPJ.Value);
      CampoReg[13] := EscreveCampo(10, 'N', '0');
      CampoReg[14] := EscreveCampo(01, 'N', BancodeDados.BancosCARTEIRA.AsString); // COBRANÇA SIMPLES
      CampoReg[15] := EscreveCampo(02, 'N', '01'); // REMESSA – ENTRADA NORMAL
      CampoReg[16] := EscreveCampo(10, 'X', IntToStr(BoletosEMISSAO_ID.Value));
      CampoReg[17] := EscreveCampo(06, 'D2', DateToStr(BoletosVENCIMENTO.Value));
      CampoReg[18] := EscreveCampo(13, 'N', FormatFloat('0.00', BoletosVALOR_DOC.Value));
      CampoReg[19] := EscreveCampo(03, 'N', IntToStr(CodBanco));
      CampoReg[20] := EscreveCampo(05, 'N', '0');
      CampoReg[21] := EscreveCampo(02, 'N', '01'); // DUPLICATA MERCANTIL
      CampoReg[22] := EscreveCampo(01, 'X', 'N'); // Aceite
      CampoReg[23] := EscreveCampo(06, 'D2', DateToStr(BoletosEMISSAO.Value));
      CampoReg[24] := EscreveCampo(02, 'N', '26'); // NÃO DISPENSAR JUROS DE MORA
      CampoReg[25] := EscreveCampo(02, 'N', '00');

      bancodeDados.GradeFin.close;
      bancodeDados.GradeFin.SQL.text:='select * from GRADE_FINANCEIRA where GRADE_ID = '+IntToStr(BoletosGRADE_ID.Value);
      bancodeDados.GradeFin.open;

      if not BancodeDados.GradeFin.IsEmpty then
      begin
        CampoReg[26] := EscreveCampo(13, 'N', FormatFloat(',0.00', (BoletosVALOR_DOC.Value * BancodeDados.GradeFinJUROS.Value) / 100));
      end
      else
      begin
        CampoReg[26] := EscreveCampo(13, 'N', '0');
      end;

      CampoReg[27] := EscreveCampo(06, 'D2', DateToStr(BoletosVENCIMENTO.Value + BoletosDIAS_TOLERANCIA.Value));
      CampoReg[28] := EscreveCampo(13, 'N', FormatFloat('0.00', BoletosDESCONTO.Value));
      CampoReg[29] := EscreveCampo(13, 'N', '0');
      CampoReg[30] := EscreveCampo(13, 'N', '0');

      if Length(CPFSacado) = 11 then
        CampoReg[31] := EscreveCampo(02, 'N', '1')
      else
        CampoReg[31] := EscreveCampo(02, 'N', '2');

      CampoReg[32] := EscreveCampo(14, 'N', CPFSacado);
      CampoReg[33] := EscreveCampo(40, 'X', NomeSacado);

      CampoReg[34] := EscreveCampo(40, 'X', qryPesq.FieldByName('LOGRADOURO').AsString);
      CampoReg[35] := EscreveCampo(12, 'X', qryPesq.FieldByName('BAIRRO').AsString);
      CampoReg[36] := EscreveCampo(08, 'N', qryPesq.FieldByName('CEP').AsString);
      CampoReg[37] := EscreveCampo(15, 'X', qryPesq.FieldByName('CIDADE').AsString);
      CampoReg[38] := EscreveCampo(02, 'X', qryPesq.FieldByName('UF').AsString);
      CampoReg[39] := EscreveCampo(30, 'X', ''); // Sacador
      CampoReg[40] := EscreveCampo(12, 'X', '');
      CampoReg[41] := EscreveCampo(01, 'N', '1'); // Real
      CampoReg[42] := EscreveCampo(06, 'N', IntToStr(NSeqReg));
    end
    else

      if (CodBanco = 422) then
    begin
      CampoReg[01] := EscreveCampo(01, 'N', '1');

      if Length(RetornaNumeros(BancodeDados.ConfigCNPJ.Value)) = 11 then
        CampoReg[02] := EscreveCampo(02, 'N', '1')
      else
        CampoReg[02] := EscreveCampo(02, 'N', '2');
      CampoReg[03] := EscreveCampo(14, 'N', BancodeDados.ConfigCNPJ.Value);

      CampoReg[04] := EscreveCampo(14, 'N', BancodeDados.BancosCODIGO_CEDENTE.Value);;
      // EscreveCampo(05, 'N', BancodeDados.BancosAGENCIA.Value) + EscreveCampo(09, 'N', BancodeDados.BancosCONTA_CORRENTE.Value);
      CampoReg[05] := EscreveCampo(06, 'X', '');
      CampoReg[06] := EscreveCampo(25, 'X', IntToStr(BoletosEMISSAO_ID.Value));
      CampoReg[07] := EscreveCampo(09, 'N', BoletosNOSSO_NUMERO.Value);
      CampoReg[08] := EscreveCampo(30, 'X', '');
      CampoReg[09] := '0';
      CampoReg[10] := '00';
      CampoReg[11] := ' ';
      CampoReg[12] := EscreveCampo(02, 'X', '00'); // 3ª INSTRUCAO

      CampoReg[13] := '2'; // CARTEIRA VINCULADA
      CampoReg[14] := '01'; // tipo ocorrencia

      CampoReg[15] := EscreveCampo(10, 'X', IntToStr(BoletosEMISSAO_ID.Value));
      CampoReg[16] := EscreveCampo(06, 'D2', DateToStr(BoletosVENCIMENTO.Value));
      CampoReg[17] := EscreveCampo(13, 'N', FormatFloat('0.00', BoletosVALOR_DOC.Value));

      if (BancodeDados.BancosCODIGO_BANCO2.Value > 0) then
        CampoReg[18] := EscreveCampo(03, 'N', IntToStr(BancodeDados.BancosCODIGO_BANCO2.Value))
      else
        CampoReg[18] := EscreveCampo(03, 'N', IntToStr(CodBanco));

      CampoReg[19] := EscreveCampo(05, 'N', '0'); // Agência Cobradora
      CampoReg[20] := EscreveCampo(02, 'N', '01'); // '01' – Duplicata
      CampoReg[21] := EscreveCampo(01, 'X', 'N'); // Aceite
      CampoReg[22] := EscreveCampo(06, 'D2', DateToStr(BoletosEMISSAO.Value));

      bancodeDados.GradeFin.close;
      bancodeDados.GradeFin.SQL.text:='select * from GRADE_FINANCEIRA where GRADE_ID = '+IntToStr(BoletosGRADE_ID.Value);
      bancodeDados.GradeFin.open;

      if not BancodeDados.GradeFin.IsEmpty then
      begin
        CampoReg[23] := '16'; // multa
        CampoReg[29] := EscreveCampo(06, 'D2', DateToStr(BoletosVENCIMENTO.Value + BoletosDIAS_TOLERANCIA.Value)) +
          EscreveCampo(04, 'N', FormatFloat(',0.00', BancodeDados.GradeFinMULTA.Value)) + '000';

        CampoReg[25] := EscreveCampo(13, 'N', FormatFloat(',0.00', (BoletosVALOR_DOC.Value * BancodeDados.GradeFinJUROS.Value) / 100));
      end
      else
      begin
        CampoReg[23] := '08'; // não cobrar juros/multa
        CampoReg[29] := EscreveCampo(13, 'X', '');

        CampoReg[25] := EscreveCampo(13, 'X', '');
      end;

      { if (BancodeDados.BancosDIAS_PROTESTO.Value > 0) then
        begin
        CampoReg[24] := '10';
        CampoReg[12] := EscreveCampo(02, 'N', IntToStr(BancodeDados.BancosDIAS_PROTESTO.Value)); //3ª INSTRUCAO
        end
        else
        begin
        CampoReg[24] := '  ';
        end; }
      CampoReg[24] := '01';

      if (BoletosDESCONTO.Value > 0) then
      begin
        CampoReg[26] := EscreveCampo(06, 'D2', DateToStr(BoletosVENCIMENTO.Value + BoletosDIAS_TOLERANCIA.Value));
        CampoReg[27] := EscreveCampo(13, 'N', FormatFloat('0.00', BoletosDESCONTO.Value));
      end
      else
      begin
        CampoReg[26] := EscreveCampo(06, 'N', '0');
        CampoReg[27] := EscreveCampo(13, 'N', '0');
      end;

      CampoReg[28] := EscreveCampo(13, 'N', FormatFloat('0.00', 0));

      if Length(CPFSacado) = 11 then
      begin
        CampoReg[30] := '01';
      end
      else
      begin
        CampoReg[30] := '02';
      end;

      CampoReg[31] := EscreveCampo(14, 'N', CPFSacado);
      CampoReg[32] := EscreveCampo(40, 'X', NomeSacado);

      CampoReg[33] := EscreveCampo(40, 'X', qryPesq.FieldByName('LOGRADOURO').AsString);
      CampoReg[34] := EscreveCampo(10, 'X', qryPesq.FieldByName('BAIRRO').AsString);
      CampoReg[35] := '  ';
      CampoReg[36] := EscreveCampo(08, 'N', qryPesq.FieldByName('CEP').AsString);
      CampoReg[37] := EscreveCampo(15, 'X', qryPesq.FieldByName('CIDADE').AsString);
      CampoReg[38] := EscreveCampo(02, 'X', qryPesq.FieldByName('UF').AsString);
      CampoReg[39] := EscreveCampo(30, 'X', BancodeDados.ConfigNOME.Value); // Sacador
      CampoReg[40] := EscreveCampo(07, 'X', '');
      CampoReg[41] := EscreveCampo(03, 'N', IntToStr(CodBanco));
      CampoReg[42] := EscreveCampo(03, 'N', IntToStr(NSeqArquivo));
      CampoReg[43] := EscreveCampo(06, 'N', IntToStr(NSeqReg));
    end
    else

      if (CodBanco = 756) then
    begin
      CampoReg[01] := EscreveCampo(01, 'N', '1');

      if Length(RetornaNumeros(BancodeDados.ConfigCNPJ.Value)) = 11 then
        CampoReg[02] := EscreveCampo(02, 'N', '1')
      else
        CampoReg[02] := EscreveCampo(02, 'N', '2');
      CampoReg[03] := EscreveCampo(14, 'N', BancodeDados.ConfigCNPJ.Value);

      CampoReg[04] := EscreveCampo(04, 'N', BancodeDados.BancosAGENCIA.Value);
      CampoReg[05] := EscreveCampo(01, 'X', BancodeDados.BancosDIG_AGENCIA.Value);
      CampoReg[06] := EscreveCampo(08, 'N', BancodeDados.BancosCONTA_CORRENTE.Value);
      CampoReg[07] := EscreveCampo(01, 'X', BancodeDados.BancosDIG_CONTA_CORRENTE.Value);
      CampoReg[08] := '000000';
      CampoReg[09] := EscreveCampo(25, 'X', '');
      CampoReg[10] := EscreveCampo(12, 'N', BoletosNOSSO_NUMERO.Value);
      CampoReg[11] := '01';
      CampoReg[12] := '00';

      CampoReg[13] := EscreveCampo(03, 'X', '');
      CampoReg[14] := ' '; 

      CampoReg[15] := EscreveCampo(03, 'X', '');
      CampoReg[16] := '000';
      CampoReg[17] := '0';
      CampoReg[18] := '00000';
      CampoReg[19] := '0';
      CampoReg[20] := EscreveCampo(06, 'X', '');
      CampoReg[21] := EscreveCampo(04, 'X', '');
      CampoReg[22] := '2';

      CampoReg[23] := '01';
      CampoReg[24] := '01';
      CampoReg[25] := EscreveCampo(10, 'X', BoletosEMISSAO_ID.AsString);
      CampoReg[26] := EscreveCampo(06, 'D2', DateToStr(BoletosVENCIMENTO.Value + BoletosDIAS_TOLERANCIA.Value));
      CampoReg[27] := EscreveCampo(13, 'N', FormatFloat('0.00', BoletosVALOR_DOC.Value));
      CampoReg[28] := '756';

      CampoReg[29] := EscreveCampo(04, 'N', BancodeDados.BancosAGENCIA.Value);
      CampoReg[30] := EscreveCampo(01, 'X', BancodeDados.BancosDIG_AGENCIA.Value);
      CampoReg[31] := '01';//Duplicata Mercantil
      CampoReg[32] := '0';
      CampoReg[33] := EscreveCampo(06, 'D2', DateToStr(BoletosEMISSAO.Value));


      CampoReg[34] := '00';
      CampoReg[35] := '00';
      CampoReg[36] := EscreveCampo(06, 'N', '0');
      CampoReg[37] := EscreveCampo(06, 'N', '0');
      CampoReg[39] := EscreveCampo(06, 'N', '0');
      CampoReg[40] := EscreveCampo(13, 'N', '0');

      bancodeDados.GradeFin.close;
      bancodeDados.GradeFin.SQL.text:='select * from GRADE_FINANCEIRA where GRADE_ID = '+IntToStr(BoletosGRADE_ID.Value);
      bancodeDados.GradeFin.open;

      if not BancodeDados.GradeFin.IsEmpty then
      begin
        CampoReg[34] := '01'; // juros
        if (BancodeDados.GradeFinJUROS_MES.Value > 0) then
          CampoReg[36] := EscreveCampo(06, 'N', FormatFloat('0.0000', BancodeDados.GradeFinJUROS_MES.Value))
        else
          CampoReg[36] := EscreveCampo(06, 'N', FormatFloat('0.0000', BancodeDados.GradeFinJUROS.Value * 30));
        CampoReg[37] := EscreveCampo(06, 'N', FormatFloat('0.0000', BancodeDados.GradeFinMULTA.Value));
      end;

      CampoReg[38] := '2';

      if (BoletosDESCONTO.Value > 0) then
      begin
        CampoReg[39] := EscreveCampo(06, 'D2', DateToStr(BoletosVENCIMENTO.Value + BoletosDIAS_TOLERANCIA.Value));
        CampoReg[40] := EscreveCampo(13, 'N', FormatFloat('0.00', BoletosDESCONTO.Value));
      end;

      CampoReg[41] := '9' + EscreveCampo(12, 'N', '0');
      CampoReg[42] := EscreveCampo(13, 'N', '0');

      if Length(RetornaNumeros(CPFSacado)) = 11 then
        CampoReg[43] := EscreveCampo(02, 'N', '1')
      else
        CampoReg[43] := EscreveCampo(02, 'N', '2');
      CampoReg[44] := EscreveCampo(14, 'N', CPFSacado);
      CampoReg[45] := EscreveCampo(40, 'X', NomeSacado);

      CampoReg[46] := EscreveCampo(37, 'X', qryPesq.FieldByName('LOGRADOURO').AsString);
      CampoReg[47] := EscreveCampo(15, 'X', qryPesq.FieldByName('BAIRRO').AsString);
      CampoReg[48] := EscreveCampo(08, 'N', qryPesq.FieldByName('CEP').AsString);
      CampoReg[49] := EscreveCampo(15, 'X', qryPesq.FieldByName('CIDADE').AsString);
      CampoReg[50] := EscreveCampo(02, 'X', qryPesq.FieldByName('UF').AsString);
      CampoReg[51] := EscreveCampo(40, 'X', '');
      CampoReg[52] := EscreveCampo(02, 'N', '0');
      CampoReg[53] := EscreveCampo(01, 'X', '');
      CampoReg[54] := EscreveCampo(06, 'N', IntToStr(NSeqReg));
    end;

    Linha := '';
    for i := 1 to Length(CampoReg) do
      Linha := Linha + CampoReg[i];

    Writeln(FRem, Linha);
  end;
end;

procedure Detalhe400Reg02;
var
  i: integer;
  Linha: String;
  CampoReg: Array [1 .. 14] of String;
begin
  for i := 1 to Length(CampoReg) do
    CampoReg[i] := '';

  with RemessaForm do
  begin
    inc(NSeqReg);

    if (CodBanco = 320) then
    begin
      CampoReg[01] := EscreveCampo(01, 'N', '2');

      if Length(RetornaNumeros(BancodeDados.ConfigCNPJ.Value)) = 11 then
        CampoReg[02] := EscreveCampo(02, 'N', '1')
      else
        CampoReg[02] := EscreveCampo(02, 'N', '2');
      CampoReg[03] := EscreveCampo(15, 'N', BancodeDados.ConfigCNPJ.Value);

      CampoReg[04] := EscreveCampo(10, 'N', FormatFloat('000', BancodeDados.BancosTIPO_CONTA_CORRENTE.Value) + FormatFloat('000000',
        BancodeDados.BancosCONTA_CORRENTE.AsInteger) + BancodeDados.BancosDIG_CONTA_CORRENTE.Value);
      CampoReg[05] := EscreveCampo(09, 'X', '');
      CampoReg[06] := EscreveCampo(25, 'X', IntToStr(BoletosEMISSAO_ID.Value));
      CampoReg[07] := EscreveCampo(08, 'N', BoletosNOSSO_NUMERO.Value);
      CampoReg[08] := EscreveCampo(37, 'X', '');

      { if (BancodeDados.BancosSAC_AVALISTA.Value = 1) then
        begin
        CampoReg[09] := EscreveCampo(40, 'X', BancodeDados.ConfigNOME.Value);
        if Length(RetornaNumeros(BancodeDados.ConfigCNPJ.Value)) = 11 then
        CampoReg[10] := EscreveCampo(02, 'N', '1')
        else
        CampoReg[10] := EscreveCampo(02, 'N', '2');
        CampoReg[11] := EscreveCampo(15, 'N', BancodeDados.ConfigCNPJ.Value);
        end
        else }
      begin
        CampoReg[09] := EscreveCampo(40, 'X', '');
        CampoReg[10] := EscreveCampo(02, 'N', '0');
        CampoReg[11] := EscreveCampo(15, 'N', '0');
      end;

      CampoReg[12] := EscreveCampo(40, 'X', '');

      CampoReg[13] := EscreveCampo(190, 'X', '');
      CampoReg[14] := EscreveCampo(06, 'N', IntToStr(NSeqReg));
    end;

    Linha := '';
    for i := 1 to Length(CampoReg) do
      Linha := Linha + CampoReg[i];

    Writeln(FRem, Linha);
  end;
end;

procedure Trailer400;//Registro trailer
var
  i: integer;
  Linha: String;
  CampoReg: Array [1 .. 3] of String;
begin

  for i := 1 to Length(CampoReg) do
    CampoReg[i] := '';

  with RemessaForm do
  begin
    inc(NSeqReg);

    if (CodBanco <> 070) then //BRB - Banco de Brasília S.A.
    begin
      CampoReg[01] := EscreveCampo(01, 'N', '9');  //Posição: 001 a 001 > Identificação do registro trailer “9” //valor padrão em todos os arquivos

      if (CodBanco = 104) then  //Caixa Econômica Federal
        CampoReg[02] := EscreveCampo(393, 'X', '')+ EscreveCampo(06, 'N', IntToStr(NSeqArquivo))
                       //2 a 394                      //395 a 400
      else
      if (CodBanco = 748) then //Sicredi e UNICRED
        CampoReg[02] := EscreveCampo(01,  'N', '1') +//Posicao: 002 a 002 > Identificação do arquivo remessa “1”
                        EscreveCampo(03,  'N', IntToStr(CodBanco)) + //Posicao: 003 a 005 > Número do Sicredi “748”
                        EscreveCampo(05,  'N', FormatFloat('00000', BancodeDados.BancosCONTA_CORRENTE.AsInteger)) +//Posicao: 006 a 010 >  Conta Corrente sem o DV ou conta beneficiário
                        EscreveCampo(384, 'X', '') +//Posicao: 011 a 394 > Deixar em Branco (sem preenchimento)
                        EscreveCampo(06,  'N', FormatFloat('000000', (NSeqReg)))//Posicao: 395 a 400 > Número seqüencial do registro: Alinhado à direita e zeros à esquerda;
      else
      if (CodBanco = 356) then  // Banco Real S.A.
        CampoReg[02] := EscreveCampo(393, 'X', EscreveCampo(06, 'N', IntToStr(qtdtmp)) + EscreveCampo(13, 'N', FormatFloat('0.00', vlIntTmp)) )
      else
      if (CodBanco = 422) then // Banco Safra S.A.
        CampoReg[02] := EscreveCampo(367, 'X', '') + EscreveCampo(08, 'N', IntToStr(qtdtmp)) + EscreveCampo(15, 'N', FormatFloat('0.00', vlIntTmp)) + EscreveCampo(03, 'N', IntToStr(NSeqArquivo))
      else
      if (CodBanco = 341) or (CodBanco = 756) or (CodBanco = 237) then //Itaú, SICOOB, Bradesco
        CampoReg[02] := EscreveCampo(393, 'X', '')  + EscreveCampo(06, 'N', IntToStr(NSeqReg))
      else
        CampoReg[02] := EscreveCampo(393, 'X', '');

    end;

    Linha := '';
    for i := 1 to Length(CampoReg) do
      Linha := Linha + CampoReg[i];

    Writeln(FRem, Linha);
  end;


end;

procedure Remessa240;
begin
  with RemessaForm do
  begin
    if Trim(ArquivoRem) <> '' then
    begin
      try
        AssignFile(FRem, ArquivoRem);
        Rewrite(FRem);

        Boletos.DisableControls;
        Boletos.Last;
        Gauge1.MaxValue := Boletos.RecordCount;
        Boletos.First;

        HeaderArquivo2;
        HeaderLote2;

        while not Boletos.Eof do
        begin
          SegmentoP2;
          SegmentoQ2;
          SegmentoR2;

          BancodeDados.Adiciona.SQL.Text := 'update boletos_emissao set remessa = ' + IntToStr(idRemessa) + ' where emissao_id = ' +
            IntToStr(BoletosEMISSAO_ID.Value);
          BancodeDados.Adiciona.ExecSQL;

          Gauge1.Progress := Boletos.RecNo;
          Boletos.Next;
          Application.ProcessMessages;
        end;

        TrailerLote2;
        TrailerArquivo2;

        if Mensagem('Arquivo foi gerado com sucesso! Na pasta '+CaminhoRem+#13#13+'Deseja visualizar o(s) arquivo(s)?', mtConfirmation, [mbyes, mbNo], mryes, 0) = idyes then begin
        WinExec(PAnsiChar(AnsiString('explorer.exe /n,/e, '+CaminhoRem)),SW_SHOWNORMAL);
        end;

      finally
        CloseFile(FRem);
      end;
    end;
  end;
end;

procedure Remessa400;
begin

  // if ((CodBanco <> 237) and (CodBanco <> 341)) then Mensagem('Função não disponível para este banco.', mtInformation, [mbOk], mrOk, 0) else
  with RemessaForm do
  begin
    if Trim(ArquivoRem) <> '' then
    begin
      try
        AssignFile(FRem, ArquivoRem);
        Rewrite(FRem);

        Boletos.DisableControls;
        Boletos.Last;
        Gauge1.MaxValue := Boletos.RecordCount;
        Boletos.First;

        Header400;


        while not Boletos.Eof do
        begin
          Detalhe400;

          if (CodBanco = 320) then
            Detalhe400Reg02;

          //BancodeDados.Adiciona.SQL.Text := 'update boletos_emissao set remessa = ' + IntToStr(idRemessa) + ' where emissao_id = ' +
          //  IntToStr(BoletosEMISSAO_ID.Value);
          BancodeDados.Adiciona.SQL.Text := 'update boletos_emissao set remessa = ' + quotedStr(IntToStr(idRemessa)) + ' where emissao_id = ' +
          quotedStr(IntToStr(BoletosEMISSAO_ID.Value));
          //(BancodeDados.Adiciona.SQL.Text);
          BancodeDados.Adiciona.ExecSQL;

          Gauge1.Progress := Boletos.RecNo;
          Boletos.Next;
          Application.ProcessMessages;
        end;

        Trailer400;

        if Mensagem('Arquivo foi gerado com sucesso! Na pasta '+CaminhoRem+#13#13+'Deseja visualizar o(s) arquivo(s)?', mtConfirmation, [mbyes, mbNo], mryes, 0) = idyes then begin
        WinExec(PAnsiChar(AnsiString('explorer.exe /n,/e, '+CaminhoRem)),SW_SHOWNORMAL);
        end;


      finally
        CloseFile(FRem);
      end;
    end;
  end;
end;

procedure GerarRemessa;
begin
  if (BancodeDados.BancosLAYOUT.Value = 3) then
    Remessa240
  else
    Remessa400;
end;

procedure TRemessaForm.BoletosCalcFields(DataSet: TDataSet);
begin
//if (BoletosEMISSAO_ID.Value > 0) then
BancodeDados.CalcularAtivo(listaV_Boletos, BoletosEMISSAO_ID.Value, BoletosATIVO);

end;

procedure TRemessaForm.btCamRemClick(Sender: TObject);
var
  caminho: String;
begin
  if BancodeDados.BancosBANCO_ID.Value > 0 then
  begin
    if btCamRem.Enabled then
      //if TabSheet1.Showing then
      //begin
        HabilitarBotoes(self, false);
        caminho := SelecionarDiretorio('Arquivo de Remessa', EditCaminho.Text);
        if (trim(caminho) <> '') then

          EditCaminho.Text := trim(caminho);

        HabilitarBotoes(self, true);
      //end;
  end;
end;

procedure TRemessaForm.BTIniciarClick(Sender: TObject);
var
  Ano, Mes, Dia       : Word;
  MesBanco            : string;
  PoderGerarArq       : Boolean;
  QtdArq              : integer;

begin

  if (EditBanco.ItemIndex >= 0) then
  begin //1

    PoderGerarArq:=true;
    if Trim(EditCaminho.Text)='' then EditCaminho.Text:=ExtractFilePath(ParamStr(0));

    HabilitarBotoes(self,false);
    Screen.Cursor := crSQLWait;


    ArquivoRem  := '';
    DtHrArq     := 0;
    CaminhoRem  := Trim(EditCaminho.Text);

    BancodeDados.Bancos.Close;
    BancodeDados.Bancos.SQL.Text := 'select * from BANCOS where coalesce(CONT_ENCERRADA,0)= 0 order by BANCO_NOME';
    BancodeDados.Bancos.Open;

    if not BancodeDados.Bancos.Locate('BANCO_ID', StrToInt(Copy(EditBanco.Text, 1, 6)), []) then
      Mensagem('O banco não foi localizado.', mtInformation, [mbOk], mrOk, 0)
    else
    begin //2

      CodBanco        :=BancodeDados.BancosCODIGO_BANCO.Value;
      CodigoDeLayout  :=BancodeDados.BancosLAYOUT.Value;


       case CodigoDeLayout of
        1: TipoDeLayout := 'CNAB400';
        2: TipoDeLayout := 'CBR641';
        3: TipoDeLayout := 'CNAB240';
       end;


      BancodeDados.QrySQL1.close;
      BancodeDados.QrySQL1.SQL.Text:='select * from remessa where banco_id= '+IntToStr(BancodeDados.BancosBANCO_ID.Value)+' and (data between ' + QuotedStr(FormatDateTime('mm/dd/yyyy', PrincipalForm.DataServidor)+' 00:00:00')+' and '+QuotedStr(FormatDateTime('mm/dd/yyyy', PrincipalForm.DataServidor)+' 23:59:59')+')';
      BancodeDados.QrySQL1.open;
      BancodeDados.QrySQL1.Last;
      QtdArq      := BancodeDados.QrySQL1.RecordCount;
      BancodeDados.QrySQL1.close;

      if (CodBanco=748) then begin //encontrando a qtd de arquivos que foram gerados durante o dia...
       if QtdArq>10 then begin
          Mensagem('Foi atingido a quantidade máxima de arquivos remessa por hoje. '#13+'Envie este arquivo em outro dia.'#13#13+'Observação: Arquivo não gerado.', mtWarning, [mbOk], mrOk, 0);
          PoderGerarArq:=false;
       end;
      end;


      if PoderGerarArq=true then begin //2.1
        if (CaminhoRem = '') then Mensagem('Informe a pasta para armazenamento.', mtInformation, [mbOk], mrOk, 0) else
        if not DirectoryExists(CaminhoRem) then CriarDiretorio(CaminhoRem);

        if DirectoryExists(CaminhoRem) then
        begin //3
          // try


          if (CodigoDeLayout = 3) then
          begin//CNAB240
                          //bb               //caixa             //santander
            if ((CodBanco <> 1) and (CodBanco <> 104) and (CodBanco <> 33)) then
            begin
              Mensagem('Função não disponível para este banco com leiaute '+TipoDeLayout+'.', mtWarning, [mbOk], mrOk, 0);
              Screen.Cursor := crDefault;
              HabilitarBotoes(Self, true);
              exit;
            end;

            if (CodBanco = 1) then //bb
            begin
              if not(BancodeDados.BancosVAR_CARTEIRA.Value > 0) then
              begin
                Mensagem('Informe a variação da carteira no cadastro do banco.'#13#13+'Observação: Verifique o cadastro do banco >> menu Componentes >> Bancos.', mtInformation, [mbOk], mrOk, 0);
                Screen.Cursor := crDefault;
                HabilitarBotoes(Self, true);
                exit;
              end;
              // eraldo comentou o código abaixo pois o banco pediu pra zerar: Posições 230 a 239: Preencher com zeros
              {if not(BancodeDados.BancosCONTRATO.Value > 0) then
              begin
                Mensagem('Informe o nº do contrato no cadastro do banco.'#13#13+'Observação: Verifique o cadastro do banco >> menu Componentes >> Bancos.', mtInformation, [mbOk], mrOk, 0);
                exit;
              end;}
            end;

          end else
          if (CodigoDeLayout = 1) then //1- CNAB400
          begin //       //BRADESCO     //Itaú              // HSBC               //BICBANCO            // Daycoval           //BRB
            if ((CodBanco <> 237) and (CodBanco <> 341) and (CodBanco <> 399) and (CodBanco <> 320) and (CodBanco <> 707) and (CodBanco <> 070) and
              (CodBanco <> 356) and (CodBanco <> 389) and (CodBanco <> 422) and (CodBanco <> 756) and (CodBanco <> 748) and (CodBanco <> 104) ) then
            begin//  Banco Real      //Banco Mercantil        // Safra            // BANCOOB-SICOOB    //Sicredi e UNICRED
              Mensagem('Função indisponível para este banco com o leiaute '+TipoDeLayout+'.'#13#13+'Observação: Verifique o cadastro do banco >> menu Componentes >> Bancos.', mtWarning, [mbOk], mrOk, 0);
              Screen.Cursor := crDefault;
              HabilitarBotoes(Self, true);
              exit;
            end;
          end;//1 - CNAB400

          if not BancodeDados.Transaction1.InTransaction then BancodeDados.Transaction1.StartTransaction;

          if not(Copy(CaminhoRem, Length(CaminhoRem), 1) = '\') then   CaminhoRem := CaminhoRem + '\';
          ContaRegistros;
          if (qtdtmp > 0) and (vlIntTmp > 0) then
          begin //4

            BancodeDados.Config.Close;
            BancodeDados.Config.SQL.Text := 'select * from CONFIG where CONF_ID >0 '; // + IntToStr(IdInst);
            BancodeDados.Config.Open;
            BancodeDados.Config.first;

            if BancodeDados.Config.IsEmpty then begin
              Mensagem('Não foi possível localizar a empresa.', mtInformation, [mbOk], mrOk, 0);
              Screen.Cursor := crDefault;
              HabilitarBotoes(Self, true);
            end else
            begin //5
              DtHrArq := PrincipalForm.DataHoraServidor;

              NSeqArquivo := BancodeDados.Pega_SeqRemessa(BancodeDados.BancosBANCO_ID.Value);
              ///e/raldo acuma

              BancodeDados.Remessa.Close;
              BancodeDados.Remessa.SQL.Text := 'select * from remessa where data = ' + QuotedStr(FormatDateTime('mm/dd/yyyy hh:nn:ss', DtHrArq));
              //(BancodeDados.Remessa.SQL.Text);
              BancodeDados.Remessa.Open;
              BancodeDados.Remessa.Append;
              BancodeDados.RemessaBANCO_ID.Value  := BancodeDados.BancosBANCO_ID.Value;
              BancodeDados.RemessaDATA.Value      := DtHrArq;
              BancodeDados.RemessaTIPO_REM.Value  := 1;
              BancodeDados.RemessaN_SEQ_REM.Value := (NSeqArquivo);
              BancodeDados.Remessa.Post;

              if not BancodeDados.Transaction1.InTransaction then BancodeDados.Transaction1.StartTransaction;
              BancodeDados.Transaction1.CommitRetaining;

              idRemessa   := BancodeDados.RemessaREM_ID.Value;
              NSeqLote    := 0;
              NSeqReg     := 0;
              LbTipoDeLayout.Caption:='Arquivo processado com o leiaute: '+TipoDeLayout;

              if CodBanco=341 then begin //Banco Itaú
                 ArquivoRem := CaminhoRem + FormatFloat('000', BancodeDados.BancosBANCO_ID.Value) + FormatFloat('00000', NSeqArquivo) + '.REM';
              end else
              if CodBanco=748 then begin //Sicredi e UNICRED - alterando o nome do arquivo para obedecer ao padrão do banco}

                DecodeDate(PrincipalForm.DataServidor, Ano, Mes, Dia);

                case mes of
                  1 : MesBanco := '1';
                  2 : MesBanco := '2';
                  3 : MesBanco := '3';
                  4 : MesBanco := '4';
                  5 : MesBanco := '5';
                  6 : MesBanco := '6';
                  7 : MesBanco := '7';
                  8 : MesBanco := '8';
                  9 : MesBanco := '9';
                 10 : MesBanco := 'O';
                 11 : MesBanco := 'N';
                 12 : MesBanco := 'D';
                end;

                 if QtdArq=0 then
                  ArquivoRem := BancodeDados.BancosCODIGO_CEDENTE.Value +  (MesBanco) + FormatFloat('00',Dia) + '.CRM'
                 else
                 if QtdArq=1 then
                  ArquivoRem := BancodeDados.BancosCODIGO_CEDENTE.Value +  (MesBanco) + FormatFloat('00',Dia) + '.RM2'
                 else
                 if QtdArq=10 then 
                  ArquivoRem := BancodeDados.BancosCODIGO_CEDENTE.Value +  (MesBanco) + FormatFloat('00',Dia) + '.RM0'
                 else
                  ArquivoRem := BancodeDados.BancosCODIGO_CEDENTE.Value +  (MesBanco) + FormatFloat('00',Dia) + '.RM'+IntToStr(QtdArq)

              end else
              if CodBanco=707 then begin {Daycoval - alterando o nome do arquivo para obedecer ao padrão do banco}
                 DecodeDate(PrincipalForm.DataServidor, Ano, Mes, Dia);
                 ArquivoRem := 'TYK'+FormatFloat('00',Dia)+FormatFloat('00',Mes);
                 ArquivoRem := CaminhoRem + Trim( SemAcento(ArquivoRem) )+ IntToStr(NSeqArquivo) + '.TXT';
              end else begin
                 ArquivoRem := BancodeDados.ConfigFANTASIA.Value;
                 ArquivoRem := StringReplace(ArquivoRem, 'ª', '', [rfReplaceAll]);
                 ArquivoRem := StringReplace(ArquivoRem, 'º', '', [rfReplaceAll]);
                 ArquivoRem := CaminhoRem + Trim(Formatar(StringReplace(SemAcento(ArquivoRem), ' ', '_', [rfReplaceAll]), 8)) + '_' +
                 FormatFloat('00', BancodeDados.BancosBANCO_ID.Value) + FormatFloat('00000', NSeqArquivo) + '.REM';
              end;

              BancodeDados.GradeFin.Close;
              BancodeDados.GradeFin.SQL.Text := 'select * from GRADE_FINANCEIRA';
              BancodeDados.GradeFin.Open;

              GerarRemessa; //chamando a funcao de remessa

            end;//5
          end // 4
          else begin
          Mensagem('Nenhum título foi encontrado.', mtInformation, [mbOk], mrOk, 0);
          Screen.Cursor := crDefault;
          HabilitarBotoes(Self, true);
          end;

        end else begin //3
          Mensagem('Erro:'#13 + 'A pasta para armazenamento não existe.', mtWarning, [mbOk], mrOk, 0);
          Screen.Cursor := crDefault;
          HabilitarBotoes(Self, true);
        end;
      end;//2.1
    end; //2
    Screen.Cursor := crDefault;
    HabilitarBotoes(Self, true);
    listaV_Boletos.Clear;
    IDEmissao:='';
    ContaRegistros;
  end; //1

end;

procedure TRemessaForm.EditBancoChange(Sender: TObject);
begin
TipoDeLayout := '';

  rgCarteira.Enabled := false;
  ContaRegistros;
  if (RemessaForm.EditBanco.ItemIndex >= 0) then
  begin

    BancodeDados.Bancos.Close;
    BancodeDados.Bancos.SQL.Text := 'select * from BANCOS where coalesce(CONT_ENCERRADA,0)= 0 order by BANCO_NOME';
    BancodeDados.Bancos.Open;

    if BancodeDados.Bancos.Locate('BANCO_ID', StrToInt(Copy(EditBanco.Text, 1, 6)), []) then
    begin

       case BancodeDados.BancosLAYOUT.Value of
        1: TipoDeLayout := 'CNAB400';
        2: TipoDeLayout := 'CBR641';
        3: TipoDeLayout := 'CNAB240';
       end;
       LbTipoDeLayout.Caption:='Configuração de leiaute do banco atual: '+TipoDeLayout;

      EditCaminho.Text := Trim(BancodeDados.BancosCAMINHO_REMESSA.Value);
      if (BancodeDados.BancosCODIGO_BANCO.Value = 1) then
        rgCarteira.Enabled := true;
    end;
  end;
end;

procedure TRemessaForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if Assigned(listaV_Boletos) then listaV_Boletos.Clear;
end;

procedure TRemessaForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
  begin
    Key := #0;
    Close;
  end;
end;

end.


