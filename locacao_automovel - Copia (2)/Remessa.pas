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
    GroupBox1: TGroupBox;
    Label5: TLabel;
    lbQtd: TLabel;
    Label7: TLabel;
    lbVlInt: TLabel;
    Gauge1: TGauge;
    rgCarteira: TRadioGroup;
    cbData: TComboBox;
    btCamRem: TSpeedButton;
    MainMenu1: TMainMenu;
    f31: TMenuItem;
    Label6: TLabel;
    PopupMenu1: TPopupMenu;
    VisualizarListadeTtulosparaRemessa1: TMenuItem;
    LbTipoDeLayout: TLabel;
    dsBol: TDataSource;
    qryPesq: TFDQuery;
    Boletos: TFDQuery;
    BoletosEMISSAO_ID: TIntegerField;
    BoletosBANCO_ID: TIntegerField;
    BoletosCOD_BANCO: TIntegerField;
    BoletosCIDADE: TStringField;
    BoletosESTADO: TStringField;
    BoletosCEP: TStringField;
    BoletosCLI_DEBITO_AUTO: TSmallintField;
    BoletosCLI_CNPJ_CPF: TStringField;
    BoletosCLI_BANCO_ID: TIntegerField;
    BoletosCLI_BANC_AGENCIA: TStringField;
    BoletosCLI_BANC_CONTA: TStringField;
    BoletosCLI_BANC_OPERACAO: TIntegerField;
    BoletosCOD_MOV_REM: TIntegerField;
    BoletosTIPO_OCORRENCIA: TStringField;
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
    BoletosCOB_REG: TSmallintField;
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
    BoletosREMESSA: TIntegerField;
    BoletosCANCELADO: TSmallintField;
    BoletosDT_PROCES: TDateField;
    BoletosFORNE_ID: TIntegerField;
    BoletosLOGRADOURO: TStringField;
    BoletosBAIRRO: TStringField;
    BoletosALT_VIA_BANCO: TSmallintField;
    BoletosATIVO: TBooleanField;
    BoletosDIAS_BAIXAR_BANCO: TSmallintField;
    BoletosCOD_MOV: TIntegerField;
    BoletosCLI_CEP: TStringField;
    BoletosTem_End: TStringField;
    BoletosCLI_BANC_ACATAMENTO: TMemoField;
    BoletosOBS: TMemoField;
    Image1: TImage;
    Label12: TLabel;
    procedure FormShow(Sender: TObject);
    procedure BTIniciarClick(Sender: TObject);
    procedure EditBancoChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btCamRemClick(Sender: TObject);
    procedure BoletosCalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure VisualizarListadeTtulosparaRemessa1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  RemessaForm: TRemessaForm;
  CaminhoRem: String;
  CodBanco: integer;
  qtdtmp: integer = 0;
  NSeqReg: integer = 0;
  NSeqLote: integer = 0;
  idRemessa: integer = 0;
  NSeqArquivo: int64 = 0;
  InstIdTmp: integer = 0;
  vlIntTmp: Currency = 0;
  FRem: TextFile;
  ArquivoRem: String = '';
  DtHrArq: TDateTime = 0;
  IDEmissao: String = '';
  CodigoDeLayout: integer;
  TipoDeLayout: string = '';

implementation

uses
  Base, Principal, SEDRegistro, acFuncoesBoleto, Visualizar_Lista_Remessa,
  unRecursos, unImpressao;

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
      if BancodeDados.Bancos.Locate('BANCO_ID',
        StrToInt(Copy(RemessaForm.EditBanco.Text, 1, 6)), [loCaseInsensitive])
      then
      begin
        if (RemessaForm.dtIni.DateTime > 0) and (RemessaForm.dtFim.DateTime > 0)
        then
        begin
          if (RemessaForm.dtFim.DateTime >= RemessaForm.dtIni.DateTime) then
          begin

            case RemessaForm.cbData.ItemIndex of
              1:
                campo := 'dt_proces';
              2:
                campo := 'emissao';
              3:
                campo := 'vencimento';
            end;

            RemessaForm.Boletos.Close;
            RemessaForm.Boletos.SQL.Text :=
              'select * from v_boletos_remessa where banco_id = ' +
              IntToStr(BancodeDados.BancosBANCO_ID.Value) +
              ' and situacao_boleto = ' + QuotedStr('A RECEBER') +
              ' and coalesce(retorno_id,0)=0 and coalesce(remessa,0)=0 and coalesce(cancelado,0)=0 and coalesce(cli_debito_auto, 0) = 0';

            if trim(IDEmissao) <> '' then
              RemessaForm.Boletos.SQL.Add(' and emissao_id in (' +
                IDEmissao + ')');

            // if Assigned(Visualizar_Lista_RemessaForm) then BEGIN
            // if Visualizar_Lista_RemessaForm.EditConsulta.Text <> '' then
            // BancodeDados.Alunos.SQL.Add(' where (UPPER('+Opcao+')'+Tipo+QuotedStr(Trim(AnsiUpperCase(EditConsulta.Text)))+' )');
            // END;

            if (RemessaForm.cbData.ItemIndex > 0) then
              RemessaForm.Boletos.SQL.Add(' and (' + campo + ' between ' +
                QuotedStr(FormatDateTime('yyyy/mm/dd',
                RemessaForm.dtIni.DateTime)) + ' and ' +
                QuotedStr(FormatDateTime('yyyy/mm/dd',
                RemessaForm.dtFim.DateTime)) + ')');
            RemessaForm.Boletos.SQL.Add(' order by vencimento, cli_nome');

            if suporte then
              Mensagem(RemessaForm.Boletos.SQL.Text, mtInformation,
                [mbok], mrok, 0);

            RemessaForm.Boletos.Open;
            if not RemessaForm.Boletos.IsEmpty then
            begin
              if not BancodeDados.Config.Active then
                BancodeDados.Config.Open;

              InstIdTmp := BancodeDados.ConfigCONF_ID.Value;
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
    if RemessaForm.Boletos.IsEmpty then
      RemessaForm.VisualizarListadeTtulosparaRemessa1.Enabled := false
    else
      RemessaForm.VisualizarListadeTtulosparaRemessa1.Enabled := true;

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
  LbTipoDeLayout.Caption := '';
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

  /// if not BancodeDados.Bancos.Active then BancodeDados.Bancos.Open;

  BancodeDados.Bancos.Close;
  BancodeDados.Bancos.SQL.Text :=
    'select * from bancos where codigo_banco>0 and coalesce(cont_encerrada,0)= 0 order by banco_nome';
  BancodeDados.Bancos.Open;

  BancodeDados.Bancos.First;
  while not BancodeDados.Bancos.Eof do
  begin
    try
      if (trim(BancodeDados.BancosCODIGO_CEDENTE.Value) <> '') and
        (BancodeDados.BancosCOB_REG.Value = 1) then
      begin
        EditBanco.Items.Add(FormatFloat('000000',
          BancodeDados.BancosBANCO_ID.Value) + ' - ' +
          BancodeDados.BancosBANCO_NOME.Value);
      end;
    except
    end;
    BancodeDados.Bancos.Next;
  end;

  Width := 298;
  Height := 458;
  if Assigned(listaV_Boletos) then
    listaV_Boletos.Clear;
  // if Boletos.IsEmpty then btListaTitulos.Enabled:=false;

end;

procedure TRemessaForm.VisualizarListadeTtulosparaRemessa1Click
  (Sender: TObject);
begin
  if not Boletos.IsEmpty then
  begin
    if not Assigned(Visualizar_Lista_RemessaForm) then
      Visualizar_Lista_RemessaForm := tVisualizar_Lista_RemessaForm.Create
        (Application);
    try
      HabilitarBotoes(Self, false);
      Visualizar_Lista_RemessaForm.ShowModal;
    finally
      Visualizar_Lista_RemessaForm.Release;
      Visualizar_Lista_RemessaForm := nil;
      HabilitarBotoes(Self, true);
    end;
    // ContaRegistros;
  end;

end;

function RetornaNumeros(em: string; comEspaco: boolean = false): string;
var
  i: integer;
  temp: string;
  letras: string;
  x: integer;
begin
  // letras:='abcdefghijlmnopqrstuvxzykw�������ABCDEFGHIJLMNOPQRSTUVXZ��������YWK��0123456789 ';
  if (comEspaco = true) then
    letras := '0123456789 '
  else
    letras := '0123456789';

  for x := 1 to Length(em) do
    for i := 1 to Length(letras) do
      if em[x] = letras[i] then
        temp := temp + em[x];

  result := trim(temp);
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

  result := trim(temp);
end;

function SemAcento(Nome: String): String;
const
  ComAcentuacao =
    '����������������������������������������������~^�`����_/\;:?"!@#$�&*()_+={}[]<>|����'
    + '''';
  SemAcentuacao =
    'aaaaaeeeeiiiiooooouuuucAAAAAEEEEIIIIOOOOOUUUUC                                       ';
var
  i: integer;
begin
  for i := 1 to Length(Nome) do
    if Pos(Nome[i], ComAcentuacao) <> 0 then
      Nome[i] := SemAcentuacao[Pos(Nome[i], ComAcentuacao)];
  while (Pos('  ', Nome) > 0) do
    Delete(Nome, Pos('  ', Nome), 1);
  result := trim(Nome);
end;

function Formatar(Texto: string; TamanhoDesejado: integer;
  AcrescentarADireita: boolean = true; CaracterAcrescentar: Char = ' '): string;
var
  QuantidadeAcrescentar, TamanhoTexto, PosicaoInicial, i: integer;
begin
  case CaracterAcrescentar of
    '0' .. '9', 'a' .. 'z', 'A' .. 'Z':
      ; { N�o faz nada }
  else
    CaracterAcrescentar := ' ';
  end;

  Texto := trim(Texto);
  TamanhoTexto := Length(Texto);
  for i := 1 to (TamanhoTexto) do
  begin
    if Pos(Texto[i],
      ' 0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ��`~''"!@#$%^&*()_-+=|/\{}[]:;,.<>')
      = 0 then
    begin
      case Texto[i] of
        '�', '�', '�', '�':
          Texto[i] := 'A';
        '�', '�':
          Texto[i] := 'E';
        '�', '�':
          Texto[i] := 'I';
        '�', '�':
          Texto[i] := 'O';
        '�', '�':
          Texto[i] := 'U';
        '�', '�':
          Texto[i] := 'A';
        '�', '�':
          Texto[i] := 'E';
        '�', '�':
          Texto[i] := 'I';
        '�', '�':
          Texto[i] := 'O';
        '�', '�':
          Texto[i] := 'U';
        '�', '�':
          Texto[i] := 'A';
        '�', '�':
          Texto[i] := 'E';
        '�', '�':
          Texto[i] := 'I';
        '�', '�', '�', '�':
          Texto[i] := 'O';
        '�', '�':
          Texto[i] := 'U';
        '�', '�':
          Texto[i] := 'A';
        '�', '�':
          Texto[i] := 'E';
        '�', '�':
          Texto[i] := 'I';
        '�', '�':
          Texto[i] := 'O';
        '�', '�':
          Texto[i] := 'U';
        '�', '�':
          Texto[i] := 'C';
        '�', '�':
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
    Texto := Copy(Texto, 1, TamanhoDesejado) + StringOfChar(CaracterAcrescentar,
      QuantidadeAcrescentar)
  else
    Texto := StringOfChar(CaracterAcrescentar, QuantidadeAcrescentar) +
      Copy(Texto, PosicaoInicial, TamanhoDesejado);

  result := AnsiUpperCase(Texto);
end;

function EscreveCampo(TamanhoMax: integer; Tipo, Valor: String;
  Padrao: String = ''): String;
var
  DataTmp: TDate;
  HoraTmp: TTime;
begin
  result := '';

  if UpperCase(Tipo) = 'X' then
  begin
    if (trim(Valor) = '') and (trim(Padrao) <> '') then
      Valor := Padrao;
    result := Formatar(SemAcento(Valor), TamanhoMax);
    result := AnsiUpperCase(result);
  end
  else if UpperCase(Tipo) = 'N' then
  begin
    try
      if (trim(Valor) = '0') and (StrToInt64(trim(Padrao)) > 0) then
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

procedure HeaderArquivo2; // cabe�alho ou in�cio do arquivo
var
  i: integer;
  Linha: String;
  CampoReg: Array [1 .. 28] of String;

begin
  for i := 1 to Length(CampoReg) do
    CampoReg[i] := '';

  with RemessaForm do
  begin
    if (CodBanco = 33) then
    begin
      if (trim(BancodeDados.BancosFOL_CONTRAT_REM.Value) = '') then
      begin
        Exception.Create
          ('� necess�rio informar o n�mero do contrato de remessa (Cod. transmiss�o)');
      end;

      CampoReg[01] := EscreveCampo(03, 'N', IntToStr(CodBanco));
      // Posicao: 001 - 003 > C�digo do Banco na compensa��o: 353 / 008 / 033
      CampoReg[02] := EscreveCampo(04, 'N', '0000'); // Posicao: 004 - 007
      CampoReg[03] := EscreveCampo(01, 'X', '0'); // Posicao: 008 - 008
      CampoReg[04] := EscreveCampo(08, 'X', '');
      // Posicao: 009 - 016 > Reservado (uso Banco)

      if Length(RetornaNumeros(BancodeDados.ConfigCNPJ.Value)) = 11 then
        // Posicao: 017 - 017 > Tipo de inscri��o da empresa: 2 = CNPJ
        CampoReg[05] := EscreveCampo(01, 'X', '1')
      else
        CampoReg[05] := EscreveCampo(01, 'X', '2');
      // ContaNumeroDV:= ;

      CampoReg[06] := EscreveCampo(15, 'N', BancodeDados.ConfigCNPJ.AsString);
      // Posicao: 018 � 032 > No de inscri��o da empresa

      if trim(BancodeDados.BancosFOL_CONTRAT_REM.Value) <> '' then
        // Posicao: 033 � 047 > C�digo de Transmiss�o
        CampoReg[07] := EscreveCampo(15, 'N',
          BancodeDados.BancosFOL_CONTRAT_REM.Value)
      else
        CampoReg[07] := EscreveCampo(15, 'N', FormatFloat('00000000000',
          StrToInt(BancodeDados.BancosCONTA_CORRENTE.Value +
          BancodeDados.BancosDIG_CONTA_CORRENTE.Value))); // eraldo  04/11/16

      CampoReg[08] := EscreveCampo(25, 'X', '');
      // Posicao: 048 - 072 > Reservado (uso Banco)
      CampoReg[09] := EscreveCampo(30, 'X', BancodeDados.ConfigFANTASIA.Value);
      // posi��o 73 at� 102
      CampoReg[10] := EscreveCampo(30, 'X', 'BANCO SANTANDER');
      // BancodeDados.BancosBANCO_NOME.Value); //posi��o 103 at� 132
      CampoReg[11] := EscreveCampo(10, 'X', '');
      // posi��o 133 at� 142 | reservado ao banco | deixar em branco
      CampoReg[12] := EscreveCampo(01, 'X', '1');
      // posi��o 143 - 143 > C�digo remessa: 1 = Remessa
      CampoReg[13] := EscreveCampo(08, 'D', DateToStr(Date));
      // posi��o: 144 at� 151 > Data de gera��o do arquivo
      CampoReg[14] := EscreveCampo(06, 'X', '');
      // posi��o: 152 - 157 >> Reservado (uso Banco)
      CampoReg[15] := EscreveCampo(06, 'N', IntToStr(NSeqArquivo));
      // posi��o: 158 - 163 > No seq�encial do arquivo
      CampoReg[16] := EscreveCampo(03, 'X', '040');
      // posi��o: 164 - 166 > No da vers�o do layout do arquivo
      CampoReg[17] := EscreveCampo(74, 'X', '');
      // posi��o: 167 - 240 > Reservado (uso Banco)
    end
    else
    begin
      CampoReg[01] := EscreveCampo(03, 'N', IntToStr(CodBanco)); // posi��o:
      CampoReg[02] := EscreveCampo(04, 'N', '0000'); // posi��o:
      CampoReg[03] := EscreveCampo(01, 'X', '0'); // posi��o:
      CampoReg[04] := EscreveCampo(09, 'X', ''); // posi��o:

      if Length(RetornaNumeros(BancodeDados.ConfigCNPJ.Value)) = 11 then
        // "1" = CPF, "2" CNPJ - de
        CampoReg[05] := EscreveCampo(01, 'X', '1')
      else
        CampoReg[05] := EscreveCampo(01, 'X', '2'); // "1" = CPF, "2" CNPJ - de
      CampoReg[06] := EscreveCampo(14, 'N', BancodeDados.ConfigCNPJ.AsString);
      // CNPJ |--> posi��o 19 at� 32

      if (CodBanco = 1) then
      begin // eraldo incluiu o teste ao lado e estas novas lindas abaixo
        if trim(BancodeDados.BancosFOL_CONTRAT_REM.AsString) <> '' then
          // Convenio+contrato |--> posi��o de 33 at� 14
          CampoReg[07] := EscreveCampo(20, 'X',
            BancodeDados.BancosFOL_CONTRAT_REM.AsString)
        else
          CampoReg[07] := EscreveCampo(09, 'N',
            BancodeDados.BancosCONVENIO.AsString) + EscreveCampo(04, 'N',
            '0014') + EscreveCampo(02, 'N',
            BancodeDados.BancosCARTEIRA.AsString) + EscreveCampo(03, 'N',
            BancodeDados.BancosVAR_CARTEIRA.AsString) + '  ';
      end
      else
        CampoReg[07] := EscreveCampo(20, 'N', '0');

      CampoReg[08] := EscreveCampo(05, 'N', BancodeDados.BancosAGENCIA.Value);
      CampoReg[09] := EscreveCampo(01, 'X',
        BancodeDados.BancosDIG_AGENCIA.Value);

      if (CodBanco = 1) then
      begin
        CampoReg[10] := EscreveCampo(12, 'N',
          BancodeDados.BancosCONTA_CORRENTE.Value);
        CampoReg[11] := EscreveCampo(01, 'X',
          BancodeDados.BancosDIG_CONTA_CORRENTE.Value);
      end
      else if (CodBanco = 104) then
      begin
        CampoReg[10] := EscreveCampo(06, 'N',
          BancodeDados.BancosCODIGO_CEDENTE.Value);
        CampoReg[11] := EscreveCampo(07, 'N', '0');
      end;

      CampoReg[12] := EscreveCampo(01, 'N', '0');
      CampoReg[13] := EscreveCampo(30, 'X', BancodeDados.ConfigFANTASIA.Value);

      if (CodBanco = 104) then
        CampoReg[14] := EscreveCampo(30, 'X', 'CAIXA ECONOMICA FEDERAL')
      else
        CampoReg[14] := EscreveCampo(30, 'X',
          BancodeDados.BancosBANCO_NOME.Value);

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
        CampoReg[23] := EscreveCampo(20, 'X', 'REMESSA-PRODUCAO');
        // usado pelo olimpo marista
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
      CampoReg[12] := EscreveCampo(15, 'N',
        BancodeDados.BancosFOL_CONTRAT_REM.Value);
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
        CampoReg[11] := EscreveCampo(09, 'N',
          BancodeDados.BancosCONVENIO.AsString) + EscreveCampo(04, 'N', '0014')
          + EscreveCampo(02, 'N', BancodeDados.BancosCARTEIRA.AsString) +
          EscreveCampo(03, 'N',
          BancodeDados.BancosVAR_CARTEIRA.AsString) + '  ';
      end
      else if (CodBanco = 104) then
      begin
        CampoReg[11] := EscreveCampo(06, 'N',
          BancodeDados.BancosCODIGO_CEDENTE.Value) + EscreveCampo(14, 'N', '0');
      end;

      CampoReg[12] := EscreveCampo(05, 'N', BancodeDados.BancosAGENCIA.Value);
      CampoReg[13] := EscreveCampo(01, 'X',
        BancodeDados.BancosDIG_AGENCIA.Value);

      if (CodBanco = 1) then
      begin
        CampoReg[14] := EscreveCampo(12, 'N',
          BancodeDados.BancosCONTA_CORRENTE.Value);
        CampoReg[15] := EscreveCampo(01, 'X',
          BancodeDados.BancosDIG_CONTA_CORRENTE.Value);
        CampoReg[16] := EscreveCampo(01, 'X', '');
      end
      else if (CodBanco = 104) then
      begin
        CampoReg[14] := EscreveCampo(06, 'N',
          BancodeDados.BancosCODIGO_CEDENTE.Value);
        CampoReg[15] := EscreveCampo(07, 'N', '0');
        CampoReg[16] := EscreveCampo(01, 'N', '0');
      end; // ConfigCNPJ

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
  i: integer;
  Linha: String;
  vlJuros: Currency;
  CampoReg: Array [1 .. 45] of String;
  vencTmp: TDate;
  Ano, Mes, Dia: Word;
begin

  for i := 1 to Length(CampoReg) do
    CampoReg[i] := '';

  with RemessaForm do
  begin
    inc(NSeqLote);

    if (CodBanco = 33) then
    begin
      CampoReg[01] := EscreveCampo(03, 'N', IntToStr(CodBanco));
      // posi��o 1 a 3 | C�digo do banco na compensa��o A  (valor: 353 / 008 / 033)
      CampoReg[02] := EscreveCampo(04, 'N', '1');
      // posi��o 4 a7  | numero de lote  |
      CampoReg[03] := EscreveCampo(01, 'N', '3');
      // posi��o 8 | tipo de registro  | valor: 3
      CampoReg[04] := EscreveCampo(05, 'N', IntToStr(NSeqLote));
      // posi��o: 9 - 13 | seq do registro de lote |
      CampoReg[05] := EscreveCampo(01, 'X', 'P');
      // posi��o: 14 - 14 | c�digo de seguimento do registro detalhe | valor: P
      CampoReg[06] := EscreveCampo(01, 'X', '');
      // posi��o 15 a 15  | resevado ao banco: |  valor: branco
      CampoReg[07] := EscreveCampo(02, 'N', '01');
      // Posi��o: 16 a 17  | C�digo de movimento remessa |
      CampoReg[08] := EscreveCampo(04, 'N', BancodeDados.BancosAGENCIA.Value);
      // Posi��o: 18 a 21
      CampoReg[09] := EscreveCampo(01, 'X',
        BancodeDados.BancosDIG_AGENCIA.Value); // Posi��o: 22 a 22
      CampoReg[10] := EscreveCampo(09, 'N',
        BancodeDados.BancosCONTA_CORRENTE.Value); // Posi��o: 23 a 31
      CampoReg[11] := EscreveCampo(01, 'X',
        BancodeDados.BancosDIG_CONTA_CORRENTE.Value); // Posi��o: 32 a 32
      CampoReg[12] := EscreveCampo(09, 'N',
        BancodeDados.BancosCONTA_CORRENTE.Value);
      // Posi��o: 33 a 41 | conta cobran�a |
      CampoReg[13] := EscreveCampo(01, 'X',
        BancodeDados.BancosDIG_CONTA_CORRENTE.Value); // Posi��o: 42 a 42
      CampoReg[14] := EscreveCampo(02, 'X', '');
      // Posi��o: 43 a 44 | resevado ao banco | valor: deixar em branco
      CampoReg[15] := EscreveCampo(13, 'X',
        RetornaNumerosComDV(BoletosNOSSO_NUMERO.Value));
      // Posi��o: 45 a 57 | identificador de t�tulo
      CampoReg[16] := EscreveCampo(01, 'X', '5');
      // Posi��o: 58 a 58 | Tipo de cobran�a
      CampoReg[17] := EscreveCampo(01, 'X', '1');
      // Posi��o: 59 a 59 | forma de cadastramento
      CampoReg[18] := EscreveCampo(01, 'X', '1');
      // Posi��o: 60 a 60 | tipo de docuemnto | valor: 1- tradiconal ou 2 - escritural
      CampoReg[19] := EscreveCampo(01, 'X', '');
      // Posi��o: 61 a 61 | resevado ao banco   | valor: deixar em branco
      CampoReg[20] := EscreveCampo(01, 'X', '');
      // Posi��o: 62 a 62 | resevado ao banco   | valor: deixar em branco
      CampoReg[21] := EscreveCampo(15, 'X', IntToStr(BoletosEMISSAO_ID.Value));
      CampoReg[22] := EscreveCampo(08, 'D', DateToStr(BoletosVENCIMENTO.Value));
      CampoReg[23] := EscreveCampo(15, 'N',
        FormatFloat(',0.00', BoletosVALOR_DOC.Value));
      CampoReg[24] := EscreveCampo(04, 'N', '0');
      CampoReg[25] := EscreveCampo(01, 'N', '0');
      CampoReg[26] := EscreveCampo(01, 'X', '');
      CampoReg[27] := EscreveCampo(02, 'X', '02');
      CampoReg[28] := EscreveCampo(01, 'X', 'N');

      if (BoletosEMISSAO.Value > 0) then
        CampoReg[29] := EscreveCampo(08, 'D', DateToStr(BoletosEMISSAO.Value))
      else
        CampoReg[29] := EscreveCampo(08, 'D',
          DateToStr(BoletosDT_PROCES.Value));

      vlJuros := 0;
      if (BancodeDados.GradeFin.Locate('GRADE_ID', BoletosGRADE_ID.Value, []))
      then
      begin
        vlJuros := StrToCurr(FormatFloat('0.00',
          ((BoletosVALOR_DOC.Value * BancodeDados.GradeFinJUROS.Value) / 100)));
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
        CampoReg[31] := EscreveCampo(08, 'D',
          DateToStr(BoletosVENCIMENTO.Value + BoletosDIAS_TOLERANCIA.Value));
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
        CampoReg[34] := EscreveCampo(08, 'D',
          DateToStr(BoletosVENCIMENTO.Value + BoletosDIAS_TOLERANCIA.Value));
        CampoReg[35] := EscreveCampo(15, 'N',
          FormatFloat(',0.00', BoletosDESCONTO.Value)); // DESC
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

      // UTILIZANDO PROTESTO OU NAO
      if (BancodeDados.BancosDIAS_PROTESTO.Value > 0) then
      begin
        // COM PROTESTO
        CampoReg[39] := EscreveCampo(01, 'X', '1');
        // PROTESTAR DIAS CORRIDOS | C�igo para protesto
        CampoReg[40] := EscreveCampo(02, 'N',
          IntToStr(BancodeDados.BancosDIAS_PROTESTO.Value));
        // N�mero de dias para protesto
      end
      else
      begin
        // SEM PROTESTO
        CampoReg[39] := EscreveCampo(01, 'X', '0');
        // posi��o 221 a 221 | C�igo para protesto
        CampoReg[40] := EscreveCampo(02, 'N', '0');
        // posi��o 222 a 223 | N�mero de dias para protesto
      end;

      CampoReg[41] := EscreveCampo(01, 'N', '2');
      // posi��o 224 a 224 | C�digo para baixar baixar/devolucao
      CampoReg[42] := EscreveCampo(01, 'N', '0');
      // posi��o 225 a 225 | uso do banco

      // CampoReg[43] := EscreveCampo(02, 'N', '00'); //posi��o 226 a 227 | n�mero de dias para baixar baixar/devolucao
      if BancodeDados.BancosDIAS_BAIXAR_BANCO.Value > 0 then
        CampoReg[43] := EscreveCampo(02, 'N',
          IntToStr(BancodeDados.BancosDIAS_BAIXAR_BANCO.Value))
      else
        CampoReg[43] := EscreveCampo(02, 'N', '00');
      // posi��o 226 a 227 | n�mero de dias para baixar baixar/devolucao

      CampoReg[44] := EscreveCampo(02, 'N', '00'); // posi��o 228 a 229 | Moeda
      CampoReg[45] := EscreveCampo(11, 'X', '');
      // posi��o 230 a 240 | uso do banco
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
      CampoReg[09] := EscreveCampo(01, 'X',
        BancodeDados.BancosDIG_AGENCIA.Value);

      if (CodBanco = 1) then
      begin
        CampoReg[10] := EscreveCampo(12, 'N',
          BancodeDados.BancosCONTA_CORRENTE.Value);
        CampoReg[11] := EscreveCampo(01, 'X',
          BancodeDados.BancosDIG_CONTA_CORRENTE.Value);
        CampoReg[12] := EscreveCampo(01, 'X', '');
        CampoReg[13] := EscreveCampo(20, 'X',
          RetornaNumerosComDV(BoletosNOSSO_NUMERO.Value));
      end
      else if (CodBanco = 104) then
      begin
        CampoReg[10] := EscreveCampo(06, 'N',
          BancodeDados.BancosCODIGO_CEDENTE.Value);
        CampoReg[11] := EscreveCampo(11, 'N', '0');
        CampoReg[12] := '';
        CampoReg[13] := EscreveCampo(17, 'N',
          RetornaNumerosComDV(BoletosNOSSO_NUMERO.Value));
      end;

      if rgCarteira.ItemIndex = 0 then
        CampoReg[14] := EscreveCampo(01, 'N', '1')
      else
        CampoReg[14] := EscreveCampo(01, 'N', '4');

      CampoReg[15] := EscreveCampo(01, 'N', '1');
      CampoReg[16] := EscreveCampo(01, 'N', '2'); // Escritural
      CampoReg[17] := EscreveCampo(01, 'N', '2');
      CampoReg[18] := EscreveCampo(01, 'N', '0'); // Postagem pelo Cedente
      CampoReg[19] := EscreveCampo(15, 'X', IntToStr(BoletosEMISSAO_ID.Value));
      // posi��o: 63 at� 77
      CampoReg[20] := EscreveCampo(08, 'D', DateToStr(BoletosVENCIMENTO.Value));
      // posi��o:  78  at� 85
      CampoReg[21] := EscreveCampo(15, 'N',
        FormatFloat(',0.00', BoletosVALOR_DOC.Value)); // posi��o: 86  at� 100

      // CampoReg[22]:=EscreveCampo(05, 'N', BancodeDados.BancosAGENCIA.Value);
      // CampoReg[23]:=EscreveCampo(01, 'X', BancodeDados.BancosDIG_AGENCIA.Value);
      CampoReg[22] := EscreveCampo(05, 'N', '0');
      // posi��o: 101 at� 105 | Ag�ncia Encarregada da Cobran�a

      if (CodBanco = 1) then
        CampoReg[23] := EscreveCampo(01, 'X', ' ')
      else // posi��o: 106 at� 106 | D�gito Verificador da Ag�ncia  //eraldo inclui este teste
        CampoReg[23] := EscreveCampo(01, 'N', '0');
      // posi��o: 106 at� 106 | D�gito Verificador da Ag�ncia

      CampoReg[24] := EscreveCampo(02, 'N', '02');
      // posi��o: 107 at� 108 | DM- Duplicata Mercantil
      CampoReg[25] := EscreveCampo(01, 'X', 'A');
      // posi��o: 109 | Identific. de T�tulo Aceito/N�o Aceito
      CampoReg[26] := EscreveCampo(08, 'D', DateToStr(BoletosEMISSAO.Value));
      // posi��o: 110 ate 117 | Data da Emiss�o do T�tulo
      CampoReg[27] := EscreveCampo(01, 'X', '1'); // Juros por dia

      BancodeDados.GradeFin.Close;
      BancodeDados.GradeFin.SQL.Text :=
        'select * from grade_financeira where grade_id = ' +
        IntToStr(BoletosGRADE_ID.Value);
      BancodeDados.GradeFin.Open;

      // JUROS N�o h� car�ncia de juros. //posi��o: 119 ate 126 >>> eraldo incluiu teste teste, pois a data de cobranca de juros da CEF nao poder ser igual a vancimento
      if (CodBanco in [1]) then
      begin
        if BancodeDados.GradeFinJUROS.Value > 0 then // eraldo
          CampoReg[28] := EscreveCampo(08, 'D',
            DateToStr(BoletosVENCIMENTO.Value + 1))
        else
          CampoReg[28] := EscreveCampo(08, 'N', '0');
        // ATEN��O, caso a informa��o seja inv�lida ou n�o informada, o sistema assumir� data igual � Data de Vencimento + 1
      end
      else if BoletosDIAS_TOLERANCIA.Value > 0 then
      begin // Preencher com a data indicativa do in�cio  da cobran�a de Juros de Mora, no formato DDMMAAAA (Dia, M�s e Ano), devendo ser maior que a Data de Vencimento;
        CampoReg[28] := EscreveCampo(08, 'D',
          DateToStr(BoletosVENCIMENTO.Value + BoletosDIAS_TOLERANCIA.Value))
      end
      else
        CampoReg[28] := EscreveCampo(08, 'D',
          DateToStr(BoletosVENCIMENTO.Value + 1));
      // ATEN��O, caso a informa��o seja inv�lida ou n�o informada, o sistema assumir� data igual � Data de Vencimento + 1

      if BancodeDados.GradeFinJUROS.Value > 0 then
        // Juros de Mora por Dia/Taxa, posi��o: 127 at� 141
        CampoReg[29] := EscreveCampo(15, 'N',
          FormatFloat(',0.00',
          (BoletosVALOR_DOC.Value * BancodeDados.GradeFinJUROS.Value) / 100))
      else
        CampoReg[29] := EscreveCampo(15, 'N', FormatFloat(',0.00', 0)); // JUROS

      if (BoletosDESCONTO.Value > 0) then
      begin

        if BancodeDados.ConfigTIPO_BOLETO.Value = 2 then
        begin
          DecodeDate(BoletosVENCIMENTO.Value, Ano, Mes, Dia);
          vencTmp := EncodeDate(Ano, Mes, BancodeDados.BancosDESC_TOL.Value);
          CampoReg[30] := EscreveCampo(01, 'N', '1');
          CampoReg[31] := EscreveCampo(08, 'D', DateToStr(vencTmp));
          CampoReg[32] := EscreveCampo(15, 'N',
            FormatFloat(',0.00', BoletosDESCONTO.Value)); // DESC
        end
        else
        begin // padr�o
          CampoReg[30] := EscreveCampo(01, 'N', '1');
          CampoReg[31] := EscreveCampo(08, 'D',
            DateToStr(BoletosVENCIMENTO.Value + BoletosDIAS_TOLERANCIA.Value));
          CampoReg[32] := EscreveCampo(15, 'N',
            FormatFloat(',0.00', BoletosDESCONTO.Value)); // DESC
        end; // bancodedados.InstituicaoTIPO_BOLETO.value=2

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
        CampoReg[37] := EscreveCampo(02, 'N',
          IntToStr(BancodeDados.BancosDIAS_PROTESTO.Value));
      end
      else
      begin
        CampoReg[36] := EscreveCampo(01, 'X', '3'); // NAO PROTESTAR
        CampoReg[37] := EscreveCampo(02, 'N', '0');
      end;

      // ta sendo usado pelo Olimpo marista, tem q criar config
      CampoReg[38] := EscreveCampo(01, 'N', '1'); // C�digo p/ Baixa/Devolu��o

      // CampoReg[39] := EscreveCampo(03, 'N', '10'); //N�mero de Dias para Baixa/Devolu��o
      if BoletosDIAS_BAIXAR_BANCO.Value > 0 then
        CampoReg[39] := EscreveCampo(03, 'N',
          IntToStr(BoletosDIAS_BAIXAR_BANCO.Value))
      else
        CampoReg[39] := EscreveCampo(03, 'N', '29');
      // posi��o 226 a 227 | n�mero de dias para baixar baixar/devolucao

      CampoReg[40] := EscreveCampo(02, 'N', '9');

      if (CodBanco = 1) then
      begin // coluna: 34
        // if BancodeDados.BancosCONTRATO.Value>0 then
        CampoReg[41] := EscreveCampo(10, 'N',
          BancodeDados.BancosCONTRATO.AsString);
        // posi��o: 230 ATE 239 | Campo n�o tratado pelo sistema. Pode ser informado 'zeros' ou o n�mero do contrato de cobran�a
      end
      else if (CodBanco = 104) then
      begin
        CampoReg[41] := EscreveCampo(10, 'N', '0');
      end;

      CampoReg[42] := EscreveCampo(01, 'X', '');
      // posi��o: 240 | Informar 'brancos' (espa�os).
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
      qryPesq.SQL.Text :=
        'select nome, end_id, numero, cnpj from fornecedores where forne_id = '
        + IntToStr(BoletosFORNE_ID.Value);
      qryPesq.Open;
      CPFSacado := TestaCPFCNPJ(qryPesq.FieldByName('CNPJ').AsString, false);
      CPFSacado := RetornaNumeros(CPFSacado);
      NomeSacado := qryPesq.FieldByName('NOME').AsString;
    end
    else
    begin

      qryPesq.Close;
      qryPesq.SQL.Text :=
        'select nome, cli_id, cnpj, logradouro, bairro, (select nome from municipios where codmun=coalesce(clientes.cidade,0)) as cidade, (select uf from municipios where codmun=coalesce(clientes.cidade,0))  as uf, cep, numero '
        + ' from clientes where cli_id = ' + IntToStr(BoletosCLI_ID.Value);
      qryPesq.Open;

      if trim(BoletosCLI_CNPJ_CPF.Value) <> '' then
      begin
        CPFSacado := TestaCPFCNPJ(BoletosCLI_CNPJ_CPF.Value, false);
        CPFSacado := RetornaNumeros(CPFSacado);
        NomeSacado := qryPesq.FieldByName('NOME').AsString;
        // qryPesq.Fields[0].AsString;
      end;

    end;



    // qryEnd.Close;
    // qryEnd.SQL.Text := 'select * from enderecos where end_id = ' + IntToStr(qryPesq.FieldByName('').AsInteger);
    // qryEnd.Open;

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
      CampoReg[11] := EscreveCampo(40, 'X', qryPesq.FieldByName('LOGRADOURO')
        .AsString + ' ' + qryPesq.FieldByName('NUMERO').AsString);
      CampoReg[12] := EscreveCampo(15, 'X', qryPesq.FieldByName('BAIRRO')
        .AsString);
      CampoReg[13] := EscreveCampo(08, 'N', qryPesq.FieldByName('CEP')
        .AsString);
      CampoReg[14] := EscreveCampo(15, 'X', qryPesq.FieldByName('CIDADE')
        .AsString);
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
      CampoReg[11] := EscreveCampo(40, 'X', qryPesq.FieldByName('LOGRADOURO')
        .AsString + ' ' + qryPesq.FieldByName('NUMERO').AsString);
      CampoReg[12] := EscreveCampo(15, 'X', qryPesq.FieldByName('BAIRRO')
        .AsString);
      CampoReg[13] := EscreveCampo(08, 'N', qryPesq.FieldByName('CEP')
        .AsString);
      CampoReg[14] := EscreveCampo(15, 'X', qryPesq.FieldByName('CIDADE')
        .AsString);
      CampoReg[15] := EscreveCampo(02, 'X', qryPesq.FieldByName('UF').AsString);

      // if Length(RetornaNumeros(BancodeDados.InstituicaoCNPJ.Value))=11 then
      // CampoReg[16]:=EscreveCampo(01, 'X', '1') else CampoReg[16]:=EscreveCampo(01, 'X', '2');
      // CampoReg[17]:=EscreveCampo(15, 'N', BancodeDados.InstituicaoCNPJ.AsString);
      // CampoReg[18]:=EscreveCampo(40, 'X', BancodeDados.InstituicaoFANTASIA.AsString);
      CampoReg[16] := EscreveCampo(01, 'X', '0');
      CampoReg[17] := EscreveCampo(15, 'N', '0');
      CampoReg[18] := EscreveCampo(40, 'X', '');

      if (CodBanco = 1) then
      begin
        CampoReg[19] := EscreveCampo(03, 'N', '0');
      end
      else if (CodBanco = 104) then
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
      CampoReg[04] := EscreveCampo(05, 'N', IntToStr(NSeqLote)); // seq de lote
      CampoReg[05] := EscreveCampo(01, 'X', 'R'); // registro detalhe
      CampoReg[06] := EscreveCampo(01, 'X', ''); // exclusivo cnab
      CampoReg[07] := EscreveCampo(02, 'N', '01'); // movimento remessa
      CampoReg[08] := EscreveCampo(01, 'N', '0');
      CampoReg[09] := EscreveCampo(08, 'N', '0');
      CampoReg[10] := EscreveCampo(15, 'N', FormatFloat(',0.00', 0)); // DESC
      CampoReg[11] := EscreveCampo(24, 'X', '');

      BancodeDados.GradeFin.Close;
      BancodeDados.GradeFin.SQL.Text :=
        'select * from grade_financeira where grade_id = ' +
        IntToStr(BoletosGRADE_ID.Value);
      BancodeDados.GradeFin.Open;

      if not BancodeDados.GradeFin.IsEmpty then
      begin
        CampoReg[12] := EscreveCampo(01, 'N', '1');
        CampoReg[13] := EscreveCampo(08, 'D',
          DateToStr(BoletosVENCIMENTO.Value + BoletosDIAS_TOLERANCIA.Value));
        CampoReg[14] := EscreveCampo(15, 'N',
          FormatFloat(',0.00',
          (BoletosVALOR_DOC.Value * BancodeDados.GradeFinMULTA.Value) / 100));
      end
      else
      begin
        CampoReg[12] := EscreveCampo(01, 'N', '1');
        CampoReg[13] := EscreveCampo(08, 'D',
          DateToStr(BoletosVENCIMENTO.Value));
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
      CampoReg[04] := EscreveCampo(05, 'N', IntToStr(NSeqLote));
      // seq registro lote
      CampoReg[05] := EscreveCampo(01, 'X', 'R'); // registro detalhe
      CampoReg[06] := EscreveCampo(01, 'X', ''); // exclusivo cnab

      CampoReg[07] := EscreveCampo(02, 'N', '01'); // movimento remessa

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

        // Atualiza��o - Alex Eloy - 16/03/2017
        { *
          C�digo do Desconto 1 / 2 / 3
          C�digo adotado pela FEBRABAN para identifica��o do tipo de desconto que dever� ser concedido.
          Ao se optar por valor, o desconto deve ser expresso em valor. Idem ao se optar por percentual, o desconto
          deve ser expresso em percentual.
          �0� = Sem Desconto
          �1� = Valor Fixo at� a data informada
          �2� = Percentual at� a data informada
          Para os c�digos �1� e �2� ser� obrigat�rio a informa��o da Data.
          * }
        // Desconto 2


        // Descomentar quando as implementa��es estiverem prontas

        // if not (BoletosDESCONTO2_TIPO.Value > 0) then
        // begin
        CampoReg[08] := EscreveCampo(01, 'N', '');
        // Codigo do Desconto 2 (Ver descri��o C021 no Manual)
        CampoReg[09] := EscreveCampo(08, 'N', ''); // Data do Desconto
        CampoReg[10] := EscreveCampo(15, 'N', '');
        // Valor / Percentual a ser Concedido
        // end else
        // begin
        // CampoReg[08] := EscreveCampo(01, 'N', IntToStr(BoletosDESCONTO2_TIPO.Value)); //Codigo do Desconto 2 (Ver descri��o C021 no Manual)
        // if BoletosDESCONTO2_DT.Value > BoletosVENCIMENTO.Value then
        // CampoReg[09] := EscreveCampo(08, 'D', DateToStr(BoletosVENCIMENTO.Value)) //Data do Desconto igual a do Vencimento
        // else
        // CampoReg[09] := EscreveCampo(08, 'D', DateToStr(BoletosDESCONTO2_DT.Value)); // Data do Desconto

        // CampoReg[10] := EscreveCampo(15, 'N', FormatFloat(',0.00', BoletosDESCONTO2.Value)); //Valor / Percentual a ser Concedido
        // end;


        // Desconto 2

        // CampoReg[08] := EscreveCampo(01, 'N', ''); //Codigo do Desconto 2 (Ver descri��o C021 no Manual)
        // CampoReg[09] := EscreveCampo(08, 'N', ''); //Data do Desconto
        // CampoReg[10] := EscreveCampo(15, 'N', ''); //Valor / Percentual a ser Concedido

        // Desconto 3
        CampoReg[11] := EscreveCampo(01, 'N', ''); // C�digo do Desconto 3
        CampoReg[12] := EscreveCampo(08, 'N', ''); // Data do Desconto
        CampoReg[13] := EscreveCampo(15, 'N', '');
        // Valor / Percentual a ser Concedido

        // Fim da Atualiza��o - Alex Eloy
      end;

      BancodeDados.GradeFin.Close;
      BancodeDados.GradeFin.SQL.Text :=
        'select * from grade_financeira where grade_id = ' +
        IntToStr(BoletosGRADE_ID.Value);
      BancodeDados.GradeFin.Open;

      // MULTA
      if BancodeDados.GradeFinMULTA.Value > 0 then
      // eraldo trocou este teste em 29/03/16
      begin
        CampoReg[14] := EscreveCampo(01, 'N', '1');
        CampoReg[15] := EscreveCampo(08, 'D',
          DateToStr(BoletosVENCIMENTO.Value + BoletosDIAS_TOLERANCIA.Value));
        CampoReg[16] := EscreveCampo(15, 'N',
          FormatFloat(',0.00',
          (BoletosVALOR_DOC.Value * BancodeDados.GradeFinMULTA.Value) / 100));
      end
      else // caso o campo multa n�o esta preenchido
      begin

        if (CodBanco in [1]) then
        begin // em 29/03/16
          CampoReg[14] := EscreveCampo(01, 'N', '0');
          // posi��o 66 a 66 | Informamos que em caso de cobran�a de multa, esta percentual/valor � fixo, sendo cobrado apenas uma �nica vez. Caso n�o tenha multa, informar '0' (zero).
          // CampoReg[15] := EscreveCampo(08, 'N', '0');  //posi��o: 67 � 74 | Caso n�o tenha multa, informar 'zeros'. Sistema aceita a mesma data do vencimento, ou dia seguinte.
          CampoReg[15] := EscreveCampo(08, 'D',
            DateToStr(BoletosVENCIMENTO.Value + BoletosDIAS_TOLERANCIA.Value));
          // Eraldo em 11/08/16
          CampoReg[16] := EscreveCampo(15, 'N', FormatFloat(',0.00', 0));
          // posi��o: 75 � 89 | Caso n�o tenha multa, informar 'zeros'.
        end
        else
        begin
          CampoReg[14] := EscreveCampo(01, 'N', '1'); // posi��o 66 a 66 |
          CampoReg[15] := EscreveCampo(08, 'D',
            DateToStr(BoletosVENCIMENTO.Value)); // posi��o: 67 � 74 |
          CampoReg[16] := EscreveCampo(15, 'N', FormatFloat(',0.00', 0));
          // posi��o: 75 � 89
        end;
      end; // caso o campo multa n�o esta preenchido

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
      else if (CodBanco = 104) then
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

    if (CodBanco = 004) then // BANCO DO NORDESTE
    begin
      CampoReg[01] := EscreveCampo(01, 'N', '0');
      // 001 a 001 > Preencher com n�mero "0".
      CampoReg[02] := EscreveCampo(01, 'N', '1');
      // 002 a 002 > Preencher com n�mero "1".
      CampoReg[03] := EscreveCampo(07, 'X', 'REMESSA');
      // 003 a 009 > Preencher com o literal "REMESSA".
      CampoReg[04] := EscreveCampo(02, 'N', '01');
      // 010 a 011 > Preencher com n�mero "01".
      CampoReg[05] := EscreveCampo(15, 'X', 'COBRANCA');
      // 012 a 026 > Preencher com o literal "COBRANCA".
      CampoReg[06] := EscreveCampo(04, 'N', BancodeDados.BancosAGENCIA.Value +
        BancodeDados.BancosDIG_AGENCIA.Value);
      // 027 a 030 > Informar o c�d. da Ag�ncia onde o cliente opera
      CampoReg[07] := EscreveCampo(02, 'N', '00');
      // 31 a 32 > Preencher espa�os
      CampoReg[08] := EscreveCampo(08, 'N',
        RetornaNumeros(BancodeDados.BancosCONTA_CORRENTE.AsString) +
        RetornaNumeros(BancodeDados.BancosDIG_CONTA_CORRENTE.AsString));
      // 033 a 040> Informar a cta. do cliente cadastrada em cobran�a como cedente.
      CampoReg[09] := EscreveCampo(06, 'X', ''); // 041 a 046 >> Brancos.
      CampoReg[10] := EscreveCampo(30, 'X', BancodeDados.ConfigFANTASIA.Value);
      // 47 a 76 >> PPreencher com o nome do cliente.
      CampoReg[11] := EscreveCampo(03, 'N', IntToStr(CodBanco));
      // 077 a 079 > Preencher com o n�mero "004".
      CampoReg[12] := EscreveCampo(15, 'X', 'B.DO NORDESTE');
      // 080 a 094  > Preencher com o literal "B.DO NORDESTE".
      CampoReg[13] := EscreveCampo(06, 'X',
        RetornaNumeros(FormatDateTime('dd/mm/yy', Date)));
      // 95 a 100 > Informar a data da grava��o do arquivo (formato "ddmmaa").
      CampoReg[14] := EscreveCampo(03, 'N', '000');
      // 101 a 103 >> c�digo do usu�rio no Sistema de Cobran�a do BANCO DO NORDESTE. Este c�digo ser� fornecido pelo Banco.
      CampoReg[15] := EscreveCampo(291, 'X', '');
      // 104 a 394 > Preencher espa�os
      CampoReg[16] := EscreveCampo(06, 'N', FormatFloat('000000', NSeqReg));
      // 395 400 > Alinhado � direita e zeros � esquerda;
    end
    else if (CodBanco = 104) then // Caixa Econ�mica Federal
    begin
      CampoReg[01] := EscreveCampo(01, 'N', '0');
      // 001 a 001 > A identica��o do header deve ser �0�(zero)
      CampoReg[02] := EscreveCampo(01, 'N', '1');
      // 002 a 002 > A identifica��o do arquivo de remessa deve ser "1"
      CampoReg[03] := EscreveCampo(07, 'X', 'REMESSA'); // 003 a 009 > �REMESSA�
      CampoReg[04] := EscreveCampo(02, 'N', '01');
      // 010 a 011 > O c�digo de servi�o de cobran�a � �01�
      CampoReg[05] := EscreveCampo(15, 'X', 'COBRANCA');
      // 012 a 026 > �COBRANCA�
      CampoReg[06] := EscreveCampo(04, 'N', BancodeDados.BancosAGENCIA.AsString
        + BancodeDados.BancosDIG_AGENCIA.Value);
      // 027 a 030 > C�digo do benefici�rio
      CampoReg[07] := EscreveCampo(06, 'N',
        BancodeDados.BancosCODIGO_CEDENTE.AsString);
      // RetornaNumeros(BancodeDados.BancosCONTA_CORRENTE.AsString) + RetornaNumeros(BancodeDados.BancosDIG_CONTA_CORRENTE.AsString));
      CampoReg[08] := EscreveCampo(10, 'X', ''); // 37 a 46 > Preencher espa�os
      CampoReg[09] := EscreveCampo(30, 'X', BancodeDados.ConfigFANTASIA.Value);
      // 47 a 76 >> Preencher com o Nome da Empresa
      CampoReg[10] := EscreveCampo(03, 'N', IntToStr(CodBanco));
      // 077 a 079 > N�mero do banco
      CampoReg[11] := EscreveCampo(15, 'X', 'C ECON FEDERAL');
      // 080 a 094  > Preencher 'C ECON FEDERAL'
      CampoReg[12] := EscreveCampo(06, 'X',
        RetornaNumeros(FormatDateTime('dd/mm/yy', Date)));
      // 95 a 100 > Preencher com a data da cria��o do arquivo, no formato DDMMAA
      CampoReg[13] := EscreveCampo(289, 'X', '');
      // 101 a 389 > Preencher espa�os
      CampoReg[14] := EscreveCampo(05, 'N', FormatFloat('00000', NSeqArquivo));
      // 390 a 394 >  iniciar a partir de �00001�' e evoluir de 1 em 1 para cada Header de Arquivo
      CampoReg[15] := EscreveCampo(06, 'N', FormatFloat('000000', NSeqReg));
      // 395 400 > Alinhado � direita e zeros � esquerda;
    end
    else if (CodBanco = 748) then // Sicredi e UNICRED
    begin
      CampoReg[01] := EscreveCampo(01, 'N', '0');
      // 001 a 001 > A identica��o do header deve ser �0�(zero)
      CampoReg[02] := EscreveCampo(01, 'N', '1');
      // 002 a 002 > A identifica��o do arquivo de remessa deve ser "1"
      CampoReg[03] := EscreveCampo(07, 'X', 'REMESSA'); // 003 a 009 > �REMESSA�
      CampoReg[04] := EscreveCampo(02, 'N', '01');
      // 010 a 011 > O c�digo de servi�o de cobran�a � �01�
      CampoReg[05] := EscreveCampo(15, 'X', 'COBRANCA');
      // 012 a 026 > �COBRANCA�
      CampoReg[06] := EscreveCampo(05, 'N',
        BancodeDados.BancosCODIGO_CEDENTE.AsString);
      // 027 a 031 > C�digo do benefici�rio
      CampoReg[07] := EscreveCampo(14, 'N',
        RetornaNumeros(BancodeDados.ConfigCNPJ.Value));
      // 032 a 045 > Informar CPF/CNPJ do benefici�rio. Alinhado � direita e zeros � esquerda;
      CampoReg[08] := EscreveCampo(31, 'X', '');
      // 046 a 076 > Deixar em Brancos (sem preenchimento)
      CampoReg[09] := EscreveCampo(03, 'N', IntToStr(CodBanco));
      // 077 a 079 > N�mero do Sicredi
      CampoReg[10] := EscreveCampo(15, 'X', 'SICREDI');
      // 080 a 094  > Literal Sicredi
      CampoReg[11] := EscreveCampo(08, 'X',
        RetornaNumeros(FormatDateTime('yyyy/mm/dd', Date)));
      // 095 a 102 > O Formato da data de gera��o do arquivo deve  estar no padr�o: AAAAMMDD
      CampoReg[12] := EscreveCampo(08, 'X', '');
      // 103 a 110 > Deixar em Branco (sem preenchimento)
      CampoReg[13] := EscreveCampo(07, 'N', IntToStr(NSeqArquivo));
      // 111 a 117 > Deve ser maior que zero: n�mero do �ltimo arquivo remessa + 1;
      CampoReg[14] := EscreveCampo(273, 'X', '');
      // 118 a 390 >  Deixar em Branco (sem preenchimento)
      CampoReg[15] := EscreveCampo(04, 'X', '2.00');
      // 391 a 394  > 2.00 (o ponto deve ser colocado)
      CampoReg[16] := EscreveCampo(06, 'N', FormatFloat('000000', NSeqReg));
      // 395 a 400 > Alinhado � direita e zeros � esquerda;
    end
    else if (CodBanco = 237) then // Banco Bradesco S.A.
    begin
      CampoReg[01] := EscreveCampo(01, 'N', '0');
      CampoReg[02] := EscreveCampo(01, 'N', '1');
      CampoReg[03] := EscreveCampo(07, 'X', 'REMESSA');
      CampoReg[04] := EscreveCampo(02, 'N', '01');
      CampoReg[05] := EscreveCampo(15, 'X', 'COBRANCA');
      CampoReg[06] := EscreveCampo(20, 'N',
        BancodeDados.BancosCONVENIO.AsString);
      CampoReg[07] := EscreveCampo(30, 'X', BancodeDados.ConfigFANTASIA.Value);
      CampoReg[08] := EscreveCampo(03, 'N', IntToStr(CodBanco));
      CampoReg[09] := EscreveCampo(15, 'X',
        BancodeDados.BancosBANCO_NOME.Value);
      CampoReg[10] := EscreveCampo(06, 'D2', DateToStr(Date));
      CampoReg[11] := EscreveCampo(08, 'X', '');
      CampoReg[12] := EscreveCampo(02, 'X', 'MX');
      CampoReg[13] := EscreveCampo(07, 'N', IntToStr(NSeqArquivo));
      CampoReg[14] := EscreveCampo(277, 'X', '');
      CampoReg[15] := EscreveCampo(06, 'N', IntToStr(NSeqReg));
    end
    else if (CodBanco = 341) then // Ita� Unibanco S.A.
    begin
      CampoReg[01] := EscreveCampo(01, 'N', '0');
      CampoReg[02] := EscreveCampo(01, 'N', '1');
      CampoReg[03] := EscreveCampo(07, 'X', 'REMESSA');
      CampoReg[04] := EscreveCampo(02, 'N', '01');
      CampoReg[05] := EscreveCampo(15, 'X', 'COBRANCA');
      CampoReg[06] := EscreveCampo(04, 'N', BancodeDados.BancosAGENCIA.Value) +
        EscreveCampo(02, 'N', '0') + EscreveCampo(05, 'N',
        BancodeDados.BancosCONTA_CORRENTE.Value) + EscreveCampo(01, 'N',
        BancodeDados.BancosDIG_CONTA_CORRENTE.Value) +
        EscreveCampo(08, 'X', '');
      CampoReg[07] := EscreveCampo(30, 'X', BancodeDados.ConfigFANTASIA.Value);
      CampoReg[08] := EscreveCampo(03, 'N', IntToStr(CodBanco));
      CampoReg[09] := EscreveCampo(15, 'X', 'BANCO ITAU SA');
      // BancodeDados.BancosBANCO_NOME.Value);
      CampoReg[10] := EscreveCampo(06, 'D2', DateToStr(Date));
      CampoReg[11] := EscreveCampo(294, 'X', '');
      CampoReg[12] := '';
      CampoReg[13] := '';
      CampoReg[14] := '';
      CampoReg[15] := EscreveCampo(06, 'N', IntToStr(NSeqReg));
    end
    else

      if (CodBanco = 399) then // HSBC Bank Brasil S.A. - Banco M�ltiplo
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
        EscreveCampo(07, 'N', BancodeDados.BancosCONTA_CORRENTE.Value +
        BancodeDados.BancosDIG_CONTA_CORRENTE.Value);
      CampoReg[10] := EscreveCampo(02, 'X', '');
      CampoReg[11] := EscreveCampo(30, 'X', BancodeDados.ConfigFANTASIA.Value);
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

      if (CodBanco = 070) then // BRB - Banco de Bras�lia S.A.
    begin
      CampoReg[01] := EscreveCampo(03, 'X', 'DCB');
      CampoReg[02] := EscreveCampo(03, 'N', '001');
      CampoReg[03] := EscreveCampo(03, 'N', '075');
      CampoReg[04] := EscreveCampo(03, 'N', BancodeDados.BancosAGENCIA.Value);
      CampoReg[05] := EscreveCampo(07, 'N',
        BancodeDados.BancosCONTA_CORRENTE.Value +
        BancodeDados.BancosDIG_CONTA_CORRENTE.Value);
      CampoReg[06] := EscreveCampo(08, 'D3', DateToStr(Date));
      CampoReg[07] := EscreveCampo(06, 'H', TimeToStr(Time));
      CampoReg[08] := EscreveCampo(06, 'N', IntToStr(Boletos.RecordCount + 1));
    end
    else

      if (CodBanco = 320) then // Banco Industrial e Comercial S.A.
    begin
      CampoReg[01] := EscreveCampo(01, 'N', '0');
      CampoReg[02] := EscreveCampo(01, 'N', '1');
      CampoReg[03] := EscreveCampo(07, 'X', 'REMESSA');
      CampoReg[04] := EscreveCampo(02, 'N', '02');
      CampoReg[05] := EscreveCampo(15, 'X', 'COBRANCA');
      CampoReg[06] := EscreveCampo(10, 'N',
        FormatFloat('000', BancodeDados.BancosTIPO_CONTA_CORRENTE.Value) +
        FormatFloat('000000', BancodeDados.BancosCONTA_CORRENTE.AsInteger) +
        BancodeDados.BancosDIG_CONTA_CORRENTE.Value);
      CampoReg[07] := EscreveCampo(07, 'X', '');
      CampoReg[08] := EscreveCampo(03, 'N', BancodeDados.BancosAGENCIA.Value);
      CampoReg[09] := EscreveCampo(30, 'X', BancodeDados.ConfigFANTASIA.Value);
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
      CampoReg[06] := EscreveCampo(20, 'X',
        BancodeDados.BancosCODIGO_CEDENTE.Value);
      CampoReg[07] := EscreveCampo(30, 'X', BancodeDados.ConfigFANTASIA.Value);
      CampoReg[08] := EscreveCampo(03, 'N', IntToStr(CodBanco));
      CampoReg[09] := EscreveCampo(15, 'X', 'BANCO DAYCOVAL');
      CampoReg[10] := EscreveCampo(06, 'D2', DateToStr(Date));
      CampoReg[11] := EscreveCampo(294, 'X', '');
      CampoReg[12] := EscreveCampo(06, 'N', IntToStr(NSeqReg));
    end
    else

      if (CodBanco = 356) then // Banco Real S.A.
    begin
      CampoReg[01] := EscreveCampo(01, 'N', '0');
      CampoReg[02] := EscreveCampo(25, 'X', '1REMESSA01COBRANCA');
      CampoReg[03] := EscreveCampo(01, 'N', '0');
      CampoReg[04] := EscreveCampo(04, 'N', BancodeDados.BancosAGENCIA.Value);
      CampoReg[05] := EscreveCampo(01, 'N', '0');
      CampoReg[06] := EscreveCampo(07, 'N',
        BancodeDados.BancosCONTA_CORRENTE.Value);
      CampoReg[07] := EscreveCampo(07, 'X', '');
      CampoReg[08] := EscreveCampo(30, 'X', BancodeDados.ConfigFANTASIA.Value);
      CampoReg[09] := EscreveCampo(03, 'N', IntToStr(CodBanco));
      CampoReg[10] := EscreveCampo(15, 'X', 'BANCO REAL');
      CampoReg[11] := EscreveCampo(06, 'D2', DateToStr(Date));
      CampoReg[12] := EscreveCampo(08, 'X', '01600BPI');
      CampoReg[13] := EscreveCampo(286, 'X', '');
      CampoReg[14] := EscreveCampo(06, 'N', IntToStr(NSeqReg));
    end
    else

      if (CodBanco = 389) then // Banco Mercantil do Brasil S.A.
    begin
      CampoReg[01] := EscreveCampo(01, 'N', '0');
      CampoReg[02] := EscreveCampo(01, 'N', '1');
      CampoReg[03] := EscreveCampo(07, 'X', 'REMESSA');
      CampoReg[04] := EscreveCampo(02, 'N',
        BancodeDados.BancosCARTEIRA.AsString); // COB. SIMPLES COM REGISTRO
      CampoReg[05] := EscreveCampo(08, 'X', 'COBRANCA');
      CampoReg[06] := EscreveCampo(07, 'X', '');
      CampoReg[07] := EscreveCampo(04, 'N', BancodeDados.BancosAGENCIA.Value);
      CampoReg[08] := EscreveCampo(15, 'N', BancodeDados.ConfigCNPJ.Value);
      CampoReg[09] := EscreveCampo(01, 'X', '');
      CampoReg[10] := EscreveCampo(30, 'X', BancodeDados.ConfigFANTASIA.Value);
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
      CampoReg[07] := EscreveCampo(14, 'N',
        BancodeDados.BancosCODIGO_CEDENTE.Value);
      CampoReg[08] := EscreveCampo(06, 'X', '');
      CampoReg[09] := EscreveCampo(30, 'X', BancodeDados.ConfigFANTASIA.Value);
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
      CampoReg[05] := 'COBRAN�A';
      CampoReg[06] := EscreveCampo(07, 'X', '');
      CampoReg[07] := EscreveCampo(04, 'N', BancodeDados.BancosAGENCIA.Value);
      CampoReg[08] := EscreveCampo(01, 'X',
        BancodeDados.BancosDIG_AGENCIA.Value);
      CampoReg[09] := EscreveCampo(08, 'N',
        BancodeDados.BancosCODIGO_CEDENTE.Value);
      CampoReg[10] := EscreveCampo(01, 'X',
        BancodeDados.BancosDIG_COD_CEDENTE.Value);
      CampoReg[11] := EscreveCampo(06, 'X', '');
      CampoReg[12] := EscreveCampo(30, 'X', BancodeDados.ConfigFANTASIA.Value);
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
  Linha, CPFSacado, NomeSacado, ObsEndSacado, CarteiraTmp: String;
  CampoReg: Array [1 .. 54] of String;
  vencTmp: TDate;
  Ano, Mes, Dia: Word;
  TotalParc: ShortString;

begin
  for i := 1 to Length(CampoReg) do
    CampoReg[i] := '';

  with RemessaForm do
  begin
    inc(NSeqReg);

    qryPesq.Close;
    qryPesq.SQL.Text :=
      'select nome, cli_id, cnpj, cnpj, logradouro, bairro, (select nome from municipios where codmun=coalesce(clientes.cidade,0)) as cidade, (select uf from municipios where codmun=coalesce(clientes.cidade,0))  as uf, cep, numero '
      + ' from clientes where cli_id= ' + IntToStr(BoletosCLI_ID.Value);
    qryPesq.Open;

    if trim(BoletosCLI_CNPJ_CPF.Value) <> EmptyStr then
    begin
      CPFSacado := TestaCPFCNPJ(BoletosCLI_CNPJ_CPF.Value, false);
      CPFSacado := RetornaNumeros(CPFSacado);
      NomeSacado := qryPesq.FieldByName('NOME').AsString;
      // qryPesq.Fields[0].AsString;
    end;

    ObsEndSacado := qryPesq.FieldByName('LOGRADOURO').AsString;

    if (CodBanco = 004) then
    begin // BANCO DO NORDESTE

      case BancodeDados.BancosCARTEIRA.Value of
        // Calculando a carteira para remessa
        // 47  : CarteiraTmp :='1';
        // 45  : CarteiraTmp :='2';
        // 46  : CarteiraTmp :='3';
        50:
          CarteiraTmp := '4'; // Cobran�a Simples - boleto emitido pelo cliente.
        45:
          CarteiraTmp := '5';
        // Cobran�a Vinculada - boleto emitido pelo cliente.
        46:
          CarteiraTmp := '6';
        // Cobran�a Caucionada - bloquete emitido pelo cliente. usar
        04:
          CarteiraTmp := '7';
        48:
          CarteiraTmp := '8';
        97:
          CarteiraTmp := '9';
        51:
          CarteiraTmp := '0';
        49:
          CarteiraTmp := 'A';
        52:
          CarteiraTmp := 'B';
        58:
          CarteiraTmp := 'C';
        95:
          CarteiraTmp := 'D';
        63:
          CarteiraTmp := 'E';
        53:
          CarteiraTmp := 'F';
        54:
          CarteiraTmp := 'G';
        55:
          CarteiraTmp := 'H';
        57:
          CarteiraTmp := 'I';
        59:
          CarteiraTmp := 'J';
        61:
          CarteiraTmp := 'K'
      else
        CarteiraTmp := '4';
      end;

      BancodeDados.GradeFin.Close;
      BancodeDados.GradeFin.SQL.Text :=
        'select * from grade_financeira where grade_id = ' +
        IntToStr(BoletosGRADE_ID.Value);
      BancodeDados.GradeFin.Open;

      CampoReg[01] := EscreveCampo(01, 'N', '1');
      // Posi��o: 1 a 1 >> Preencher com o n�mero �1�.
      CampoReg[02] := EscreveCampo(16, 'X', ''); // Posi��o: 2 a 17 >> Brancos
      CampoReg[03] := EscreveCampo(04, 'N',
        FormatFloat('0000', BancodeDados.BancosAGENCIA.AsInteger));
      // Posi��o: 18 a 21 >> Preenchido com o c�digo da Ag�ncia na qual o Cliente opera.
      CampoReg[04] := EscreveCampo(02, 'N', '00');
      // Posi��o: 22 a 23 >> Informar �00�
      CampoReg[05] := EscreveCampo(08, 'N',
        FormatFloat('000000', (BancodeDados.BancosCONTA_CORRENTE.AsInteger +
        BancodeDados.BancosDIG_CONTA_CORRENTE.AsInteger)));
      // Posi��o: 24 a 31 >> Preenchido com o n�mero da Conta Corrente do Cliente cadastrado na cobran�a como cedente + Preenchido com o D�gito da Conta do Cliente.

      if not BancodeDados.GradeFin.IsEmpty then
      // Posi��o: 32 a 33 >> Informar o percentual da multa a ser cobrada quando do atraso.
      begin
        if not(BancodeDados.GradeFinMULTA.Value > 99) then
          CampoReg[06] := EscreveCampo(02, 'N',
            FormatFloat('00', BancodeDados.GradeFinMULTA.Value))
        else
          CampoReg[06] := EscreveCampo(02, 'N', FormatFloat(',0.00', 0));
      end
      else
      begin
        CampoReg[06] := EscreveCampo(02, 'N', FormatFloat(',0.00', 0));
      end;
      CampoReg[07] := EscreveCampo(04, 'X', '');
      // Posi��o: 034 a 037 >> Preencher com espa�os
      CampoReg[08] := EscreveCampo(25, 'X', IntToStr(BoletosEMISSAO_ID.Value));
      // Posi��o: 038 062  >>  n�mero Controle.
      CampoReg[09] := EscreveCampo(08, 'X',
        EscreveCampo(09, 'X', RetornaNumerosComDV(BoletosNOSSO_NUMERO.Value)));
      // Posi��o: 63 a 70 >> Nosso N�mero + D�gito do Nosso N�mero.

      if trim(BancodeDados.BancosFOL_CONTRAT_REM.Value) <> '' then
        // Posi��o: 071 a 080 >> N� do Contrato para cobran�a caucionada e Vinculada, e com zeros para  cobran�a simples.
        CampoReg[10] := EscreveCampo(10, 'N',
          BancodeDados.BancosFOL_CONTRAT_REM.Value)
      else
        CampoReg[10] := EscreveCampo(10, 'N', '0000000000');

      CampoReg[11] := EscreveCampo(06, 'N', '000000');
      // Posi��o: 81 a 86 >> Data do Segundo Desconto. Informar a Data do Segundo Desconto no formato �ddmmaa�, se houver. Caso contr�rio, preencher com zeros.
      CampoReg[12] := EscreveCampo(13, 'N', '0000000000000');
      // Posi��o: 087 099 >>  Informar o Valor do Segundo Desconto, se houver. Caso  contr�rio, preencher com zeros.
      CampoReg[13] := EscreveCampo(08, 'X', ''); // Posi��o: 100 107 >> Brancos
      CampoReg[14] := EscreveCampo(01, 'N', CarteiraTmp); // Posi��o: 108 a 108
      CampoReg[15] := EscreveCampo(02, 'N', '01');
      // Posi��o: 109 110 >> 01 - Entrada Normal.
      CampoReg[16] := EscreveCampo(10, 'X', IntToStr(BoletosEMISSAO_ID.Value));
      // Posi��o: 111 a 120 >>  Preencher com Seu N�mero de  controle do t�tulo (exemplos: n� da duplicata no caso de cobran�a de  duplicatas, n� da ap�lice, em caso de cobran�a de seguros)
      CampoReg[17] := EscreveCampo(06, 'N',
        RetornaNumeros(FormatDateTime('dd/mm/yy', BoletosVENCIMENTO.Value)));
      // Posicao: 121 126 >> Informar no formato �ddmmaa�.
      CampoReg[18] := EscreveCampo(13, 'N',
        FormatFloat(',0.00', BoletosVALOR_DOC.Value));
      // Posi��o: 127 a 139 >> Valor do T�tulo
      CampoReg[19] := EscreveCampo(03, 'N', IntToStr(CodBanco));
      // Posi��o: 140 a 142 >> Preencher �104�
      CampoReg[20] := EscreveCampo(04, 'N', '0000');
      // Posi��o: 143 146 >>  Preencher com zeros
      CampoReg[21] := EscreveCampo(01, 'X', '');
      // Posi��o: 147 147 >> Preencher com espa�os
      CampoReg[22] := EscreveCampo(02, 'N', '04');
      // Posi��o: 148 149 >> Informar a esp�cie do t�tulo: 04 - Carn�.
      CampoReg[23] := EscreveCampo(01, 'X', 'A');
      // Posi��o: 150 a 150 >> Preencher com "A" se aceito, ou "B" se n�o aceito
      CampoReg[24] := EscreveCampo(06, 'D2',
        (FormatDateTime('dd/mm/yy', BoletosEMISSAO.Value)));
      /// Posi��o: 151 156  >> Data de Emiss�o. Informar no formato "ddmmaa".
      CampoReg[25] := EscreveCampo(04, 'N', '05');
      // Posi��o: 157 160 >> C�digo de Instru��o: 05 - Acatar instru��es contidas no t�tulo

      if not BancodeDados.GradeFin.IsEmpty then // Posi��o: 161 173 >>
      begin
        CampoReg[26] := EscreveCampo(13, 'N',
          FormatFloat(',0.00',
          (BoletosVALOR_DOC.Value * BancodeDados.GradeFinJUROS.Value) / 100));
      end
      else
      begin
        CampoReg[26] := EscreveCampo(13, 'N', FormatFloat(',0.00', 0)); // JUROS
      end;
      if BoletosDIAS_TOLERANCIA.Value > 0 then
        // Posi��o: 174 a 179 >>> Data de Desconto. Informar no formato "ddmmaa". Se n�o houver, preencher com zeros.
        CampoReg[27] := EscreveCampo(06, 'N',
          RetornaNumeros(FormatDateTime('dd/mm/yy', BoletosVENCIMENTO.Value +
          BoletosDIAS_TOLERANCIA.Value)))
      else
        CampoReg[27] := EscreveCampo(06, 'N', '000000');
      CampoReg[28] := EscreveCampo(13, 'N', FormatFloat('00000000000000',
        BoletosDESCONTO.Value));
      // Posi��o: 180 192 >> Valor do Desconto. Se n�o houver, preencher com zeros.
      CampoReg[29] := EscreveCampo(13, 'X', '');
      // Posi��o: 193 205 >> Valor do IOC : mposto a ser recolhido pelo Banco quando se tratar de opera��es de seguro.
      CampoReg[30] := EscreveCampo(13, 'N', '0000000000000');
      // Posi��o: 206 218 >> Especie  >> Valor do Abatimento   . Se n�o houver, preencher com zeros.

      if Length(CPFSacado) = 11 then
        // Posicao: 219 a 220 >> C�digo de Inscri��o do Sacado. Preencher c/ "01" para CPF, ou "02" para CGC.
        CampoReg[31] := EscreveCampo(02, 'N', '01')
      else
        CampoReg[31] := EscreveCampo(02, 'N', '02');

      CampoReg[32] := EscreveCampo(14, 'N', CPFSacado);
      // POsi��o: 221 234 >> N�mero do CGC/ CPF do Sacado. Informar CGC ou CPF do Sacado.
      CampoReg[33] := EscreveCampo(40, 'X', NomeSacado);
      // POsi��o: 235 274 >> Nome do Pagador

      CampoReg[34] := EscreveCampo(40, 'X', qryPesq.FieldByName('LOGRADOURO')
        .AsString + ' ' + qryPesq.FieldByName('NUMERO').AsString);
      // Posi��o: 275 314  Endere�o do Pagador
      CampoReg[35] := EscreveCampo(12, 'X', qryPesq.FieldByName('BAIRRO')
        .AsString); // Posi��o: 315 a 326 >> Bairro do Pagador
      CampoReg[36] := EscreveCampo(08, 'N', qryPesq.FieldByName('CEP')
        .AsString); // Posi��o: 327 a 334 >> CEP do Pagador
      CampoReg[37] := EscreveCampo(15, 'X', qryPesq.FieldByName('CIDADE')
        .AsString); // Posi��o: 335 a 349 >> Cidade do Pagador
      CampoReg[38] := EscreveCampo(02, 'X', qryPesq.FieldByName('UF').AsString);
      // Posi��o: 350 351  >> Unidade da Federa��o do Pagador

      CampoReg[39] := EscreveCampo(40, 'X', '');
      // Posi��o: 368 a 389 >> Nome do Sacador/Avalista

      if (BancodeDados.BancosDIAS_PROTESTO.Value > 0) then
      // Posi��o: 392 a 393 >> Prazo de Protesto. Informar o n�mero de dias em atraso para envio do t�tulo  para protesto.
      begin
        CampoReg[40] := EscreveCampo(02, 'N',
          IntToStr(BancodeDados.BancosDIAS_PROTESTO.Value));
      end
      else
      begin
        CampoReg[40] := EscreveCampo(02, 'N', '99');
        // Para que o t�tulo n�o seja protestado, preencher com "99".
      end;

      CampoReg[44] := EscreveCampo(01, 'N', '0');
      // Posi��o: 394 394 >> C�digo da Moeda. Informar o c�d. da moeda do t�tulo  > 0 - R$.
      CampoReg[45] := EscreveCampo(06, 'N', IntToStr(NSeqReg));
      // Posi��o:  395 a 400 >> Sequencial do Registro. Adicionar 1 ao sequencial do registro anterior.

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
      CampoReg[07] := EscreveCampo(04, 'N', BancodeDados.BancosAGENCIA.AsString)
        + EscreveCampo(07, 'N', BancodeDados.BancosCONTA_CORRENTE.AsString +
        BancodeDados.BancosDIG_CONTA_CORRENTE.Value);
      CampoReg[08] := EscreveCampo(02, 'X', '');
      CampoReg[09] := EscreveCampo(25, 'X', IntToStr(BoletosEMISSAO_ID.Value));
      CampoReg[10] := EscreveCampo(11, 'N', BoletosNOSSO_NUMERO.Value);
      CampoReg[11] := EscreveCampo(06, 'N', '0');
      CampoReg[12] := EscreveCampo(11, 'N', '0');
      CampoReg[13] := EscreveCampo(06, 'N', '0');
      CampoReg[14] := EscreveCampo(11, 'N', '0');

      CampoReg[15] := EscreveCampo(01, 'N',
        BancodeDados.BancosCARTEIRA.AsString);
      CampoReg[16] := EscreveCampo(02, 'N', '01');
      CampoReg[17] := EscreveCampo(10, 'X', IntToStr(BoletosEMISSAO_ID.Value));
      CampoReg[18] := EscreveCampo(06, 'D2',
        DateToStr(BoletosVENCIMENTO.Value));
      CampoReg[19] := EscreveCampo(13, 'N',
        FormatFloat(',0.00', BoletosVALOR_DOC.Value));
      CampoReg[20] := EscreveCampo(03, 'N', IntToStr(CodBanco));
      CampoReg[21] := EscreveCampo(05, 'N', '0');
      CampoReg[22] := EscreveCampo(02, 'N', '01');
      CampoReg[23] := EscreveCampo(01, 'X', 'A');
      CampoReg[24] := EscreveCampo(06, 'D2', DateToStr(BoletosEMISSAO.Value));
      CampoReg[25] := EscreveCampo(02, 'N', '0');
      CampoReg[26] := EscreveCampo(02, 'N', '0');

      BancodeDados.GradeFin.Close;
      BancodeDados.GradeFin.SQL.Text :=
        'select * from grade_financeira where grade_id = ' +
        IntToStr(BoletosGRADE_ID.Value);
      BancodeDados.GradeFin.Open;

      if not BancodeDados.GradeFin.IsEmpty then
      begin
        CampoReg[27] := EscreveCampo(13, 'N',
          FormatFloat(',0.00',
          (BoletosVALOR_DOC.Value * BancodeDados.GradeFinJUROS.Value) / 100));
      end
      else
      begin
        CampoReg[27] := EscreveCampo(13, 'N', FormatFloat(',0.00', 0)); // JUROS
      end;

      CampoReg[28] := EscreveCampo(06, 'D2',
        DateToStr(BoletosVENCIMENTO.Value));
      CampoReg[29] := EscreveCampo(13, 'N',
        FormatFloat(',0.00', BoletosDESCONTO.Value));
      CampoReg[30] := EscreveCampo(13, 'N', FormatFloat(',0.00', 0)); // IOF
      CampoReg[31] := EscreveCampo(13, 'N', FormatFloat(',0.00', 0));
      // Abatimento ou multa

      if Length(CPFSacado) = 11 then
        CampoReg[32] := EscreveCampo(02, 'N', '1')
      else
        CampoReg[32] := EscreveCampo(02, 'N', '2');

      CampoReg[33] := EscreveCampo(14, 'N', CPFSacado);
      CampoReg[34] := EscreveCampo(40, 'X', NomeSacado);
      CampoReg[35] := EscreveCampo(38, 'X', qryPesq.FieldByName('LOGRADOURO')
        .AsString + ' ' + qryPesq.FieldByName('NUMERO').AsString);

      CampoReg[36] := EscreveCampo(02, 'N', '0');
      CampoReg[37] := EscreveCampo(12, 'X', ObsEndSacado);
      // qryEndBAIRRO.Value);
      CampoReg[38] := EscreveCampo(08, 'N', qryPesq.FieldByName('CEP')
        .AsString);
      CampoReg[39] := EscreveCampo(15, 'X', qryPesq.FieldByName('CIDADE')
        .AsString);
      CampoReg[40] := EscreveCampo(02, 'X', qryPesq.FieldByName('UF').AsString);
      CampoReg[41] := EscreveCampo(39, 'X', '');
      CampoReg[42] := EscreveCampo(01, 'X', '');

      if (BancodeDados.BancosDIAS_PROTESTO.Value > 0) then
        CampoReg[43] := EscreveCampo(02, 'N',
          IntToStr(BancodeDados.BancosDIAS_PROTESTO.Value))
      else
        CampoReg[43] := EscreveCampo(02, 'X', '');

      CampoReg[44] := EscreveCampo(01, 'N', '9');
      CampoReg[45] := EscreveCampo(06, 'N', IntToStr(NSeqReg));
    end
    else

      if (CodBanco = 104) then
    begin // CAIXA ECON�MICA FEDERAL
      CampoReg[01] := EscreveCampo(01, 'N', '1');
      // Posi��o: 1 a 1 >> Preencher �1�

      if Length(RetornaNumeros(BancodeDados.ConfigCNPJ.Value)) = 11 then
        // Posi��o:  2 a 3 >> Preencher com o tipo de Inscri��o da Empresa Benefici�ria: �01� = CPF ou �02� = CNPJ
        CampoReg[02] := EscreveCampo(02, 'N', '01')
      else
        CampoReg[02] := EscreveCampo(02, 'N', '02');

      CampoReg[03] := EscreveCampo(14, 'N', BancodeDados.ConfigCNPJ.Value);
      // Posi��o: 4 17 >> Preencher com N�mero de inscri��o da Empresa (CNPJ) ou Pessoa F�sica (CPF) a que se est� fazendo refer�ncia, de acordo com o c�digo do campo acima
      CampoReg[04] := EscreveCampo(04, 'N',
        FormatFloat('0000', BancodeDados.BancosAGENCIA.AsInteger));
      // Posi��o: 18 a 21 >> Preencher com o C�digo da Ag�ncia de vincula��o do Benefici�rio, com 4 d�gitos
      CampoReg[05] := EscreveCampo(06, 'N',
        BancodeDados.BancosCODIGO_CEDENTE.AsString);
      // FormatFloat('000000', (BancodeDados.BancosCONTA_CORRENTE.AsInteger + BancodeDados.BancosDIG_CONTA_CORRENTE.AsInteger)) ); //Posi��o: 22 a 27 >>Preencher com o C�digo que identifica a Empresa na CAIXA, fornecido pela ag�ncia de vincula��o
      CampoReg[06] := EscreveCampo(01, 'X', '2');
      // Posi��o: 28 a 28 >> Preencher com a forma de emiss�o  do boleto desejada: �1� = Banco Emite ou �2� = Cliente Emite
      CampoReg[07] := EscreveCampo(01, 'N', '0');
      // Posi��o: 29 a 29 >> Identifica��o da Entrega/ Distribui��o do Boleto
      CampoReg[08] := EscreveCampo(02, 'N', '00');
      // Posi��o: 30 a 31 >> Informar �00�

      CampoReg[09] := EscreveCampo(25, 'X', IntToStr(BoletosEMISSAO_ID.Value));
      // Posi��o: 32 a 56 >>  Preencher com Seu N�mero de controle do t�tulo (exemplos: n� da duplicata no caso de cobran�a de duplicatas, n� da ap�lice, em caso de cobran�a de seguros)

      if not Length(BoletosNOSSO_NUMERO.Value) > 17 then
      begin
        CampoReg[10] := EscreveCampo(02, 'N',
          BancodeDados.BancosCARTEIRA.AsString);
        // Posi��o: 57 a 58 >> Identifica��o do T�tulo na CAIXA
        CampoReg[11] := EscreveCampo(15, 'N', BoletosNOSSO_NUMERO.Value);
        // 59 a 73
      end
      else
      begin
        CampoReg[11] := EscreveCampo(17, 'N', (BoletosNOSSO_NUMERO.Value));
        // 57 a 73
      end;

      CampoReg[12] := EscreveCampo(03, 'X', '');
      // Posi��o: 74 a 76 >> Preencher com espa�os
      CampoReg[13] := EscreveCampo(30, 'X', '');
      // Posi��o: 77 a 106 >> Preencher com Mensagem a ser impressa no boleto
      CampoReg[14] := EscreveCampo(02, 'N', '01');
      // Posi��o: 107 a 108 >> Preencher de acordo com  a modalidade de cobran�a contratada: �01� = Cobran�a Registrada ou �02� = Cobran�a Sem Registro
      if (BoletosCOD_MOV_REM.Value > 0) then
        // Posi��o: 109 a 110 >> Identifica��o Tipo Ocorr�ncia do arquivo remessa: 01 Entrada de T�tulo
        CampoReg[15] := EscreveCampo(02, 'N',
          FormatFloat('00', BoletosCOD_MOV_REM.Value))
      else
        CampoReg[15] := EscreveCampo(02, 'N', '01'); // Ocorrencia = Remessa

      CampoReg[16] := EscreveCampo(10, 'X', IntToStr(BoletosEMISSAO_ID.Value));
      // Posi��o: 111 a 120 >>  Preencher com Seu N�mero de  controle do t�tulo (exemplos: n� da duplicata no caso de cobran�a de  duplicatas, n� da ap�lice, em caso de cobran�a de seguros)
      CampoReg[17] := EscreveCampo(06, 'N',
        RetornaNumeros(FormatDateTime('dd/mm/yy', BoletosVENCIMENTO.Value)));
      // Posi��o: 121 a 126 >> Preencher com a Data de Vencimento do T�tulo, no formato DDMMAA
      CampoReg[18] := EscreveCampo(13, 'N',
        FormatFloat(',0.00', BoletosVALOR_DOC.Value)); // Posi��o: 127 a 139
      CampoReg[19] := EscreveCampo(03, 'N', IntToStr(CodBanco));
      // Posi��o: 140 a 142 >> Preencher �104�
      CampoReg[20] := EscreveCampo(05, 'N', '00000');
      // Posi��o: 143 a 147 >>  Preencher com zeros

      // Identifica��o de T�tulo - Aceito / N�o Aceito
      // C�digo adotado para identificar se o t�tulo de cobran�a foi aceito (reconhecimento da d�vida pelo
      // Pagador).
      // �A� = Aceite
      // �N� = N�o Aceite
      CampoReg[21] := EscreveCampo(02, 'N', '01');
      // Posi��o: 148 a 149 >>  Esp�cie do T�tulo

      CampoReg[22] := EscreveCampo(01, 'N', '01');
      // Posi��o: 150 150 >>  Identifica��o de T�tulo - Aceito / N�o Aceito
      CampoReg[23] := EscreveCampo(06, 'D2',
        (FormatDateTime('dd/mm/yy', BoletosEMISSAO.Value)));
      // Posi��o: 151 156 >>  Data da Emiss�o do T�tulo

      if (BancodeDados.BancosDIAS_PROTESTO.Value > 0) then
      begin
        CampoReg[24] := EscreveCampo(02, 'X', '01');
        // INSTRUCAO 1 >> �01� = Protestar Dias Corridos
      end
      else
      begin
        CampoReg[24] := EscreveCampo(02, 'X', '02');
        // INSTRUCAO 1 >> �02� = Devolver (N�o Protestar)
      end;

      CampoReg[25] := EscreveCampo(02, 'X', '00');
      // Posi��o: 159 a 160 >> INSTRUCAO 2

      BancodeDados.GradeFin.Close;
      BancodeDados.GradeFin.SQL.Text :=
        'select * from grade_financeira where grade_id = ' +
        IntToStr(BoletosGRADE_ID.Value);
      BancodeDados.GradeFin.Open;

      if not BancodeDados.GradeFin.IsEmpty then
      begin
        CampoReg[26] := EscreveCampo(13, 'N',
          FormatFloat(',0.00',
          (BoletosVALOR_DOC.Value * BancodeDados.GradeFinJUROS.Value) / 100));
      end
      else
      begin
        CampoReg[26] := EscreveCampo(13, 'N', FormatFloat(',0.00', 0));
        // Posi��o: 161 a 173 >> JUROS
      end;

      CampoReg[27] := EscreveCampo(06, 'D2',
        (FormatDateTime('dd/mm/yy', BoletosVENCIMENTO.Value +
        BoletosDIAS_TOLERANCIA.Value)));
      // Posicao: 174 a 179 >> Data limite para concess�o do desconto
      CampoReg[28] := EscreveCampo(13, 'N',
        FormatFloat(',0.00', BoletosDESCONTO.Value));
      // Posicao: 180 a 192 >> Valor do Desconto a ser concedido
      CampoReg[29] := EscreveCampo(13, 'N', FormatFloat(',0.00', 0));
      // Posicao: 193 a 205 >> IOF
      CampoReg[30] := EscreveCampo(13, 'N', FormatFloat(',0.00', 0));
      // Posicao: >> 206 a 218 >> ABATIMENTO

      if Length(CPFSacado) = 11 then
        // Posicao: 219 a 220 >> Identificador do Tipo de Inscri��o do Pagador
        CampoReg[31] := EscreveCampo(02, 'N', '1')
      else
        CampoReg[31] := EscreveCampo(02, 'N', '2');

      CampoReg[32] := EscreveCampo(14, 'N', CPFSacado);
      // POsi��o: 221 234 >> N�mero de Inscri��o do Pagador
      CampoReg[33] := EscreveCampo(40, 'X', NomeSacado);
      // POsi��o: 235 a 274 >> Nome do Pagador
      CampoReg[34] := EscreveCampo(40, 'X', qryPesq.FieldByName('LOGRADOURO')
        .AsString + ' ' + qryPesq.FieldByName('NUMERO').AsString);
      // Posi��o: 275 314  Endere�o do Pagador
      CampoReg[35] := EscreveCampo(12, 'X', qryPesq.FieldByName('BAIRRO')
        .AsString); // Posi��o: 315 a 326 >> Bairro do Pagador
      CampoReg[36] := EscreveCampo(08, 'N', qryPesq.FieldByName('CEP')
        .AsString); // Posi��o: 327 a 334 >> CEP do Pagador
      CampoReg[37] := EscreveCampo(15, 'X', qryPesq.FieldByName('CIDADE')
        .AsString); // Posi��o: 335 a 349 >> Cidade do Pagador
      CampoReg[38] := EscreveCampo(02, 'X', qryPesq.FieldByName('UF').AsString);
      // Posi��o: 350 351  >> Unidade da Federa��o do Pagado

      CampoReg[39] := EscreveCampo(06, 'D2', FormatDateTime('dd/mm/yy',
        (BoletosVENCIMENTO.Value + BoletosDIAS_TOLERANCIA.Value)));
      // Posi��o: 352 a 357 >> Defini��o da data para pagamento de multa
      CampoReg[40] := EscreveCampo(10, 'N',
        FormatFloat(',0.00', BancodeDados.GradeFinMULTA.Value));
      /// Posi��o: 358 a 367 >> Valor nominal da multa; 2 decimais
      CampoReg[41] := EscreveCampo(22, 'X', '');
      // Posi��o: 368 a 389 >> Nome do Sacador/Avalista
      CampoReg[42] := EscreveCampo(02, 'N', '01');
      // Posi��o: 390 a 391 >> Terceira Instru��o de Cobran�a

      if (BancodeDados.BancosDIAS_PROTESTO.Value > 0) then
      // Posi��o: 392 a 393 >> N�mero de dias para in�cio do protesto/devolu��o
      begin
        CampoReg[43] := EscreveCampo(02, 'N',
          IntToStr(BancodeDados.BancosDIAS_PROTESTO.Value));
      end
      else
      begin
        // CampoReg[43] := EscreveCampo(02, 'N', '0');
        CampoReg[43] := EscreveCampo(02, 'N',
          IntToStr(BancodeDados.BancosDIAS_BAIXAR_BANCO.Value));
      end;

      CampoReg[44] := EscreveCampo(01, 'N', '1'); // Posi��o: 394 a 394 >> �1�
      CampoReg[45] := EscreveCampo(06, 'N', IntToStr(NSeqReg));
      // Posi��o:  395 a 400 >> N�mero Sequencial do Registro no Arquivo

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
      CampoReg[07] := EscreveCampo(04, 'N', BancodeDados.BancosAGENCIA.AsString)
        + EscreveCampo(07, 'N', BancodeDados.BancosCONTA_CORRENTE.AsString +
        BancodeDados.BancosDIG_CONTA_CORRENTE.Value);
      CampoReg[08] := EscreveCampo(02, 'X', '');
      CampoReg[09] := EscreveCampo(25, 'X', IntToStr(BoletosEMISSAO_ID.Value));
      CampoReg[10] := EscreveCampo(11, 'N', BoletosNOSSO_NUMERO.Value);
      CampoReg[11] := EscreveCampo(06, 'N', '0');
      CampoReg[12] := EscreveCampo(11, 'N', '0');
      CampoReg[13] := EscreveCampo(06, 'N', '0');
      CampoReg[14] := EscreveCampo(11, 'N', '0');

      CampoReg[15] := EscreveCampo(01, 'N',
        BancodeDados.BancosCARTEIRA.AsString);
      CampoReg[16] := EscreveCampo(02, 'N', '01');
      CampoReg[17] := EscreveCampo(10, 'X', IntToStr(BoletosEMISSAO_ID.Value));
      CampoReg[18] := EscreveCampo(06, 'D2',
        DateToStr(BoletosVENCIMENTO.Value));
      CampoReg[19] := EscreveCampo(13, 'N',
        FormatFloat(',0.00', BoletosVALOR_DOC.Value));
      CampoReg[20] := EscreveCampo(03, 'N', IntToStr(CodBanco));
      CampoReg[21] := EscreveCampo(05, 'N', '0');
      CampoReg[22] := EscreveCampo(02, 'N', '01');
      CampoReg[23] := EscreveCampo(01, 'X', 'A');
      CampoReg[24] := EscreveCampo(06, 'D2', DateToStr(BoletosEMISSAO.Value));
      CampoReg[25] := EscreveCampo(02, 'N', '0');
      CampoReg[26] := EscreveCampo(02, 'N', '0');

      BancodeDados.GradeFin.Close;
      BancodeDados.GradeFin.SQL.Text :=
        'select * from grade_financeira where grade_id = ' +
        IntToStr(BoletosGRADE_ID.Value);
      BancodeDados.GradeFin.Open;

      if not BancodeDados.GradeFin.IsEmpty then
      begin
        CampoReg[27] := EscreveCampo(13, 'N',
          FormatFloat(',0.00',
          (BoletosVALOR_DOC.Value * BancodeDados.GradeFinJUROS.Value) / 100));
      end
      else
      begin
        CampoReg[27] := EscreveCampo(13, 'N', FormatFloat(',0.00', 0)); // JUROS
      end;

      CampoReg[28] := EscreveCampo(06, 'D2',
        DateToStr(BoletosVENCIMENTO.Value));
      CampoReg[29] := EscreveCampo(13, 'N',
        FormatFloat(',0.00', BoletosDESCONTO.Value));
      CampoReg[30] := EscreveCampo(13, 'N', FormatFloat(',0.00', 0)); // IOF
      CampoReg[31] := EscreveCampo(13, 'N', FormatFloat(',0.00', 0));
      // Abatimento ou multa

      if Length(CPFSacado) = 11 then
        CampoReg[32] := EscreveCampo(02, 'N', '1')
      else
        CampoReg[32] := EscreveCampo(02, 'N', '2');

      CampoReg[33] := EscreveCampo(14, 'N', CPFSacado);
      CampoReg[34] := EscreveCampo(40, 'X', NomeSacado);
      CampoReg[35] := EscreveCampo(38, 'X', qryPesq.FieldByName('LOGRADOURO')
        .AsString + ' ' + qryPesq.FieldByName('NUMERO').AsString);

      CampoReg[36] := EscreveCampo(02, 'N', '0');

      CampoReg[37] := EscreveCampo(12, 'X', qryPesq.FieldByName('BAIRRO')
        .AsString);
      CampoReg[38] := EscreveCampo(08, 'N', qryPesq.FieldByName('CEP')
        .AsString);
      CampoReg[39] := EscreveCampo(15, 'X', qryPesq.FieldByName('CIDADE')
        .AsString);
      CampoReg[40] := EscreveCampo(02, 'X', qryPesq.FieldByName('UF').AsString);
      CampoReg[41] := EscreveCampo(39, 'X', '');
      CampoReg[42] := EscreveCampo(01, 'X', '');

      if (BancodeDados.BancosDIAS_PROTESTO.Value > 0) then
        CampoReg[43] := EscreveCampo(02, 'N',
          IntToStr(BancodeDados.BancosDIAS_PROTESTO.Value))
      else
        CampoReg[43] := EscreveCampo(02, 'X', '');

      CampoReg[44] := EscreveCampo(01, 'N', '9');
      CampoReg[45] := EscreveCampo(06, 'N', IntToStr(NSeqReg));
    end
    else

      if (CodBanco = 748) then
    begin // Sicredi e UNICRED
      TotalParc := '';

      CampoReg[01] := EscreveCampo(01, 'N', '1');
      // posicao: 001 a 001 > Identifica��o do registro detalhe de estar �1�
      CampoReg[02] := EscreveCampo(01, 'X', 'A');
      // posicao: 002 a 002 > �A� - Sicredi Com Registro
      CampoReg[03] := EscreveCampo(01, 'X', 'A');
      // posicao: 003 a 003 > �A� � Simples
      CampoReg[04] := EscreveCampo(01, 'X', 'B');
      // posicao: 004 a 004 > �B� � Carn�
      CampoReg[05] := EscreveCampo(12, 'X', '');
      // posicao: 005 a 016 > Deixar em Branco (sem preenchimento)
      CampoReg[06] := EscreveCampo(01, 'X', 'A');
      // posicao: 017 a 017 > �A� � Real
      CampoReg[07] := EscreveCampo(01, 'X', 'A');
      // posicao: 018 a 018 > �A� � Valor
      CampoReg[08] := EscreveCampo(01, 'X', 'A');
      // posicao: 019 a 019 > �A� � Valor
      CampoReg[09] := EscreveCampo(28, 'X', '');
      // posicao: 020 a 047 > Deixar em Branco (sem preenchimento)

      // posicao: 048 a 056 > xxxxx - n�mero sequencial > d - d�gito verificador calculado ou seja, a nomenclatura correta �: 132xxxxxD
      CampoReg[10] := EscreveCampo(09, 'X',
        RetornaNumerosComDV(BoletosNOSSO_NUMERO.Value));
      CampoReg[11] := EscreveCampo(06, 'X', '');
      // posicao: 057 a 062 > Deixar em Branco (sem preenchimento)
      DecodeDate(Date, Ano, Mes, Dia);
      CampoReg[12] := EscreveCampo(08, 'X', '', FormatFloat('0000', Ano) +
        FormatFloat('00', Mes) + FormatFloat('00', Dia));
      // posicao: 063 a 070 > Data da Instru��o: O Formato da data de instru��o do arquivo deve estar no padr�o: AAAAMMDD
      CampoReg[13] := EscreveCampo(01, 'X', '');
      // posicao: 071 a 071 > Campo alterado, quando instru��o �31�, Campo deve estar vazio (sem preenchimento), s� utilizar quando 109-110 for = 31
      CampoReg[14] := EscreveCampo(01, 'X', 'N');
      // posicao: 072 a 072 > Postagem do t�tulo: �N� - N�o postar e remeter o t�tulo para o benefici�rio
      CampoReg[15] := EscreveCampo(01, 'X', '');
      // posicao: 073 a 073 > Deixar em Branco (sem preenchimento)
      CampoReg[16] := EscreveCampo(01, 'X', 'B');
      // posicao: 074 a 074 > Emiss�o do boleto: �B� � Impress�o � feita pelo Benefici�rio
      CampoReg[17] := EscreveCampo(02, 'X',
        RetornaNumeros(Copy(BoletosPARCELA.AsString, 1, 2)));
      // posicao: 075 a 076 > N�mero da parcela do carn�: Quando o tipo de impress�o for �B � Carn� (posi��o 004).
      TotalParc := RetornaNumeros(Copy(BoletosPARCELA.AsString, 3, 3));
      CampoReg[18] := EscreveCampo(02, 'X',
        FormatFloat('00', StrToInt(TotalParc)));
      // posicao: 077 a 078 > N�mero total de parcelas do carn�: Quando o tipo de impress�o for �B � Carn�  (posi��o 004)

      CampoReg[19] := EscreveCampo(04, 'X', '');
      // posicao: 079 a 082 > Deixar em Branco (sem preenchimento)
      CampoReg[20] := EscreveCampo(10, 'N', '0');
      // posicao: 083 a 092 > Valor de desconto por dia de antecipa��o : Informar valor de desconto

      CampoReg[21] := EscreveCampo(04, 'N', '0');
      // posicao: 093 a 096 >   multa por pagamento em atraso
      CampoReg[22] := EscreveCampo(12, 'X', '');
      // Posicao: 097 a 108 > Brancos (sem preenchimento)
      CampoReg[23] := EscreveCampo(02, 'N', '01');
      // Posi��o: 109 a 110 > Instru��o: 01 - Cadastro de t�tulo;
      CampoReg[24] := EscreveCampo(10, 'N', IntToStr(BoletosEMISSAO_ID.Value));
      // Posi��o: 111 a 120 > Seu n�mero: normalmente usado neste campo o n�mero da nota fiscal gerada para o pagador
      CampoReg[25] := EscreveCampo(06, 'D2', DateToStr(BoletosVENCIMENTO.Value)
        ); // Posi��o: 121 a 126 > A data de vencimento deve ser sete dias MAIOR que o campo 151 a 156 �Data de emiss�o�. Formato: DDMMAA
      CampoReg[26] := EscreveCampo(13, 'N',
        FormatFloat(',0.00', (BoletosVALOR_DOC.Value))); // Posi��o: 127 a 139
      CampoReg[27] := EscreveCampo(09, 'X', '');
      // Posi��o: 140 a 148 > Deixar em Branco (sem preenchimento)
      CampoReg[28] := EscreveCampo(01, 'X', 'O');
      // Posi��o 149 a 149 > Esp�cie de documento: O � Boleto Proposta

      CampoReg[29] := EscreveCampo(01, 'X', BoletosACEITE.Value);
      // Posi��o: 150 a 150 > Aceite do t�tulo: �S� � sim  ou �N� � n�o
      CampoReg[30] := EscreveCampo(06, 'D2', DateToStr(BoletosEMISSAO.Value));
      // Posi��o: 151 a 156 > Data de emiss�o: A data de emiss�o deve ser sete dias MENOR que o campo 121 a 126 �Data de vencimento�. Formato: DDMMAA

      if (BancodeDados.BancosDIAS_PROTESTO.Value > 0) then
      begin
        CampoReg[31] := EscreveCampo(02, 'N', '06');
        // Posi��o: 157 a 158 >> 002 Instru��o de protesto autom�tico �00� - N�o protestar automaticamente
        CampoReg[32] := EscreveCampo(02, 'N',
          IntToStr(BancodeDados.BancosDIAS_PROTESTO.Value));
        // Posi��o: 159 a 160 >> N�mero de dias p/protesto autom�tico:
      end
      else
      begin
        CampoReg[31] := EscreveCampo(02, 'N', '00');
        CampoReg[32] := EscreveCampo(02, 'N', '00');
      end;

      BancodeDados.GradeFin.Close;
      BancodeDados.GradeFin.SQL.Text :=
        'select * from grade_financeira where grade_id = ' +
        IntToStr(BoletosGRADE_ID.Value);
      BancodeDados.GradeFin.Open;

      if not BancodeDados.GradeFin.IsEmpty then
      begin
        if BancodeDados.GradeFinJUROS.Value > 0 then
          // Posi��o: 161 a 173 > Preencher com valor (alinhados � direita com zeros � esquerda) ou preencher com zeros
          CampoReg[33] := EscreveCampo(13, 'N',
            FormatFloat(',0.00',
            (BoletosVALOR_DOC.Value * BancodeDados.GradeFinJUROS.Value) / 100))
        else
          CampoReg[30] := EscreveCampo(13, 'N', FormatFloat(',0.00', 0));

        if BoletosDIAS_TOLERANCIA.Value > 0 then
          // Posi��o:  174 a 179 > Data limite p/concess�o de desconto
          CampoReg[34] := EscreveCampo(06, 'D2',
            DateToStr(BoletosVENCIMENTO.Value + BoletosDIAS_TOLERANCIA.Value))
        else
          CampoReg[34] := EscreveCampo(06, 'D2', 'N', FormatFloat('0.00', 0));
      end
      else
      begin
        CampoReg[33] := EscreveCampo(13, 'N', FormatFloat(',0.00', 0));
        CampoReg[34] := EscreveCampo(06, 'D2', 'N', FormatFloat('0.00', 0));
      end;

      CampoReg[35] := EscreveCampo(13, 'N',
        FormatFloat(',0.00', BoletosDESCONTO.Value));
      // Posicao: 180 a 192 > Valor/% do desconto
      CampoReg[36] := EscreveCampo(13, 'N', '0');
      // posicao: 193 a 205 > Sempre preencher com zeros neste campo
      CampoReg[37] := EscreveCampo(13, 'N', FormatFloat(',0.00', 0));
      // posicao: 206 a 218 >> Valor do abatimento
      // CampoReg[38] := EscreveCampo(13, 'N', FormatFloat(',0.00', 0)); // IOF

      if Length(CPFSacado) = 11 then
        // posicao: 219 a 219  >> Tipo de pessoa do pagador: PF ou PJ: �1� - Pessoa F�sica ou �2� - Pessoa Jur�dica
        CampoReg[38] := EscreveCampo(01, 'N', '1')
      else
        CampoReg[38] := EscreveCampo(01, 'N', '2');

      CampoReg[39] := EscreveCampo(01, 'N', '0');
      // Posicao: 220 a 220 >> Sempre preencher com zeros neste campo.
      CampoReg[40] := EscreveCampo(14, 'N', CPFSacado);
      // Posicao: 221 a 234 > CPF/CNPJ do Pagador

      CampoReg[41] := EscreveCampo(40, 'X', NomeSacado);
      // Posicao: 235 a 274 > Nome do pagador
      CampoReg[42] := EscreveCampo(40, 'X', qryPesq.FieldByName('LOGRADOURO')
        .AsString + ' ' + qryPesq.FieldByName('NUMERO').AsString + ',' +
        qryPesq.FieldByName('BAIRRO').AsString + '-' +
        qryPesq.FieldByName('CIDADE').AsString + ' ' + qryPesq.FieldByName('UF')
        .AsString); // Posicao: 275 a 314 > Endere�o do pagador

      CampoReg[43] := EscreveCampo(05, 'N', '0');
      // Posicao: 315 a 319 > C�digo do pagador na cooperativa benefici�rio: sempre zeros quando o sistema do benefici�rio n�o utiliza esse campo
      CampoReg[44] := EscreveCampo(06, 'N', '0');
      // posicao: 320 a 325 > Sempre preencher com zeros neste campo
      CampoReg[45] := EscreveCampo(01, 'X', '');
      // posicao: 326 a 326 > Deixar em Branco (sem preenchimento)
      CampoReg[46] := EscreveCampo(08, 'N', qryPesq.FieldByName('CEP')
        .AsString); // Posicao: 327 a 334 > CEP do pagador

      CampoReg[47] := EscreveCampo(05, 'N', '0');
      // posicao: 335 a 339 > C�digo do Pagador junto ao cliente
      CampoReg[48] := EscreveCampo(14, 'X', '');
      // Posicao: 340 a 353  CPF/CNPJ do Sacador Avalista
      CampoReg[49] := EscreveCampo(41, 'X', '');
      // Posicao: 354 a 394 > Nome do Sacador Avalista
      CampoReg[50] := EscreveCampo(06, 'N', IntToStr(NSeqReg));
      // Posicao: 395 a 400 > N�mero sequencial do registro

    end
    else if (CodBanco = 237) then // Banco Bradesco S.A.
    begin

      CampoReg[01] := EscreveCampo(01, 'N', '1');
      // posi��o: 001 a 001 >> Identifica��o do  Registro: 1
      CampoReg[02] := EscreveCampo(05, 'N', '0');
      // POsi��o: 002 a 006 >> C�digo da Ag�ncia do Pagador Exclusivo para D�bito em Conta / opcional
      CampoReg[03] := EscreveCampo(01, 'X', '');
      // POsi��o: 007 a 007 >> D�gito da Ag�ncia de D�bito (opcional)
      CampoReg[04] := EscreveCampo(05, 'N', '0');
      // POsi��o: 008 a 012 >> Raz�o da Conta Corrente (opcional)
      CampoReg[05] := EscreveCampo(07, 'N', '0');
      // POsi��o: 013 a 019 >> Conta Corrente  (opcional)
      CampoReg[06] := EscreveCampo(01, 'X', '');
      // POsi��o: 020 a 020 >> digito da conta  (opcional)
      CampoReg[07] := EscreveCampo(17, 'N', '0' + EscreveCampo(03, 'N',
        BancodeDados.BancosCARTEIRA.AsString) + EscreveCampo(05, 'N',
        BancodeDados.BancosAGENCIA.AsString) + EscreveCampo(07, 'N',
        BancodeDados.BancosCONTA_CORRENTE.AsString) + EscreveCampo(01, 'X',
        BancodeDados.BancosDIG_CONTA_CORRENTE.Value));
      // Posi��o: 021 a 037 >>   Identifica��o da Empresa Benefici�ria no Banco

      CampoReg[08] := EscreveCampo(25, 'X', IntToStr(BoletosEMISSAO_ID.Value));
      // Posi��o: 038 a 062  >> N� Controle do Participante
      CampoReg[09] := EscreveCampo(03, 'N', '0');
      // Posi��o: 063 a 065 >>  C�digo do Banco a ser debitado na C�mara de  Compensa��o

      BancodeDados.GradeFin.Close;
      BancodeDados.GradeFin.SQL.Text :=
        'select * from grade_financeira where grade_id = ' +
        IntToStr(BoletosGRADE_ID.Value);
      BancodeDados.GradeFin.Open;

      if (BancodeDados.GradeFinMULTA.Value > 0) then
      begin
        // Atualiza��o - Alex Eloy - 14/07/2017
        // CampoReg[10] := EscreveCampo(05, 'N', '2'+FormatFloat('0000',bancodeDados.Grade_FinanceiraMULTA.value)); //Posi��o: 066 a 066 >> Campo de Multa
        CampoReg[10] := EscreveCampo(05, 'N', '2' + EscreveCampo(4, 'N',
          FormatFloat(',0.00', BancodeDados.GradeFinMULTA.Value)));
        // Posi��o: 066 a 066 >> Campo de Multa

        // Posi��o: 067 a 070 >> Percentual de multa

      end
      else
        CampoReg[10] := EscreveCampo(05, 'N', '0');
      // Posi��o: 066 a 066 >> Campo de Multa
      // Posi��o: 067 a 070 >> Percentual de multa

      CampoReg[11] := EscreveCampo(12, 'X',
        Formatar(RetornaNumerosComDV(BoletosNOSSO_NUMERO.Value), 12, false, '0')
        ); // Posi��o:
      CampoReg[12] := EscreveCampo(10, 'N', '0'); // Posi��o:
      CampoReg[13] := EscreveCampo(01, 'N', '2'); // Posi��o:
      CampoReg[14] := EscreveCampo(01, 'X', ''); // Posi��o:
      CampoReg[15] := EscreveCampo(10, 'X', ''); // Posi��o:
      CampoReg[16] := EscreveCampo(01, 'X', ''); // Posi��o:
      CampoReg[17] := EscreveCampo(01, 'X', ''); // Posi��o:
      CampoReg[18] := EscreveCampo(02, 'X', ''); // Posi��o:
      CampoReg[19] := EscreveCampo(02, 'N', '01'); // Posi��o:
      CampoReg[20] := EscreveCampo(10, 'X', IntToStr(BoletosEMISSAO_ID.Value));
      // Posi��o:

      CampoReg[21] := EscreveCampo(06, 'D2', DateToStr(BoletosVENCIMENTO.Value)
        ); // Posi��o:
      CampoReg[22] := EscreveCampo(13, 'N',
        FormatFloat(',0.00', BoletosVALOR_DOC.Value)); // Posi��o:
      CampoReg[23] := EscreveCampo(03, 'N', '0'); // Posi��o:
      CampoReg[24] := EscreveCampo(05, 'N', '0'); // Posi��o:
      CampoReg[25] := EscreveCampo(02, 'N', '01'); // Posi��o:
      CampoReg[26] := EscreveCampo(01, 'X', 'N'); // Posi��o:
      CampoReg[27] := EscreveCampo(06, 'D2', DateToStr(BoletosEMISSAO.Value));

      if (BancodeDados.BancosDIAS_PROTESTO.Value > 0) then
      begin
        CampoReg[28] := EscreveCampo(02, 'N', '06');
        CampoReg[29] := EscreveCampo(02, 'N',
          IntToStr(BancodeDados.BancosDIAS_PROTESTO.Value));
      end
      else
      begin
        CampoReg[28] := EscreveCampo(02, 'N', '0');
        CampoReg[29] := EscreveCampo(02, 'N', '0');
      end;



      // Atualiza��o - Alex Eloy - 30/03/2017
      // Zera Data do Vencimento se n�o tiver valor do desconto informado
      {
        if not BancodeDados.Grade_Financeira.IsEmpty then
        begin
        CampoReg[30] := EscreveCampo(13, 'N', FormatFloat(',0.00', (BoletosVALOR_DOC.Value * BancodeDados.Grade_FinanceiraJUROS.Value) / 100));
        CampoReg[31] := EscreveCampo(06, 'D2', DateToStr(BoletosVENCIMENTO.Value + BoletosDIAS_TOLERANCIA.Value));
        end
        else
        begin
        CampoReg[30] := EscreveCampo(13, 'N', FormatFloat(',0.00', 0)); // JUROS
        CampoReg[31] := EscreveCampo(06, 'D2', DateToStr(BoletosVENCIMENTO.Value + 1)); // eraldo incluiu este + 1 Dever� ser no dia posterior ao vencimento
        end;
      }

      if not BancodeDados.GradeFin.IsEmpty then // 161 a 173
      begin
        CampoReg[30] := EscreveCampo(13, 'N',
          FormatFloat(',0.00',
          (BoletosVALOR_DOC.Value * BancodeDados.GradeFinJUROS.Value) / 100));
        // Se o desconto for maior que zero lan�a a data limite do Desconto, sen�o deixa a data do vencimento do desconto zerada
        if BoletosDESCONTO.Value > 0 then
          CampoReg[31] := EscreveCampo(06, 'D2',
            DateToStr(BoletosVENCIMENTO.Value + BoletosDIAS_TOLERANCIA.Value))
        else
          CampoReg[31] := EscreveCampo(06, 'N', '0');
      end
      else
      begin
        CampoReg[30] := EscreveCampo(13, 'N', FormatFloat(',0.00', 0)); // JUROS

        // Se o desconto for maior que zero lan�a a data limite do Desconto, sen�o deixa a data do vencimento do desconto zerada
        if BoletosDESCONTO.Value > 0 then
          CampoReg[31] := EscreveCampo(06, 'D2',
            DateToStr(BoletosVENCIMENTO.Value + 1))
          // eraldo incluiu este + 1 Dever� ser no dia posterior ao vencimento
        else
          CampoReg[31] := EscreveCampo(06, 'N', '0');
      end;

      CampoReg[32] := EscreveCampo(13, 'N',
        FormatFloat(',0.00', BoletosDESCONTO.Value));
      CampoReg[33] := EscreveCampo(13, 'N', FormatFloat(',0.00', 0)); // IOF
      CampoReg[34] := EscreveCampo(13, 'N', FormatFloat(',0.00', 0));
      // ABATIMENTO

      if Length(CPFSacado) = 11 then
        CampoReg[35] := EscreveCampo(02, 'N', '1')
      else
        CampoReg[35] := EscreveCampo(02, 'N', '2');

      CampoReg[36] := EscreveCampo(14, 'N', CPFSacado);
      CampoReg[37] := EscreveCampo(40, 'X', NomeSacado);
      CampoReg[38] := EscreveCampo(40, 'X', qryPesq.FieldByName('LOGRADOURO')
        .AsString + ' ' + qryPesq.FieldByName('NUMERO').AsString + ', ' +
        qryPesq.FieldByName('BAIRRO').AsString + '-' +
        qryPesq.FieldByName('CIDADE').AsString + ' ' + qryPesq.FieldByName('UF')
        .AsString);
      CampoReg[40] := EscreveCampo(08, 'N', qryPesq.FieldByName('CEP')
        .AsString);
      CampoReg[41] := ''; // EscreveCampo(01,  'N', '');
      CampoReg[42] := EscreveCampo(60, 'X', '');
      CampoReg[43] := EscreveCampo(06, 'N', IntToStr(NSeqReg));

    end
    else

      if (CodBanco = 341) then // 341 Ita� Unibanco S.A
    begin
      CampoReg[01] := EscreveCampo(01, 'N', '1');
      // IDENTIFICA��O DO REGISTRO TRANSA��O 001   001

      if Length(RetornaNumeros(BancodeDados.ConfigCNPJ.Value)) = 11 then
        CampoReg[02] := EscreveCampo(02, 'N', '1')
      else
        CampoReg[02] := EscreveCampo(02, 'N', '2');
      // IDENTIFICA��O DO LAYOUT PARA O REGISTRO  002   002

      CampoReg[03] := EscreveCampo(14, 'N', BancodeDados.ConfigCNPJ.Value);
      CampoReg[04] := EscreveCampo(04, 'N',
        BancodeDados.BancosAGENCIA.Value) + '00';
      CampoReg[05] := EscreveCampo(05, 'N',
        BancodeDados.BancosCONTA_CORRENTE.Value) +
        BancodeDados.BancosDIG_CONTA_CORRENTE.Value;
      CampoReg[06] := EscreveCampo(04, 'X', '');
      CampoReg[07] := EscreveCampo(04, 'N', '0');

      CampoReg[08] := EscreveCampo(25, 'X', IntToStr(BoletosEMISSAO_ID.Value));
      CampoReg[09] := EscreveCampo(08, 'N',
        Copy(BoletosNOSSO_NUMERO.Value, 1, 8));
      CampoReg[10] := EscreveCampo(13, 'N', '0'); // Modea variavel
      CampoReg[11] := EscreveCampo(03, 'X',
        BancodeDados.BancosCARTEIRA.AsString);
      CampoReg[12] := EscreveCampo(21, 'X', '');
      CampoReg[13] := EscreveCampo(01, 'X',
        PegaCodCarteiraItau(BancodeDados.BancosCARTEIRA.Value));
      CampoReg[14] := EscreveCampo(02, 'N', '01');
      CampoReg[15] := EscreveCampo(10, 'X', IntToStr(BoletosEMISSAO_ID.Value));
      CampoReg[16] := EscreveCampo(06, 'D2',
        DateToStr(BoletosVENCIMENTO.Value));
      CampoReg[17] := EscreveCampo(13, 'N',
        FormatFloat(',0.00', BoletosVALOR_DOC.Value));
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

      BancodeDados.GradeFin.Close;
      BancodeDados.GradeFin.SQL.Text :=
        'select * from grade_financeira where grade_id = ' +
        IntToStr(BoletosGRADE_ID.Value);
      BancodeDados.GradeFin.Open;

      if not BancodeDados.GradeFin.IsEmpty then
      begin
        CampoReg[25] := EscreveCampo(13, 'N',
          FormatFloat(',0.00',
          (BoletosVALOR_DOC.Value * BancodeDados.GradeFinJUROS.Value) / 100));
      end
      else
      begin
        CampoReg[25] := EscreveCampo(13, 'N', FormatFloat(',0.00', 0)); // JUROS
      end;

      CampoReg[26] := EscreveCampo(06, 'D2',
        DateToStr(BoletosVENCIMENTO.Value));
      CampoReg[27] := EscreveCampo(13, 'N',
        FormatFloat(',0.00', BoletosDESCONTO.Value));
      CampoReg[28] := EscreveCampo(13, 'N', FormatFloat(',0.00', 0)); // IOF
      CampoReg[29] := EscreveCampo(13, 'N', FormatFloat(',0.00', 0));
      // ABATIMENTO

      if Length(CPFSacado) = 11 then
        CampoReg[30] := EscreveCampo(02, 'N', '1')
      else
        CampoReg[30] := EscreveCampo(02, 'N', '2');

      CampoReg[31] := EscreveCampo(14, 'N', CPFSacado);
      CampoReg[32] := EscreveCampo(40, 'X', NomeSacado);

      CampoReg[33] := EscreveCampo(40, 'X', qryPesq.FieldByName('LOGRADOURO')
        .AsString + ' ' + qryPesq.FieldByName('NUMERO').AsString);
      CampoReg[34] := EscreveCampo(12, 'X', qryPesq.FieldByName('BAIRRO')
        .AsString);
      CampoReg[35] := EscreveCampo(08, 'N', qryPesq.FieldByName('CEP')
        .AsString);
      CampoReg[36] := EscreveCampo(15, 'X', qryPesq.FieldByName('CIDADE')
        .AsString);
      CampoReg[37] := EscreveCampo(02, 'X', qryPesq.FieldByName('UF').AsString);

      CampoReg[38] := EscreveCampo(30, 'X', '');
      CampoReg[39] := EscreveCampo(04, 'X', '');

      CampoReg[40] := EscreveCampo(06, 'D2',
        DateToStr(BoletosVENCIMENTO.Value));

      if (BancodeDados.BancosDIAS_PROTESTO.Value > 0) then
      begin
        CampoReg[41] := EscreveCampo(02, 'N',
          IntToStr(BancodeDados.BancosDIAS_PROTESTO.Value));
      end
      else
      begin
        CampoReg[42] := EscreveCampo(02, 'N', '0');
      end;

      CampoReg[43] := EscreveCampo(01, 'X', '') + EscreveCampo(06, 'N',
        IntToStr(NSeqReg));
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
      CampoReg[07] := EscreveCampo(04, 'N', BancodeDados.BancosAGENCIA.AsString)
        + EscreveCampo(07, 'N', BancodeDados.BancosCONTA_CORRENTE.AsString +
        BancodeDados.BancosDIG_CONTA_CORRENTE.Value);
      CampoReg[08] := EscreveCampo(02, 'X', '');
      CampoReg[09] := EscreveCampo(25, 'X', IntToStr(BoletosEMISSAO_ID.Value));
      CampoReg[10] := EscreveCampo(11, 'N', BoletosNOSSO_NUMERO.Value);
      CampoReg[11] := EscreveCampo(06, 'N', '0');
      CampoReg[12] := EscreveCampo(11, 'N', '0');
      CampoReg[13] := EscreveCampo(06, 'N', '0');
      CampoReg[14] := EscreveCampo(11, 'N', '0');

      CampoReg[15] := EscreveCampo(01, 'N',
        BancodeDados.BancosCARTEIRA.AsString);
      CampoReg[16] := EscreveCampo(02, 'N', '01');
      CampoReg[17] := EscreveCampo(10, 'X', IntToStr(BoletosEMISSAO_ID.Value));
      CampoReg[18] := EscreveCampo(06, 'D2',
        DateToStr(BoletosVENCIMENTO.Value));
      CampoReg[19] := EscreveCampo(13, 'N',
        FormatFloat(',0.00', BoletosVALOR_DOC.Value));
      CampoReg[20] := EscreveCampo(03, 'N', IntToStr(CodBanco));
      CampoReg[21] := EscreveCampo(05, 'N', '0');
      CampoReg[22] := EscreveCampo(02, 'N', '01');
      CampoReg[23] := EscreveCampo(01, 'X', 'A');
      CampoReg[24] := EscreveCampo(06, 'D2', DateToStr(BoletosEMISSAO.Value));
      CampoReg[25] := EscreveCampo(02, 'N', '0');
      CampoReg[26] := EscreveCampo(02, 'N', '0');

      BancodeDados.GradeFin.Close;
      BancodeDados.GradeFin.SQL.Text :=
        'select * from grade_financeira where grade_id = ' +
        IntToStr(BoletosGRADE_ID.Value);
      BancodeDados.GradeFin.Open;

      if not BancodeDados.GradeFin.IsEmpty then
      begin
        CampoReg[27] := EscreveCampo(13, 'N',
          FormatFloat(',0.00',
          (BoletosVALOR_DOC.Value * BancodeDados.GradeFinJUROS.Value) / 100));
      end
      else
      begin
        CampoReg[27] := EscreveCampo(13, 'N', FormatFloat(',0.00', 0)); // JUROS
      end;

      CampoReg[28] := EscreveCampo(06, 'D2',
        DateToStr(BoletosVENCIMENTO.Value));
      CampoReg[29] := EscreveCampo(13, 'N',
        FormatFloat(',0.00', BoletosDESCONTO.Value));
      CampoReg[30] := EscreveCampo(13, 'N', FormatFloat(',0.00', 0)); // IOF
      CampoReg[31] := EscreveCampo(13, 'N', FormatFloat(',0.00', 0));
      // Abatimento ou multa

      if Length(CPFSacado) = 11 then
        CampoReg[32] := EscreveCampo(02, 'N', '1')
      else
        CampoReg[32] := EscreveCampo(02, 'N', '2');

      CampoReg[33] := EscreveCampo(14, 'N', CPFSacado);
      CampoReg[34] := EscreveCampo(40, 'X', NomeSacado);

      CampoReg[35] := EscreveCampo(38, 'X', qryPesq.FieldByName('LOGRADOURO')
        .AsString + ' ' + qryPesq.FieldByName('NUMERO').AsString);
      CampoReg[36] := EscreveCampo(02, 'N', '0');
      CampoReg[37] := EscreveCampo(12, 'X', qryPesq.FieldByName('BAIRRO')
        .AsString);
      CampoReg[38] := EscreveCampo(08, 'N', qryPesq.FieldByName('CEP')
        .AsString);
      CampoReg[39] := EscreveCampo(15, 'X', qryPesq.FieldByName('CIDADE')
        .AsString);
      CampoReg[40] := EscreveCampo(02, 'X', qryPesq.FieldByName('UF').AsString);
      CampoReg[41] := EscreveCampo(39, 'X', '');
      CampoReg[42] := EscreveCampo(01, 'X', '');

      if (BancodeDados.BancosDIAS_PROTESTO.Value > 0) then
        CampoReg[43] := EscreveCampo(02, 'N',
          IntToStr(BancodeDados.BancosDIAS_PROTESTO.Value))
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
      CampoReg[03] := EscreveCampo(07, 'N',
        BancodeDados.BancosCONTA_CORRENTE.Value +
        BancodeDados.BancosDIG_CONTA_CORRENTE.Value);
      CampoReg[04] := EscreveCampo(14, 'X', CPFSacado);
      CampoReg[05] := EscreveCampo(35, 'X', NomeSacado);
      CampoReg[06] := EscreveCampo(35, 'X', qryPesq.FieldByName('LOGRADOURO')
        .AsString + ' ' + qryPesq.FieldByName('NUMERO').AsString);
      CampoReg[07] := EscreveCampo(15, 'X', qryPesq.FieldByName('CIDADE')
        .AsString);
      CampoReg[08] := EscreveCampo(02, 'X', qryPesq.FieldByName('UF').AsString);
      CampoReg[09] := EscreveCampo(08, 'N', qryPesq.FieldByName('CEP')
        .AsString);

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
      CampoReg[22] := EscreveCampo(14, 'N',
        FormatFloat('0.00', BoletosVALOR_DOC.Value));
      CampoReg[23] := EscreveCampo(12, 'N', BoletosNOSSO_NUMERO.Value);

      BancodeDados.GradeFin.Close;
      BancodeDados.GradeFin.SQL.Text :=
        'select * from grade_financeira where grade_id = ' +
        IntToStr(BoletosGRADE_ID.Value);
      BancodeDados.GradeFin.Open;

      if not BancodeDados.GradeFin.IsEmpty then
      begin
        CampoReg[24] := EscreveCampo(02, 'N', '50');
        CampoReg[25] := EscreveCampo(14, 'N',
          FormatFloat(',0.00',
          (BoletosVALOR_DOC.Value * BancodeDados.GradeFinJUROS.Value) / 100));
      end
      else
      begin
        CampoReg[24] := EscreveCampo(02, 'N', '00');
        CampoReg[25] := EscreveCampo(14, 'N', FormatFloat(',0.00', 0)); // JUROS
      end;

      CampoReg[26] := EscreveCampo(14, 'N', FormatFloat(',0.00', 0));

      if (BoletosDESCONTO.Value > 0) then
      begin
        if BancodeDados.ConfigTIPO_BOLETO.Value = 2 then
        begin
          DecodeDate(BoletosVENCIMENTO.Value, Ano, Mes, Dia);
          if BancodeDados.BancosDESC_TOL.Value > 0 then
            vencTmp := EncodeDate(Ano, Mes, BancodeDados.BancosDESC_TOL.Value)
          else
            vencTmp := EncodeDate(Ano, Mes, Dia);
          CampoReg[27] := EscreveCampo(02, 'N', '53');
          CampoReg[28] := EscreveCampo(08, 'D', DateToStr(vencTmp));
          CampoReg[29] := EscreveCampo(14, 'N',
            FormatFloat(',0.00', BoletosDESCONTO.Value));
        end
        else
        begin
          CampoReg[27] := EscreveCampo(02, 'N', '53');
          CampoReg[28] := EscreveCampo(08, 'D',
            DateToStr(BoletosVENCIMENTO.Value));
          CampoReg[29] := EscreveCampo(14, 'N',
            FormatFloat(',0.00', BoletosDESCONTO.Value));
        end; // bancodedados.InstituicaoTIPO_BOLETO.value=2
      end
      else
      begin
        CampoReg[27] := EscreveCampo(02, 'N', '00');
        CampoReg[28] := EscreveCampo(08, 'N', '0');
        CampoReg[29] := EscreveCampo(14, 'N', FormatFloat(',0.00', 0));
      end;

      BancodeDados.GradeFin.Close;
      BancodeDados.GradeFin.SQL.Text :=
        'select * from grade_financeira where grade_id = ' +
        IntToStr(BoletosGRADE_ID.Value);
      BancodeDados.GradeFin.Open;

      if not BancodeDados.GradeFin.IsEmpty then
      begin
        CampoReg[30] := EscreveCampo(02, 'N', '03');
        CampoReg[31] := EscreveCampo(02, 'N',
          IntToStr(BoletosDIAS_TOLERANCIA.Value));
        CampoReg[34] := EscreveCampo(05, 'N',
          FormatFloat(',0.00', BancodeDados.GradeFinMULTA.Value));
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
        CampoReg[33] := EscreveCampo(02, 'N',
          IntToStr(BancodeDados.BancosDIAS_PROTESTO.Value));
      end
      else
      begin
        CampoReg[32] := EscreveCampo(02, 'N', '0');
        CampoReg[33] := EscreveCampo(02, 'N', '0');
      end;

      // o 34 ta mais em cima
      CampoReg[35] := EscreveCampo(40, 'X', BancodeDados.ConfigFANTASIA.Value);
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

      CampoReg[04] := EscreveCampo(10, 'N',
        FormatFloat('000', BancodeDados.BancosTIPO_CONTA_CORRENTE.Value) +
        FormatFloat('000000', BancodeDados.BancosCONTA_CORRENTE.AsInteger) +
        BancodeDados.BancosDIG_CONTA_CORRENTE.Value);
      CampoReg[05] := EscreveCampo(09, 'X', '');
      CampoReg[06] := EscreveCampo(25, 'X', IntToStr(BoletosEMISSAO_ID.Value));
      CampoReg[07] := EscreveCampo(08, 'N', BoletosNOSSO_NUMERO.Value);
      CampoReg[08] := EscreveCampo(37, 'X', '');
      CampoReg[09] := EscreveCampo(01, 'N', '3'); // Cobran�a Caucionada
      CampoReg[10] := EscreveCampo(02, 'N', '01'); // Ocorrencia = Remessa
      CampoReg[11] := EscreveCampo(10, 'X', IntToStr(BoletosEMISSAO_ID.Value));
      CampoReg[12] := EscreveCampo(06, 'D2',
        DateToStr(BoletosVENCIMENTO.Value));
      CampoReg[13] := EscreveCampo(13, 'N',
        FormatFloat('0.00', BoletosVALOR_DOC.Value));
      CampoReg[14] := EscreveCampo(03, 'N', IntToStr(CodBanco));
      CampoReg[15] := EscreveCampo(05, 'N', '00900'); // Agencia Cobradora
      CampoReg[16] := EscreveCampo(02, 'N', '92');
      // Especia - Este codigo n�o tem no manual, foi informado pelo banco.
      CampoReg[17] := EscreveCampo(01, 'X', 'N'); // aceite
      CampoReg[18] := EscreveCampo(06, 'D2', DateToStr(BoletosEMISSAO.Value));

      CampoReg[19] := EscreveCampo(02, 'X', '00');
      CampoReg[20] := EscreveCampo(02, 'X', '00');
      {
        if (BancodeDados.BancosDIAS_PROTESTO.Value > 0) then
        begin
        CampoReg[19]:=EscreveCampo(02, 'N', '07'); //PROTESTAR XX DIAS AP�S O VENCIMENTO
        end
        else
        begin
        CampoReg[19]:=EscreveCampo(02, 'X', '');
        end;
        CampoReg[20]:=EscreveCampo(02, 'X', '');
      }
      {
        CampoReg[19] := EscreveCampo(02, 'N', '03'); // N�O DISPENSAR JUROS DE MORA
        CampoReg[20] := EscreveCampo(02, 'N', '94'); // MENSAGEM COM 40 POSI��ES
      }

      BancodeDados.GradeFin.Close;
      BancodeDados.GradeFin.SQL.Text :=
        'select * from GRADE_FINANCEIRA where GRADE_ID = ' +
        IntToStr(BoletosGRADE_ID.Value);
      BancodeDados.GradeFin.Open;

      if not BancodeDados.GradeFin.IsEmpty then
      begin
        CampoReg[21] := EscreveCampo(13, 'N',
          FormatFloat(',0.00',
          (BoletosVALOR_DOC.Value * BancodeDados.GradeFinJUROS.Value) / 100));
      end
      else
      begin
        CampoReg[21] := EscreveCampo(13, 'N', FormatFloat(',0.00', 0)); // JUROS
      end;

      if (BoletosDESCONTO.Value > 0) then
      begin
        CampoReg[22] := EscreveCampo(06, 'D2',
          DateToStr(BoletosVENCIMENTO.Value));
        CampoReg[23] := EscreveCampo(13, 'N',
          FormatFloat('0.00', BoletosDESCONTO.Value));
      end
      else
      begin
        CampoReg[22] := EscreveCampo(06, 'N', '0');
        CampoReg[23] := EscreveCampo(13, 'N', FormatFloat('0.00', 0));
      end;

      CampoReg[24] := EscreveCampo(13, 'N', FormatFloat('0.00', 0)); // IOF
      CampoReg[25] := EscreveCampo(13, 'N', FormatFloat('0.00', 0));
      // Abatimento

      if Length(CPFSacado) = 11 then
        CampoReg[26] := EscreveCampo(02, 'N', '1')
      else
        CampoReg[26] := EscreveCampo(02, 'N', '2');

      CampoReg[27] := EscreveCampo(15, 'N', CPFSacado);
      CampoReg[28] := EscreveCampo(40, 'X', NomeSacado);

      CampoReg[29] := EscreveCampo(40, 'X', qryPesq.FieldByName('LOGRADOURO')
        .AsString + ' ' + qryPesq.FieldByName('NUMERO').AsString);
      CampoReg[30] := EscreveCampo(12, 'X', qryPesq.FieldByName('BAIRRO')
        .AsString);
      CampoReg[31] := EscreveCampo(08, 'N', qryPesq.FieldByName('CEP')
        .AsString);
      CampoReg[32] := EscreveCampo(15, 'X', qryPesq.FieldByName('CIDADE')
        .AsString);
      CampoReg[33] := EscreveCampo(02, 'X', qryPesq.FieldByName('UF').AsString);

      BancodeDados.GradeFin.Close;
      BancodeDados.GradeFin.SQL.Text :=
        'select * from grade_financeira where grade_id = ' +
        IntToStr(BoletosGRADE_ID.Value);
      BancodeDados.GradeFin.Open;

      if not BancodeDados.GradeFin.IsEmpty then
      begin
        // CampoReg[34] := EscreveCampo(40, 'X', 'MULTA DE ' + FormatFloat(',0.##%', BancodeDados.Grade_FinanceiraMULTA.Value) + ' APOS VENCIMENTO');
        CampoReg[34] := EscreveCampo(01, 'N', '2'); // Percentual
        CampoReg[35] := EscreveCampo(06, 'D2',
          DateToStr(BoletosVENCIMENTO.Value + 1));
        // eraldo incluiu este + 1 Dever� ser no dia posterior ao vencimento
        CampoReg[36] := EscreveCampo(13, 'N',
          FormatFloat('0.00', BancodeDados.GradeFinMULTA.Value));
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
        CampoReg[38] := EscreveCampo(02, 'N',
          IntToStr(BancodeDados.BancosDIAS_PROTESTO.Value));
      end
      else
      begin
        CampoReg[38] := EscreveCampo(02, 'N', '0');
      end;

      CampoReg[39] := EscreveCampo(01, 'N', '9');
      CampoReg[40] := EscreveCampo(06, 'N', IntToStr(NSeqReg));
    end
    else

      if (CodBanco = 707) then { Daycoval comeco }
    begin
      CampoReg[01] := EscreveCampo(01, 'N', '1');

      if Length(RetornaNumeros(BancodeDados.ConfigCNPJ.Value)) = 11 then
        CampoReg[02] := EscreveCampo(02, 'N', '1')
      else
        CampoReg[02] := EscreveCampo(02, 'N', '2');
      CampoReg[03] := EscreveCampo(14, 'N', BancodeDados.ConfigCNPJ.Value);

      CampoReg[04] := EscreveCampo(20, 'X',
        BancodeDados.BancosCODIGO_CEDENTE.Value);
      CampoReg[05] := EscreveCampo(25, 'X', IntToStr(BoletosEMISSAO_ID.Value));
      CampoReg[06] := EscreveCampo(08, 'N', '0');

      // CampoReg[07] := EscreveCampo(13, 'N', (BoletosNOSSO_NUMERO.Value)); //eraldo comentou  em  24/02/2014   71-83  faltando o P //CampoReg[07] := EscreveCampo(13, 'N', BoletosNOSSO_NUMERO.Value);
      CampoReg[07] := EscreveCampo(13, 'X',
        ('0' + RetornaNumerosComDV(BoletosNOSSO_NUMERO.Value)));
      // incluir um '0' no inicio para formatar no tamanho certo

      CampoReg[08] := EscreveCampo(24, 'X', '');
      CampoReg[09] := EscreveCampo(01, 'N', '4'); // cod remessa

      CampoReg[10] := EscreveCampo(02, 'N', '01'); // Ocorrencia = Remessa

      CampoReg[11] := EscreveCampo(10, 'X', IntToStr(BoletosEMISSAO_ID.Value));
      CampoReg[12] := EscreveCampo(06, 'D2',
        DateToStr(BoletosVENCIMENTO.Value));
      CampoReg[13] := EscreveCampo(13, 'N',
        FormatFloat('0.00', BoletosVALOR_DOC.Value));
      CampoReg[14] := EscreveCampo(03, 'N', IntToStr(CodBanco));
      CampoReg[15] := EscreveCampo(05, 'N', '0'); // Agencia Cobradora
      CampoReg[16] := EscreveCampo(02, 'N', '01'); // Especie
      CampoReg[17] := EscreveCampo(01, 'X', 'N'); // aceite
      CampoReg[18] := EscreveCampo(06, 'D2', DateToStr(BoletosEMISSAO.Value));

      CampoReg[19] := '00';
      CampoReg[20] := '00';

      BancodeDados.GradeFin.Close;
      BancodeDados.GradeFin.SQL.Text :=
        'select * from grade_financeira where grade_id = ' +
        IntToStr(BoletosGRADE_ID.Value);
      BancodeDados.GradeFin.Open;

      if not BancodeDados.GradeFin.IsEmpty then
      begin
        CampoReg[21] := EscreveCampo(13, 'N', FormatFloat(',0.00', 0));
        // JUROS ///CampoReg[21] := EscreveCampo(13, 'N', FormatFloat(',0.00', (BoletosVALOR_DOC.Value * BancodeDados.Grade_FinanceiraJUROS.Value) / 100));
      end // eraldo em 24/02/16: deve ser zeros - Juros de Mora deve ser encaminhado por email ao gerente Daycoval para cadastro fixo em sistema (Juros a.m.)
      else
      begin
        CampoReg[21] := EscreveCampo(13, 'N', FormatFloat(',0.00', 0)); // JUROS
      end;

      if (BoletosDESCONTO.Value > 0) then
      begin
        CampoReg[22] := EscreveCampo(06, 'D2',
          DateToStr(BoletosVENCIMENTO.Value));
        CampoReg[23] := EscreveCampo(13, 'N',
          FormatFloat('0.00', BoletosDESCONTO.Value));
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

      CampoReg[29] := EscreveCampo(40, 'X', qryPesq.FieldByName('LOGRADOURO')
        .AsString + ' ' + qryPesq.FieldByName('NUMERO').AsString);
      CampoReg[30] := EscreveCampo(12, 'X', qryPesq.FieldByName('BAIRRO')
        .AsString);
      CampoReg[31] := EscreveCampo(08, 'N', qryPesq.FieldByName('CEP')
        .AsString);
      CampoReg[32] := EscreveCampo(15, 'X', qryPesq.FieldByName('CIDADE')
        .AsString);
      CampoReg[33] := EscreveCampo(02, 'X', qryPesq.FieldByName('UF').AsString);

      // CampoReg[34] := EscreveCampo(30, 'X', '');  //eraldo cometou em 24/02/16 inluindo o nome do cedente no detalhe
      CampoReg[34] := EscreveCampo(30, 'X',
        Copy(BancodeDados.ConfigFANTASIA.AsString, 0, 29));
      CampoReg[35] := EscreveCampo(04, 'X', '');
      CampoReg[36] := EscreveCampo(06, 'X', '');
      CampoReg[37] := '00';
      CampoReg[38] := '0';
      CampoReg[39] := EscreveCampo(06, 'N', IntToStr(NSeqReg));

    end
    else { Daycoval fim }

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
        CampoReg[07] := EscreveCampo(07, 'N',
          BancodeDados.BancosCONTA_CORRENTE.Value);
        CampoReg[08] := EscreveCampo(07, 'X', '');
        CampoReg[09] := EscreveCampo(25, 'X',
          IntToStr(BoletosEMISSAO_ID.Value));
        CampoReg[10] := EscreveCampo(02, 'N', '00');
        CampoReg[11] := EscreveCampo(07, 'N', BoletosNOSSO_NUMERO.Value);
        CampoReg[12] := EscreveCampo(01, 'N', '0');
        // Multa - Sobre o valor T�tulo
        CampoReg[13] := EscreveCampo(02, 'N',
          IntToStr(BoletosDIAS_TOLERANCIA.Value));

        CampoReg[14] := EscreveCampo(01, 'N', '0'); // Multa por valor

        BancodeDados.GradeFin.Close;
        BancodeDados.GradeFin.SQL.Text :=
          'select * from grade_financeira where grade_id = ' +
          IntToStr(BoletosGRADE_ID.Value);
        BancodeDados.GradeFin.Open;

        if not BancodeDados.GradeFin.IsEmpty then
        begin
          CampoReg[15] := EscreveCampo(13, 'N',
            FormatFloat(',0.00',
            (BoletosVALOR_DOC.Value * BancodeDados.GradeFinMULTA.Value) / 100));
        end
        else
        begin
          CampoReg[15] := EscreveCampo(13, 'N', '0');
        end;

        CampoReg[16] := EscreveCampo(07, 'X', '');
        CampoReg[17] := EscreveCampo(09, 'N',
          IntToStr(BancodeDados.BancosCONTRATO.Value));
        CampoReg[18] := EscreveCampo(01, 'X', '');
        CampoReg[19] := EscreveCampo(02, 'N',
          IntToStr(BancodeDados.BancosCARTEIRA.Value));
        CampoReg[20] := EscreveCampo(01, 'N', '1'); // Cobran�a Simples
        CampoReg[21] := EscreveCampo(02, 'N', '01'); // C�digo da Ocorr�ncia
        CampoReg[22] := EscreveCampo(10, 'X',
          IntToStr(BoletosEMISSAO_ID.Value));
        CampoReg[23] := EscreveCampo(06, 'D2',
          DateToStr(BoletosVENCIMENTO.Value));
        CampoReg[24] := EscreveCampo(13, 'N',
          FormatFloat('0.00', BoletosVALOR_DOC.Value));
        CampoReg[25] := EscreveCampo(03, 'N', IntToStr(CodBanco));
        CampoReg[26] := EscreveCampo(05, 'N', '0'); // Ag�ncia Cobradora
        CampoReg[27] := EscreveCampo(02, 'N', '01'); // '01' � Duplicata
        CampoReg[28] := EscreveCampo(01, 'X', 'N'); // Aceite
        CampoReg[29] := EscreveCampo(06, 'D2', DateToStr(BoletosEMISSAO.Value));

        if (BancodeDados.BancosDIAS_PROTESTO.Value > 0) then
        begin
          CampoReg[30] := EscreveCampo(02, 'N',
            IntToStr(BancodeDados.BancosDIAS_PROTESTO.Value));
        end
        else
        begin
          CampoReg[30] := EscreveCampo(02, 'N', '99'); // N�o protestar
        end;

        CampoReg[31] := EscreveCampo(02, 'X', '');

        CampoReg[32] := EscreveCampo(01, 'N', '0'); // Juros por valor

        BancodeDados.GradeFin.Close;
        BancodeDados.GradeFin.SQL.Text :=
          'select * from grade_financeira where grade_id = ' +
          IntToStr(BoletosGRADE_ID.Value);
        BancodeDados.GradeFin.Open;

        if not BancodeDados.GradeFin.IsEmpty then
        begin
          CampoReg[33] := EscreveCampo(12, 'N',
            FormatFloat(',0.00',
            (BoletosVALOR_DOC.Value * BancodeDados.GradeFinJUROS.Value) / 100));
        end
        else
        begin
          CampoReg[33] := EscreveCampo(12, 'N', '0');
        end;

        CampoReg[34] := EscreveCampo(06, 'D2',
          DateToStr(BoletosVENCIMENTO.Value + BoletosDIAS_TOLERANCIA.Value));
        CampoReg[35] := EscreveCampo(13, 'N',
          FormatFloat('0.00', BoletosDESCONTO.Value));
        CampoReg[36] := EscreveCampo(13, 'N', '0');
        CampoReg[37] := EscreveCampo(13, 'N', '0');

        if Length(CPFSacado) = 11 then
        begin
          CampoReg[38] := EscreveCampo(02, 'N', '01');
          CampoReg[39] := EscreveCampo(14, 'N', Copy(CPFSacado, 1, 9) + '000' +
            Copy(CPFSacado, 10, 2));
        end
        else
        begin
          CampoReg[38] := EscreveCampo(02, 'N', '02');
          CampoReg[39] := EscreveCampo(14, 'N', CPFSacado);
        end;

        CampoReg[40] := EscreveCampo(40, 'X', NomeSacado);

        CampoReg[41] := EscreveCampo(40, 'X', qryPesq.FieldByName('LOGRADOURO')
          .AsString + ' ' + qryPesq.FieldByName('NUMERO').AsString);
        CampoReg[42] := EscreveCampo(12, 'X', qryPesq.FieldByName('BAIRRO')
          .AsString);
        CampoReg[43] := EscreveCampo(08, 'N', qryPesq.FieldByName('CEP')
          .AsString);
        CampoReg[44] := EscreveCampo(15, 'X', qryPesq.FieldByName('CIDADE')
          .AsString);
        CampoReg[45] := EscreveCampo(02, 'X', qryPesq.FieldByName('UF')
          .AsString);

        CampoReg[46] := EscreveCampo(40, 'X', ''); // Sacador
        CampoReg[47] := EscreveCampo(01, 'N', '0'); // Moeda
        CampoReg[48] := EscreveCampo(02, 'N', '07'); // Tipo/Moeda
        CampoReg[49] := EscreveCampo(06, 'N', IntToStr(NSeqReg));
      end
      else

        if (CodBanco = 389) then
      begin
        CampoReg[01] := EscreveCampo(01, 'N', '1');

        BancodeDados.GradeFin.Close;
        BancodeDados.GradeFin.SQL.Text :=
          'select * from GRADE_FINANCEIRA where GRADE_ID = ' +
          IntToStr(BoletosGRADE_ID.Value);
        BancodeDados.GradeFin.Open;

        if not BancodeDados.GradeFin.IsEmpty then
        begin
          CampoReg[02] := EscreveCampo(02, 'N', '09');
          CampoReg[03] := EscreveCampo(01, 'N', '1');
          CampoReg[04] := EscreveCampo(13, 'N',
            FormatFloat(',0.00',
            (BoletosVALOR_DOC.Value * BancodeDados.GradeFinMULTA.Value) / 100));
          CampoReg[05] := EscreveCampo(06, 'D2',
            DateToStr(BoletosVENCIMENTO.Value + BoletosDIAS_TOLERANCIA.Value));
        end
        else
        begin
          CampoReg[02] := EscreveCampo(02, 'N', '00');
          CampoReg[03] := EscreveCampo(01, 'N', '0');
          CampoReg[04] := EscreveCampo(13, 'N', '0');
          CampoReg[05] := EscreveCampo(06, 'N', '0');
        end;

        CampoReg[06] := EscreveCampo(05, 'X', '');
        CampoReg[07] := EscreveCampo(09, 'N',
          IntToStr(BancodeDados.BancosCONTRATO.Value));
        CampoReg[08] := EscreveCampo(25, 'X',
          IntToStr(BoletosEMISSAO_ID.Value));
        CampoReg[09] := EscreveCampo(04, 'N', BancodeDados.BancosAGENCIA.Value);
        CampoReg[10] := EscreveCampo(11, 'N', BoletosNOSSO_NUMERO.Value);
        CampoReg[11] := EscreveCampo(05, 'X', '');
        CampoReg[12] := EscreveCampo(15, 'N', BancodeDados.ConfigCNPJ.Value);
        CampoReg[13] := EscreveCampo(10, 'N', '0');
        CampoReg[14] := EscreveCampo(01, 'N',
          BancodeDados.BancosCARTEIRA.AsString); // COBRAN�A SIMPLES
        CampoReg[15] := EscreveCampo(02, 'N', '01'); // REMESSA � ENTRADA NORMAL
        CampoReg[16] := EscreveCampo(10, 'X',
          IntToStr(BoletosEMISSAO_ID.Value));
        CampoReg[17] := EscreveCampo(06, 'D2',
          DateToStr(BoletosVENCIMENTO.Value));
        CampoReg[18] := EscreveCampo(13, 'N',
          FormatFloat('0.00', BoletosVALOR_DOC.Value));
        CampoReg[19] := EscreveCampo(03, 'N', IntToStr(CodBanco));
        CampoReg[20] := EscreveCampo(05, 'N', '0');
        CampoReg[21] := EscreveCampo(02, 'N', '01'); // DUPLICATA MERCANTIL
        CampoReg[22] := EscreveCampo(01, 'X', 'N'); // Aceite
        CampoReg[23] := EscreveCampo(06, 'D2', DateToStr(BoletosEMISSAO.Value));
        CampoReg[24] := EscreveCampo(02, 'N', '26');
        // N�O DISPENSAR JUROS DE MORA
        CampoReg[25] := EscreveCampo(02, 'N', '00');

        BancodeDados.GradeFin.Close;
        BancodeDados.GradeFin.SQL.Text :=
          'select * from grade_financeira where grade_id = ' +
          IntToStr(BoletosGRADE_ID.Value);
        BancodeDados.GradeFin.Open;

        if not BancodeDados.GradeFin.IsEmpty then
        begin
          CampoReg[26] := EscreveCampo(13, 'N',
            FormatFloat(',0.00',
            (BoletosVALOR_DOC.Value * BancodeDados.GradeFinJUROS.Value) / 100));
        end
        else
        begin
          CampoReg[26] := EscreveCampo(13, 'N', '0');
        end;

        CampoReg[27] := EscreveCampo(06, 'D2',
          DateToStr(BoletosVENCIMENTO.Value + BoletosDIAS_TOLERANCIA.Value));
        CampoReg[28] := EscreveCampo(13, 'N',
          FormatFloat('0.00', BoletosDESCONTO.Value));
        CampoReg[29] := EscreveCampo(13, 'N', '0');
        CampoReg[30] := EscreveCampo(13, 'N', '0');

        if Length(CPFSacado) = 11 then
          CampoReg[31] := EscreveCampo(02, 'N', '1')
        else
          CampoReg[31] := EscreveCampo(02, 'N', '2');

        CampoReg[32] := EscreveCampo(14, 'N', CPFSacado);
        CampoReg[33] := EscreveCampo(40, 'X', NomeSacado);

        CampoReg[34] := EscreveCampo(40, 'X', qryPesq.FieldByName('LOGRADOURO')
          .AsString + ' ' + qryPesq.FieldByName('NUMERO').AsString);
        CampoReg[35] := EscreveCampo(12, 'X', qryPesq.FieldByName('BAIRRO')
          .AsString);
        CampoReg[36] := EscreveCampo(08, 'N', qryPesq.FieldByName('CEP')
          .AsString);
        CampoReg[37] := EscreveCampo(15, 'X', qryPesq.FieldByName('CIDADE')
          .AsString);
        CampoReg[38] := EscreveCampo(02, 'X', qryPesq.FieldByName('UF')
          .AsString);

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

        CampoReg[04] := EscreveCampo(14, 'N',
          BancodeDados.BancosCODIGO_CEDENTE.Value);;
        // EscreveCampo(05, 'N', BancodeDados.BancosAGENCIA.Value) + EscreveCampo(09, 'N', BancodeDados.BancosCONTA_CORRENTE.Value);
        CampoReg[05] := EscreveCampo(06, 'X', '');
        CampoReg[06] := EscreveCampo(25, 'X',
          IntToStr(BoletosEMISSAO_ID.Value));
        CampoReg[07] := EscreveCampo(09, 'N', BoletosNOSSO_NUMERO.Value);
        CampoReg[08] := EscreveCampo(30, 'X', '');
        CampoReg[09] := '0';
        CampoReg[10] := '00';
        CampoReg[11] := ' ';
        CampoReg[12] := EscreveCampo(02, 'X', '00'); // 3� INSTRUCAO

        CampoReg[13] := '2'; // CARTEIRA VINCULADA
        CampoReg[14] := '01'; // tipo ocorrencia

        CampoReg[15] := EscreveCampo(10, 'X',
          IntToStr(BoletosEMISSAO_ID.Value));
        CampoReg[16] := EscreveCampo(06, 'D2',
          DateToStr(BoletosVENCIMENTO.Value));
        CampoReg[17] := EscreveCampo(13, 'N',
          FormatFloat('0.00', BoletosVALOR_DOC.Value));

        if (BancodeDados.BancosCODIGO_BANCO2.Value > 0) then
          CampoReg[18] := EscreveCampo(03, 'N',
            IntToStr(BancodeDados.BancosCODIGO_BANCO2.Value))
        else
          CampoReg[18] := EscreveCampo(03, 'N', IntToStr(CodBanco));

        CampoReg[19] := EscreveCampo(05, 'N', '0'); // Ag�ncia Cobradora
        CampoReg[20] := EscreveCampo(02, 'N', '01'); // '01' � Duplicata
        CampoReg[21] := EscreveCampo(01, 'X', 'N'); // Aceite
        CampoReg[22] := EscreveCampo(06, 'D2', DateToStr(BoletosEMISSAO.Value));

        BancodeDados.GradeFin.Close;
        BancodeDados.GradeFin.SQL.Text :=
          'select * from grade_financeira where grade_id = ' +
          IntToStr(BoletosGRADE_ID.Value);
        BancodeDados.GradeFin.Open;

        if not BancodeDados.GradeFin.IsEmpty then
        begin
          CampoReg[23] := '16'; // multa
          CampoReg[29] := EscreveCampo(06, 'D2',
            DateToStr(BoletosVENCIMENTO.Value + BoletosDIAS_TOLERANCIA.Value)) +
            EscreveCampo(04, 'N', FormatFloat(',0.00',
            BancodeDados.GradeFinMULTA.Value)) + '000';

          CampoReg[25] := EscreveCampo(13, 'N',
            FormatFloat(',0.00',
            (BoletosVALOR_DOC.Value * BancodeDados.GradeFinJUROS.Value) / 100));
        end
        else
        begin
          CampoReg[23] := '08'; // n�o cobrar juros/multa
          CampoReg[29] := EscreveCampo(13, 'X', '');

          CampoReg[25] := EscreveCampo(13, 'X', '');
        end;

        { if (BancodeDados.BancosDIAS_PROTESTO.Value > 0) then
          begin
          CampoReg[24] := '10';
          CampoReg[12] := EscreveCampo(02, 'N', IntToStr(BancodeDados.BancosDIAS_PROTESTO.Value)); //3� INSTRUCAO
          end
          else
          begin
          CampoReg[24] := '  ';
          end; }
        CampoReg[24] := '01';

        if (BoletosDESCONTO.Value > 0) then
        begin
          CampoReg[26] := EscreveCampo(06, 'D2',
            DateToStr(BoletosVENCIMENTO.Value + BoletosDIAS_TOLERANCIA.Value));
          CampoReg[27] := EscreveCampo(13, 'N',
            FormatFloat('0.00', BoletosDESCONTO.Value));
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

        CampoReg[33] := EscreveCampo(40, 'X', qryPesq.FieldByName('LOGRADOURO')
          .AsString + ' ' + qryPesq.FieldByName('NUMERO').AsString);
        CampoReg[34] := EscreveCampo(10, 'X', qryPesq.FieldByName('BAIRRO')
          .AsString);
        CampoReg[35] := '  ';
        CampoReg[36] := EscreveCampo(08, 'N', qryPesq.FieldByName('CEP')
          .AsString);
        CampoReg[37] := EscreveCampo(15, 'X', qryPesq.FieldByName('CIDADE')
          .AsString);
        CampoReg[38] := EscreveCampo(02, 'X', qryPesq.FieldByName('UF')
          .AsString);

        CampoReg[39] := EscreveCampo(30, 'X',
          BancodeDados.ConfigFANTASIA.Value); // Sacador
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
        CampoReg[05] := EscreveCampo(01, 'X',
          BancodeDados.BancosDIG_AGENCIA.Value);
        CampoReg[06] := EscreveCampo(08, 'N',
          BancodeDados.BancosCONTA_CORRENTE.Value);
        CampoReg[07] := EscreveCampo(01, 'X',
          BancodeDados.BancosDIG_CONTA_CORRENTE.Value);
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
        CampoReg[26] := EscreveCampo(06, 'D2',
          DateToStr(BoletosVENCIMENTO.Value + BoletosDIAS_TOLERANCIA.Value));
        CampoReg[27] := EscreveCampo(13, 'N',
          FormatFloat('0.00', BoletosVALOR_DOC.Value));
        CampoReg[28] := '756';

        CampoReg[29] := EscreveCampo(04, 'N', BancodeDados.BancosAGENCIA.Value);
        CampoReg[30] := EscreveCampo(01, 'X',
          BancodeDados.BancosDIG_AGENCIA.Value);
        CampoReg[31] := '01'; // Duplicata Mercantil
        CampoReg[32] := '0';
        CampoReg[33] := EscreveCampo(06, 'D2', DateToStr(BoletosEMISSAO.Value));

        CampoReg[34] := '00';
        CampoReg[35] := '00';
        CampoReg[36] := EscreveCampo(06, 'N', '0');
        CampoReg[37] := EscreveCampo(06, 'N', '0');
        CampoReg[39] := EscreveCampo(06, 'N', '0');
        CampoReg[40] := EscreveCampo(13, 'N', '0');

        BancodeDados.GradeFin.Close;
        BancodeDados.GradeFin.SQL.Text :=
          'select * from grade_financeira where grade_id = ' +
          IntToStr(BoletosGRADE_ID.Value);
        BancodeDados.GradeFin.Open;

        if not BancodeDados.GradeFin.IsEmpty then
        begin
          CampoReg[34] := '01'; // juros
          if (BancodeDados.GradeFinJUROS_MES.Value > 0) then
            CampoReg[36] := EscreveCampo(06, 'N',
              FormatFloat('0.0000', BancodeDados.GradeFinJUROS_MES.Value))
          else
            CampoReg[36] := EscreveCampo(06, 'N',
              FormatFloat('0.0000', BancodeDados.GradeFinJUROS.Value * 30));
          CampoReg[37] := EscreveCampo(06, 'N',
            FormatFloat('0.0000', BancodeDados.GradeFinMULTA.Value));
        end;

        CampoReg[38] := '2';

        if (BoletosDESCONTO.Value > 0) then
        begin
          CampoReg[39] := EscreveCampo(06, 'D2',
            DateToStr(BoletosVENCIMENTO.Value + BoletosDIAS_TOLERANCIA.Value));
          CampoReg[40] := EscreveCampo(13, 'N',
            FormatFloat('0.00', BoletosDESCONTO.Value));
        end;

        CampoReg[41] := '9' + EscreveCampo(12, 'N', '0');
        CampoReg[42] := EscreveCampo(13, 'N', '0');

        if Length(RetornaNumeros(CPFSacado)) = 11 then
          CampoReg[43] := EscreveCampo(02, 'N', '1')
        else
          CampoReg[43] := EscreveCampo(02, 'N', '2');
        CampoReg[44] := EscreveCampo(14, 'N', CPFSacado);
        CampoReg[45] := EscreveCampo(40, 'X', NomeSacado);

        CampoReg[46] := EscreveCampo(37, 'X', qryPesq.FieldByName('LOGRADOURO')
          .AsString + ' ' + qryPesq.FieldByName('NUMERO').AsString);
        CampoReg[47] := EscreveCampo(15, 'X', qryPesq.FieldByName('BAIRRO')
          .AsString);
        CampoReg[48] := EscreveCampo(08, 'N', qryPesq.FieldByName('CEP')
          .AsString);
        CampoReg[49] := EscreveCampo(15, 'X', qryPesq.FieldByName('CIDADE')
          .AsString);
        CampoReg[50] := EscreveCampo(02, 'X', qryPesq.FieldByName('UF')
          .AsString);

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

      CampoReg[04] := EscreveCampo(10, 'N',
        FormatFloat('000', BancodeDados.BancosTIPO_CONTA_CORRENTE.Value) +
        FormatFloat('000000', BancodeDados.BancosCONTA_CORRENTE.AsInteger) +
        BancodeDados.BancosDIG_CONTA_CORRENTE.Value);
      CampoReg[05] := EscreveCampo(09, 'X', '');
      CampoReg[06] := EscreveCampo(25, 'X', IntToStr(BoletosEMISSAO_ID.Value));
      CampoReg[07] := EscreveCampo(08, 'N', BoletosNOSSO_NUMERO.Value);
      CampoReg[08] := EscreveCampo(37, 'X', '');

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

procedure Trailer400; // Registro trailer
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

    if (CodBanco <> 070) then // BRB - Banco de Bras�lia S.A.
    begin
      CampoReg[01] := EscreveCampo(01, 'N', '9');
      // Posi��o: 001 a 001 > Identifica��o do registro trailer �9� //valor padr�o em todos os arquivos

      if (CodBanco = 104) then // Caixa Econ�mica Federal
        CampoReg[02] := EscreveCampo(393, 'X', '') + EscreveCampo(06, 'N',
          IntToStr(NSeqArquivo))
        // 2 a 394                      //395 a 400
      else if (CodBanco = 748) then // Sicredi e UNICRED
        CampoReg[02] := EscreveCampo(01, 'N', '1') +
        // Posicao: 002 a 002 > Identifica��o do arquivo remessa �1�
          EscreveCampo(03, 'N', IntToStr(CodBanco)) +
        // Posicao: 003 a 005 > N�mero do Sicredi �748�
          EscreveCampo(05, 'N', FormatFloat('00000',
          BancodeDados.BancosCONTA_CORRENTE.AsInteger)) +
        // Posicao: 006 a 010 >  Conta Corrente sem o DV ou conta benefici�rio
          EscreveCampo(384, 'X', '') +
        // Posicao: 011 a 394 > Deixar em Branco (sem preenchimento)
          EscreveCampo(06, 'N', FormatFloat('000000', (NSeqReg)))
        // Posicao: 395 a 400 > N�mero seq�encial do registro: Alinhado � direita e zeros � esquerda;
      else if (CodBanco = 356) then // Banco Real S.A.
        CampoReg[02] := EscreveCampo(393, 'X',
          EscreveCampo(06, 'N', IntToStr(qtdtmp)) + EscreveCampo(13, 'N',
          FormatFloat('0.00', vlIntTmp)))
      else if (CodBanco = 422) then // Banco Safra S.A.
        CampoReg[02] := EscreveCampo(367, 'X', '') + EscreveCampo(08, 'N',
          IntToStr(qtdtmp)) + EscreveCampo(15, 'N',
          FormatFloat('0.00', vlIntTmp)) + EscreveCampo(03, 'N',
          IntToStr(NSeqArquivo))
      else if (CodBanco = 341) or (CodBanco = 756) or (CodBanco = 237) or
        (CodBanco = 004) then // Ita�, SICOOB, Bradesco, Nordeste
        CampoReg[02] := EscreveCampo(393, 'X', '') + EscreveCampo(06, 'N',
          IntToStr(NSeqReg))
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
    if trim(ArquivoRem) <> '' then
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

          BancodeDados.Adiciona.SQL.Text :=
            'update boletos_emissao set remessa = ' + IntToStr(idRemessa) +
            ', remessa_id_ant = ' + IntToStr(idRemessa) + ' where emissao_id = '
            + IntToStr(BoletosEMISSAO_ID.Value);
          BancodeDados.Adiciona.ExecSQL;

          BancodeDados.Adiciona.SQL.Text := 'update boletos set remessa_id = ' +
            IntToStr(idRemessa) + ' where emissao_id = ' +
            IntToStr(BoletosEMISSAO_ID.Value);
          BancodeDados.Adiciona.ExecSQL;

          Gauge1.Progress := Boletos.RecNo;
          Boletos.Next;
          Application.ProcessMessages;
        end;

        TrailerLote2;
        TrailerArquivo2;

        if Mensagem('Arquivo foi gerado com sucesso! Na pasta ' + CaminhoRem +
          #13#13 + 'Deseja visualizar o(s) arquivo(s)?', mtConfirmation,
          [mbyes, mbNo], mryes, 0) = idyes then
        begin
          WinExec(PAnsiChar(AnsiString('explorer.exe /n,/e, ' + CaminhoRem)),
            SW_SHOWNORMAL);
        end;

      finally
        CloseFile(FRem);
      end;
    end;
  end;
end;

procedure Remessa400;
begin
  // if ((CodBanco <> 237) and (CodBanco <> 341)) then Mensagem('Fun��o n�o dispon�vel para este banco.', mtInformation, [mbOk], mrOk, 0) else
  with RemessaForm do
  begin
    if trim(ArquivoRem) <> '' then
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

          BancodeDados.Adiciona.SQL.Text :=
            'update boletos_emissao set remessa = ' + IntToStr(idRemessa) +
            ', remessa_id_ant = ' + IntToStr(idRemessa) + ' where emissao_id = '
            + IntToStr(BoletosEMISSAO_ID.Value);
          BancodeDados.Adiciona.ExecSQL;

          BancodeDados.Adiciona.SQL.Text := 'update boletos set remessa_id = ' +
            IntToStr(idRemessa) + ' where emissao_id = ' +
            IntToStr(BoletosEMISSAO_ID.Value);
          BancodeDados.Adiciona.ExecSQL;

          Gauge1.Progress := Boletos.RecNo;
          Boletos.Next;
          Application.ProcessMessages;
        end;

        Trailer400;

        if Mensagem('Arquivo foi gerado com sucesso! Na pasta ' + CaminhoRem +
          #13#13 + 'Deseja visualizar o(s) arquivo(s)?', mtConfirmation,
          [mbyes, mbNo], mryes, 0) = idyes then
        begin
          WinExec(PAnsiChar(AnsiString('explorer.exe /n,/e, ' + CaminhoRem)),
            SW_SHOWNORMAL);
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
  if trim(BoletosCLI_CEP.Value) <> '' then
    BoletosTem_End.Value := 'SIM'
  else
    BoletosTem_End.Value := 'N�O';

  BancodeDados.CalcularAtivo(listaV_Boletos, BoletosEMISSAO_ID.Value,
    BoletosATIVO);

end;

procedure TRemessaForm.btCamRemClick(Sender: TObject);
var
  caminho: String;
begin
  if BancodeDados.BancosBANCO_ID.Value > 0 then
  begin
    if btCamRem.Enabled then
      // if TabSheet1.Showing then
      // begin
      HabilitarBotoes(Self, false);
    caminho := SelecionarDiretorio('Arquivo de Remessa', EditCaminho.Text);
    if (trim(caminho) <> '') then

      EditCaminho.Text := trim(caminho);

    HabilitarBotoes(Self, true);
    // end;
  end;
end;

procedure TRemessaForm.BTIniciarClick(Sender: TObject);
var
  Ano, Mes, Dia: Word;
  MesBanco: string;
  PoderGerarArq: boolean;
  QtdArq: integer;

begin

  if (EditBanco.ItemIndex >= 0) then
  begin // 1

    PoderGerarArq := true;
    if trim(EditCaminho.Text) = '' then
      EditCaminho.Text := ExtractFilePath(ParamStr(0));

    HabilitarBotoes(Self, false);
    Screen.Cursor := crSQLWait;

    ArquivoRem := '';
    DtHrArq := 0;
    CaminhoRem := trim(EditCaminho.Text);

    BancodeDados.Bancos.Close;
    BancodeDados.Bancos.SQL.Text :=
      'select * from bancos where coalesce(cont_encerrada,0)= 0 order by banco_nome';

    BancodeDados.Bancos.Open;

    if not BancodeDados.Bancos.Locate('BANCO_ID',
      StrToInt(Copy(EditBanco.Text, 1, 6)), []) then
      Mensagem('O banco n�o foi localizado.', mtInformation, [mbok], mrok, 0)
    else
    begin // 2

      CodBanco := BancodeDados.BancosCODIGO_BANCO.Value;
      CodigoDeLayout := BancodeDados.BancosLAYOUT.Value;

      case CodigoDeLayout of
        1:
          TipoDeLayout := 'CNAB400';
        2:
          TipoDeLayout := 'CBR641';
        3:
          TipoDeLayout := 'CNAB240';
      end;

      BancodeDados.QrySql.Close;
      BancodeDados.QrySql.SQL.Text := 'select * from remessa where banco_id= ' +
        IntToStr(BancodeDados.BancosBANCO_ID.Value) + ' and (data between ' +
        QuotedStr(FormatDateTime('yyyy/mm/dd', PrincipalForm.DataServidor) +
        ' 00:00:00') + ' and ' + QuotedStr(FormatDateTime('yyyy/mm/dd',
        PrincipalForm.DataServidor) + ' 23:59:59') + ')';
      BancodeDados.QrySql.Open;
      BancodeDados.QrySql.Last;
      QtdArq := BancodeDados.QrySql.RecordCount;
      BancodeDados.QrySql.Close;

      if (CodBanco = 748) then
      begin // encontrando a qtd de arquivos que foram gerados durante o dia...
        if QtdArq > 10 then
        begin
          Mensagem('Foi atingido a quantidade m�xima de arquivos remessa por hoje. '#13
            + 'Envie este arquivo em outro dia.'#13#13 +
            'Observa��o: Arquivo n�o gerado.', mtWarning, [mbok], mrok, 0);
          PoderGerarArq := false;
        end;
      end;

      if PoderGerarArq = true then
      begin // 2.1
        if (CaminhoRem = '') then
          Mensagem('Informe a pasta para armazenamento.', mtInformation,
            [mbok], mrok, 0)
        else if not DirectoryExists(CaminhoRem) then
          CriarDiretorio(CaminhoRem);

        if DirectoryExists(CaminhoRem) then
        begin // 3
          // try

          if (CodigoDeLayout = 3) then
          begin // CNAB240
            // bb               //caixa             //santander
            if ((CodBanco <> 1) and (CodBanco <> 104) and (CodBanco <> 33)) then
            begin
              Mensagem('Fun��o n�o dispon�vel para este banco com leiaute ' +
                TipoDeLayout + '.', mtWarning, [mbok], mrok, 0);
              Screen.Cursor := crDefault;
              HabilitarBotoes(Self, true);
              exit;
            end;

            if (CodBanco = 1) then // bb
            begin
              if not(BancodeDados.BancosVAR_CARTEIRA.Value > 0) then
              begin
                Mensagem('Informe a varia��o da carteira no cadastro do banco.'#13#13
                  + 'Observa��o: Verifique o cadastro do banco >> menu Componentes >> Bancos.',
                  mtInformation, [mbok], mrok, 0);
                Screen.Cursor := crDefault;
                HabilitarBotoes(Self, true);
                exit;
              end;
              // eraldo comentou o c�digo abaixo pois o banco pediu pra zerar: Posi��es 230 a 239: Preencher com zeros
              { if not(BancodeDados.BancosCONTRATO.Value > 0) then
                begin
                Mensagem('Informe o n� do contrato no cadastro do banco.'#13#13+'Observa��o: Verifique o cadastro do banco >> menu Componentes >> Bancos.', mtInformation, [mbOk], mrOk, 0);
                exit;
                end; }
            end;

          end
          else if (CodigoDeLayout = 1) then // 1- CNAB400
          begin // //BRADESCO     //Ita�              // HSBC               //BICBANCO            // Daycoval           //BRB
            if ((CodBanco <> 237) and (CodBanco <> 341) and (CodBanco <> 399)
              and (CodBanco <> 320) and (CodBanco <> 707) and (CodBanco <> 070)
              and (CodBanco <> 356) and (CodBanco <> 389) and (CodBanco <> 422)
              and (CodBanco <> 756) and (CodBanco <> 748) and (CodBanco <> 104))
              and (CodBanco <> 004) then
            begin // Banco Real      //Banco Mercantil        // Safra            // BANCOOB-SICOOB    //Sicredi e UNICRED  //CEF                  // banco do nordeste
              Mensagem('Fun��o indispon�vel para este banco com o leiaute ' +
                TipoDeLayout + '.'#13#13 +
                'Observa��o: Verifique o cadastro do banco >> menu Componentes >> Bancos.',
                mtWarning, [mbok], mrok, 0);
              Screen.Cursor := crDefault;
              HabilitarBotoes(Self, true);
              exit;
            end;
          end; // 1 - CNAB400

          if not BancodeDados.FDConnection1.InTransaction then
            BancodeDados.FDConnection1.StartTransaction;

          if not(Copy(CaminhoRem, Length(CaminhoRem), 1) = '\') then
            CaminhoRem := CaminhoRem + '\';
          ContaRegistros;
          if (qtdtmp > 0) and (vlIntTmp > 0) then
          begin // 4

            BancodeDados.Config.Close;
            BancodeDados.Config.SQL.Text :=
              'select c.*, (select m.nome from municipios m where m.codmun=c.cidade) as cidade_nome from config c where c.conf_id = '
              + IntToStr(InstIdTmp);

            BancodeDados.Config.Open;

            if BancodeDados.Config.IsEmpty then
            begin
              Mensagem('N�o foi poss�vel localizar da institui��o.',
                mtInformation, [mbok], mrok, 0);
              Screen.Cursor := crDefault;
              HabilitarBotoes(Self, true);
            end
            else
            begin // 5
              DtHrArq := PrincipalForm.DataHoraServidor;

              NSeqArquivo := BancodeDados.Pega_SeqRemessa
                (BancodeDados.BancosBANCO_ID.Value);
              BancodeDados.Remessa.Close;
              BancodeDados.Remessa.SQL.Text :=
                'select * from remessa where data = ' +
                QuotedStr(FormatDateTime('yyyy/mm/dd hh:nn:ss', DtHrArq));
              BancodeDados.Remessa.Open;

              BancodeDados.Remessa.Append;
              BancodeDados.RemessaBANCO_ID.Value :=
                BancodeDados.BancosBANCO_ID.Value;
              BancodeDados.RemessaDATA.Value := DtHrArq;
              BancodeDados.RemessaTIPO_REM.Value := 1;
              BancodeDados.RemessaN_SEQ_REM.Value := NSeqArquivo;
              BancodeDados.Remessa.Post;

              if not BancodeDados.FDConnection1.InTransaction then
                BancodeDados.FDConnection1.StartTransaction;
              BancodeDados.FDConnection1.CommitRetaining;

              idRemessa := BancodeDados.RemessaREM_ID.Value;
              NSeqLote := 0;
              NSeqReg := 0;
              LbTipoDeLayout.Caption := 'Arquivo processado com o leiaute: ' +
                TipoDeLayout;
              // (IntToStr(CodBanco));
              if CodBanco = 341 then
              begin // Banco Ita�
                ArquivoRem := CaminhoRem + FormatFloat('000',
                  BancodeDados.BancosBANCO_ID.Value) +
                  FormatFloat('00000', NSeqArquivo) + '.REM';
              end
              else if CodBanco = 748 then
              begin // Sicredi e UNICRED - alterando o nome do arquivo para obedecer ao padr�o do banco}

                DecodeDate(PrincipalForm.DataServidor, Ano, Mes, Dia);
                case Mes of
                  1:
                    MesBanco := '1';
                  2:
                    MesBanco := '2';
                  3:
                    MesBanco := '3';
                  4:
                    MesBanco := '4';
                  5:
                    MesBanco := '5';
                  6:
                    MesBanco := '6';
                  7:
                    MesBanco := '7';
                  8:
                    MesBanco := '8';
                  9:
                    MesBanco := '9';
                  10:
                    MesBanco := 'O';
                  11:
                    MesBanco := 'N';
                  12:
                    MesBanco := 'D';
                end;

                if QtdArq = 0 then
                  ArquivoRem := BancodeDados.BancosCODIGO_CEDENTE.Value +
                    (MesBanco) + FormatFloat('00', Dia) + '.CRM'
                else if QtdArq = 1 then
                  ArquivoRem := BancodeDados.BancosCODIGO_CEDENTE.Value +
                    (MesBanco) + FormatFloat('00', Dia) + '.RM2'
                else if QtdArq = 10 then
                  ArquivoRem := BancodeDados.BancosCODIGO_CEDENTE.Value +
                    (MesBanco) + FormatFloat('00', Dia) + '.RM0'
                else
                  ArquivoRem := BancodeDados.BancosCODIGO_CEDENTE.Value +
                    (MesBanco) + FormatFloat('00', Dia) + '.RM' +
                    IntToStr(QtdArq);

                // Atualiza��o - Alex Eloy - 20/03/2017
                // Para o Banco Sicred e Unicred n�o estava geraando o Arquivo Remessa na pasta informada
                ArquivoRem := CaminhoRem + ArquivoRem;

              end
              else if CodBanco = 707 then
              begin { Daycoval - alterando o nome do arquivo para obedecer ao padr�o do banco }
                DecodeDate(PrincipalForm.DataServidor, Ano, Mes, Dia);
                ArquivoRem := 'TYK' + FormatFloat('00', Dia) +
                  FormatFloat('00', Mes);
                ArquivoRem := CaminhoRem + trim(SemAcento(ArquivoRem)) +
                  IntToStr(NSeqArquivo) + '.TXT';
              end
              else
              begin
                ArquivoRem := BancodeDados.ConfigFANTASIA.Value;
                ArquivoRem := StringReplace(ArquivoRem, '�', '',
                  [rfReplaceAll]);
                ArquivoRem := StringReplace(ArquivoRem, '�', '',
                  [rfReplaceAll]);
                ArquivoRem := CaminhoRem +
                  trim(Formatar(StringReplace(SemAcento(ArquivoRem), ' ', '_',
                  [rfReplaceAll]), 8)) + '_' +
                  FormatFloat('00', BancodeDados.BancosBANCO_ID.Value) +
                  FormatFloat('00000', NSeqArquivo) + '.REM';
              end;

              BancodeDados.GradeFin.Close;
              BancodeDados.GradeFin.SQL.Text :=
                'select * from grade_financeira';
              BancodeDados.GradeFin.Open;

              GerarRemessa; // chamando a funcao de remessa

              PrincipalForm.VerificaRemessaPendentes;
            end; // 5
          end // 4
          else
          begin
            Mensagem('Nenhum t�tulo foi encontrado.', mtInformation,
              [mbok], mrok, 0);
            Screen.Cursor := crDefault;
            HabilitarBotoes(Self, true);
          end;

        end
        else
        begin // 3
          Mensagem('Erro:'#13 + 'A pasta para armazenamento n�o existe.',
            mtWarning, [mbok], mrok, 0);
          Screen.Cursor := crDefault;
          HabilitarBotoes(Self, true);
        end;
      end; // 2.1
    end; // 2
    Screen.Cursor := crDefault;
    HabilitarBotoes(Self, true);
    listaV_Boletos.Clear;
    IDEmissao := '';
    ContaRegistros;
  end; // 1

end;

procedure TRemessaForm.EditBancoChange(Sender: TObject);
begin
  TipoDeLayout := '';

  rgCarteira.Enabled := false;
  ContaRegistros;
  if (RemessaForm.EditBanco.ItemIndex >= 0) then
  begin

    BancodeDados.Bancos.Close;
    BancodeDados.Bancos.SQL.Text :=
      'select * from bancos where coalesce(cont_encerrada,0)= 0 order by banco_nome';
    BancodeDados.Bancos.Open;

    if BancodeDados.Bancos.Locate('BANCO_ID',
      StrToInt(Copy(EditBanco.Text, 1, 6)), []) then
    begin

      case BancodeDados.BancosLAYOUT.Value of
        1:
          TipoDeLayout := 'CNAB400';
        2:
          TipoDeLayout := 'CBR641';
        3:
          TipoDeLayout := 'CNAB240';
      end;
      LbTipoDeLayout.Caption := 'Configura��o de leiaute do banco atual: ' +
        TipoDeLayout;

      EditCaminho.Text := trim(BancodeDados.BancosCAMINHO_REMESSA.Value);
      if (BancodeDados.BancosCODIGO_BANCO.Value = 1) then
        rgCarteira.Enabled := true;
    end;
  end;
end;

procedure TRemessaForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Assigned(listaV_Boletos) then
    listaV_Boletos.Clear;
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
