{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N-,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN SYMBOL_EXPERIMENTAL ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN UNIT_EXPERIMENTAL ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE OFF}
{$WARN UNSAFE_CODE OFF}
{$WARN UNSAFE_CAST OFF}
{$WARN OPTION_TRUNCATED ON}
{$WARN WIDECHAR_REDUCED ON}
{$WARN DUPLICATES_IGNORED ON}
{$WARN UNIT_INIT_SEQ ON}
{$WARN LOCAL_PINVOKE ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN TYPEINFO_IMPLICITLY_ADDED ON}
{$WARN RLINK_WARNING ON}
{$WARN IMPLICIT_STRING_CAST ON}
{$WARN IMPLICIT_STRING_CAST_LOSS ON}
{$WARN EXPLICIT_STRING_CAST OFF}
{$WARN EXPLICIT_STRING_CAST_LOSS OFF}
{$WARN CVT_WCHAR_TO_ACHAR ON}
{$WARN CVT_NARROWING_STRING_LOST ON}
{$WARN CVT_ACHAR_TO_WCHAR ON}
{$WARN CVT_WIDENING_STRING_LOST ON}
{$WARN NON_PORTABLE_TYPECAST ON}
{$WARN XML_WHITESPACE_NOT_ALLOWED ON}
{$WARN XML_UNKNOWN_ENTITY ON}
{$WARN XML_INVALID_NAME_START ON}
{$WARN XML_INVALID_NAME ON}
{$WARN XML_EXPECTED_CHARACTER ON}
{$WARN XML_CREF_NO_RESOLVE ON}
{$WARN XML_NO_PARM ON}
{$WARN XML_NO_MATCHING_PARM ON}
{$WARN IMMUTABLE_STRINGS OFF}
unit Retorno;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Graphics, Vcl.Controls, Forms, Dialogs, Vcl.StdCtrls, DBCtrls,
  ExtCtrls, Gauges, jpeg, Buttons, Menus, DB, DBClient, SEDCurrency, StrUtils,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;


// Winapi.Windows, Winapi.Messages, System.Variants, System.Classes, Vcl.Controls, Gauges, Contnrs,
// Vcl.Dialogs, Vcl.StdCtrls, MaskUtils, Shellapi, Vcl.Forms, IBX.IbQuery, DBClient, System.SysUtils;

type
  TRetornoForm = class(TForm)
    Label1: TLabel;
    Gauge1: TGauge;
    Panel1: TPanel;
    BTIniciar: TButton;
    BTFechar: TButton;
    OpenDialog1: TOpenDialog;
    LbNomeOperacao: TLabel;
    RBProcessar: TRadioButton;
    RBDesfazer: TRadioButton;
    Image1: TImage;
    Memo1: TMemo;
    LbArquivo: TLabel;
    LbNomeNumero: TLabel;
    EditBanco: TComboBox;
    MainMenu1: TMainMenu;
    F41: TMenuItem;
    btConta: TSpeedButton;
    EditConta: TDBLookupComboBox;
    Label3: TLabel;
    dsTitQuitado2: TDataSource;
    TitQuitado2: TClientDataSet;
    TitQuitado2RESP_ID: TIntegerField;
    TitQuitado2RESP_NOME: TStringField;
    TitQuitado2BOLETO_ID: TIntegerField;
    TitQuitado2PARCELA: TStringField;
    TitQuitado2MATRICULA_ID: TIntegerField;
    TitQuitado2ALUNO: TStringField;
    TitQuitado2EMISSAO: TDateField;
    TitQuitado2VENCIMENTO: TDateField;
    TitQuitado2VALOR_INTEGRAL: TCurrencyField;
    TitQuitado2VALOR_APAGAR: TCurrencyField;
    TitQuitado2VALOR_PAGO: TCurrencyField;
    TitQuitado2SITUACAO_BOLETO: TStringField;
    TitQuitado2RET1_RETORNO_ID: TIntegerField;
    TitQuitado2RET1_NUMERO_ARQUIVO: TIntegerField;
    TitQuitado2RET1_DATA_ARQUIVO: TDateField;
    TitQuitado2RET1_NOSSO_NUMERO: TStringField;
    TitQuitado2RET1_DATA_CREDITO: TDateField;
    TitQuitado2RET1_DATA_RECEBIMENTO: TDateField;
    TitQuitado2RET1_VALOR_DOCUMENTO: TCurrencyField;
    TitQuitado2RET1_VALOR_ABATIMENTO: TCurrencyField;
    TitQuitado2RET1_VALOR_MORA: TCurrencyField;
    TitQuitado2RET1_VALOR_PAGO: TCurrencyField;
    TitQuitado2RET1_NOME_ARQ: TStringField;
    TitQuitado2RET2_RETORNO_ID: TIntegerField;
    TitQuitado2RET2_NUMERO_ARQUIVO: TIntegerField;
    TitQuitado2RET2_DATA_ARQUIVO: TDateField;
    TitQuitado2RET2_NOSSO_NUMERO: TStringField;
    TitQuitado2RET2_DATA_CREDITO: TDateField;
    TitQuitado2RET2_DATA_RECEBIMENTO: TDateField;
    TitQuitado2RET2_VALOR_DOCUMENTO: TCurrencyField;
    TitQuitado2RET2_VALOR_ABATIMENTO: TCurrencyField;
    TitQuitado2RET2_VALOR_MORA: TCurrencyField;
    TitQuitado2RET2_VALOR_PAGO: TCurrencyField;
    TitQuitado2RET2_NOME_ARQ: TStringField;
    TitQuitado2RET1_DATA_VENCIMENTO: TDateField;
    TitQuitado2RET2_DATA_VENCIMENTO: TDateField;
    OFF_EditTipoConta: TSedCurrency;
    lbConta: TLabel;
    GroupBox1: TGroupBox;
    rgOpcoes: TRadioGroup;
    chLancCX: TCheckBox;
    GroupBox2: TGroupBox;
    chConfirma: TCheckBox;
    Bevel1: TBevel;
    BoletosDup: TFDQuery;
    upBolDup: TFDUpdateSQL;
    GroupBox3: TGroupBox;
    cbAnexarRel: TCheckBox;
    qryPegarRetorn: TFDQuery;
    qryPegarRetornRETORNO_ID: TIntegerField;
    CtrlF51: TMenuItem;
    qryV_Boletos: TFDQuery;
    dsRetornoTmp: TDataSource;
    RetornoTmp: TClientDataSet;
    RetornoTmpNUMERO_ARQUIVO: TIntegerField;
    RetornoTmpDATA_ARQUIVO: TDateField;
    RetornoTmpNOSSO_NUMERO: TStringField;
    RetornoTmpDATA_CREDITO: TDateField;
    RetornoTmpVALOR_PAGO: TCurrencyField;
    RetornoTmpDATA_RECEBIMENTO: TDateField;
    RetornoTmpCODIGO_BANCO: TIntegerField;
    RetornoTmpNOME_ARQ: TStringField;
    RetornoTmpCODIGO_AGENCIA: TStringField;
    RetornoTmpDIGITO_AGENCIA: TStringField;
    RetornoTmpNUMERO_CONTA: TStringField;
    RetornoTmpNUMERO_REGISTRO: TIntegerField;
    RetornoTmpDIGITO_CONTA: TIntegerField;
    RetornoTmpSEU_NUMERO: TStringField;
    RetornoTmpTIPO: TIntegerField;
    RetornoTmpBANCO_ID: TIntegerField;
    RetornoTmpCOD_OCORRENCIA: TIntegerField;
    RetornoTmpOBSERVACAO: TStringField;
    RetornoTmpOBS_1: TStringField;
    RetornoTmpOBS_2: TStringField;
    RetornoTmpNOME_SACADO: TStringField;
    RetornoTmpCOD_SACADO: TIntegerField;
    RetornoTmpOBS_3: TMemoField;
    RetornoTmpVALOR_DOCUMENTO: TFloatField;
    RetornoTmpOCORRENCIA_NOME: TStringField;
    RetornoTmpEMISSAO_ID: TIntegerField;
    RetornoTmpVALOR_DESCONTO: TCurrencyField;
    RetornoTmpDATA_VENCIMENTO: TDateField;
    qryV_BoletosCLI_ID: TIntegerField;
    qryV_BoletosCLI_NOME: TStringField;
    qryV_BoletosCLI_CNPJ_CPF: TStringField;
    qryV_BoletosEMISSAO_ID: TIntegerField;
    qryV_BoletosPARCELA: TStringField;
    qryV_BoletosNOSSO_NUMERO: TStringField;
    chLancTaxa: TCheckBox;
    BoletosDupBOLETO_ID: TIntegerField;
    BoletosDupDESCRICAO: TStringField;
    BoletosDupPARCELA: TStringField;
    BoletosDupVALOR_MENSAL: TFloatField;
    BoletosDupVALOR_LIC: TFloatField;
    BoletosDupVALOR_INTEGRAL: TFloatField;
    BoletosDupDESCONTO: TFloatField;
    BoletosDupACRESCIMO: TFloatField;
    BoletosDupVALOR_APAGAR: TFloatField;
    BoletosDupJUROS: TFloatField;
    BoletosDupMULTA: TFloatField;
    BoletosDupVALOR_PAGO: TFloatField;
    BoletosDupSITUACAO_BOLETO: TStringField;
    BoletosDupVENCIMENTO: TDateField;
    BoletosDupEMISSAO: TDateField;
    BoletosDupRECEBIMENTO: TDateField;
    BoletosDupCLI_ID: TIntegerField;
    BoletosDupDESCRICAO_PAGO: TStringField;
    BoletosDupGRADE_ID: TIntegerField;
    BoletosDupBANCO_ID: TIntegerField;
    BoletosDupRETORNO_ID: TIntegerField;
    BoletosDupUSR_CAD: TIntegerField;
    BoletosDupUSR_ID: TIntegerField;
    BoletosDupDT_ALTERADO: TDateField;
    BoletosDupEMISSAO_ID: TIntegerField;
    BoletosDupCAIXA_ID: TIntegerField;
    BoletosDupDT_CREDITO: TDateField;
    BoletosDupNFS_ID: TIntegerField;
    BoletosDupVENCIMENTO_ORIG: TDateField;
    BoletosDupVALOR_APAGAR_ORIG: TFloatField;
    BoletosDupDUPLIC_BOL_ID: TIntegerField;
    BoletosDupDUPLIC_RET_ID: TIntegerField;
    BoletosDupOP_PAG_ID: TIntegerField;
    BoletosDupRECEB_ID: TIntegerField;
    BoletosDupTIPO_CONTAS_ID: TIntegerField;
    BoletosDupACRESC_EXTRA: TFloatField;
    BoletosDupRET_OC_ID: TIntegerField;
    BoletosDupREMESSA_ID: TIntegerField;
    RetornoTmpCODIGO_REJEICAO: TIntegerField;
    RetornoTmpREJEICAO_NOME: TStringField;
    RetornoTmpTX_BANCO: TCurrencyField;
    RetornoTmpCODIGO_CEDENTE: TStringField;
    RetornoTmpCOD_DEB: TIntegerField;
    BoletosDupOBS: TMemoField;
    BoletosDupOBS_BOLETO: TMemoField;
    BoletosDupCLIENTE: TStringField;
    Label12: TLabel;
    procedure FormShow(Sender: TObject);
    procedure BTIniciarClick(Sender: TObject);
    procedure RBProcessarClick(Sender: TObject);
    procedure RBDesfazerClick(Sender: TObject);
    procedure chLancCXClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CtrlF51Click(Sender: TObject);
    procedure EditBancoClick(Sender: TObject);
    procedure EditBancoChange(Sender: TObject);
    procedure dsRetornoTmpDataChange(Sender: TObject; Field: TField);
    procedure RetornoTmpCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function PegarOCorrenciaRet(CodigoBanco, CodOcorrencia: integer;
      layout: string): string;
    function PegarOCorrenciaRejeicao(CodigoBanco, CodOcorrencia,
      CodigoOcRejeijao: integer; layout: string): string;
  end;

var
  RetornoForm: TRetornoForm;
  COD_NArquivo, NBaixado: integer;
  Nome_Banco, NomeArquivo: String;
  ContaID: integer;
  BancoID: integer;
  VerifNossNum: integer = 0;
  LayoutRet: string = '';
  listaDesfazerRet: TStringList;
  AlterandoNomeRet: integer = 0;
  Dt_Arquivo: TDate;

implementation

uses
  acFuncoesBoleto, Base, Principal, VisualizaRetorno, IndicaRetorno,
  CsBaixaBanco, BaixaNEfetuada, ListarRetorno, RelArquivoRetorno, SEDRegistro,
  relSituacaoTitulos, unRecursos, Boletos1;

{$R *.dfm}

function TRetornoForm.PegarOCorrenciaRejeicao(CodigoBanco, CodOcorrencia,
  CodigoOcRejeijao: integer; layout: string): string;
var
  PoderContinuar: Boolean;

begin

  PoderContinuar := (CodigoBanco = 104) and (CodOcorrencia = 99) and
    (layout = 'cnab400'); // and (CodigoOcRejeijao>0);//caixa
  // PoderContinuar:=(CodigoBanco=1) and (CodOcorrencia=3);//banco do brasil

  if PoderContinuar = true then
  begin

    if (layout = 'cnab240') then
    begin
      case CodigoOcRejeijao of
        01:
          Result := '01-C?digo do Banco Inv?lido';
        02:
          Result := '02-C?digo do Registro Inv?lido';
        03:
          Result := '03-C?digo do Segmento Inv?lido';
        04:
          Result := '04-C?digo do Movimento n?o Permitido p/ Carteira';
        05:
          Result := '05-C?digo do Movimento Inv?lido';
        06:
          Result := '06-Tipo N?mero Inscri??o Cedente Inv?lido';
        07:
          Result := '07-Agencia/Conta/DV Inv?lidos';
        08:
          Result := '08-Nosso N?mero Inv?lido';
        09:
          Result := '09-Nosso N?mero Duplicado';
        10:
          Result := '10-Carteira Inv?lida';
        11:
          Result := '11-Data de Gera??o Inv?lida';
        12:
          Result := '12-Tipo de Documento Inv?lido';
        13:
          Result := '13-Identif. Da Emiss?o do Bloqueto Inv?lida';
        14:
          Result := '14-Identif. Da Distribui??o do Bloqueto Inv?lida';
        15:
          Result := '15-Caracter?sticas Cobran?a Incompat?veis';
        16:
          Result := '16-Data de Vencimento Inv?lida';
        17:
          Result := '17-Data de Vencimento Anterior a Data de Emiss?o';
        18:
          Result := '18-Vencimento fora do prazo de opera??o';
        19:
          Result := '19-T?tulo a Cargo de Bco Correspondentes c/ Vencto Inferior a XX Dias';
        20:
          Result := '20-Valor do T?tulo Inv?lido';
        21:
          Result := '21-Esp?cie do T?tulo Inv?lida';
        22:
          Result := '22-Esp?cie do T?tulo N?o Permitida para a Carteira';
        23:
          Result := '23-Aceite Inv?lido';
        24:
          Result := '24-Data da Emiss?o Inv?lida';
        25:
          Result := '25-Data da Emiss?o Posterior a Data de Entrada';
        26:
          Result := '26-C?digo de Juros de Mora Inv?lido';
        27:
          Result := '27-Valor/Taxa de Juros de Mora Inv?lido';
        28:
          Result := '28-C?digo do Desconto Inv?lido';
        29:
          Result := '29-Valor do Desconto Maior ou Igual ao Valor do T?tulo';
        30:
          Result := '30-Desconto a Conceder N?o Confere';
        31:
          Result := '31-Concess?o de Desconto - J? Existe Desconto Anterior';
        32:
          Result := '32-Valor do IOF Inv?lido';
        33:
          Result := '33-Valor do Abatimento Inv?lido';
        34:
          Result := '34-Valor do Abatimento Maior ou Igual ao Valor do T?tulo';
        35:
          Result := '35-Valor Abatimento a Conceder N?o Confere';
        36:
          Result := '36-Concess?o de Abatimento - J? Existe Abatimento Anterior';
        37:
          Result := '37-C?digo para Protesto Inv?lido';
        38:
          Result := '38-Prazo para Protesto Inv?lido';
        39:
          Result := '39-Pedido de Protesto N?o Permitido para o T?tulo';
        40:
          Result := '40-T?tulo com Ordem de Protesto Emitida';
        41:
          Result := '41-Pedido Cancelamento/Susta??o p/ T?tulos sem Instru??o Protesto';
        42:
          Result := '42-C?digo para Baixa/Devolu??o Inv?lido';
        43:
          Result := '43-Prazo para Baixa/Devolu??o Inv?lido';
        44:
          Result := '44-C?digo da Moeda Inv?lido';
        45:
          Result := '45-Nome do Sacado N?o Informado';
        46:
          Result := '46-Tipo/N?mero de Inscri??o do Sacado Inv?lidos';
        47:
          Result := '47-Endere?o do Sacado N?o Informado';
        48:
          Result := '48-CEP Inv?lido';
        49:
          Result := '49-CEP Sem Pra?a de Cobran?a (N?o Localizado)';
        50:
          Result := '50-CEP Referente a um Banco Correspondente';
        51:
          Result := '51-CEP incompat?vel com a Unidade da Federa??o';
        52:
          Result := '52-Unidade da Federa??o Inv?lida';
        53:
          Result := '53-Tipo/N?mero de Inscri??o do Sacador/Avalista Inv?lidos';
        54:
          Result := '54-Sacador/Avalista N?o Informado';
        55:
          Result := '55-Nosso n?mero no Banco Correspondente N?o Informado';
        56:
          Result := '56-C?digo do Banco Correspondente N?o Informado';
        57:
          Result := '57-C?digo da Multa Inv?lido';
        58:
          Result := '58-Data da Multa Inv?lida';
        59:
          Result := '59-Valor/Percentual da Multa Inv?lido';
        60:
          Result := '60-Movimento para T?tulo N?o Cadastrado. Erro gen?rico para as situa??es:'
            + #13#10 + '"Cedente n?o cadastrado" ou' + #13#10 +
            '"Ag?ncia Cedente n?o cadastrada ou desativada"';
        61:
          Result := '61-Altera??o da Ag?ncia Cobradora/DV Inv?lida';
        62:
          Result := '62-Tipo de Impress?o Inv?lido';
        63:
          Result := '63-Entrada para T?tulo j? Cadastrado';
        64:
          Result := '64-Entrada Inv?lida para Cobran?a Caucionada';
        65:
          Result := '65-CEP do Sacado n?o encontrado';
        66:
          Result := '66-Agencia Cobradora n?o encontrada';
        67:
          Result := '67-Agencia Cedente n?o encontrada';
        68:
          Result := '68-Movimenta??o inv?lida para t?tulo';
        69:
          Result := '69-Altera??o de dados inv?lida';
        70:
          Result := '70-Apelido do cliente n?o cadastrado';
        71:
          Result := '71-Erro na composi??o do arquivo';
        72:
          Result := '72-Lote de servi?o inv?lido';
        73:
          Result := '73-C?digo do Cedente inv?lido';
        74:
          Result := '74-Cedente n?o pertencente a Cobran?a Eletr?nica';
        75:
          Result := '75-Nome da Empresa inv?lido';
        76:
          Result := '76-Nome do Banco inv?lido';
        77:
          Result := '77-C?digo da Remessa inv?lido';
        78:
          Result := '78-Data/Hora Gera??o do arquivo inv?lida';
        79:
          Result := '79-N?mero Sequencial do arquivo inv?lido';
        80:
          Result := '80-Vers?o do Lay out do arquivo inv?lido';
        81:
          Result := '81-Literal REMESSA-TESTE - V?lido s? p/ fase testes';
        82:
          Result := '82-Literal REMESSA-TESTE - Obrigat?rio p/ fase testes';
        83:
          Result := '83-Tp N?mero Inscri??o Empresa inv?lido';
        84:
          Result := '84-Tipo de Opera??o inv?lido';
        85:
          Result := '85-Tipo de servi?o inv?lido';
        86:
          Result := '86-Forma de lan?amento inv?lido';
        87:
          Result := '87-N?mero da remessa inv?lido';
        88:
          Result := '88-N?mero da remessa menor/igual remessa anterior';
        89:
          Result := '89-Lote de servi?o divergente';
        90:
          Result := '90-N?mero sequencial do registro inv?lido';
        91:
          Result := '91-Erro seq de segmento do registro detalhe';
        92:
          Result := '92-Cod movto divergente entre grupo de segm';
        93:
          Result := '93-Qtde registros no lote inv?lido';
        94:
          Result := '94-Qtde registros no lote divergente';
        95:
          Result := '95-Qtde lotes no arquivo inv?lido';
        96:
          Result := '96-Qtde lotes no arquivo divergente';
        97:
          Result := '97-Qtde registros no arquivo inv?lido';
        98:
          Result := '98-Qtde registros no arquivo divergente';
        99:
          Result := '99-C?digo de DDD inv?lido';
      else
        Result := 'Outros Motivos';
      end;

    end
    else if (layout = 'cnab400') then
    begin

      case CodigoOcRejeijao of
        01:
          Result := 'Remessa sem registro tipo 0';
        02:
          Result := 'Identifica??o inv?lida da Empresa no BANCO';
        03:
          Result := 'N?mero Inv?lido da Remessa';
        04:
          Result := 'Benefici?rio n?o pertence a Cobran?a Eletr?nica';
        05:
          Result := 'C?digo da Remessa Inv?lido';
        06:
          Result := 'Literal da Remessa Inv?lido';
        07:
          Result := 'C?digo de Servi?o Inv?lido';
        08:
          Result := 'Literal de Servi?o Inv?lido';
        09:
          Result := 'C?digo do Banco Inv?lido';
        10:
          Result := 'Nome do Banco Inv?lido';
        11:
          Result := 'Data de grava??o Inv?lida';
        12:
          Result := 'N?mero de Remessa j? Processada';
        13:
          Result := 'Tipo de registro esperado Inv?lido';
        14:
          Result := 'Tipo de Ocorr?ncia Inv?lido';
        15:
          Result := 'Literal Remessa Inv?lida para fase de Testes';
        16:
          Result := 'Identifica??o da empresa no Registro tipo 0 difere da identifica??o no Registro Tipo 1';
        17:
          Result := 'Identifica??o no banco inv?lida (Nosso N?mero)';
        18:
          Result := 'C?digo da Carteira inv?lido';
        19:
          Result := 'N?mero seq?encial do Registro Inv?lido';
        20:
          Result := 'Tipo de Inscri??o da empresa Inv?lido';
        21:
          Result := 'N?mero de Inscri??o da empresa Inv?lido';
        22:
          Result := 'Literal REM.TST v?lida somente para a fase de Testes';
        23:
          Result := 'Taxa de Comiss?o de Perman?ncia Inv?lida';
        24:
          Result := 'Nosso N?mero inv?lido para Cobran?a Registrada emiss?o Benefici?rio (14)';
        25:
          Result := 'D?gito do Nosso N?mero n?o confere';
        26:
          Result := 'Data de vencimento inv?lida';
        27:
          Result := 'Valor do t?tulo inv?lido';
        28:
          Result := 'Esp?cie de t?tulo Inv?lida';
        29:
          Result := 'C?digo de Aceite Inv?lido';
        30:
          Result := 'Data de emiss?o do t?tulo inv?lida';
        31:
          Result := 'Instru??o de Cobran?a 1 Inv?lida';
        32:
          Result := 'Instru??o de Cobran?a 2 Inv?lida';
        33:
          Result := 'Instru??o de Cobran?a 3 Inv?lida';
        34:
          Result := 'Valor de Juros Inv?lido';
        35:
          Result := 'Data do Desconto Inv?lida';
        36:
          Result := 'Valor do Desconto Inv?lido';
        37:
          Result := 'Valor do IOF Inv?lido';
        38:
          Result := 'Valor do Abatimento Inv?lido';
        39:
          Result := 'Tipo de Inscri??o do Pagador Inv?lido';
        40:
          Result := 'N?mero de Inscri??o do Pagador Inv?lido';
        41:
          Result := 'N?mero de Inscri??o do Pagador obrigat?rio';
        42:
          Result := 'Nome do Pagador obrigat?rio';
        43:
          Result := 'Endere?o do Pagador obrigat?rio';
        44:
          Result := 'CEP do Pagador Inv?lido';
        45:
          Result := 'Cidade do Pagador obrigat?rio';
        46:
          Result := 'Estado do Pagador obrigat?rio';
        47:
          Result := 'Data da multa inv?lida';
        48:
          Result := 'Valor da multa inv?lido';
        49:
          Result := 'Prazo de protesto/devolu??o inv?lido';
        50:
          Result := 'Prazo do protesto inv?lido';
        51:
          Result := 'Prazo de devolu??o inv?lido';
        52:
          Result := 'Moeda inv?lida';
        53:
          Result := '?USO DA EMPRESA? obrigat?rio';
        54:
          Result := 'Remessa sem registro tipo 9';
        55:
          Result := 'Solicitacao nao permitida para titulo incluido somente para protesto';
        56:
          Result := 'Identificacao inv?lida da empresa no BANCO';
        57:
          Result := 'Identificacao inv?lida da empresa no BANCO';
        58:
          Result := 'Identificacao inv?lida da empresa no BANCO';
        59:
          Result := 'Identificacao inv?lida da empresa no BANCO';
        60:
          Result := 'Identifica??o da emiss?o do bloqueto inv?lida';
        61:
          Result := 'Tipo de entrega inv?lido';
        62:
          Result := 'Modalidade do titulo inv?lida';
        63:
          Result := 'Forma de entrega de bloq.inv?lida para emis. banco';
        64:
          Result := 'Forma de entrega de bloq.inv?lida para emis.cedente';
        65:
          Result := 'Forma de emissao de bloqueto inv?lida';
        66:
          Result := 'E-mail inv?lido';
        67:
          Result := 'N?mero do DDD do celular do sacado inv?lido';
        68:
          Result := 'N?mero do celular do sacado inv?lido';
        69:
          Result := 'Tipo de mensagem de envio SMS inv?lido';
        70:
          Result := 'Envio de sms do cedente inv?lido';
        71:
          Result := 'Reenvio de SMS diferente de SMS ou SMS e postagem inv?lido';
      else
        Result := 'Outros Motivos';
      end;

    end;

  end;
end;

function TRetornoForm.PegarOCorrenciaRet(CodigoBanco, CodOcorrencia: integer;
  layout: string): string;
begin
  Result := '';

  if CodigoBanco = 341 then
  begin // Itau

    if (layout = 'cnab240') then
    begin
      case CodOcorrencia of
        94:
          Result := '94-Confirma Recebimento de Instru??o de n?o Negativar';
      end;
    end
    else
    begin
      case CodOcorrencia of
        07:
          Result := '07-Liquida??o Parcial ? Cobran?a Inteligente';
        59:
          Result := '59-Baixa Por Cr?dito em C/C Atrav?s do Sispag';
        64:
          Result := '64-Entrada Confirmada com Rateio de Cr?dito';
        65:
          Result := '65-Pagamento com Cheque ? Aguardando Compensa??o';
        69:
          Result := '69-Cheque Devolvido';
        71:
          Result := '71-Entrada Registrada Aguardando Avalia??o';
        72:
          Result := '72-Baixa Por Cr?dito em C/C Atrav?s do Sispag Sem T?tulo Correspondente';
        73:
          Result := '73-Confirma??o de Entrada na Cobran?a Simples ? Entrada n?o Aceita na Cobran?a Contratual';
        76:
          Result := '76-Cheque Compensado';
      end;
    end;

    if (Result <> '') then
      Exit;

    case CodOcorrencia of
      02:
        Result := '02-Entrada Confirmada';
      03:
        Result := '03-Entrada Rejeitada';
      04:
        Result := '04-Altera??o de Dados - Nova Entrada ou Altera??o/Exclus?o de Dados Acatada';
      05:
        Result := '05-Altera??o de Dados - Baixa';
      06:
        Result := '06-Liquida??o Normal';
      07:
        Result := '07-Liquida??o Parcial - Cobran?a Inteligente';
      08:
        Result := '08-Liquida??o em Cart?rio';
      09:
        Result := '09-Baixa Simples';
      10:
        Result := '10-Baixa por ter sido Liquidado';
      11:
        Result := '11-Em Ser';
      12:
        Result := '12-Abatimento Concedido';
      13:
        Result := '13-Abatimento Cancelado';
      14:
        Result := '14-Vencimento Alterado';
      15:
        Result := '15-Baixas Rejeitadas';
      16:
        Result := '16-Instru??es Rejeitadas';
      17:
        Result := '17-Altera??o/Exclus?o de Dados Rejeitados';
      18:
        Result := '18-Cobran?a Contratual - Instru??es/Altera??es Rejeitadas/Pendentes';
      19:
        Result := '19-Confirma Recebimento de Instru??o de Protesto';
      20:
        Result := '20-Confirma Recebimento de Instru??o de Susta??o de Protesto/Tarifa';
      21:
        Result := '21-Confirma Recebimento de Instru??o de n?o Protestar';
      23:
        Result := '23-T?tulo Enviado A Cart?rio/Tarifa';
      24:
        Result := '24-Instru??o de Protesto Rejeitada / Sustada / Pendente';
      25:
        Result := '25-Alega??es do Pagador';
      26:
        Result := '26-Tarifa de Aviso de Cobran?a';
      27:
        Result := '27-Tarifa de Extrato Posi??o';
      28:
        Result := '28-Tarifa de Rela??o das Liquida??es';
      29:
        Result := '29-Tarifa de Manuten??o de T?tulos Vencidos';
      30:
        Result := '30-D?bito Mensal de Tarifas';
      32:
        Result := '32-Baixa por ter sido Protestado';
      33:
        Result := '33-Custas de Protesto';
      34:
        Result := '34-Custas de Susta??o';
      35:
        Result := '35-Custas de Cart?rio Distribuidor';
      36:
        Result := '36-Custas de Edital';
      37:
        Result := '37-Tarifa de Emiss?o de Boleto/Tarifa de Envio de Duplicata';
      38:
        Result := '38-Tarifa de Instru??o';
      39:
        Result := '39-Tarifa de Ocorr?ncias';
      40:
        Result := '40-Tarifa Mensal de Emiss?o de Boleto/Tarifa Mensal de Envio De Duplicata';
      41:
        Result := '41-D?bito Mensal de Tarifas - Extrato de Posi??o';
      42:
        Result := '42-D?bito Mensal de Tarifas - Outras Instru??es';
      43:
        Result := '43-D?bito Mensal de Tarifas - Manuten??o de T?tulos Vencidos';
      44:
        Result := '44-D?bito Mensal de Tarifas - Outras Ocorr?ncias';
      45:
        Result := '45-D?bito Mensal de Tarifas - Protesto';
      46:
        Result := '46-D?bito Mensal de Tarifas - Susta??o de Protesto';
      47:
        Result := '47-Baixa com Transfer?ncia para Desconto';
      48:
        Result := '48-Custas de Susta??o Judicial';
      51:
        Result := '51-Tarifa Mensal Referente a Entradas Bancos Correspondentes na Carteira';
      52:
        Result := '52-Tarifa Mensal Baixas na Carteira';
      53:
        Result := '53-Tarifa Mensal Baixas em Bancos Correspondentes na Carteira';
      54:
        Result := '54-Tarifa Mensal de Liquida??es na Carteira';
      55:
        Result := '55-Tarifa Mensal de Liquida??es em Bancos Correspondentes na Carteira';
      56:
        Result := '56-Custas de Irregularidade';
      57:
        Result := '57-Instru??o Cancelada';
      60:
        Result := '60-Entrada Rejeitada Carn?';
      61:
        Result := '61-Tarifa Emiss?o Aviso de Movimenta??o de T?tulos';
      62:
        Result := '62-D?bito Mensal de Tarifa - Aviso de Movimenta??o de T?tulos';
      63:
        Result := '63-T?tulo Sustado Judicialmente';
      74:
        Result := '74-Instru??o de Negativa??o Expressa Rejeitada';
      75:
        Result := '75-Confirma??o de Recebimento de Instru??o de Entrada em Negativa??o Expressa';
      77:
        Result := '77-Confirma??o de Recebimento de Instru??o de Exclus?o de Entrada em Negativa??o Expressa';
      78:
        Result := '78-Confirma??o de Recebimento de Instru??o de Cancelamento de Negativa??o Expressa';
      79:
        Result := '79-Negativa??o Expressa Informacional';
      80:
        Result := '80-Confirma??o de Entrada em Negativa??o Expressa ? Tarifa';
      82:
        Result := '82-Confirma??o do Cancelamento de Negativa??o Expressa ? Tarifa';
      83:
        Result := '83-Confirma??o de Exclus?o de Entrada em Negativa??o Expressa Por Liquida??o ? Tarifa';
      85:
        Result := '85-Tarifa Por Boleto (At? 03 Envios) Cobran?a Ativa Eletr?nica';
      86:
        Result := '86-Tarifa Email Cobran?a Ativa Eletr?nica';
      87:
        Result := '87-Tarifa SMS Cobran?a Ativa Eletr?nica';
      88:
        Result := '88-Tarifa Mensal Por Boleto (At? 03 Envios) Cobran?a Ativa Eletr?nica';
      89:
        Result := '89-Tarifa Mensal Email Cobran?a Ativa Eletr?nica';
      90:
        Result := '90-Tarifa Mensal SMS Cobran?a Ativa Eletr?nica';
      91:
        Result := '91-Tarifa Mensal de Exclus?o de Entrada de Negativa??o Expressa';
      92:
        Result := '92-Tarifa Mensal de Cancelamento de Negativa??o Expressa';
      93:
        Result := '93-Tarifa Mensal de Exclus?o de Negativa??o Expressa Por Liquida??o';
    end;

  end
  else if CodigoBanco = 1 then
  begin // banco do Brasil

    if (layout = 'cnab240') then
    begin
      case CodOcorrencia of
        02:
          Result := '02 ? Entrada confirmada';
        03:
          Result := '03 ? Entrada Rejeitada';
        04:
          Result := '04 ? Transfer?ncia de Carteira/Entrada';
        05:
          Result := '05 ? Transfer?ncia de Carteira/Baixa';
        06:
          Result := '06 ? Liquida??o';
        09:
          Result := '09 ? Baixa';
        11:
          Result := '11 ? T?tulos em Carteira (em ser)';
        12:
          Result := '12 ? Confirma??o Recebimento Instru??o de Abatimento';
        13:
          Result := '13 ? Confirma??o Recebimento Instru??o de Cancelamento Abatimento';
        14:
          Result := '14 ? Confirma??o Recebimento Instru??o Altera??o de Vencimento';
        15:
          Result := '15 ? Franco de Pagamento';
        17:
          Result := '17 ? Liquida??o Ap?s Baixa ou Liquida??o T?tulo N?o Registrado';
        19:
          Result := '19 ? Confirma??o Recebimento Instru??o de Protesto';
        20:
          Result := '20 ? Confirma??o Recebimento Instru??o de Susta??o/Cancelamento de Protesto';
        23:
          Result := '23 ? Remessa a Cart?rio';
        24:
          Result := '24 ? Retirada de Cart?rio e Manuten??o em Carteira';
        25:
          Result := '25 ? Protestado e Baixado';
        26:
          Result := '26 ? Instru??o Rejeitada';
        27:
          Result := '27 ? Confirma??o do Pedido de Altera??o de Outros Dados';
        28:
          Result := '28 ? D?bito de Tarifas/Custas';
        29:
          Result := '29 ? Ocorr?ncias do Sacado';
        30:
          Result := '30 ? Altera??o de Dados Rejeitada';
        44:
          Result := '44 ? T?tulo pago com cheque devolvido';
        50:
          Result := '50 ? T?tulo pago com cheque pendente de compensa??o'
      end;
    end
    else
    begin
      case CodOcorrencia of
        02:
          Result := '02-Confirma??o de Entrada de T?tulo';
        03:
          Result := '03-Comando recusado';
        05:
          Result := '05-Liquidado sem registro';
        06:
          Result := '06-Liquida??o Normal';
        07:
          Result := '07-Liquida??o por Conta';
        08:
          Result := '08-Liquida??o por Saldo';
        09:
          Result := '09-Baixa de T?tulo';
        10:
          Result := '10-Baixa Solicitada';
        11:
          Result := '11-Titulos em Ser';
        12:
          Result := '12-Abatimento Concedido';
        13:
          Result := '13-Abatimento Cancelado';
        14:
          Result := '14-Altera??o de Vencimento do Titulo';
        15:
          Result := '15-Liquida??o em Cart?rio';
        16:
          Result := '16-Confirma??o de altera??o de juros de mora';
        19:
          Result := '19-Confirma??o de recebimento de instru??es para protesto';
        20:
          Result := '20-D?bito em Conta';
        21:
          Result := '21-Altera??o do Nome do Sacado';
        22:
          Result := '22-Altera??o do Endere?o do Sacado';
        23:
          Result := '23-Indica??o de encaminhamento a cart?rio';
        24:
          Result := '24-Sustar Protesto';
        25:
          Result := '25-Dispensar Juros';
        28:
          Result := '28-Manuten??o de titulo vencido';
        31:
          Result := '31-Conceder desconto';
        32:
          Result := '32-N?o conceder desconto';
        33:
          Result := '33-Retificar desconto';
        34:
          Result := '34-Alterar data para desconto';
        35:
          Result := '35-Cobrar multa';
        36:
          Result := '36-Dispensar multa';
        37:
          Result := '37-Dispensar indexador';
        38:
          Result := '38-Dispensar prazo limite para recebimento';
        39:
          Result := '39-Alterar prazo limite para recebimento';
        44:
          Result := '44-T?tulo pago com cheque devolvido';
        46:
          Result := '46-T?tulo pago com cheque, aguardando compensa??o';
        72:
          Result := '72-Altera??o de tipo de cobran?a';
        96:
          Result := '96-Despesas de Protesto';
        97:
          Result := '97-Despesas de Susta??o de Protesto';
        98:
          Result := '98-D?bito de Custas Antecipadas';
      end;
    end;
  end
  else if CodigoBanco = 104 then
  begin // Caixa

    if (layout = 'cnab240') then
    begin
      case CodOcorrencia of
        01:
          Result := '01-Solicita??o de Impress?o de T?tulos Confirmada';
        02:
          Result := '02-Entrada Confirmada';
        03:
          Result := '03-Entrada Rejeitada';
        04:
          Result := '04-Transfer?ncia de Carteira/Entrada';
        05:
          Result := '05-Transfer?ncia de Carteira/Baixa';
        06:
          Result := '06-Liquida??o';
        07:
          Result := '07-Confirma??o do Recebimento da Instru??o de Desconto';
        08:
          Result := '08-Confirma??o do Recebimento do Cancelamento do Desconto';
        09:
          Result := '09-Baixa';
        12:
          Result := '12-Confirma??o Recebimento Instru??o de Abatimento';
        13:
          Result := '13-Confirma??o Recebimento Instru??o de Cancelamento Abatimento';
        14:
          Result := '14-Confirma??o Recebimento Instru??o Altera??o de Vencimento';
        19:
          Result := '19-Confirma??o Recebimento Instru??o de Protesto';
        20:
          Result := '20-Confirma??o Recebimento Instru??o de Susta??o/Cancelamento de Protesto';
        23:
          Result := '23-Remessa a Cart?rio';
        24:
          Result := '24-Retirada de Cart?rio';
        25:
          Result := '25-Protestado e Baixado (Baixa por ter sido protestado)';
        26:
          Result := '26-Instru??o Rejeitada';
        27:
          Result := '27-Confirma??o do Pedido de Altera??o de Outros Dados';
        28:
          Result := '28-D?bito de Tarifas/Custas';
        30:
          Result := '30-Altera??o de Dados Rejeitada';
        35:
          Result := '35-Confirma??o de Inclus?o Banco de Sacado';
        36:
          Result := '36-Confirma??o de Altera??o Banco de Sacado';
        37:
          Result := '37-Confirma??o de Exclus?o Banco de Sacado';
        38:
          Result := '38-Emiss?o de Bloquetos de Banco de Sacado';
        39:
          Result := '39-Manuten??o de Sacado Rejeitada';
        40:
          Result := '40-Entrada de T?tulo via Banco de Sacado Rejeitada';
        41:
          Result := '41-Manuten??o de Banco de Sacado Rejeitada';
        44:
          Result := '44-Estorno de Baixa / Liquida??o';
        45:
          Result := '45-Altera??o de Dados';
        46:
          Result := '46-Liquida??o On-line';
        47:
          Result := '47-Estorno de Liquida??o On-line';
        51:
          Result := '51-T?tulo DDA Reconhecido pelo Sacado';
        52:
          Result := '52-T?tulo DDA N?o Reconhecido pelo Sacado';
        53:
          Result := '53-T?tulo DDA Recusado pela CIP';
        61:
          Result := '61-Confirma??o de Altera??o do Valor Nominal do T?tulo';
        62:
          Result := '62-Confirma??o de Altera??o do Valor/Percentual M?nimo/M?ximo';
      end;
    end
    else
    begin
      case CodOcorrencia of
        01:
          Result := '01-Entrada Confirmada';
        02:
          Result := '02-Baixa Manual Confirmada';
        03:
          Result := '03-Abatimento Concedido';
        04:
          Result := '04-Abatimento Cancelado';
        05:
          Result := '05-Vencimento Alterado';
        06:
          Result := '06-Uso da Empresa Alterado';
        07:
          Result := '07-Prazo de Protesto Alterado';
        08:
          Result := '08-Prazo de Devolu??o Alterado';
        09:
          Result := '09-Altera??o Confirmada';
        10:
          Result := '10-Altera??o com Reemiss?o de Bloqueto Confirmada';
        11:
          Result := '11-Altera??o da Op??o de Protesto para Devolu??o Confirmada';
        12:
          Result := '12-Altera??o da Op??o de Devolu??o para Protesto Confirmada';
        20:
          Result := '20-Em Ser';
        21:
          Result := '21-Liquida??o';
        22:
          Result := '22-Liquida??o em Cart?rio';
        23:
          Result := '23-Baixa por Devolu??o';
        25:
          Result := '25-Baixa por Protesto';
        26:
          Result := '26-T?tulo Enviado para Cart?rio';
        27:
          Result := '27-Susta??o de Protesto';
        28:
          Result := '28-Estorno de Protesto';
        29:
          Result := '29-Estorno de Susta??o de Protesto';
        30:
          Result := '30-Altera??o de T?tulo';
        31:
          Result := '31-Tarifa sobre T?tulo Vencido';
        32:
          Result := '32-Outras Tarifas de Altera??o';
        33:
          Result := '33-Estorno de Baixa / Liquida??o';
        34:
          Result := '34-Tarifas Diversas';
        99:
          Result := '99-Rejei??o do T?tulo';
      end;
    end;
  end
  else // caixa
    if CodigoBanco = 237 then
    begin // bradesco

      if (layout = 'cnab240') then
      begin
        case CodOcorrencia of
          04:
            Result := '04-Transfer?ncia de Carteira/Entrada';
          05:
            Result := '05-Transfer?ncia de Carteira/Baixa';
          07:
            Result := '07-Confirma??o do Recebimento da Instru??o de Desconto';
          08:
            Result := '08-Confirma??o do Recebimento do Cancelamento do Desconto';
          15:
            Result := '15-Franco de Pagamento';
          24:
            Result := '24-Retirada de Cart?rio e Manuten??o em Carteira';
          25:
            Result := '25-Protestado e Baixado';
          26:
            Result := '26-Instru??o Rejeitada';
          27:
            Result := '27-Confirma??o do Pedido de Altera??o de Outros Dados';
          33:
            Result := '33-Confirma??o da Altera??o dos Dados do Rateio de Cr?dito';
          34:
            Result := '34-Confirma??o do Cancelamento dos Dados do Rateio de Cr?dito';
          36:
            Result := '36-Confirma??o de Envio de E-mail/SMS';
          37:
            Result := '37-Envio de E-mail/SMS Rejeitado';
          38:
            Result := '38-Confirma??o de Altera??o do Prazo Limite de Recebimento';
          39:
            Result := '39-Confirma??o de Dispensa de Prazo Limite de Recebimento';
          40:
            Result := '40-Confirma??o da Altera??o do N?mero do T?tulo Dado pelo Beneficiario';
          41:
            Result := '41-Confirma??o da Altera??o do N?mero Controle do Participante';
          42:
            Result := '42-Confirma??o da Altera??o dos Dados do Pagador';
          43:
            Result := '43-Confirma??o da Altera??o dos Dados do Sacador/Avalista';
          44:
            Result := '44-T?tulo Pago com Cheque Devolvido';
          45:
            Result := '45-T?tulo Pago com Cheque Compensado';
          46:
            Result := '46-Instru??o para Cancelar Protesto Confirmada';
          47:
            Result := '47-Instru??o para Protesto para Fins Falimentares Confirmada';
          48:
            Result := '48-Confirma??o de Instru??o de Transfer?ncia de Carteira/Modalidade de Cobran?a';
          49:
            Result := '49-Altera??o de Contrato de Cobran?a';
          50:
            Result := '50-T?tulo Pago com Cheque Pendente de Liquida??o';
          51:
            Result := '51-T?tulo DDA Reconhecido pelo Pagador';
          52:
            Result := '52-T?tulo DDA n?o Reconhecido pelo Pagador';
          53:
            Result := '53-T?tulo DDA recusado pela CIP';
          54:
            Result := '54-Confirma??o da Instru??o de Baixa de T?tulo Negativado sem Protesto';
        end;
      end
      else
      begin
        case CodOcorrencia of
          10:
            Result := '10-Baixado Conforme Instru??es da Ag?ncia';
          15:
            Result := '15-Liquida??o em Cart?rio';
          16:
            Result := '16-Titulo Pago em Cheque - Vinculado';
          18:
            Result := '18-Acerto de Deposit?ria';
          21:
            Result := '21-Acerto do Controle do Participante';
          22:
            Result := '22-Titulo com Pagamento Cancelado';
          24:
            Result := '24-Entrada Rejeitada por CEP Irregular';
          25:
            Result := '25-Confirma??o Recebimento Instru??o de Protesto Falimentar';
          27:
            Result := '27-Baixa Rejeitada';
          32:
            Result := '32-Instru??o Rejeitada';
          33:
            Result := '33-Confirma??o Pedido Altera??o Outros Dados';
          34:
            Result := '34-Retirado de Cart?rio e Manuten??o Carteira';
          40:
            Result := '40-Estorno de Pagamento';
          55:
            Result := '55-Sustado Judicial';
          68:
            Result := '68-Acerto dos Dados do Rateio de Cr?dito';
          69:
            Result := '69-Cancelamento dos Dados do Rateio';
          74:
            Result := '74-Confirma??o Pedido de Exclus?o de Negatativa??o';
        end;
      end;

      if (Result <> '') then
        Exit;

      case CodOcorrencia of
        02:
          Result := '02-Entrada Confirmada';
        03:
          Result := '03-Entrada Rejeitada';
        06:
          Result := '06-Liquida??o Normal';
        09:
          Result := '09-Baixado Automaticamente via Arquivo';
        11:
          Result := '11-Em Ser - Arquivo de T?tulos Pendentes';
        12:
          Result := '12-Abatimento Concedido';
        13:
          Result := '13-Abatimento Cancelado';
        14:
          Result := '14-Vencimento Alterado';
        17:
          Result := '17-Liquida??o ap?s baixa ou T?tulo n?o registrado';
        19:
          Result := '19-Confirma??o Recebimento Instru??o de Protesto';
        20:
          Result := '20-Confirma??o Recebimento Instru??o Susta??o de Protesto';
        23:
          Result := '23-Entrada do T?tulo em Cart?rio';
        28:
          Result := '28-D?bito de tarifas/custas';
        29:
          Result := '29-Ocorr?ncias do Pagador';
        30:
          Result := '30-Altera??o de Outros Dados Rejeitados';
        35:
          Result := '35-Desagendamento do d?bito autom?tico';
        73:
          Result := '73-Confirma??o Recebimento Pedido de Negativa??o';
      end;
    end
    else if CodigoBanco = 748 then
    begin // SICRED

      if (layout = 'cnab240') then
      begin
        case CodOcorrencia of
          07:
            Result := '07-Confirma??o do Recebimento da Instru??o de desconto';
          08:
            Result := '08-Confirma??o do Recebimento do Cancelamento do desconto';
          24:
            Result := '24-Retirada de Cart?rio e Manuten??o em Carteira';
          25:
            Result := '25-Protestado e Baixado';
          26:
            Result := '26-Instru??o Rejeitada';
          27:
            Result := '27-Confirma??o do Pedido de Altera??o de Outros Dados';
          36:
            Result := '36-Baixa Rejeitada';
          51:
            Result := '51-T?tulo Dda Reconhecido Pelo Pagador';
          52:
            Result := '52-T?tulo Dda n?o Reconhecido Pelo Pagador';
        end;
      end
      else
      begin
        case CodOcorrencia of
          10:
            Result := '10-Baixado Conforme Instru??es da Cooperativa de Cr?dito';
          15:
            Result := '15-Liquida??o em Cart?rio';
          24:
            Result := '24-Entrada Rejeitada Por Cep Irregular';
          27:
            Result := '27-Baixa Rejeitada';
          29:
            Result := '29-Rejei??o do Pagador';
          32:
            Result := '32-Instru??o Rejeitada';
          33:
            Result := '33-Confirma??o de Pedido de Altera??o de Outros Dados';
          34:
            Result := '34-Retirado de Cart?rio e Manuten??o em Carteira';
          35:
            Result := '35-Aceite do Pagador';
        end;
      end;

      if (Result <> '') then
        Exit;

      case CodOcorrencia of
        02:
          Result := '02-Entrada Confirmada';
        03:
          Result := '03-Entrada Rejeitada';
        06:
          Result := '06-Liquida??o';
        09:
          Result := '09-Baixa';
        12:
          Result := '12-Confirma??o do Recebimento Instru??o de Abatimento';
        13:
          Result := '13-Confirma??o do Recebimento Instru??o de Cancelamento Abatimento';
        14:
          Result := '14-Confirma??o do Recebimento Instru??o Altera??o de Vencimento';
        17:
          Result := '17-Liquida??o ap?s Baixa ou Liquida??o T?tulo n?o Registrado';
        19:
          Result := '19-Confirma??o do Recebimento Instru??o de Protesto';
        20:
          Result := '20-Confirma??o do Recebimento Instru??o de Susta??o/Cancelamento de Protesto';
        23:
          Result := '23-Entrada de T?tulo em Cart?rio';
        28:
          Result := '28-D?bito de Tarifas Custas';
        30:
          Result := '30-Altera??o Rejeitada';
      end;

    end
    else if CodigoBanco = 33 then
    begin // SANTANDER

      if (layout = 'cnab240') then
      begin
        case CodOcorrencia of
          17:
            Result := '17-Liq. Ap?s Baixa/Liq.T?t. n?o Registrado';
          24:
            Result := '24-Retirada de Cart?rio/Manuten??o em Carteira';
          25:
            Result := '25-Protestado e Baixado';
          26:
            Result := '26-Instru??o Rejeitada';
          51:
            Result := '51-T?tulo DDA Reconhecido Pelo Sacado';
          52:
            Result := '52-T?tulo DDA N?o Reconhecido Pelo Sacado';
          53:
            Result := '53-T?tulo DDA Recusado Pela CIP';
        end;
      end
      else
      begin
        case CodOcorrencia of
          17:
            Result := '17-Liquidado em Cart?rio';
          24:
            Result := '24-Custas de Cart?rio';
          25:
            Result := '25-Protestar T?tulo';
          26:
            Result := '26-Sustar Protesto';
          35:
            Result := '35-T?tulo DDA Reconhecido Pelo Sacado';
          36:
            Result := '36-T?tulo DDA N?o Reconhecido Pelo Sacado';
          37:
            Result := '37-T?tulo DDA Recusado Pela CIP';
        end;
      end;

      if (Result <> '') then
        Exit;

      case CodOcorrencia of
        01:
          Result := '01-T?tulo N?o Existe';
        02:
          Result := '02-Entrada T?t.Confirmada';
        03:
          Result := '03-Entrada T?t.Rejeitada';
        04:
          Result := '04-Transf. de Carteira/Entrada';
        05:
          Result := '05-Transf. de Carteira/Baixa';
        06:
          Result := '06-Liquida??o';
        07:
          Result := '07-Liquida??o por Conta';
        08:
          Result := '08-Liquida??o por Saldo';
        09:
          Result := '09-Baixa Autom?tica';
        10:
          Result := '10-T?t.Baix.Conf.Instru??o';
        11:
          Result := '11-Em Ser';
        12:
          Result := '12-Abatimento Concedido';
        13:
          Result := '13-Abatimento Cancelado';
        14:
          Result := '14-Prorroga??o de Vencimento';
        15:
          Result := '15-Confirma??o de Protesto';
        16:
          Result := '16-T?t.J? Baixado/Liquidado';
        19:
          Result := '19-Recebimento da Instru??o Protesto';
        20:
          Result := '20-Recebimento da Instru??o N?o Protestar';
        21:
          Result := '21-T?t. Enviado a Cart?rio';
        22:
          Result := '22-T?t. Retirado de Cart?rio';
        23:
          Result := '23-Remessa a Cart?rio';
        27:
          Result := '27-Confirma??o alt.de outros dados';
        28:
          Result := '28-D?bito de tarifas e custas';
        29:
          Result := '29-Ocorr?ncia do sacado';
        30:
          Result := '30-Altera??o de dados rejeitada';
        32:
          Result := '32-C?digo IOF Inv?lido';
        38:
          Result := '38-Recebimento da Instru??o N?o Protestar'
      end;

    end
    else if CodigoBanco = 004 then
    begin // NORDESTE
      case CodOcorrencia of
        02:
          Result := '02-Entrada Confirmada';
        03:
          Result := '03-Entrada Rejeitada';
        06:
          Result := '06-Liquida??o normal';
        09:
          Result := '09-Baixado Automaticamente via Arquivo';
        10:
          Result := '10-Baixado conforme instru??es da Ag?ncia';
        11:
          Result := '11-Em Ser - Arquivo de T?tulos pendentes';
        12:
          Result := '12-Abatimento Concedido';
        13:
          Result := '13-Abatimento Cancelado';
        14:
          Result := '14-Vencimento Alterado';
        15:
          Result := '15-Liquida??o em Cart?rio';
        16:
          Result := '16-Titulo Pago em Cheque - Vinculado';
        17:
          Result := '17-Liquida??o ap?s baixa ou T?tulo n?o registrado';
        18:
          Result := '18-Acerto de Deposit?ria';
        19:
          Result := '19-Confirma??o Recebimento Instru??o de Protesto';
        20:
          Result := '20-Confirma??o Recebimento Instru??o Susta??o de Protesto';
        21:
          Result := '21-Acerto do Controle do Participante';
        22:
          Result := '22-Titulo com Pagamento Cancelado';
        23:
          Result := '23-Entrada do T?tulo em Cart?rio';
        24:
          Result := '24-Entrada rejeitada por CEP Irregular';
        27:
          Result := '27-Baixa Rejeitada';
        28:
          Result := '28-D?bito de tarifas/custas';
        29:
          Result := '29-Ocorr?ncias do Sacado';
        30:
          Result := '30-Altera??o de Outros Dados Rejeitados';
        32:
          Result := '32-Instru??o Rejeitada';
        33:
          Result := '33-Confirma??o Pedido Altera??o Outros Dados';
        34:
          Result := '34-Retirado de Cart?rio e Manuten??o Carteira';
        35:
          Result := '35-Desagendamento do d?bito autom?tico';
        40:
          Result := '40-Estorno de Pagamento';
        55:
          Result := '55-Sustado Judicial';
        68:
          Result := '68-Acerto dos dados do rateio de Cr?dito';
        69:
          Result := '69-Cancelamento dos dados do rateio';
      end;
    end
    else if CodigoBanco = 756 then
    begin // BANCOOB

      case CodOcorrencia of
        02:
          Result := '02-CONFIRMA??O ENTRADA T?TULO';
        03:
          Result := '03-COMANDO RECUSADO';
        04:
          Result := '04-TRANSFERENCIA DE CARTEIRA - ENTRADA';
        05:
          Result := '05-LIQUIDA??O SEM REGISTRO';
        06:
          Result := '06-LIQUIDA??O NORMAL';
        09:
          Result := '09-BAIXA DE T?TULO';
        10:
          Result := '10-BAIXA SOLICITADA';
        11:
          Result := '11-T?TULOS EM SER';
        12:
          Result := '12-ABATIMENTO CONCEDIDO';
        13:
          Result := '13-ABATIMENTO CANCELADO';
        14:
          Result := '14-ALTERA??O DE VENCIMENTO';
        15:
          Result := '15-LIQUIDA??O EM CART?RIO';
        19:
          Result := '19-CONFIRMA??O INSTRU??O PROTESTO';
        20:
          Result := '20-D?BITO EM CONTA';
        21:
          Result := '21-ALTERA??O DE NOME DO SACADO';
        22:
          Result := '22-ALTERA??O DE ENDERE?O SACADO';
        23:
          Result := '23-ENCAMINHADO A PROTESTO';
        24:
          Result := '24-SUSTAR PROTESTO';
        25:
          Result := '25-DISPENSAR JUROS';
        26:
          Result := '26-INSTRU??O REJEITADA';
        27:
          Result := '27-CONFIRMA??O ALTERA??O DADOS';
        28:
          Result := '28-MANUTEN??O T?TULO VENCIDO';
        30:
          Result := '30-ALTERA??O DADOS REJEITADA';
        96:
          Result := '96-DESPESAS DE PROTESTO';
        97:
          Result := '97-DESPESAS DE SUSTA??O DE PROTESTO';
        98:
          Result := '98-DESPESAS DE CUSTAS ANTECIPADAS';
      end;
    end
    else if CodigoBanco = 399 then
    begin // HSBC
      Case CodOcorrencia Of
        02:
          Result := '02-Entrada Confirmada';
        03:
          Result := '03-Entrada Rejeitada';
        06:
          Result := '06-Liquida??o normal';
        09:
          Result := '09-Baixado Automaticamente via Arquivo';
        10:
          Result := '10-Baixado conforme instru??es da Ag?ncia';
        11:
          Result := '11-Em Ser - Arquivo de T?tulos pendentes';
        12:
          Result := '12-Abatimento Concedido';
        13:
          Result := '13-Abatimento Cancelado';
        14:
          Result := '14-Vencimento Alterado';
        15:
          Result := '15-Liquida??o em Cart?rio';
        16:
          Result := '16-Titulo Pago em Cheque - Vinculado';
        17:
          Result := '17-Liquida??o ap?s baixa ou T?tulo n?o registrado';
        18:
          Result := '18-Acerto de Deposit?ria';
        19:
          Result := '19-Confirma??o Recebimento Instru??o de Protesto';
        20:
          Result := '20-Confirma??o Recebimento Instru??o Susta??o de Protesto';
        21:
          Result := '21-Acerto do Controle do Participante';
        22:
          Result := '22-Titulo com Pagamento Cancelado';
        23:
          Result := '23-Entrada do T?tulo em Cart?rio';
        24:
          Result := '24-Entrada rejeitada por CEP Irregular';
        27:
          Result := '27-Baixa Rejeitada';
        28:
          Result := '28-D?bito de tarifas/custas';
        29:
          Result := '29-Ocorr?ncias do Sacado';
        30:
          Result := '30-Altera??o de Outros Dados Rejeitados';
        31:
          Result := '31-Liquida??o normal em Cheque/Compensa??o/Banco Correspondente';
        32:
          Result := '32-Instru??o Rejeitada';
        33:
          Result := '33-Confirma??o Pedido Altera??o Outros Dados';
        34:
          Result := '34-Retirado de Cart?rio e Manuten??o Carteira';
        35:
          Result := '35-Desagendamento do d?bito autom?tico';
        38:
          Result := '38-Liquida??o de t?tulo n?o registrado - em dinheiro';
        40:
          Result := '40-Estorno de Pagamento';
        55:
          Result := '55-Sustado Judicial';
        68:
          Result := '68-Acerto dos dados do rateio de Cr?dito';
        69:
          Result := '69-Cancelamento dos dados do rateio';
      End;
    end
    else if CodigoBanco = 320 then
    begin // BIC BANCO  - Banco Industrial e Comercial S.A.
      case CodOcorrencia of
        02:
          Result := '02-Entrada Confirmada';
        03:
          Result := '03-Entrada Rejeitada';
        06:
          Result := '06-Liquida??o normal';
        09:
          Result := '09-Baixado Automaticamente via Arquivo';
        10:
          Result := '10-Baixado conforme instru??es da Ag?ncia';
        11:
          Result := '11-Em Ser - Arquivo de T?tulos pendentes';
        12:
          Result := '12-Abatimento Concedido';
        13:
          Result := '13-Abatimento Cancelado';
        14:
          Result := '14-Vencimento Alterado';
        15:
          Result := '15-Liquida??o em Cart?rio';
        16:
          Result := '16-Titulo Pago em Cheque - Vinculado';
        17:
          Result := '17-Liquida??o ap?s baixa ou T?tulo n?o registrado';
        18:
          Result := '18-Acerto de Deposit?ria';
        19:
          Result := '19-Confirma??o Recebimento Instru??o de Protesto';
        20:
          Result := '20-Confirma??o Recebimento Instru??o Susta??o de Protesto';
        21:
          Result := '21-Acerto do Controle do Participante';
        22:
          Result := '22-Titulo com Pagamento Cancelado';
        23:
          Result := '23-Entrada do T?tulo em Cart?rio';
        24:
          Result := '24-Entrada rejeitada por CEP Irregular';
        27:
          Result := '27-Baixa Rejeitada';
        28:
          Result := '28-D?bito de tarifas/custas';
        29:
          Result := '29-Ocorr?ncias do Sacado';
        30:
          Result := '30-Altera??o de Outros Dados Rejeitados';
        32:
          Result := '32-Instru??o Rejeitada';
        33:
          Result := '33-Confirma??o Pedido Altera??o Outros Dados';
        34:
          Result := '34-Retirado de Cart?rio e Manuten??o Carteira';
        35:
          Result := '35-Desagendamento do d?bito autom?tico';
        40:
          Result := '40-Estorno de Pagamento';
        55:
          Result := '55-Sustado Judicial';
        68:
          Result := '68-Acerto dos dados do rateio de Cr?dito';
        69:
          Result := '69-Cancelamento dos dados do rateio';
      end;
    end;
end;

procedure TRetornoForm.FormShow(Sender: TObject);
var
  Registro: TSEDRegistro;

begin
  RBProcessar.Checked := true;

  Registro := TSEDRegistro.Create;
  try
    Registro.RootKey := HKEY_CURRENT_USER;
    if Registro.AbrirChave('SOFTWARE\ConfCli') then
    begin
      retopcaix := (Registro.LerNumero('ret_op_lc', 0));
      anexarelviabanc := (Registro.LerNumero('anex_rel_viabanc', 0));
      Registro.FecharChave;
    end;

  finally
    Registro.Free;
  end;
  try
    if (retopcaix = 0) then
      rgOpcoes.ItemIndex := 0
    else if (retopcaix = 1) then
      rgOpcoes.ItemIndex := 1;

    if anexarelviabanc = 1 then
      cbAnexarRel.Checked := true
    else
      cbAnexarRel.Checked := false;
    try
      BancodeDados.Contas.Close;
      BancodeDados.Contas.SQL.Text :=
        'select * from tipo_contas where coalesce(oculto,0)=0 order by conta';
      BancodeDados.Contas.Open;
      BancodeDados.Contas.Last;

      if (ContaID > 0) then
        EditConta.KeyValue := ContaID;
    except
      On E: Exception do
        TraduzErro(E.Message);
    end;

    lbConta.Caption := '';
    LbNomeNumero.Caption := '';
    LbArquivo.Caption := '';
    LbNomeOperacao.Caption := '';
    EditBanco.Clear;
    // if not BancodeDados.Bancos.Active then BancodeDados.Bancos.Open;
    BancodeDados.Bancos.Close;
    BancodeDados.Bancos.SQL.Text :=
      'select * from bancos where codigo_banco>0 and coalesce(cont_encerrada,0)= 0 and codigo_cedente <> '
      + QuotedStr('') + ' order by banco_nome';
    BancodeDados.Bancos.Open;
    BancodeDados.Bancos.Last;

    BancodeDados.Bancos.First;
    while not BancodeDados.Bancos.Eof do
    begin
      if Trim(BancodeDados.BancosCODIGO_CEDENTE.Value) <> '' then
      begin
        try
          if StrToInt64(BancodeDados.BancosCODIGO_CEDENTE.Value) > 0 then
            EditBanco.Items.Add(BancodeDados.BancosBANCO_NOME.Value);
        except
        end;
      end;
      BancodeDados.Bancos.Next;
    end;

  except
    on E: Exception do
      TraduzErro(E.Message);
  end;

  Height := 500;
  Width := 336;
  if FileExists(DiretorioTemp + 'retprob.xml') then
    DeleteFile(DiretorioTemp + 'retprob.xml');
  // if (RetornoForm.EditBanco.Text) = '' then chLancCX.Enabled:=false else chLancCX.Enabled:=true;

end;

procedure Processar;
var
  qryB: TFDQuery;
  i, j, k, CodBanco, ContaID, TipoContaID, NTitulosLvCaixa, layout, CobReg,
    tipoConta, sitPreInsc, sitInsc, aNArquivo: integer;
  CodCedente, Convenio, Agencia, Conta, aNomeArq, aDiretorio, nomeCampo: String;
  CaminhoRetorno, nossoNumDup, idsTitulos, idsTitProtest, nomeCampoImpp: String;
  vlrecebido, vlProporcional, vlTotal, PercBol, vlMulta, vlJuros, vlIntegralTmp,
    vlAPagarTmp, vlTotalLvCaixa, vlBoletosCompara, vlBoletosCompara2,
    vlTxRecebido: Currency;
  PodeIr, Atrazado, PodeBaixar, BaixaBolPar: Boolean;
  vlInt, vlRec, vlARec: Currency;
  Retorno: TSedRetorno;
  opcaoPag: integer;
  CamposRegistro: TStringList;
  ireg: integer;
  QryCs: TFDQuery;

begin

  nossoNumDup := '';

  if not BancodeDados.Bancos.Locate('BANCO_NOME', RetornoForm.EditBanco.Text,
    [loCaseInsensitive]) then
    Mensagem('O banco n?o foi localizado.', mtInformation, [mbOk], mrOk, 0)
  else
  begin

    RetornoForm.Memo1.Clear;
    CodBanco := BancodeDados.BancosCODIGO_BANCO.Value;
    BancoID := BancodeDados.BancosBANCO_ID.Value;

    try
      CodCedente :=
        IntToStr(StrToInt64(BancodeDados.BancosCODIGO_CEDENTE.Value));
    except
      CodCedente := BancodeDados.BancosCODIGO_CEDENTE.Value;
    end;

    Agencia := BancodeDados.BancosAGENCIA.Value;
    tipoConta := BancodeDados.BancosTIPO_CONTA_CORRENTE.Value;
    Conta := BancodeDados.BancosCONTA_CORRENTE.Value;
    Convenio := IntToStr(BancodeDados.BancosCONVENIO.Value);
    layout := BancodeDados.BancosLAYOUT.Value;
    CobReg := BancodeDados.BancosCOB_REG.Value;
    CaminhoRetorno := BancodeDados.BancosCAMINHO_RETORNO.Value;
    BaixaBolPar := (BancodeDados.BancosBAIX_BOL_PARAM.Value > 0);
    AlterandoNomeRet := (BancodeDados.BancosNOME_ARQ_RET.Value);

    case BancodeDados.BancosLAYOUT.Value of
      1:
        LayoutRet := 'cnab400';
      2:
        LayoutRet := 'cbr641';
      3:
        LayoutRet := 'cnab240'
    else
      LayoutRet := '';
    end;

    // CEF
    // if (CodBanco=104) and (BancodeDados.BancosCARTEIRA.Value=24) or (BancodeDados.BancosCARTEIRA.Value=14) then
    VerifNossNum := 0;
    // BancodeDados.BancosINIC_NOSS_NUM.Value else VerifNossNum:=0; // carregara esta variavel IniciNosNum

    if Trim(CaminhoRetorno) <> EmptyStr then
    begin
      if DirectoryExists(CaminhoRetorno) then
      begin
        Screen.Cursor := crSQLWait;
        try
          if not Assigned(ListarRetornoForm) then
            ListarRetornoForm := TListarRetornoForm.Create(Application);
          ListarRetornoForm.PegaArquivos(CaminhoRetorno,
            '*.ret;*.dat;*.txt;*.crt;*.lid;*.sai', CodCedente, Convenio,
            Agencia, Conta, CodBanco, layout, false);
          case ListarRetornoForm.ShowModal of
            mrOk:
              begin
                if ListarRetornoForm.Temp2.RecordCount > 0 then
                begin
                  ListarRetornoForm.Temp2.First;
                  while not ListarRetornoForm.Temp2.Eof do
                  begin
                    if (ListarRetornoForm.Temp2ATIVO.Value = true) then
                    begin
                      RetornoForm.Memo1.Lines.Add
                        (ListarRetornoForm.Temp2ARQUIVO_COMPLETO.AsString);
                    end;
                    ListarRetornoForm.Temp2.Next;
                  end;
                end;
              end;
            mrYes:
              begin
                if RetornoForm.OpenDialog1.Execute then
                begin
                  RetornoForm.Memo1.Text := RetornoForm.OpenDialog1.Files.Text;
                end;
              end;
          end;
        finally
          ListarRetornoForm.Release;
          ListarRetornoForm := nil;
        end;
        Screen.Cursor := crDefault;
      end
      else
      begin
        if RetornoForm.OpenDialog1.Execute then
        begin
          RetornoForm.Memo1.Text := RetornoForm.OpenDialog1.Files.Text;
        end;
      end;
    end
    else
    begin
      if RetornoForm.OpenDialog1.Execute then
      begin
        RetornoForm.Memo1.Text := RetornoForm.OpenDialog1.Files.Text;
      end;
    end;

    // if RetornoForm.OpenDialog1.Execute then begin
    if RetornoForm.Memo1.Lines.Count > 0 then
    begin
      if not BancodeDados.FDConnection1.InTransaction then
        BancodeDados.FDConnection1.StartTransaction;

      // DiasTol:=BancodeDados.BancosDIAS_TOLERANCIA.Value;
      if (RetornoForm.chLancCX.Checked) then
        BaixandoAutom := true;
      // RetornoForm.Memo1.Text:=RetornoForm.OpenDialog1.Files.Text;
      for i := 0 to RetornoForm.Memo1.Lines.Count - 1 do
      begin
        vlTotalLvCaixa := 0;
        NTitulosLvCaixa := 0;

        RetornoForm.LbNomeNumero.Caption := 'Arquivo ' + IntToStr(i + 1) + '/' +
          IntToStr(RetornoForm.Memo1.Lines.Count);
        idsTitulos := '';
        idsTitProtest := '';

        RetornoForm.LbArquivo.Caption := RetornoForm.Memo1.Lines[i];
        Retorno := TSedRetorno.Create;
        try
          // Atribui valores na classe
          Retorno.CodBanco := CodBanco;
          Retorno.BancoID := BancoID;
          Retorno.CodCed := CodCedente;
          Retorno.Agencia := Agencia;
          Retorno.tipoConta := tipoConta;
          Retorno.Conta := Conta;
          Retorno.Convenio := Convenio;
          Retorno.layout := layout;
          Retorno.CobReg := (CobReg = 1);
          Retorno.Arquivo := RetornoForm.Memo1.Lines[i];
          Retorno.Tabela := BancodeDados.Retorno;
          Retorno.Gauge := RetornoForm.Gauge1;
          Retorno.BaixaBolParam := BaixaBolPar;

          // ('CodBanco: '+IntToStr(CodBanco)+ ' | BancoID: '+IntToStr(BancoID)+ ' | CodCedente: '+(CodCedente)+ ' | Agencia: '+(Agencia)+ ' | tipoConta: '+IntToStr(tipoConta)
          // + ' | Conta: '+(Conta)+ ' | Convenio: '+(Convenio)+ ' | Layout: '+IntToStr(Layout) + ' | CobReg: '+IntToStr(CobReg)+' | N? do Arq.: '+IntToStr(Retorno.NArquivo) );
          // ler arquivo
          RetornoForm.LbNomeOperacao.Caption := 'Lendo Arquivo...';
          if Retorno.LerArquivo then
          begin
            aNArquivo := Retorno.NArquivo;
            aNomeArq := Retorno.Arquivo;
            Dt_Arquivo := Retorno.DataArquivo;

            // ('3' + DateToStr(Retorno.DataArquivo));

            while Pos('\', aNomeArq) > 0 do
              Delete(aNomeArq, 1, Pos('\', aNomeArq));
            aDiretorio := Copy(Retorno.Arquivo, 1, Length(Retorno.Arquivo) -
              Length(aNomeArq));

            RetornoForm.LbNomeOperacao.Caption := 'Preparando Dados...';
            BancodeDados.Adiciona.SQL.Text :=
              'delete from livro_caixa where numero_arquivo = ' +
              IntToStr(Retorno.NArquivo) + ' and coalesce(boleto_id,0)=0';
            BancodeDados.Adiciona.ExecSQL;

            BancodeDados.FDConnection1.Commit;
            if not BancodeDados.FDConnection1.InTransaction then
              BancodeDados.FDConnection1.StartTransaction;
            BancodeDados.Retorno.Close;
            BancodeDados.Retorno.SQL.Text :=
              'select * from retorno where banco_id = ' + IntToStr(BancoID) +
              ' and numero_arquivo = ' + IntToStr(Retorno.NArquivo) +
              ' and (tipo = ' + IntToStr(Retorno.TipoRet) + ')';
            // eraldo  18/08/15

            // TipoRet=1 arquivo de CNAB400; //2 : arquivo de debito automatico //3 : arquivo de CNAB240
            if Retorno.TipoRet = 2 then
              // and coalesce(cod_deb, 0) = 0';   //eraldo  18/08/15
              BancodeDados.Retorno.SQL.Add(' and cod_deb in (0, 31)');

            if VerifNossNum > 0 then
              // eraldo inclui esta linda para filtrar os registros de retorno da mesma conta com unidades diferentes 08/01/16
              BancodeDados.Retorno.SQL.Add(' and (UPPER(nosso_numero) ' +
                PrincipalForm.csContainingLIKE(IntToStr(VerifNossNum),
                0) + ')');

            BancodeDados.Retorno.Open;
            RetornoForm.Gauge1.Progress := 0;
            BancodeDados.Retorno.Last;

            RetornoForm.Gauge1.MaxValue := BancodeDados.Retorno.RecNo;

            if not Assigned(VisualizaRetornoForm) then
              VisualizaRetornoForm := TVisualizaRetornoForm.Create(Application);
            try
              VisualizaRetornoForm.Caption := 'Lista de Retorno -  Arquivo N.? '
                + IntToStr(Retorno.NArquivo);

              if (Retorno.RegistroComProblema.Count > 0) then
              begin

                VisualizaRetornoForm.TabSheet2.TabVisible := true;
                VisualizaRetornoForm.TabSheet2.Show;
                // VisualizaRetornoForm.BTBaixar.Enabled:=false;

                if FileExists(DiretorioTemp + 'RetornoTmp.xml') then
                  DeleteFile(DiretorioTemp + 'RetornoTmp.xml');
                with RetornoForm.RetornoTmp do
                begin
                  if Active then
                    Close;
                  FileName := DiretorioTemp + 'RetornoTmp.xml';
                  CreateDataSet;
                  Open;

{$REGION 'Atualiza??o - Alex Eloy - 29/08/2016}
                  BancodeDados.qryBanco.Close;
                  BancodeDados.qryBanco.Params[0].Value :=
                    BancodeDados.RetornoBANCO_ID.Value;
                  BancodeDados.qryBanco.Open;

                  try
                    for ireg := 0 to Retorno.RegistroComProblema.Count - 1 do
                    begin
                      Append;
                      CamposRegistro := TStringList.Create;
                      CamposRegistro.Delimiter := ';';
                      CamposRegistro.DelimitedText :=
                        Retorno.RegistroComProblema.Strings[ireg];
                      RetornoForm.RetornoTmpNUMERO_ARQUIVO.Value :=
                        StrToInt(CamposRegistro.Strings[0]);
                      if CamposRegistro.Strings[1] <> '30/12/1899' then
                        RetornoForm.RetornoTmpDATA_ARQUIVO.Value :=
                          StrToDate(CamposRegistro.Strings[1]);
                      RetornoForm.RetornoTmpNOSSO_NUMERO.Value :=
                        CamposRegistro.Strings[2];

                      if CamposRegistro.Strings[3] <> '30/12/1899' then
                        RetornoForm.RetornoTmpDATA_CREDITO.Value := date;
                      // StrToDate(CamposRegistro.Strings[3]);

                      if CamposRegistro.Strings[4] <> EmptyStr then
                      begin
                        CamposRegistro.Strings[4] :=
                          ReplaceStr(ReplaceStr(CamposRegistro.Strings[4], ',',
                          ''), '.', '');
                        CamposRegistro.Strings[4] :=
                          formatfloat('#0.00',
                          StrToInt(CamposRegistro.Strings[4]) / 100);
                        RetornoForm.RetornoTmpVALOR_PAGO.Value :=
                          strtofloat(CamposRegistro.Strings[4]);
                      end;

                      if CamposRegistro.Strings[5] <> '30/12/1899' then
                        RetornoForm.RetornoTmpDATA_RECEBIMENTO.Value :=
                          StrToDate(CamposRegistro.Strings[5]);

                      if StrToInt(CamposRegistro.Strings[6]) > 0 then
                        RetornoForm.RetornoTmpCODIGO_BANCO.Value :=
                          StrToInt(CamposRegistro.Strings[6]);
                      if StrToInt(CamposRegistro.Strings[7]) > 0 then
                        RetornoForm.RetornoTmpTIPO.Value :=
                          StrToInt(CamposRegistro.Strings[7]);
                      RetornoForm.RetornoTmpCODIGO_AGENCIA.Value :=
                        CamposRegistro.Strings[8];
                      RetornoForm.RetornoTmpNUMERO_CONTA.Value :=
                        CamposRegistro.Strings[9];

                      if StrToInt(CamposRegistro.Strings[10]) > 0 then
                        RetornoForm.RetornoTmpBANCO_ID.Value :=
                          StrToInt(CamposRegistro.Strings[10]);

                      if Trim(CamposRegistro.Strings[11]) <> '' then
                        RetornoForm.RetornoTmpSEU_NUMERO.Value :=
                          (CamposRegistro.Strings[11]);

                      if StrToInt(CamposRegistro.Strings[12]) > 0 then
                        RetornoForm.RetornoTmpCOD_OCORRENCIA.Value :=
                          StrToInt(CamposRegistro.Strings[12]);

                      if CamposRegistro.Strings[13] <> EmptyStr then
                      begin
                        CamposRegistro.Strings[13] :=
                          ReplaceStr(ReplaceStr(CamposRegistro.Strings[13], ',',
                          ''), '.', '');
                        CamposRegistro.Strings[13] :=
                          formatfloat('#0.00',
                          StrToInt(CamposRegistro.Strings[13]) / 100);
                        RetornoForm.RetornoTmpVALOR_DOCUMENTO.Value :=
                          strtofloat(CamposRegistro.Strings[13]);
                      end;

                      if CamposRegistro.Strings[14] <> '30/12/1899' then
                        RetornoForm.RetornoTmpDATA_VENCIMENTO.Value :=
                          StrToDate(CamposRegistro.Strings[14]);

                      if StrToInt(CamposRegistro.Strings[15]) > 0 then
                        RetornoForm.RetornoTmpCODIGO_REJEICAO.Value :=
                          StrToInt(CamposRegistro.Strings[15]);

                      if CamposRegistro.Strings[16] <> EmptyStr then
                      begin
                        CamposRegistro.Strings[16] :=
                          ReplaceStr(ReplaceStr(CamposRegistro.Strings[16], ',',
                          ''), '.', '');
                        CamposRegistro.Strings[16] :=
                          formatfloat('#0.00',
                          StrToInt(CamposRegistro.Strings[16]) / 100);
                        RetornoForm.RetornoTmpVALOR_DESCONTO.Value :=
                          strtofloat(CamposRegistro.Strings[16]);
                      end;

                      RetornoForm.qryV_Boletos.Close;
                      RetornoForm.qryV_Boletos.SQL.Text :=
                        'select cli_id, cli_nome, cli_cnpj_cpf, emissao_id, parcela, nosso_numero from v_boletos where cod_banco = '
                        + IntToStr(RetornoForm.RetornoTmpCODIGO_BANCO.Value);

                      if (BancodeDados.qryBancoBAIX_BOL_PARAM.Value > 0) then
                      begin // OK
                        if (RetornoForm.RetornoTmpTIPO.Value <> 2) then
                        begin // 2
                          RetornoForm.qryV_Boletos.SQL.Add
                            (' AND NOSSO_NUMERO = ' +
                            QuotedStr(RetornoForm.
                            RetornoTmpNOSSO_NUMERO.Value));

                          if Trim(RetornoForm.RetornoTmpSEU_NUMERO.Value) <> ''
                          then
                            RetornoForm.qryV_Boletos.SQL.Add
                              (' AND EMISSAO_ID = ' +
                              QuotedStr(RetornoForm.RetornoTmpSEU_NUMERO.Value))
                          else
                          begin
                            FormatSettings.DecimalSeparator := '.';
                            if RetornoForm.RetornoTmpDATA_VENCIMENTO.Value > 0
                            then
                              RetornoForm.qryV_Boletos.SQL.Add
                                (' AND VENCIMENTO =' +
                                QuotedStr(FormatDateTime('yyyy/mm/dd',
                                RetornoForm.RetornoTmpDATA_VENCIMENTO.Value)));

                            if RetornoForm.RetornoTmpVALOR_DOCUMENTO.Value > 0
                            then
                              RetornoForm.qryV_Boletos.SQL.Add
                                (' AND VALOR_DOC =' +
                                CurrToStr(RetornoForm.
                                RetornoTmpVALOR_DOCUMENTO.Value));

                            if RetornoForm.RetornoTmpVALOR_DESCONTO.Value > 0
                            then
                              RetornoForm.qryV_Boletos.SQL.Add
                                (' AND DESCONTO =' +
                                CurrToStr(RetornoForm.
                                RetornoTmpVALOR_DESCONTO.Value));

                            FormatSettings.DecimalSeparator := ',';
                          end;
                        end
                        else // 2
                          RetornoForm.qryV_Boletos.SQL.Add
                            (' AND EMISSAO_ID = ' +
                            QuotedStr(RetornoForm.RetornoTmpSEU_NUMERO.Value));

                      end
                      else
                      begin // 1

                        RetornoForm.qryV_Boletos.SQL.Add
                          (' AND BANCO_ID = ' +
                          IntToStr(RetornoForm.RetornoTmpBANCO_ID.Value));
                        if (RetornoForm.RetornoTmpTIPO.Value = 2) then
                        begin
                          RetornoForm.qryV_Boletos.SQL.Add
                            (' AND emissao_id = ' +
                            QuotedStr(RetornoForm.RetornoTmpSEU_NUMERO.Value))
                        end
                        else
                        begin
                          RetornoForm.qryV_Boletos.SQL.Add
                            (' AND nosso_numero = ' +
                            QuotedStr(RetornoForm.
                            RetornoTmpNOSSO_NUMERO.Value));
                          // if trim(RetornoForm.RetornoTmpSEU_NUMERO.Value)<>'' then
                          // RetornoForm.qryV_Boletos.SQL.Add(' AND EMISSAO_ID = ' + QuotedStr(RetornoForm.RetornoTmpSEU_NUMERO.Value));
                        end;

                      end;

                      // (RetornoForm.qryV_Boletos.SQL.Text);
                      RetornoForm.qryV_Boletos.Open;

                      if not RetornoForm.qryV_Boletos.IsEmpty then
                      begin

                        if Trim(RetornoForm.qryV_BoletosCLI_NOME.Value) <> ''
                        then
                        begin
                          RetornoForm.RetornoTmpOBS_1.Value := 'CLIENTE: ' +
                            RetornoForm.qryV_BoletosCLI_NOME.Value + ' C?DIGO: '
                            + formatfloat('000000',
                            RetornoForm.qryV_BoletosCLI_ID.Value);
                          RetornoForm.RetornoTmpNOME_SACADO.Value :=
                            RetornoForm.qryV_BoletosCLI_NOME.Value;

                        end;
                        if Trim(RetornoForm.qryV_BoletosPARCELA.Value) <> ''
                        then
                          RetornoForm.RetornoTmpOBS_2.Value := ' | PARCELA: ' +
                            RetornoForm.qryV_BoletosPARCELA.Value + ' EMISS?O: '
                            + formatfloat('000000',
                            RetornoForm.qryV_BoletosEMISSAO_ID.Value);

                        if Trim(RetornoForm.qryV_BoletosCLI_CNPJ_CPF.Value) <> ''
                        then
                          RetornoForm.RetornoTmpNOME_SACADO.Value :=
                            ' | C.P.F: ' +
                            RetornoForm.qryV_BoletosCLI_CNPJ_CPF.Value;

                        RetornoForm.RetornoTmpEMISSAO_ID.Value :=
                          RetornoForm.qryV_BoletosEMISSAO_ID.Value;
                      end
                      else
                        RetornoForm.RetornoTmpOBS_1.Value :=
                          'Emiss?o n?o encontrada';

                      if (RetornoForm.RetornoTmpCODIGO_REJEICAO.AsInteger > 0)
                        and not(RetornoForm.RetornoTmpCOD_OCORRENCIA.
                        AsInteger = 1) then
                        RetornoForm.RetornoTmpREJEICAO_NOME.Value :=
                          RetornoForm.PegarOCorrenciaRejeicao
                          (RetornoForm.RetornoTmpCODIGO_BANCO.AsInteger,
                          RetornoForm.RetornoTmpCOD_OCORRENCIA.AsInteger,
                          RetornoForm.RetornoTmpCODIGO_REJEICAO.AsInteger,
                          LayoutRet);

                      if Trim(RetornoForm.RetornoTmpREJEICAO_NOME.AsString) <> ''
                      then
                        RetornoForm.RetornoTmpOCORRENCIA_NOME.Value :=
                          RetornoForm.PegarOCorrenciaRet
                          (RetornoForm.RetornoTmpCODIGO_BANCO.AsInteger,
                          RetornoForm.RetornoTmpCOD_OCORRENCIA.AsInteger,
                          LayoutRet) + ': ' +
                          Copy(Trim(RetornoForm.RetornoTmp.Fieldbyname
                          ('REJEICAO_NOME').AsString), 0, 100)
                      else
                        RetornoForm.RetornoTmpOCORRENCIA_NOME.Value :=
                          RetornoForm.PegarOCorrenciaRet
                          (RetornoForm.RetornoTmpCODIGO_BANCO.AsInteger,
                          RetornoForm.RetornoTmpCOD_OCORRENCIA.AsInteger,
                          LayoutRet);

                      Post;

                    end; // for

                    nomeCampoImpp := '';
                    if not RetornoForm.RetornoTmp.IsEmpty then
                    begin
                      Screen.Cursor := crSQLWait;
                      RetornoForm.RetornoTmp.First;
                      while not RetornoForm.RetornoTmp.Eof do
                      begin
                        Application.ProcessMessages;
                        BancodeDados.Retorno_Ocor.Close;
                        BancodeDados.Retorno_Ocor.SQL.Text :=
                          'select * from retorno_ocorrencia where banco_id = ' +
                          IntToStr(RetornoForm.RetornoTmpBANCO_ID.Value) +
                          ' and numero_arquivo = ' +
                          IntToStr(RetornoForm.RetornoTmpNUMERO_ARQUIVO.Value) +
                          ' AND NOSSO_NUMERO = ' +
                          QuotedStr(RetornoForm.RetornoTmpNOSSO_NUMERO.Value) +
                          ' and (tipo = ' +
                          IntToStr(RetornoForm.RetornoTmpTIPO.Value) + ')';
                        // (BancodeDados.Retorno_Ocor.SQL.Text);
                        BancodeDados.Retorno_Ocor.Open;

                        if BancodeDados.Retorno_Ocor.IsEmpty then
                          BancodeDados.Retorno_Ocor.Append
                        else
                          BancodeDados.Retorno_Ocor.Edit;

                        BancodeDados.Retorno_Ocor.Fieldbyname('VALOR_DOCUMENTO')
                          .AsInteger := RetornoForm.RetornoTmp.Fieldbyname
                          ('VALOR_DOCUMENTO').AsInteger;

                        for k := 0 to BancodeDados.Retorno_Ocor.
                          FieldCount - 1 do
                        begin
                          nomeCampoImpp := BancodeDados.Retorno_Ocor.Fields[k]
                            .FieldName;
                          try
                            if not(nomeCampoImpp = 'ATIVO') and
                              not(nomeCampoImpp = 'RET_OC_ID') and
                              not(nomeCampoImpp = 'DT_ALTERADO') and
                              not(nomeCampoImpp = 'USUARIO_ID') and
                              not(nomeCampoImpp = 'USR_CAD') and
                              not(nomeCampoImpp = 'VALOR_DOCUMENTO') then
                              BancodeDados.Retorno_Ocor.Fieldbyname
                                (nomeCampoImpp).Value :=
                                RetornoForm.RetornoTmp.Fieldbyname
                                (nomeCampoImpp).Value;
                          except
                          end;
                        end; // deixar antes do post;
                        BancodeDados.Retorno_Ocor.Post;

                        if (RetornoForm.RetornoTmpCODIGO_BANCO.Value = 104) then
                        begin // verificando o cnab400
                          BancodeDados.QrySql.Close;
                          BancodeDados.QrySql.SQL.Text :=
                            'select layout as cnab from bancos where banco_id = '
                            + IntToStr(RetornoForm.RetornoTmpBANCO_ID.Value);
                          BancodeDados.QrySql.Open;
                        end;

                        /// cnab400
                        if (RetornoForm.RetornoTmpCODIGO_BANCO.Value = 104) and
                          (RetornoForm.RetornoTmpEMISSAO_ID.Value > 0) and
                          (BancodeDados.QrySql.Fieldbyname('CNAB')
                          .AsInteger = 1) and
                          (RetornoForm.RetornoTmpCOD_OCORRENCIA.Value = 1) then
                        begin
                          try
                            BancodeDados.Adiciona.SQL.Text :=
                              'update boletos_emissao set cod_mov = 2 where emissao_id = '
                              + IntToStr
                              (RetornoForm.RetornoTmpEMISSAO_ID.Value);
                            BancodeDados.Adiciona.ExecSQL;
                          except
                          end;
                        end
                        else if (RetornoForm.RetornoTmpEMISSAO_ID.Value > 0) and
                          (RetornoForm.RetornoTmpCOD_OCORRENCIA.Value = 2) then
                        begin
                          try
                            BancodeDados.Adiciona.SQL.Text :=
                              'update boletos_emissao set cod_mov =' +
                              IntToStr(RetornoForm.RetornoTmpCOD_OCORRENCIA.
                              Value) + ' WHERE EMISSAO_ID = ' +
                              IntToStr(RetornoForm.RetornoTmpEMISSAO_ID.Value);
                            BancodeDados.Adiciona.ExecSQL;
                          except
                          end;
                        end;

                        RetornoForm.RetornoTmp.Next;
                      end;
                      Screen.Cursor := crDefault;
                    end;

                    if Retorno.RegistroComProblema.Count > 0 then
                    begin

                      QryCs := TFDQuery.Create(nil);
                      try
                        LayoutRet := '';
                        QryCs.Connection := BancodeDados.FDConnection1;

                        QryCs.Close;
                        QryCs.SQL.Text :=
                          'select layout from bancos where banco_id = ' +
                          IntToStr(RetornoForm.RetornoTmpBANCO_ID.AsInteger);
                        QryCs.Open;
                        if QryCs.Fieldbyname('LAYOUT').Value > 0 then
                        begin

                          case QryCs.Fieldbyname('LAYOUT').Value of
                            1:
                              LayoutRet := 'cnab400';
                            2:
                              LayoutRet := 'cbr641';
                            3:
                              LayoutRet := 'cnab240'
                          else
                            LayoutRet := '';
                          end;

                        end;

                      finally
                        QryCs.Close;
                        QryCs.Free;
                      end;
                    end; // Count

                  except
                    on E: Exception do
                    begin
                      MessageDlg('Ocorreu um erro: ' + #13 + E.Message,
                        mtWarning, [mbOk], 0);
                      Cancel;
                      Break;
                    end;

                  end;

{$ENDREGION}
                end; // with  }

              end
              else
              begin // RegistroComProblema
                VisualizaRetornoForm.TabSheet2.TabVisible := false;
                VisualizaRetornoForm.TabSheet1.Show;
                // VisualizaRetornoForm.BTBaixar.Enabled:=true;
              end;

              PodeIr := false;
              if RetornoForm.chConfirma.Checked then
              begin
                if VisualizaRetornoForm.ShowModal = mrOk then
                  PodeIr := true;
              end
              else
                PodeIr := true;

              if (PodeIr = true) then
              begin
                Screen.Cursor := crSQLWait;

                RetornoForm.LbNomeOperacao.Caption :=
                  'Processando Informa??es...';

                BancodeDados.Retorno.First;
                while not BancodeDados.Retorno.Eof do
                begin
                  RetornoForm.Gauge1.Progress := BancodeDados.Retorno.RecNo;
                  Application.ProcessMessages;

                  // PodeCont:=(BancodeDados.RetornoDATA_CREDITO.Value>0);

                  if (BancodeDados.RetornoDATA_CREDITO.Value > 0) then
                  begin

                    BancodeDados.Emissoes.Close;

                    if not BaixaBolPar then
                    begin
                      BancodeDados.Emissoes.SQL.Text :=
                        'select * from boletos_emissao where banco_id = ' +
                        IntToStr(BancodeDados.RetornoBANCO_ID.Value);
                      // Retorno.TipoRet=1 arquivo de CNAB400; //2 : arquivo de debito automatico //3 : arquivo de CNAB240
                      if (Retorno.TipoRet = 2) then // D?bito em conta
                        BancodeDados.Emissoes.SQL.Add(' and emissao_id = ' +
                          Trim(BancodeDados.RetornoSEU_NUMERO.Value))
                      else // nulo ou 1 - D?bito Nornal
                        BancodeDados.Emissoes.SQL.Add(' and nosso_numero = ' +
                          QuotedStr(BancodeDados.RetornoNOSSO_NUMERO.Value));
                    end
                    else
                    begin
                      BancodeDados.V_Boletos.SQL.Text :=
                        'select * from v_boletos where cod_banco = ' +
                        IntToStr(BancodeDados.RetornoCODIGO_BANCO.Value) +
                        ' AND nosso_numero = ' +
                        QuotedStr(BancodeDados.RetornoNOSSO_NUMERO.Value);

                      if Trim(BancodeDados.RetornoSEU_NUMERO.Value) <> '' then
                        BancodeDados.V_Boletos.SQL.Add
                          (' AND EMISSAO_ID = ' +
                          QuotedStr(BancodeDados.RetornoSEU_NUMERO.Value))
                      else
                      begin
                        if BancodeDados.RetornoDATA_VENCIMENTO.Value > 0 then
                          BancodeDados.V_Boletos.SQL.Add
                            (' AND VENCIMENTO =' +
                            QuotedStr(FormatDateTime('yyyy/mm/dd',
                            BancodeDados.RetornoDATA_VENCIMENTO.Value)));

                        if BancodeDados.RetornoVALOR_PAGO.Value > 0 then
                          BancodeDados.V_Boletos.SQL.Add
                            (' AND VALOR_DOC =' +
                            CurrToStr(BancodeDados.
                            RetornoVALOR_DOCUMENTO.Value));

                        if BancodeDados.RetornoVALOR_DESCONTO.Value > 0 then
                          BancodeDados.V_Boletos.SQL.Add
                            (' AND DESCONTO =' +
                            CurrToStr(BancodeDados.
                            RetornoVALOR_DESCONTO.Value));

                      end;

                    end;

                    // ('F. ' + BancodeDados.V_Boletos.text);

                    BancodeDados.Emissoes.Open;

                    if not BancodeDados.Emissoes.IsEmpty then
                    begin

                      // poder gravar na tabela de emissoes, informacoes vindas do retorno.
                      // tirando campos calculados...
                      if not(BancodeDados.Emissoes.State in [dsedit]) then
                        BancodeDados.Emissoes.Edit;

                      // if not (BancodeDados.EmissoesSITUACAO_BOLETO.FieldKind in [fkCalculated, fkLookup, fkInternalCalc]) then
                      BancodeDados.EmissoesSITUACAO_BOLETO.Value := 'RECEBIDO';

                      // if not (BancodeDados.EmissoesDATA_RECEBIMENTO.FieldKind in [fkCalculated, fkLookup, fkInternalCalc]) then
                      if (BancodeDados.RetornoDATA_RECEBIMENTO.Value > 0) then
                        BancodeDados.EmissoesDATA_RECEBIMENTO.Value :=
                          BancodeDados.RetornoDATA_RECEBIMENTO.Value;

                      // if not (BancodeDados.EmissoesCODIGO_BANCO.FieldKind in [fkCalculated, fkLookup, fkInternalCalc]) then
                      if not(BancodeDados.EmissoesCODIGO_BANCO.Value > 0) then
                        BancodeDados.EmissoesCODIGO_BANCO.Value :=
                          BancodeDados.RetornoCODIGO_BANCO.Value;

                      BancodeDados.Emissoes.Post;
                      // ap?s gravar na tabela de emissoes, salvar

                      BancodeDados.Boletos.Close;
                      BancodeDados.Boletos.SQL.Text :=
                        PrincipalForm.SQLrepositorio(0) +
                        ' and b.boleto_id in (' +
                        Trim(BancodeDados.EmissoesID_BOLETOS.Value) +
                        ') and coalesce(b.duplic_bol_id, 0) = 0';
                      BancodeDados.Boletos.Open;

                      if BancodeDados.Boletos.IsEmpty then
                      begin
                        // if (TentarInativo=True) then begin
                        try
                          BancodeDados.Boletos.Close;
                          BancodeDados.Boletos.SQL.Text :=
                            PrincipalForm.SQLrepositorio(0) +
                            ' and b.emissao_id = ' +
                            IntToStr(BancodeDados.EmissoesEMISSAO_ID.Value) +
                            ' and coalesce(b.duplic_bol_id, 0) = 0';
                          BancodeDados.Boletos.Open;
                        except
                        end;

                      end;

                      vlBoletosCompara := 0;
                      vlBoletosCompara2 := BancodeDados.EmissoesVALOR_DOC.Value;

                      if not BancodeDados.Boletos.IsEmpty then
                      begin
                        BancodeDados.Boletos.First;
                        while not BancodeDados.Boletos.Eof do
                        begin
                          vlBoletosCompara := vlBoletosCompara +
                            (BancodeDados.BoletosVALOR_INTEGRAL.Value +
                            BancodeDados.BoletosACRESCIMO.Value +
                            BancodeDados.BoletosACRESC_EXTRA.Value);
                          BancodeDados.Boletos.Next;
                        end;

                        // comparando valores de t?tulos recebidos
                        if (vlBoletosCompara = vlBoletosCompara2) then
                        begin
                          vlIntegralTmp := 0;
                          vlAPagarTmp := 0; // vlTotal:=0;
                          BancodeDados.Boletos.First;
                          while not BancodeDados.Boletos.Eof do
                          begin
                            vlAPagarTmp := vlAPagarTmp +
                              BancodeDados.BoletosVALOR_APAGAR.Value;
                            vlIntegralTmp := vlIntegralTmp +
                              BancodeDados.BoletosVALOR_INTEGRAL.Value +
                              BancodeDados.BoletosACRESCIMO.Value +
                              BancodeDados.BoletosACRESC_EXTRA.Value;
                            BancodeDados.Boletos.Next;
                          end;

                          // vlrecebido:=BancodeDados.RetornoVALOR_DOCUMENTO.Value - (BancodeDados.RetornoVALOR_ABATIMENTO.Value + BancodeDados.RetornoVALOR_DESCONTO.Value);
                          if BancodeDados.RetornoVALOR_PAGO.Value > 0 then
                            vlrecebido := BancodeDados.RetornoVALOR_PAGO.Value
                          else
                            vlrecebido :=
                              BancodeDados.RetornoVALOR_DOCUMENTO.Value;
                          // eraldo 14/12/15  verificado para atende rum chamado de andre olimpo.

                          vlTxRecebido := BancodeDados.RetornoTX_BANCO.Value;
                          vlMulta := BancodeDados.RetornoVALOR_MULTA.Value;
                          vlJuros := BancodeDados.RetornoVALOR_MORA.Value;
                          // vlMulta:=vlMulta / BancodeDados.Boletos.RecNo;
                          // vlJuros:=vlJuros / BancodeDados.Boletos.RecNo;

                          Atrazado := false;
                          vlTotal := vlAPagarTmp;

                          if (vlrecebido >= vlIntegralTmp) then
                          begin
                            Atrazado := true;
                            vlTotal := vlIntegralTmp;
                          end;

                          BancodeDados.Boletos.First;
                          while not BancodeDados.Boletos.Eof do
                          begin
                            Application.ProcessMessages;
                            PodeBaixar := true;

                            qryB := BancodeDados.Boletos;

                            // BancodeDados.Opcoes_Pagar.Close;
                            // BancodeDados.Opcoes_Pagar.SQL.Text:='select * from opcoes_pagar where OP_PAG_ID = '+IntToStr(BancodeDados.BoletosOP_PAG_ID.Value);
                            // BancodeDados.Opcoes_Pagar.open;
                            // eraldo
                            // if (BancodeDados.BoletosSITUACAO_BOLETO.Value = 'RECEBIDO') and (BancodeDados.BoletosRETORNO_ID.Value > 0) then //eraldo

                            if (BancodeDados.BoletosSITUACAO_BOLETO.Value =
                              'RECEBIDO') then
                            begin

                              if (BancodeDados.BoletosRETORNO_ID.Value > 0)
                              { and (BancodeDados.Opcoes_PagarTIPO.Value in [3, 4]) }
                              then
                              begin
                                if (BancodeDados.BoletosRETORNO_ID.Value <>
                                  BancodeDados.RetornoRETORNO_ID.Value) then
                                begin
                                  BancodeDados.QryRetorno.Close;
                                  BancodeDados.QryRetorno.SQL.Text :=
                                    'select * from retorno where retorno_id = '
                                    + IntToStr
                                    (BancodeDados.BoletosRETORNO_ID.Value);

                                  if VerifNossNum > 0 then
                                    // eraldo inclui esta linda para filtrar os registros de retorno da mesma conta com unidades diferentes  08/01/16
                                    BancodeDados.QryRetorno.SQL.Add
                                      (' and (UPPER(nosso_numero) ' +
                                      PrincipalForm.csContainingLIKE
                                      (IntToStr(VerifNossNum), 0) + ')');

                                  BancodeDados.QryRetorno.Open;
                                  if not BancodeDados.QryRetorno.IsEmpty then
                                  begin
                                    if (BancodeDados.QryRetornoNOSSO_NUMERO.
                                      Value <> BancodeDados.RetornoNOSSO_NUMERO.
                                      Value) then
                                    begin

                                      // MAURICIO RAMOS PINTO DE ARA?JO
                                      with RetornoForm.TitQuitado2 do
                                      begin
                                        if not Active then
                                        begin
                                        FileName := DiretorioTemp +
                                        'titqui2.xml';
                                        CreateDataSet;
                                        Open;
                                        // IndexFieldNames:='RESP_ID;RET1_NOSSO_NUMERO';
                                        end;
                                      end;
                                      RetornoForm.TitQuitado2.Append;
                                      RetornoForm.TitQuitado2RESP_ID.Value :=
                                        BancodeDados.BoletosCLI_ID.Value;
                                      RetornoForm.TitQuitado2RESP_NOME.AsString
                                        := BancodeDados.BoletosCLIENTE.Value;
                                      RetornoForm.TitQuitado2BOLETO_ID.Value :=
                                        BancodeDados.BoletosBOLETO_ID.Value;
                                      RetornoForm.TitQuitado2PARCELA.AsString :=
                                        BancodeDados.BoletosPARCELA.Value;
                                      // RetornoForm.TitQuitado2MATRICULA_ID.Value         := BancodeDados.BoletosMATRICULA_ID.Value;
                                      RetornoForm.TitQuitado2ALUNO.AsString :=
                                        BancodeDados.BoletosCLIENTE.Value;
                                      RetornoForm.TitQuitado2EMISSAO.Value :=
                                        BancodeDados.BoletosEMISSAO.Value;
                                      RetornoForm.TitQuitado2VENCIMENTO.Value :=
                                        BancodeDados.BoletosVENCIMENTO.Value;
                                      RetornoForm.TitQuitado2VALOR_INTEGRAL.
                                        Value := BancodeDados.
                                        BoletosVALOR_INTEGRAL.Value;
                                      RetornoForm.TitQuitado2VALOR_APAGAR.Value
                                        := BancodeDados.
                                        BoletosVALOR_APAGAR.Value;
                                      RetornoForm.TitQuitado2VALOR_PAGO.Value :=
                                        BancodeDados.BoletosVALOR_PAGO.Value;
                                      RetornoForm.TitQuitado2SITUACAO_BOLETO.
                                        AsString :=
                                        BancodeDados.
                                        BoletosSITUACAO_BOLETO.Value;
                                      RetornoForm.TitQuitado2RET1_RETORNO_ID.
                                        Value := BancodeDados.
                                        QryRetornoRETORNO_ID.Value;
                                      RetornoForm.
                                        TitQuitado2RET1_NUMERO_ARQUIVO.Value :=
                                        BancodeDados.
                                        QryRetornoNUMERO_ARQUIVO.Value;
                                      RetornoForm.TitQuitado2RET1_DATA_ARQUIVO.
                                        Value := BancodeDados.
                                        QryRetornoDATA_ARQUIVO.Value;
                                      RetornoForm.TitQuitado2RET1_NOSSO_NUMERO.
                                        AsString :=
                                        BancodeDados.
                                        QryRetornoNOSSO_NUMERO.Value;
                                      RetornoForm.TitQuitado2RET1_DATA_CREDITO.
                                        Value := BancodeDados.
                                        QryRetornoDATA_CREDITO.Value;
                                      RetornoForm.
                                        TitQuitado2RET1_DATA_VENCIMENTO.Value :=
                                        BancodeDados.
                                        QryRetornoDATA_VENCIMENTO.Value;
                                      RetornoForm.
                                        TitQuitado2RET1_DATA_RECEBIMENTO.Value
                                        := BancodeDados.
                                        QryRetornoDATA_RECEBIMENTO.Value;
                                      RetornoForm.
                                        TitQuitado2RET1_VALOR_DOCUMENTO.Value :=
                                        BancodeDados.
                                        QryRetornoVALOR_DOCUMENTO.Value;
                                      RetornoForm.TitQuitado2RET1_VALOR_MORA.
                                        Value := BancodeDados.
                                        QryRetornoVALOR_MORA.Value;
                                      RetornoForm.
                                        TitQuitado2RET1_VALOR_ABATIMENTO.Value
                                        := BancodeDados.
                                        QryRetornoVALOR_DESCONTO.Value;
                                      RetornoForm.TitQuitado2RET1_VALOR_PAGO.
                                        Value := BancodeDados.
                                        QryRetornoVALOR_PAGO.Value;
                                      RetornoForm.TitQuitado2RET1_NOME_ARQ.
                                        AsString :=
                                        BancodeDados.QryRetornoNOME_ARQ.Value;
                                      RetornoForm.TitQuitado2RET2_RETORNO_ID.
                                        Value := BancodeDados.
                                        RetornoRETORNO_ID.Value;
                                      RetornoForm.
                                        TitQuitado2RET2_NUMERO_ARQUIVO.Value :=
                                        BancodeDados.
                                        RetornoNUMERO_ARQUIVO.Value;
                                      RetornoForm.TitQuitado2RET2_DATA_ARQUIVO.
                                        Value := BancodeDados.
                                        RetornoDATA_ARQUIVO.Value;
                                      RetornoForm.TitQuitado2RET2_NOSSO_NUMERO.
                                        AsString :=
                                        BancodeDados.RetornoNOSSO_NUMERO.Value;
                                      RetornoForm.TitQuitado2RET2_DATA_CREDITO.
                                        Value := BancodeDados.
                                        RetornoDATA_CREDITO.Value;
                                      RetornoForm.
                                        TitQuitado2RET2_DATA_VENCIMENTO.Value :=
                                        BancodeDados.
                                        RetornoDATA_VENCIMENTO.Value;
                                      RetornoForm.
                                        TitQuitado2RET2_DATA_RECEBIMENTO.Value
                                        := BancodeDados.
                                        RetornoDATA_RECEBIMENTO.Value;
                                      RetornoForm.
                                        TitQuitado2RET2_VALOR_DOCUMENTO.Value :=
                                        BancodeDados.
                                        RetornoVALOR_DOCUMENTO.Value;
                                      RetornoForm.TitQuitado2RET2_VALOR_MORA.
                                        Value := BancodeDados.
                                        RetornoVALOR_MORA.Value;
                                      RetornoForm.
                                        TitQuitado2RET2_VALOR_ABATIMENTO.Value
                                        := BancodeDados.
                                        RetornoVALOR_ABATIMENTO.Value;
                                      RetornoForm.TitQuitado2RET2_VALOR_PAGO.
                                        Value := BancodeDados.
                                        RetornoVALOR_PAGO.Value;
                                      RetornoForm.TitQuitado2RET2_NOME_ARQ.
                                        AsString :=
                                        BancodeDados.RetornoNOME_ARQ.Value;
                                      RetornoForm.TitQuitado2.Post;

                                      RetornoForm.BoletosDup.Close;
                                      RetornoForm.BoletosDup.SQL.Text :=
                                        'select b.*, (select nome from clientes where cli_id=b.cli_id) AS cliente from boletos b where b.duplic_bol_id = '
                                        + IntToStr
                                        (BancodeDados.BoletosBOLETO_ID.Value) +
                                        ' and coalesce(b.duplic_ret_id, 0) = 0';
                                      RetornoForm.BoletosDup.Open;

                                      if RetornoForm.BoletosDup.IsEmpty then
                                      begin
                                        RetornoForm.BoletosDup.Append;
                                        for j := 0 to RetornoForm.BoletosDup.
                                        FieldCount - 1 do
                                        begin
                                        nomeCampo :=
                                        RetornoForm.BoletosDup.Fields[j]
                                        .FieldName;
                                        if (nomeCampo <> 'DUPLIC_BOL_ID') and
                                        (nomeCampo <> 'DUPLIC_RET_ID') then
                                        RetornoForm.BoletosDup.Fields[j].Value
                                        := BancodeDados.Boletos.Fieldbyname
                                        (nomeCampo).Value;
                                        end;
                                        if RemotoDriveID in [2] then
                                        RetornoForm.BoletosDupBOLETO_ID.Value :=
                                        BancodeDados.MySqlPegaID('BOLETOS')
                                        else
                                        RetornoForm.BoletosDupBOLETO_ID.Value :=
                                        BancodeDados.PegaNovo('GEN_BOLCOD');

                                        RetornoForm.BoletosDupDUPLIC_BOL_ID.
                                        Value := BancodeDados.
                                        BoletosBOLETO_ID.Value;
                                        // RetornoForm.BoletosDupUSR_CAD.Value := CodUsuario;
                                        // RetornoForm.BoletosDupLOJA_ID.Value := 0;
                                        RetornoForm.BoletosDupEMISSAO.Value :=
                                        PrincipalForm.DataServidor;
                                        RetornoForm.BoletosDupDESCRICAO.Value :=
                                        Copy('(T?TULO DUPLICADO) ' +
                                        RetornoForm.BoletosDupDESCRICAO.
                                        Value, 1, 60);
                                        // RetornoForm.BoletosDupSITUACAO_BOLETO.Value := 'RECEBIDO';
                                        // RetornoForm.BoletosDupEMISSAO.Value := Date;

                                        RetornoForm.BoletosDup.Post;
                                      end;

                                      qryB := RetornoForm.BoletosDup;

                                    end // if nosso_numero <>
                                    else
                                    begin

                                      BancodeDados.qryPesqRet.Close;
                                      BancodeDados.qryPesqRet.Params[0].Value :=
                                        BancodeDados.RetornoBANCO_ID.Value;
                                      BancodeDados.qryPesqRet.Params[1].Value :=
                                        BancodeDados.RetornoNOSSO_NUMERO.Value;
                                      BancodeDados.qryPesqRet.Params[2].Value :=
                                        BancodeDados.
                                        RetornoNUMERO_ARQUIVO.Value;
                                      BancodeDados.qryPesqRet.Params[3].Value :=
                                        Retorno.TipoRet;
                                      BancodeDados.qryPesqRet.Open;
                                      if not BancodeDados.qryPesqRet.IsEmpty
                                      then
                                      begin

                                        if Trim(nossoNumDup) = '' then
                                        nossoNumDup :=
                                        QuotedStr(BancodeDados.
                                        RetornoNOSSO_NUMERO.Value)
                                        else
                                        nossoNumDup := nossoNumDup + ', ' +
                                        QuotedStr(BancodeDados.
                                        RetornoNOSSO_NUMERO.Value);

                                        RetornoForm.BoletosDup.Close;
                                        RetornoForm.BoletosDup.SQL.Text :=
                                        'select b.*, (select nome from clientes where cli_id=b.cli_id) AS cliente from boletos b where duplic_bol_id = '
                                        + IntToStr
                                        (BancodeDados.BoletosBOLETO_ID.Value) +
                                        ' and b.duplic_ret_id = ' +
                                        IntToStr(BancodeDados.
                                        BoletosRETORNO_ID.Value);
                                        RetornoForm.BoletosDup.Open;
                                        if RetornoForm.BoletosDup.IsEmpty then
                                        begin
                                        RetornoForm.BoletosDup.Append;
                                        for j := 0 to RetornoForm.BoletosDup.
                                        FieldCount - 1 do
                                        begin
                                        nomeCampo :=
                                        RetornoForm.BoletosDup.Fields[j]
                                        .FieldName;
                                        if (nomeCampo <> 'DUPLIC_BOL_ID') and
                                        (nomeCampo <> 'DUPLIC_RET_ID') then
                                        RetornoForm.BoletosDup.Fields[j].Value
                                        := BancodeDados.Boletos.Fieldbyname
                                        (nomeCampo).Value;
                                        end;
                                        if RemotoDriveID in [2] then
                                        RetornoForm.BoletosDupBOLETO_ID.Value :=
                                        BancodeDados.MySqlPegaID('BOLETOS')
                                        else
                                        RetornoForm.BoletosDupBOLETO_ID.Value :=
                                        BancodeDados.PegaNovo('GEN_BOLCOD');
                                        RetornoForm.BoletosDupDUPLIC_BOL_ID.
                                        Value := BancodeDados.
                                        BoletosBOLETO_ID.Value;
                                        RetornoForm.BoletosDupDUPLIC_RET_ID.
                                        Value := BancodeDados.
                                        BoletosRETORNO_ID.Value;
                                        // RetornoForm.BoletosDupUSR_CAD.Value := CodUsuario;
                                        // RetornoForm.BoletosDupLOJA_ID.Value := 0;
                                        RetornoForm.BoletosDupEMISSAO.Value :=
                                        PrincipalForm.DataServidor;
                                        RetornoForm.BoletosDupDESCRICAO.Value :=
                                        Copy('(BOLETO DUPLICADO) ' +
                                        RetornoForm.BoletosDupDESCRICAO.
                                        Value, 1, 60);
                                        // RetornoForm.BoletosDupSITUACAO_BOLETO.Value := 'RECEBIDO';
                                        // RetornoForm.BoletosDupEMISSAO.Value := Date;

                                        RetornoForm.BoletosDup.Post;
                                        end;

                                        qryB := RetornoForm.BoletosDup;

                                      end; // qryPesqRet

                                      BancodeDados.qryPesqRet.Close;
                                    end; // if nosso_numero =

                                  end;
                                  BancodeDados.QryRetorno.Close;

                                end; // RetornoDiferente
                              end
                              else
                              begin // eraldo incluiu est? func?o para tratamento de tiutlos pagos na escola e posteriormente pagos no banco

                                RetornoForm.qryPegarRetorn.Open;
                                RetornoForm.qryPegarRetorn.SQL.Text :=
                                  'select r.retorno_id from retorno r, boletos_emissao e where r.nosso_numero=e.nosso_numero and (e.id_boletos '
                                  + PrincipalForm.csContainingLIKE
                                  (IntToStr(BancodeDados.BoletosBOLETO_ID.
                                  Value), 1) + ') and e.banco_id =' +
                                  IntToStr(BancoID);

                                RetornoForm.qryPegarRetorn.Open;

                                BancodeDados.QryRetorno.Close;
                                BancodeDados.QryRetorno.SQL.Text :=
                                  'select * from retorno where retorno_id = ' +
                                  IntToStr(RetornoForm.
                                  qryPegarRetornRETORNO_ID.Value);

                                BancodeDados.QryRetorno.Open;

                                if not BancodeDados.QryRetorno.IsEmpty then
                                begin

                                  with RetornoForm.TitQuitado2 do
                                  begin
                                    if not Active then
                                    begin
                                      FileName := DiretorioTemp + 'titqui2.xml';
                                      CreateDataSet;
                                      Open;
                                      // IndexFieldNames:='RESP_ID;RET1_NOSSO_NUMERO';
                                    end;
                                  end;

                                  RetornoForm.TitQuitado2.Append;
                                  RetornoForm.TitQuitado2RESP_ID.Value :=
                                    BancodeDados.BoletosCLI_ID.Value;
                                  RetornoForm.TitQuitado2RESP_NOME.AsString :=
                                    BancodeDados.BoletosCLIENTE.Value;
                                  RetornoForm.TitQuitado2BOLETO_ID.Value :=
                                    BancodeDados.BoletosBOLETO_ID.Value;
                                  RetornoForm.TitQuitado2PARCELA.AsString :=
                                    BancodeDados.BoletosPARCELA.Value;
                                  // RetornoForm.TitQuitado2MATRICULA_ID.Value         := BancodeDados.BoletosMATRICULA_ID.Value;
                                  RetornoForm.TitQuitado2ALUNO.AsString :=
                                    BancodeDados.BoletosCLIENTE.Value;
                                  RetornoForm.TitQuitado2EMISSAO.Value :=
                                    BancodeDados.BoletosEMISSAO.Value;
                                  RetornoForm.TitQuitado2VENCIMENTO.Value :=
                                    BancodeDados.BoletosVENCIMENTO.Value;
                                  RetornoForm.TitQuitado2VALOR_INTEGRAL.Value :=
                                    BancodeDados.BoletosVALOR_INTEGRAL.Value;
                                  RetornoForm.TitQuitado2VALOR_APAGAR.Value :=
                                    BancodeDados.BoletosVALOR_APAGAR.Value;
                                  RetornoForm.TitQuitado2VALOR_PAGO.Value :=
                                    BancodeDados.BoletosVALOR_PAGO.Value;
                                  RetornoForm.TitQuitado2SITUACAO_BOLETO.
                                    AsString :=
                                    BancodeDados.BoletosSITUACAO_BOLETO.Value;
                                  RetornoForm.TitQuitado2RET1_RETORNO_ID.Value
                                    := BancodeDados.QryRetornoRETORNO_ID.Value;
                                  RetornoForm.TitQuitado2RET1_NUMERO_ARQUIVO.
                                    Value := BancodeDados.
                                    QryRetornoNUMERO_ARQUIVO.Value;
                                  RetornoForm.TitQuitado2RET1_DATA_ARQUIVO.Value
                                    := BancodeDados.
                                    QryRetornoDATA_ARQUIVO.Value;
                                  RetornoForm.TitQuitado2RET1_NOSSO_NUMERO.
                                    AsString :=
                                    BancodeDados.QryRetornoNOSSO_NUMERO.Value;
                                  RetornoForm.TitQuitado2RET1_DATA_CREDITO.Value
                                    := BancodeDados.
                                    QryRetornoDATA_CREDITO.Value;
                                  RetornoForm.TitQuitado2RET1_DATA_VENCIMENTO.
                                    Value := BancodeDados.
                                    QryRetornoDATA_VENCIMENTO.Value;
                                  RetornoForm.TitQuitado2RET1_DATA_RECEBIMENTO.
                                    Value := BancodeDados.
                                    QryRetornoDATA_RECEBIMENTO.Value;
                                  RetornoForm.TitQuitado2RET1_VALOR_DOCUMENTO.
                                    Value := BancodeDados.
                                    QryRetornoVALOR_DOCUMENTO.Value;
                                  RetornoForm.TitQuitado2RET1_VALOR_MORA.Value
                                    := BancodeDados.QryRetornoVALOR_MORA.Value;
                                  RetornoForm.TitQuitado2RET1_VALOR_ABATIMENTO.
                                    Value := BancodeDados.
                                    QryRetornoVALOR_DESCONTO.Value;
                                  RetornoForm.TitQuitado2RET1_VALOR_PAGO.Value
                                    := BancodeDados.QryRetornoVALOR_PAGO.Value;
                                  RetornoForm.TitQuitado2RET1_NOME_ARQ.AsString
                                    := BancodeDados.QryRetornoNOME_ARQ.Value;
                                  RetornoForm.TitQuitado2RET2_RETORNO_ID.Value
                                    := BancodeDados.QryRetornoRETORNO_ID.Value;
                                  RetornoForm.TitQuitado2RET2_NUMERO_ARQUIVO.
                                    Value := BancodeDados.
                                    RetornoNUMERO_ARQUIVO.Value;
                                  RetornoForm.TitQuitado2RET2_DATA_ARQUIVO.Value
                                    := BancodeDados.RetornoDATA_ARQUIVO.Value;
                                  RetornoForm.TitQuitado2RET2_NOSSO_NUMERO.
                                    AsString :=
                                    BancodeDados.RetornoNOSSO_NUMERO.Value;
                                  RetornoForm.TitQuitado2RET2_DATA_CREDITO.Value
                                    := BancodeDados.RetornoDATA_CREDITO.Value;
                                  RetornoForm.TitQuitado2RET2_DATA_VENCIMENTO.
                                    Value := BancodeDados.
                                    RetornoDATA_VENCIMENTO.Value;
                                  RetornoForm.TitQuitado2RET2_DATA_RECEBIMENTO.
                                    Value := BancodeDados.
                                    RetornoDATA_RECEBIMENTO.Value;
                                  RetornoForm.TitQuitado2RET2_VALOR_DOCUMENTO.
                                    Value := BancodeDados.
                                    RetornoVALOR_DOCUMENTO.Value;
                                  RetornoForm.TitQuitado2RET2_VALOR_MORA.Value
                                    := BancodeDados.RetornoVALOR_MORA.Value;
                                  RetornoForm.TitQuitado2RET2_VALOR_ABATIMENTO.
                                    Value := BancodeDados.
                                    RetornoVALOR_ABATIMENTO.Value;
                                  RetornoForm.TitQuitado2RET2_VALOR_PAGO.Value
                                    := BancodeDados.RetornoVALOR_PAGO.Value;
                                  RetornoForm.TitQuitado2RET2_NOME_ARQ.AsString
                                    := BancodeDados.RetornoNOME_ARQ.Value;
                                  RetornoForm.TitQuitado2.Post;

                                  RetornoForm.BoletosDup.Close;
                                  RetornoForm.BoletosDup.SQL.Text :=
                                    'select b.*, (select nome from clientes where cli_id=b.cli_id) AS cliente from boletos b where b.duplic_bol_id = '
                                    + IntToStr
                                    (BancodeDados.BoletosBOLETO_ID.Value) +
                                    ' and coalesce(b.duplic_ret_id, 0) = 0';
                                  RetornoForm.BoletosDup.Open;

                                  if RetornoForm.BoletosDup.IsEmpty then
                                  begin
                                    RetornoForm.BoletosDup.Append;

                                    for j := 0 to RetornoForm.BoletosDup.
                                      FieldCount - 1 do
                                    begin
                                      nomeCampo := RetornoForm.BoletosDup.Fields
                                        [j].FieldName;
                                      if (nomeCampo <> 'DUPLIC_BOL_ID') and
                                        (nomeCampo <> 'DUPLIC_RET_ID') then
                                        RetornoForm.BoletosDup.Fields[j].Value
                                        := BancodeDados.Boletos.Fieldbyname
                                        (nomeCampo).Value;
                                    end;
                                    if RemotoDriveID in [2] then
                                      RetornoForm.BoletosDupBOLETO_ID.Value :=
                                        BancodeDados.MySqlPegaID('BOLETOS')
                                    else
                                      RetornoForm.BoletosDupBOLETO_ID.Value :=
                                        BancodeDados.PegaNovo('GEN_BOLCOD');
                                    RetornoForm.BoletosDupDUPLIC_BOL_ID.Value :=
                                      BancodeDados.BoletosBOLETO_ID.Value;
                                    // RetornoForm.BoletosDupUSR_CAD.Value          := CodUsuario;
                                    // RetornoForm.BoletosDupLOJA_ID.Value          := 0;
                                    RetornoForm.BoletosDupEMISSAO.Value :=
                                      PrincipalForm.DataServidor;
                                    RetornoForm.BoletosDupDESCRICAO.Value :=
                                      Copy('(T?TULO DUPLICADO) ' +
                                      RetornoForm.BoletosDupDESCRICAO.
                                      Value, 1, 60);
                                    RetornoForm.BoletosDupOP_PAG_ID.Value := 4;
                                    // RetornoForm.BoletosDupSITUACAO_BOLETO.Value := 'RECEBIDO';
                                    // RetornoForm.BoletosDupEMISSAO.Value := Date;
                                    RetornoForm.BoletosDup.Post;
                                  end;
                                  // atribuir o codigo de retorno ao titulo pago na escola
                                  if not(BancodeDados.BoletosRETORNO_ID.
                                    Value > 0) then
                                  begin
                                    if not(BancodeDados.Boletos.State
                                      in [dsedit]) then
                                      BancodeDados.Boletos.Edit;
                                    BancodeDados.BoletosRETORNO_ID.Value :=
                                      (BancodeDados.QryRetornoRETORNO_ID.Value);
                                    BancodeDados.Boletos.Post;
                                  end;

                                  qryB := RetornoForm.BoletosDup;

                                end // if nosso_numero <>
                                else
                                begin

                                  BancodeDados.qryPesqRet.Close;
                                  BancodeDados.qryPesqRet.Params[0].Value :=
                                    BancodeDados.RetornoBANCO_ID.Value;
                                  BancodeDados.qryPesqRet.Params[1].Value :=
                                    BancodeDados.RetornoNOSSO_NUMERO.Value;
                                  BancodeDados.qryPesqRet.Params[2].Value :=
                                    BancodeDados.RetornoNUMERO_ARQUIVO.Value;
                                  BancodeDados.qryPesqRet.Params[3].Value :=
                                    Retorno.TipoRet;
                                  BancodeDados.qryPesqRet.Open;
                                  if not BancodeDados.qryPesqRet.IsEmpty then
                                  begin

                                    if Trim(nossoNumDup) = '' then
                                      nossoNumDup :=
                                        QuotedStr(BancodeDados.
                                        RetornoNOSSO_NUMERO.Value)
                                    else
                                      nossoNumDup := nossoNumDup + ', ' +
                                        QuotedStr(BancodeDados.
                                        RetornoNOSSO_NUMERO.Value);

                                    RetornoForm.BoletosDup.Close;
                                    RetornoForm.BoletosDup.SQL.Text :=
                                      'select b.*, (select nome from clientes where cli_id=b.cli_id) AS cliente from boletos b where b.duplic_bol_id = '
                                      + IntToStr
                                      (BancodeDados.BoletosBOLETO_ID.Value) +
                                      ' and b.duplic_ret_id = ' +
                                      IntToStr(BancodeDados.
                                      QryRetornoRETORNO_ID.Value);
                                    RetornoForm.BoletosDup.Open;
                                    if RetornoForm.BoletosDup.IsEmpty then
                                    begin
                                      RetornoForm.BoletosDup.Append;
                                      for j := 0 to RetornoForm.BoletosDup.
                                        FieldCount - 1 do
                                      begin
                                        nomeCampo :=
                                        RetornoForm.BoletosDup.Fields[j]
                                        .FieldName;
                                        if (nomeCampo <> 'DUPLIC_BOL_ID') and
                                        (nomeCampo <> 'DUPLIC_RET_ID') then
                                        RetornoForm.BoletosDup.Fields[j].Value
                                        := BancodeDados.Boletos.Fieldbyname
                                        (nomeCampo).Value;
                                      end;
                                      if RemotoDriveID in [2] then
                                        RetornoForm.BoletosDupBOLETO_ID.Value :=
                                        BancodeDados.MySqlPegaID('BOLETOS')
                                      else
                                        RetornoForm.BoletosDupBOLETO_ID.Value :=
                                        BancodeDados.PegaNovo('GEN_BOLCOD');
                                      RetornoForm.BoletosDupDUPLIC_BOL_ID.Value
                                        := BancodeDados.BoletosBOLETO_ID.Value;
                                      RetornoForm.BoletosDupDUPLIC_RET_ID.Value
                                        := BancodeDados.
                                        QryRetornoRETORNO_ID.Value;
                                      // RetornoForm.BoletosDupUSR_CAD.Value       := CodUsuario;
                                      // RetornoForm.BoletosDupLOJA_ID.Value       := 0;
                                      RetornoForm.BoletosDupEMISSAO.Value :=
                                        PrincipalForm.DataServidor;
                                      RetornoForm.BoletosDupDESCRICAO.Value :=
                                        Copy('(BOLETO DUPLICADO) ' +
                                        RetornoForm.BoletosDupDESCRICAO.
                                        Value, 1, 60);
                                      RetornoForm.BoletosDupOP_PAG_ID.
                                        Value := 4;
                                      RetornoForm.BoletosDup.Post;
                                    end;
                                    /// retorno.boletosDupl
                                    qryB := RetornoForm.BoletosDup;

                                  end; // qryPesqRet
                                  BancodeDados.qryPesqRet.Close;
                                end; // if nosso_numero =
                                // PodeBaixar:=false;
                              end; // Se j? est? recebido na escola    >>> if (BancodeDados.BoletosSITUACAO_BOLETO.Value = 'RECEBIDO') and  (BancodeDados.BoletosRETORNO_ID.Value<=0)  then
                            end; // Se j? est? recebido >>> if (BancodeDados.BoletosSITUACAO_BOLETO.Value = 'RECEBIDO') then begin

                            // baixa automatica
                            if (PodeBaixar = true) then
                            begin
                              try
                                if not(Atrazado = true) then
                                  PercBol :=
                                    (qryB.Fieldbyname('VALOR_APAGAR').AsCurrency
                                    * 100) / vlTotal
                                else
                                  PercBol :=
                                    ((qryB.Fieldbyname('VALOR_INTEGRAL')
                                    .AsCurrency + qryB.Fieldbyname('ACRESCIMO')
                                    .AsCurrency +
                                    qryB.Fieldbyname('ACRESCIMO_EXTRA')
                                    .AsCurrency) * 100) / vlTotal;
                              except
                                PercBol := (100) / qryB.RecordCount;
                              end;

                              if (RetornoForm.chLancCX.Checked) then
                              begin
                                ContaID := RetornoForm.EditConta.KeyValue;
                                TipoContaID :=
                                  qryB.Fieldbyname('TIPO_CONTAS_ID').AsInteger;
                              end
                              else
                              begin
                                ContaID := 0;
                                TipoContaID := 0;
                              end;

                              vlProporcional :=
                                StrToCurr(formatfloat('0.00',
                                (vlrecebido * PercBol) / 100));
                              qryB.Edit;

                              if not(qryB.Fieldbyname('TIPO_CONTAS_ID')
                                .AsInteger > 0) then
                                qryB.Fieldbyname('TIPO_CONTAS_ID').AsInteger :=
                                  TipoContaID;

                              // qryB.FieldByName('USUARIO').Value         := Usuario;
                              qryB.Fieldbyname('SITUACAO_BOLETO').Value :=
                                'RECEBIDO';
                              qryB.Fieldbyname('OP_PAG_ID').Value := 4;
                              qryB.Fieldbyname('VALOR_PAGO').Value :=
                                vlProporcional;

                              qryB.Fieldbyname('MULTA').Value :=
                                StrToCurr(formatfloat('0.00',
                                (vlMulta * PercBol) / 100));
                              qryB.Fieldbyname('JUROS').Value :=
                                StrToCurr(formatfloat('0.00',
                                (vlJuros * PercBol) / 100));

                              qryB.Fieldbyname('RECEBIMENTO').Value :=
                                BancodeDados.RetornoDATA_RECEBIMENTO.Value;
                              // qryB.FieldByName('RECEBIMENTO').Value := BancodeDados.RetornoDATA_CREDITO.Value;
                              qryB.Fieldbyname('DT_CREDITO').Value :=
                                BancodeDados.RetornoDATA_CREDITO.Value;

                              if (BancodeDados.RetornoDATA_RECEBIMENTO.Value <>
                                BancodeDados.RetornoDATA_CREDITO.Value) then
                              begin
                                if Trim(qryB.Fieldbyname('OBS').AsString) = ''
                                then
                                  qryB.Fieldbyname('OBS').AsString :=
                                    'Recebido em ' +
                                    FormatDateTime('dd/mm/yyyy',
                                    BancodeDados.RetornoDATA_RECEBIMENTO.Value)
                                    + ' - Creditado em ' +
                                    FormatDateTime('dd/mm/yyyy',
                                    BancodeDados.RetornoDATA_CREDITO.Value) +
                                    ' (' + BancodeDados.RetornoNOME_ARQ.
                                    Value + ')'
                                else
                                  qryB.Fieldbyname('OBS').AsString :=
                                    qryB.Fieldbyname('OBS').AsString + #13 +
                                    'Recebido em ' +
                                    FormatDateTime('dd/mm/yyyy',
                                    BancodeDados.RetornoDATA_RECEBIMENTO.Value)
                                    + ' - Creditado em ' +
                                    FormatDateTime('dd/mm/yyyy',
                                    BancodeDados.RetornoDATA_CREDITO.Value) +
                                    ' (' + BancodeDados.RetornoNOME_ARQ.
                                    Value + ')';
                              end
                              else
                              begin
                                if Trim(qryB.Fieldbyname('OBS').AsString) = ''
                                then
                                  qryB.Fieldbyname('OBS').AsString :=
                                    'Recebido em ' +
                                    FormatDateTime('dd/mm/yyyy',
                                    BancodeDados.RetornoDATA_RECEBIMENTO.Value)
                                    + ' (' + BancodeDados.RetornoNOME_ARQ.
                                    Value + ')'
                                else
                                  qryB.Fieldbyname('OBS').AsString :=
                                    qryB.Fieldbyname('OBS').AsString + #13 +
                                    'Recebido em ' +
                                    FormatDateTime('dd/mm/yyyy',
                                    BancodeDados.RetornoDATA_RECEBIMENTO.Value)
                                    + ' (' + BancodeDados.RetornoNOME_ARQ.
                                    Value + ')';
                              end;

                              // qryB.FieldByName('HORA_RECEB').Value := PrincipalForm.HoraServidor;
                              qryB.Fieldbyname('RETORNO_ID').Value :=
                                BancodeDados.RetornoRETORNO_ID.Value;

                              vlTotalLvCaixa := vlTotalLvCaixa +
                                qryB.Fieldbyname('VALOR_PAGO').AsCurrency;
                              inc(NTitulosLvCaixa);

                              // Lancamento no livro caixa
                              if (RetornoForm.rgOpcoes.ItemIndex = 0) and
                                (RetornoForm.chLancCX.Checked) then
                              begin

                                BancodeDados.Livro_Caixa.Close;
                                BancodeDados.Livro_Caixa.SQL.Text :=
                                  PrincipalForm.SQLrepositorio(2) +
                                  ' and l.boleto_id = ' +
                                  IntToStr(qryB.Fieldbyname('BOLETO_ID')
                                  .AsInteger) + ' and l.retorno_id = ' +
                                  IntToStr(BancodeDados.RetornoRETORNO_ID.Value)
                                  + ' and coalesce(cancelado, 0) = 0';

                                BancodeDados.Livro_Caixa.Open;

                                if BancodeDados.Livro_Caixa.IsEmpty then
                                  BancodeDados.Livro_Caixa.Append
                                else
                                  BancodeDados.Livro_Caixa.Edit;

                                BancodeDados.Livro_CaixaDESCRICAO.Value :=
                                  Copy('Ret. Par. ' + formatfloat('000000',
                                  qryB.Fieldbyname('BOLETO_ID').AsInteger) + '('
                                  + qryB.Fieldbyname('PARCELA').AsString +
                                  ') - ' + formatfloat('000000',
                                  qryB.Fieldbyname('CLI_ID').AsInteger) + '/' +
                                  qryB.Fieldbyname('CLIENTE').AsString, 1, 60) +
                                  Copy(' - ' + qryB.Fieldbyname('DESCRICAO')
                                  .AsString, 1, 20);

                                BancodeDados.Livro_CaixaDATA.Value :=
                                  BancodeDados.RetornoDATA_CREDITO.Value;
                                BancodeDados.Livro_CaixaDOCUMENTO.Value :=
                                  IntToStr(qryB.Fieldbyname('BOLETO_ID').Value);
                                BancodeDados.Livro_CaixaENTRADA.Value :=
                                  qryB.Fieldbyname('VALOR_PAGO').AsCurrency;
                                BancodeDados.Livro_CaixaBOLETO_ID.Value :=
                                  qryB.Fieldbyname('BOLETO_ID').Value;
                                BancodeDados.Livro_CaixaOP_PAG_ID.Value := 4;
                                BancodeDados.Livro_CaixaDESCRICAO_PAGO.Value
                                  := 'Boleto';
                                BancodeDados.Livro_CaixaCONTA_ID.Value
                                  := ContaID;
                                BancodeDados.Livro_CaixaTIPO_CONTAS_ID.Value :=
                                  TipoContaID;
                                BancodeDados.Livro_CaixaRETORNO_ID.Value :=
                                  BancodeDados.RetornoRETORNO_ID.Value;
                                BancodeDados.Livro_CaixaNUMERO_ARQUIVO.Value :=
                                  Retorno.NArquivo;
                                BancodeDados.Livro_CaixaOBSERVACAO.AsString :=
                                  qryB.Fieldbyname('DESCRICAO').Value +
                                  ': Parc.(' + qryB.Fieldbyname('PARCELA')
                                  .AsString + ') Cliente: ' +
                                  formatfloat('000000',
                                  qryB.Fieldbyname('CLI_ID').AsInteger) + ' / '
                                  + Copy(qryB.Fieldbyname('CLIENTE')
                                  .AsString, 1, 25);

                                qryB.Fieldbyname('CAIXA_ID').Value :=
                                  BancodeDados.Livro_CaixaCAIXA_ID.Value;

                                BancodeDados.Livro_Caixa.Post;
                              end;

                              if Trim(idsTitulos) = '' then
                                idsTitulos :=
                                  qryB.Fieldbyname('BOLETO_ID').AsString
                              else
                                idsTitulos := idsTitulos + ', ' +
                                  qryB.Fieldbyname('BOLETO_ID').AsString;

                              qryB.Post;

                              if RetornoForm.chLancTaxa.Checked then
                              begin
                                BancodeDados.Livro_Caixa.Close;
                                BancodeDados.Livro_Caixa.SQL.Text :=
                                  PrincipalForm.SQLrepositorio(2) +
                                  ' and l.boleto_id = ' +
                                  IntToStr(qryB.Fieldbyname('BOLETO_ID')
                                  .AsInteger) + ' and l.retorno_id = ' +
                                  IntToStr(BancodeDados.RetornoRETORNO_ID.Value)
                                  + ' and (l.descricao ' +
                                  PrincipalForm.csContainingLIKE
                                  (('Taxa'), 0) + ')';
                                BancodeDados.Livro_Caixa.Open;

                                // (BancodeDados.Livro_Caixa.SQL.Text);
                                BancodeDados.Livro_Caixa.Open;
                                if BancodeDados.Livro_Caixa.IsEmpty then
                                  BancodeDados.Livro_Caixa.Append
                                else
                                  BancodeDados.Livro_Caixa.Edit;

                                BancodeDados.Livro_CaixaDESCRICAO.Value :=
                                  Trim(Copy('Taxa Boleto: ' +
                                  qryB.Fieldbyname('PARCELA').AsString + ' - ' +
                                  formatfloat('000000',
                                  qryB.Fieldbyname('BOLETO_ID').AsInteger) + '/'
                                  + '/' + qryB.Fieldbyname('CLIENTE')
                                  .AsString, 1, 60));

                                BancodeDados.Livro_CaixaDATA.Value :=
                                  BancodeDados.RetornoDATA_CREDITO.Value;
                                BancodeDados.Livro_CaixaDOCUMENTO.Value :=
                                  IntToStr(qryB.Fieldbyname('BOLETO_ID').Value);
                                BancodeDados.Livro_CaixaSAIDA.Value :=
                                  StrToCurr(formatfloat('0.00',
                                  ((vlTxRecebido * PercBol) / 100)));
                                BancodeDados.Livro_CaixaBOLETO_ID.Value :=
                                  qryB.Fieldbyname('BOLETO_ID').AsInteger;
                                BancodeDados.Livro_CaixaDESCRICAO_PAGO.Value
                                  := 'Boleto';
                                BancodeDados.Livro_CaixaOP_PAG_ID.Value := 4;
                                BancodeDados.Livro_CaixaCONTA_ID.Value
                                  := ContaID;
                                BancodeDados.Livro_CaixaTIPO_CONTAS_ID.Value :=
                                  TipoContaID;
                                BancodeDados.Livro_CaixaRETORNO_ID.Value :=
                                  BancodeDados.RetornoRETORNO_ID.Value;
                                BancodeDados.Livro_CaixaNUMERO_ARQUIVO.Value :=
                                  Retorno.NArquivo;
                                BancodeDados.Livro_CaixaOBSERVACAO.AsString :=
                                  qryB.Fieldbyname('DESCRICAO').Value +
                                  ': Parc.(' + qryB.Fieldbyname('PARCELA')
                                  .AsString + ') Cliente: ' +
                                  formatfloat('000000',
                                  qryB.Fieldbyname('CLI_ID').AsInteger) + ' / '
                                  + Copy(qryB.Fieldbyname('CLIENTE')
                                  .AsString, 1, 25);
                                BancodeDados.Livro_Caixa.Post;
                              end;

                            end; // PodeBaixar
                            if not(BancodeDados.Boletos.State in [dsedit]) then
                              BancodeDados.Boletos.Edit;
                            BancodeDados.MarcarAtivo(listaBoletos,
                              BancodeDados.BoletosBOLETO_ID.Value,
                              BancodeDados.BoletosATIVO);
                            BancodeDados.Boletos.Next;
                          end;
                          BancodeDados.Retorno.Edit;
                          BancodeDados.RetornoBAIXOU.Value := 1;
                          BancodeDados.Retorno.Post;
                        end
                        else
                        begin // vlBoletosCompara <> vlBoletosCompara2
                          BancodeDados.Retorno.Edit;
                          BancodeDados.RetornoBAIXOU.Value := 2;
                          // Valor do boleto n?o bate com os valores dos t?tulos
                          BancodeDados.Retorno.Post;
                        end;
                      end
                      else
                      begin // Boletos.IsEmpty
                        BancodeDados.Retorno.Edit;
                        BancodeDados.RetornoBAIXOU.Value := 405;
                        // Titulo a receber n?o encontrado
                        BancodeDados.Retorno.Post;
                      end;

                      BancodeDados.Clientes.Close;
                      BancodeDados.Clientes.SQL.Text :=
                        PrincipalForm.SQLrepositorio(1) + ' and c.cli_id = ' +
                        BancodeDados.EmissoesCLI_ID.AsString;
                      BancodeDados.Clientes.Open;
                      if BancodeDados.ClientesFAT_NOTA.Value = 1 then
                      begin
                        if not Assigned(Boletos1Form) then
                          Boletos1Form := TBoletos1Form.Create(Application);
                        Boletos1Form.FaturarNotaFiscal1.Click;
                      end;
                      listaBoletos.Clear;

                    end
                    else
                    begin
                      BancodeDados.Retorno.Edit;
                      BancodeDados.RetornoBAIXOU.Value := 404;
                      // n?o ha emissoes para esse titulo
                      BancodeDados.Retorno.Post;
                    end;
                    // end;//Baixou

                  end; // PodeCont=true (validando algumas informacoes como data de creditado)
                  BancodeDados.Retorno.Next;
                end;

                if (RetornoForm.rgOpcoes.ItemIndex = 1) and
                  (RetornoForm.chLancCX.Checked) then
                begin
                  BancodeDados.Adiciona.SQL.Text :=
                    'delete from livro_caixa where numero_arquivo=' +
                    IntToStr(Retorno.NArquivo);
                  BancodeDados.Adiciona.ExecSQL;

                  if (RetornoForm.chLancCX.Checked) then
                  begin
                    ContaID := RetornoForm.EditConta.KeyValue;
                    // TipoContaID:=(RetornoForm.EditTipoConta.AsInteger);
                    TipoContaID := BancodeDados.BoletosTIPO_CONTAS_ID.Value;
                  end
                  else
                  begin
                    ContaID := 0;
                    TipoContaID := 0;
                  end;

                  if (vlTotalLvCaixa > 0) then
                  begin
                    BancodeDados.Livro_Caixa.Close;
                    BancodeDados.Livro_Caixa.SQL.Text :=
                      PrincipalForm.SQLrepositorio(2) + ' and numero_arquivo ='
                      + IntToStr(Retorno.NArquivo);
                    BancodeDados.Livro_Caixa.Open;

                    BancodeDados.Livro_Caixa.Append;
                    BancodeDados.Livro_CaixaDESCRICAO.Value :=
                      Copy(IntToStr(NTitulosLvCaixa) + ' t?tulos. Ag.' + Agencia
                      + ' CC.' + Conta + '. N.Ret ' + IntToStr(Retorno.NArquivo)
                      + ' - ' + FormatDateTime('dd/mm/yyyy',
                      BancodeDados.RetornoDATA_ARQUIVO.Value), 1, 60);
                    BancodeDados.Livro_CaixaDATA.Value :=
                      BancodeDados.RetornoDATA_CREDITO.Value;
                    BancodeDados.Livro_CaixaENTRADA.Value := vlTotalLvCaixa;
                    // Bancodedados.Livro_CaixaBOLETO_ID.Value:=0;
                    BancodeDados.Livro_CaixaOP_PAG_ID.Value := 4;
                    BancodeDados.Livro_CaixaCONTA_ID.Value := ContaID;
                    BancodeDados.Livro_CaixaTIPO_CONTAS_ID.Value := TipoContaID;
                    // Bancodedados.Livro_CaixaRETORNO_ID.Value:=0;
                    BancodeDados.Livro_CaixaNUMERO_ARQUIVO.Value :=
                      Retorno.NArquivo;
                    // BancodeDados.Livro_CaixaINST_ID.Value         := BancodeDados.BoletosINST_ID.Value;
                    BancodeDados.Livro_Caixa.Post;
                  end;
                end;

                BancodeDados.FDConnection1.Commit;

                // ('2' + DateToStr(Dt_Arquivo));

                if not(Pos('PROCESSADO', UpperCase(aDiretorio)) > 0) then
                begin
                  if not DirectoryExists(aDiretorio + 'processado\') then
                    CreateDir(aDiretorio + 'processado\');
                  if AlterandoNomeRet = 1 then
                    MoveFile(PChar(Retorno.Arquivo),
                      PChar(aDiretorio + 'processado\' + formatfloat('000',
                      BancoID) + '_' + FormatDateTime('yyyymmdd', date) + '_' +
                      aNomeArq))
                  else if AlterandoNomeRet = 2 then
                    MoveFile(PChar(Retorno.Arquivo),
                      PChar(aDiretorio + 'processado\' + formatfloat('000',
                      BancoID) + '_' + FormatDateTime('yyyymmdd',
                      Retorno.DataArquivo) + '_' + Format('%0.4d',
                      [aNArquivo])));
                  MoveFile(PChar(Retorno.Arquivo),
                    PChar(aDiretorio + 'processado\' + formatfloat('000',
                    BancoID) + '_' + FormatDateTime('yyyymmdd',
                    Retorno.DataArquivo) + '_' + Format('%0.4d', [aNArquivo])));
                end;

                if not Assigned(BaixaNEfetuadaForm) then
                  BaixaNEfetuadaForm := TBaixaNEfetuadaForm.Create(Application);
                try

                  if RetornoForm.chConfirma.Checked then
                  begin
                    Mensagem('Quita??o banc?ria efetuada com sucesso.'#13#13 +
                      'Na pr?xima janela realize a impress?o do(s) relat?rio(s) ou salve-os em PDF.',
                      mtInformation, [mbOk], mrOk, 0);

                    { adicionado por eraldo }
                    if not Assigned(CsBaixaBancoForm) then
                      CsBaixaBancoForm := tCsBaixaBancoForm.Create(Application);
                    try
                      BancodeDados.Retorno.Close;
                      BancodeDados.Retorno.SQL.Text :=
                        'select * from retorno where banco_id = ' +
                        IntToStr(BancoID) + ' and numero_arquivo = ' +
                        IntToStr(Retorno.NArquivo) + ' and (tipo = ' +
                        IntToStr(Retorno.TipoRet) + ' )'; // eraldo  18/08/15
                      // IntToStr(Retorno.NArquivo) + ' and (tipo = ' + IntToStr(Retorno.TipoRet) +') and cod_deb in(0, 31)';
                      if Retorno.TipoRet = 2 then
                        BancodeDados.Retorno.SQL.Add(' and cod_deb in(0, 31)');

                      if VerifNossNum > 0 then
                        // eraldo: inclui esta linda para filtrar os registros de retorno da mesma conta com unidades diferentes  08/01/16
                        BancodeDados.Retorno.SQL.Add
                          (' and (UPPER(nosso_numero) ' +
                          PrincipalForm.csContainingLIKE(IntToStr(VerifNossNum),
                          0) + ')');
                      BancodeDados.Retorno.Open;

                      COD_NArquivo := Retorno.NArquivo;
                      Dt_Arquivo := BancodeDados.RetornoDATA_ARQUIVO.Value;
                      NomeArquivo := NomeArquivo;
                      // if not BancodeDados.Bancos.Active then BancodeDados.Bancos.Open;
                      // if BancodeDados.Bancos.Locate('BANCO_ID', BancodeDados.RetornoBANCO_ID.Value, []) then
                      if not BancodeDados.Bancos.Active then
                      begin
                        BancodeDados.Bancos.Close;
                        BancodeDados.Bancos.SQL.Text :=
                          'select * from bancos and banco_id = ' +
                          IntToStr(BancodeDados.RetornoBANCO_ID.Value);
                        BancodeDados.Bancos.Open;
                      end;

                      if BancodeDados.Bancos.IsEmpty then
                        Nome_Banco := BancodeDados.BancosBANCO_NOME.Value
                      else
                        Nome_Banco := '';

                      if not BancodeDados.Retorno.IsEmpty then
                      begin
                        BancodeDados.Boletos.Close;
                        if Trim(idsTitulos) <> '' then
                        begin
                          BancodeDados.Boletos.Close;
                          BancodeDados.Boletos.SQL.Text :=
                            PrincipalForm.SQLrepositorio(0) +
                            ' and b.boleto_id in (' + idsTitulos +
                            ') order by c.nome, b.parcela, b.valor_pago';
                          BancodeDados.Boletos.Open;

                          if not BancodeDados.Boletos.IsEmpty then
                          begin
                            CsBaixaBancoForm.cbData.Enabled := false;
                            CsBaixaBancoForm.Dt_Inicial.Enabled := false;
                            CsBaixaBancoForm.Dt_Final.Enabled := false;
                            CsBaixaBancoForm.Dt_Inicial.DateTime := Dt_Arquivo;
                            CsBaixaBancoForm.Dt_Final.DateTime := Dt_Arquivo;

                            CsBaixaBancoForm.lbPeriodo.Caption :=
                              'Data do Arquivo: ' + FormatDateTime('dd/mm/yyyy',
                              Dt_Arquivo) + ' - Cedente: ' +
                              BancodeDados.RetornoNOME_CEDENTE.Value;
                            CsBaixaBancoForm.LbArquivo.Caption := 'Banco: ' +
                              Nome_Banco + ' - Retorno N.? ' +
                              IntToStr(COD_NArquivo);
                            AtivandoEve := 1;
                            CsBaixaBancoForm.ShowModal;
                          end;

                          { eraldo incluiu este bloco p/ erificar a existencia de titulo recebido via banco, que estejam protestado }
                          BancodeDados.Cont_Prt_Boleto.Close;
                          BancodeDados.Cont_Prt_Boleto.SQL.Text :=
                            'select * from cont_prt_boleto where prot_sit=0 and boleto_id in ('
                            + (idsTitulos) + ')';
                          BancodeDados.Cont_Prt_Boleto.Open;
                          { 0-Protestado; 1-Retirado; 2- Cancelado }
                          idsTitProtest := '';

                          if not BancodeDados.Cont_Prt_Boleto.IsEmpty then
                          begin
                            BancodeDados.Cont_Prt_Boleto.First;
                            while not BancodeDados.Cont_Prt_Boleto.Eof do
                            begin
                              if Trim(idsTitProtest) <> '' then
                                idsTitProtest := idsTitProtest + ',' +
                                  IntToStr(BancodeDados.
                                  Cont_Prt_BoletoBOLETO_ID.Value)
                              else
                                idsTitProtest :=
                                  IntToStr(BancodeDados.
                                  Cont_Prt_BoletoBOLETO_ID.Value);
                              BancodeDados.Cont_Prt_Boleto.Next;
                            end; // while
                          end; // Cont_Prt_Boleto.IsEmpty

                          if Trim(idsTitProtest) <> '' then
                          begin

                            BancodeDados.Boletos.Close;
                            BancodeDados.Boletos.SQL.Text :=
                              PrincipalForm.SQLrepositorio(0) +
                              ' and b.boleto_id in (' + idsTitProtest +
                              ') order by c.nome, b.parcela, b.valor_pago';
                            BancodeDados.Boletos.Open;

                            if not BancodeDados.Boletos.IsEmpty then
                            begin
                              CsBaixaBancoForm.cbData.Enabled := false;
                              CsBaixaBancoForm.Dt_Inicial.Enabled := false;
                              CsBaixaBancoForm.Dt_Final.Enabled := false;
                              CsBaixaBancoForm.Dt_Inicial.DateTime :=
                                Dt_Arquivo;
                              CsBaixaBancoForm.Dt_Final.DateTime := Dt_Arquivo;

                              CsBaixaBancoForm.lbPeriodo.Caption :=
                                'Data do Arquivo: ' +
                                FormatDateTime('dd/mm/yyyy', Dt_Arquivo) +
                                ' - Cedente: ' +
                                BancodeDados.RetornoNOME_CEDENTE.Value;
                              CsBaixaBancoForm.LbArquivo.Caption := 'Banco: ' +
                                Nome_Banco + ' - Retorno N.? ' +
                                IntToStr(COD_NArquivo);
                              AtivandoEve := 1;
                              if Mensagem
                                ('Foram baixados t?tulos protestados neste retorno.'
                                + #13#13 + 'Deseja visualizar agora?',
                                mtConfirmation, [mbYes, mbNo], mrYes, 0) = idYes
                              then
                              begin
                                CsBaixaBancoForm.DBGrid1.Columns[0]
                                  .Visible := true;
                                CsBaixaBancoForm.chTodos.Visible := true;
                                CsBaixaBancoForm.ShowModal;
                              end;
                            end;
                          end; // Trim(idsTitProtest)<>''

                          BancodeDados.Boletos.Close;
                          BancodeDados.Boletos.SQL.Text :=
                            'select b.*, c.nome as cliente, c.cnpj, coalesce(b.valor_mensal, 0) + coalesce(b.valor_lic, 0) as valor_integral, '
                            + '(case when (b.recebimento <= b.vencimento) then b.valor_apagar else (b.valor_apagar - b.desconto) end) as xx, b.vencimento '
                            + 'from boletos b ' +
                            'left join clientes c on (c.cli_id = b.cli_id) ' +
                            'left join livro_caixa l on (l.caixa_id = b.caixa_id) '
                            + 'left join boletos_emissao be on (be.emissao_id = b.emissao_id) '
                            + 'where b.boleto_id in (' + idsTitulos +
                            ') and b.situacao_boleto = ' + QuotedStr('RECEBIDO')
                            + ' and b.valor_pago < (case when (b.recebimento <= b.vencimento) then (b.valor_apagar - be.desconto) else (valor_apagar) end) order by c.nome, b.recebimento';
                          BancodeDados.Boletos.Open;

                          if not BancodeDados.Boletos.IsEmpty then
                          begin
                            if Mensagem
                              ('Foram baixados t?tulos com valor a menos. ' +
                              #13 + 'Deseja visualizar agora?', mtConfirmation,
                              [mbYes, mbNo], mrYes, 0) = idYes then
                            begin
                              vlInt := 0;
                              vlRec := 0;
                              vlARec := 0;

                              BancodeDados.Boletos.First;
                              while not BancodeDados.Boletos.Eof do
                              begin
                                vlInt := vlInt +
                                  BancodeDados.BoletosVALOR_INTEGRAL.Value;
                                if (BancodeDados.BoletosSITUACAO_BOLETO.Value =
                                  'RECEBIDO') then
                                  vlRec := vlRec +
                                    BancodeDados.BoletosVALOR_PAGO.Value;
                                if (BancodeDados.BoletosSITUACAO_BOLETO.Value =
                                  'A RECEBER') then
                                  vlARec := vlARec +
                                    BancodeDados.BoletosvlAPagarCalc.Value;
                                BancodeDados.Boletos.Next;
                              end;

                              if not Assigned(relSituacaoTitulosForm) then
                                relSituacaoTitulosForm :=
                                  TrelSituacaoTitulosForm.Create(Application);
                              try
                                relSituacaoTitulosForm.lbTitulo2.Caption :=
                                  'T?tulos recebidos com valor a menos';
                                relSituacaoTitulosForm.lbDesc2.Caption :=
                                  'Banco: ' + Nome_Banco;
                                relSituacaoTitulosForm.lbPeriodo2.Caption :=
                                  'Retorno N.? ' + IntToStr(COD_NArquivo);

                                relSituacaoTitulosForm.RLGroup2.DataFields :=
                                  'TURMA_ID';

                                relSituacaoTitulosForm.lbTotalInt_.Caption :=
                                  formatfloat(',0.00', vlInt);
                                relSituacaoTitulosForm.lbTotalRec_.Caption :=
                                  formatfloat(',0.00', vlRec);
                                relSituacaoTitulosForm.lbTotalARec_.Caption :=
                                  formatfloat(',0.00', vlARec);
                                BancodeDados.PrepararRel
                                  (relSituacaoTitulosForm.RLReport2);
                              finally
                                relSituacaoTitulosForm.Release;
                                relSituacaoTitulosForm := nil;
                              end;
                            end;
                          end;
                        end;

                        BaixaNEfetuadaForm.Dt_Inicial.DateTime := Dt_Arquivo;
                        BaixaNEfetuadaForm.Dt_Final.DateTime := Dt_Arquivo;

                        BaixaNEfetuadaForm.BaixaN.Close;
                        BaixaNEfetuadaForm.BaixaN.SQL.Text :=
                          'select * from retorno where banco_id = ' +
                          IntToStr(BancoID) + ' and numero_arquivo = ' +
                          IntToStr(COD_NArquivo) + ' and (tipo = ' +
                          IntToStr(Retorno.TipoRet) +
                          ') and (baixou<>1 or baixou is null)';

                        if VerifNossNum > 0 then
                          // eraldo inclui esta linda para filtrar os registros de retorno da mesma conta com unidades diferentes  08/01/16
                          BaixaNEfetuadaForm.BaixaN.SQL.Add
                            (' and (UPPER(nosso_numero) ' +
                            PrincipalForm.csContainingLIKE
                            (IntToStr(VerifNossNum), 0) + ')');

                        BaixaNEfetuadaForm.BaixaN.SQL.Add
                          (' order by numero_arquivo');

                        BaixaNEfetuadaForm.BaixaN.Open;

                        if not BaixaNEfetuadaForm.BaixaN.IsEmpty then
                          BaixaNEfetuadaForm.ShowModal;

                      end; // BancodeDados.Retorno.IsEmpty
                    finally
                      CsBaixaBancoForm.Release;
                      CsBaixaBancoForm := nil;
                    end;
                  end; // confirma

                finally
                  BaixaNEfetuadaForm.Release;
                  BaixaNEfetuadaForm := nil;
                end;

              end; // PodeIr
            finally
              VisualizaRetornoForm.Release;
              VisualizaRetornoForm := nil;
              Screen.Cursor := crDefault;
            end;
            RetornoForm.Close;
          end; // LerArquivo
        finally
          Retorno.Free;
        end;

      end; // For

      if Trim(nossoNumDup) <> '' then
      begin
        if Mensagem
          ('Foram encontrados boletos (com mesmo nosso n?mero) j? quitados anteriormente, deseja visualiz?-los?',
          mtConfirmation, [mbYes, mbNo], mrYes, 0) = idYes then
        begin
          try
            if not Assigned(BaixaNEfetuadaForm) then
              BaixaNEfetuadaForm := TBaixaNEfetuadaForm.Create(Application);
            try
              podePesquisarAlunos := true;
              BaixaNEfetuadaForm.BaixaN.Close;
              BaixaNEfetuadaForm.BaixaN.SQL.Text :=
                'select * from retorno where banco_id = ' + IntToStr(BancoID) +
                ' and nosso_numero in (' + nossoNumDup +
                ') and coalesce(cod_deb, 0) = 0';

              if VerifNossNum > 0 then
                // eraldo inclui esta linda para filtrar os registros de retorno da mesma conta com unidades diferentes  08/01/16
                BaixaNEfetuadaForm.BaixaN.SQL.Add(' and (UPPER(nosso_numero) ' +
                  PrincipalForm.csContainingLIKE(IntToStr(VerifNossNum),
                  0) + ')');

              BaixaNEfetuadaForm.BaixaN.SQL.Add
                (' order by nosso_numero, numero_arquivo');
              BaixaNEfetuadaForm.BaixaN.Open;
              if BaixaNEfetuadaForm.BaixaN.IsEmpty then
                Mensagem('Informa??es n?o dispon?veis.', mtInformation,
                  [mbOk], mrOk, 0)
              else
              begin
                try
                  BaixaNEfetuadaForm.BaixaN.DisableControls;
                  if not Assigned(RelArquivoRetornoForm) then
                    RelArquivoRetornoForm := tRelArquivoRetornoForm.Create
                      (Application);
                  RelArquivoRetornoForm.lbTitulo1.Caption :=
                    'Rela??o de boletos pagos mais de uma vez';
                  RelArquivoRetornoForm.lbPeriodo2.Caption := 'Arquivo Ret.: ' +
                    QuotedStr(BaixaNEfetuadaForm.BaixaNNOME_ARQ.Value) +
                    ' -  N.? ' +
                    IntToStr(BaixaNEfetuadaForm.BaixaNNUMERO_ARQUIVO.Value);
                  RelArquivoRetornoForm.lbSituacao2.Caption :=
                    'Data do Arquivo: ' + FormatDateTime('dd/mm/yyyy',
                    BaixaNEfetuadaForm.BaixaNDATA_ARQUIVO.Value);
                  RelArquivoRetornoForm.lbDescricao2.Caption :=
                    'Rela??o de boletos pagos mais de uma vez';
                  RelArquivoRetornoForm.RLGroup2.DataFields := '';
                  BancodeDados.PrepararRel(RelArquivoRetornoForm.RLReport2);
                finally
                  RelArquivoRetornoForm.Release;
                  RelArquivoRetornoForm := nil;
                  BaixaNEfetuadaForm.BaixaN.EnableControls;
                end;
              end;
            finally
              BaixaNEfetuadaForm.Release;
              BaixaNEfetuadaForm := nil;
            end;
          except
            On E: Exception do
              TraduzErro(E.Message);
          end;
        end;
      end;

      if not RetornoForm.TitQuitado2.IsEmpty then
      begin
        if Mensagem
          ('Foram encontrados t?tulos quitados anteriormente atrav?s de retornos/baixas diferentes.'#13
          + 'Deseja visualiz?-los?', mtConfirmation, [mbYes, mbNo], mrYes, 0) = idYes
        then
        begin
          try
            try
              if not Assigned(RelArquivoRetornoForm) then
                RelArquivoRetornoForm := tRelArquivoRetornoForm.Create
                  (Application);
              BancodeDados.PrepararRel(RelArquivoRetornoForm.RLReport4);
            finally
              RelArquivoRetornoForm.Release;
              RelArquivoRetornoForm := nil;
            end;
          except
            On E: Exception do
              TraduzErro(E.Message);
          end;
        end;
      end;

      RetornoForm.LbNomeOperacao.Caption := '';
      BaixandoAutom := false;
    end; // OpenDialog1
  end; // Locate
end;

procedure Desfazer;
begin
  if not BancodeDados.Bancos.Locate('BANCO_NOME', RetornoForm.EditBanco.Text,
    [loCaseInsensitive]) then
    Mensagem('O banco n?o foi localizado.', mtInformation, [mbOk], mrOk, 0)
  else
  begin
    if PrincipalForm.LiberaAcesso then
    begin
      if not Assigned(IndicaRetornoForm) then
        IndicaRetornoForm := TIndicaRetornoForm.Create(Application);
      try
        Screen.Cursor := crSQLWait;
        if not(BancodeDados.FDConnection1.Connected) then
          BancodeDados.FDConnection1.Open;

        if not BancodeDados.FDConnection1.InTransaction then
          BancodeDados.FDConnection1.StartTransaction;

        if IndicaRetornoForm.ShowModal = mrOk then
          // if IndicaRetornoForm.QryRetornoNUMERO_ARQUIVO.Value > 0 then
          if listaDesfazerRet.Count > 0 then
          begin

            IndicaRetornoForm.QryRetorno.First;
            while not IndicaRetornoForm.QryRetorno.Eof do
            begin

              // if (listaDesfazerRet.IndexOf(IndicaRetornoForm.QryRetornoNUMERO_ARQUIVO.AsString) >= 0) then begin
              if IndicaRetornoForm.QryRetornoATIVO.AsBoolean then
              begin

                BancodeDados.qryBanco.Close;
                BancodeDados.qryBanco.Params[0].Value :=
                  BancodeDados.BancosBANCO_ID.Value;
                BancodeDados.qryBanco.Open;

                BancodeDados.Retorno.Close;
                BancodeDados.Retorno.SQL.Text :=
                  'select * from retorno where numero_arquivo = ' +
                  IntToStr(IndicaRetornoForm.QryRetornoNUMERO_ARQUIVO.Value) +
                  ' and CODIGO_BANCO = ' +
                  IntToStr(IndicaRetornoForm.QryRetornoCODIGO_BANCO.Value);

                if not(BancodeDados.qryBancoBAIX_BOL_PARAM.Value > 0) then
                  BancodeDados.Retorno.SQL.Add(' and banco_id = ' +
                    IntToStr(BancodeDados.BancosBANCO_ID.Value));

                if VerifNossNum > 0 then
                  // eraldo inclui esta linda para filtrar os registros de retorno da mesma conta com unidades diferentes  08/01/16
                  BancodeDados.Retorno.SQL.Add(' and (UPPER(nosso_numero) ' +
                    PrincipalForm.csContainingLIKE(IntToStr(VerifNossNum),
                    0) + ')');
                BancodeDados.Retorno.Open;

                if not BancodeDados.Retorno.IsEmpty then
                begin
                  BancodeDados.Retorno.Last;
                  RetornoForm.Gauge1.MaxValue := BancodeDados.Retorno.RecNo;
                  RetornoForm.LbNomeOperacao.Caption :=
                    'Revertendo Processamento de Retorno';
                  BancodeDados.Retorno.First;
                  while not BancodeDados.Retorno.Eof do
                  begin
                    RetornoForm.Gauge1.Progress := BancodeDados.Retorno.RecNo;
                    Application.ProcessMessages;
                    BancodeDados.Emissoes.Close;
                    BancodeDados.Emissoes.SQL.Text :=
                      'select * from boletos_emissao where CODIGO_BANCO = ' +
                      IntToStr(BancodeDados.RetornoCODIGO_BANCO.Value);

                    if not(BancodeDados.qryBancoBAIX_BOL_PARAM.Value > 0) then
                    begin
                      BancodeDados.Emissoes.SQL.Add
                        (' and banco_id = ' +
                        IntToStr(BancodeDados.RetornoBANCO_ID.Value));

                      if BancodeDados.RetornoTIPO.Value = 1 then
                        BancodeDados.Emissoes.SQL.Add(' and nosso_numero=' +
                          QuotedStr(BancodeDados.RetornoNOSSO_NUMERO.AsString))
                      else if BancodeDados.RetornoTIPO.Value = 2 then
                        BancodeDados.Emissoes.SQL.Add(' and emissao_id = ' +
                          Trim(BancodeDados.RetornoSEU_NUMERO.Value));
                    end
                    else
                    begin
                      if (BancodeDados.RetornoTIPO.Value <> 2) then
                      begin // 2
                        BancodeDados.Emissoes.SQL.Add(' AND nosso_numero = ' +
                          QuotedStr(BancodeDados.RetornoNOSSO_NUMERO.Value));

                        if Trim(BancodeDados.RetornoSEU_NUMERO.Value) <> '' then
                          BancodeDados.Emissoes.SQL.Add
                            (' AND emissao_id = ' +
                            QuotedStr(BancodeDados.RetornoSEU_NUMERO.Value))
                        else
                        begin
                          FormatSettings.DecimalSeparator := '.';
                          if BancodeDados.RetornoDATA_VENCIMENTO.Value > 0 then
                            BancodeDados.Emissoes.SQL.Add
                              (' AND vencimento =' +
                              QuotedStr(FormatDateTime('yyyy/mm/dd',
                              BancodeDados.RetornoDATA_VENCIMENTO.Value)));

                          if BancodeDados.RetornoVALOR_DOCUMENTO.Value > 0 then
                            BancodeDados.Emissoes.SQL.Add
                              (' AND valor_doc =' +
                              CurrToStr(BancodeDados.
                              RetornoVALOR_DOCUMENTO.Value));
                          FormatSettings.DecimalSeparator := ',';
                        end;
                      end
                      else // 2
                        BancodeDados.Emissoes.SQL.Add(' AND EMISSAO_ID = ' +
                          QuotedStr(BancodeDados.RetornoSEU_NUMERO.Value))
                    end;

                    BancodeDados.Emissoes.Open;
                    if not BancodeDados.Emissoes.IsEmpty then
                    begin
                      BancodeDados.Boletos.Close;
                      BancodeDados.Boletos.SQL.Text :=
                        PrincipalForm.SQLrepositorio(0) + ' and b.emissao_id ='
                        + IntToStr(BancodeDados.EmissoesEMISSAO_ID.Value) +
                        ' and op_pag_id = 4';
                      BancodeDados.Boletos.Open;
                      // nao estornar se ja recebido na escola,
                      if not BancodeDados.Boletos.IsEmpty then
                      begin
                        BancodeDados.Boletos.First;
                        while not BancodeDados.Boletos.Eof do
                        begin
                          BancodeDados.Boletos.Edit;
                          BancodeDados.BoletosSITUACAO_BOLETO.Value :=
                            'A RECEBER';
                          BancodeDados.BoletosVALOR_PAGO.Clear;
                          BancodeDados.BoletosRECEBIMENTO.Clear;
                          BancodeDados.BoletosRETORNO_ID.Clear;
                          BancodeDados.BoletosOP_PAG_ID.Value := 4;
                          // BancodeDados.BoletosOBS_RECIBO.Clear;
                          // eraldo adicionou este bloco abaixo
                          BancodeDados.BoletosJUROS.Clear;
                          BancodeDados.BoletosMULTA.Clear;
                          // BancodeDados.BoletosHORA_RECEB.Clear;
                          // BancodeDados.BoletosLOJA_ID.Value := 0;
                          // BancodeDados.BoletosID_PAGAR.Clear;
                          BancodeDados.BoletosRECEB_ID.Clear;

                          BancodeDados.BoletosDUPLIC_RET_ID.Clear;
                          BancodeDados.BoletosDUPLIC_BOL_ID.Clear;


                          // BancodeDados.BoletosUSUARIO.Value := Usuario;
                          // if Trim(BancodeDados.BoletosOBS_ESTORNO.AsString) = '' then
                          // BancodeDados.BoletosOBS_ESTORNO.AsString := 'O t?tulo foi estornado/janela de retorno pelo usu?rio: ' + NomeSupervisor + ' na seguinte data - hora: ' + DateToStr(Date) + ' - ' + TimeToStr(Time)
                          // else
                          // BancodeDados.BoletosOBS_ESTORNO.AsString := 'O t?tulo foi estornado/janela de retorno pelo usu?rio: ' + NomeSupervisor + ' na seguinte data - hora: ' + DateToStr(Date) + ' - ' + TimeToStr(Time) + #13 + #13 + BancodeDados.BoletosOBS_ESTORNO.AsString;

                          BancodeDados.Boletos.Post;

                          BancodeDados.Boletos.Next;

                        end;
                      end;
                    end;
                    BancodeDados.Retorno.Next;
                  end; // while

                  BancodeDados.Adiciona.SQL.Text :=
                    'delete from retorno where numero_arquivo=' +
                    IntToStr(BancodeDados.RetornoNUMERO_ARQUIVO.Value) +
                    ' and CODIGO_BANCO = ' +
                    IntToStr(BancodeDados.RetornoCODIGO_BANCO.Value);
                  // (BancodeDados.Adiciona.SQL.Text);
                  BancodeDados.Adiciona.ExecSQL;

                  BancodeDados.Adiciona.SQL.Text :=
                    'delete from retorno_ocorrencia where numero_arquivo=' +
                    IntToStr(BancodeDados.RetornoNUMERO_ARQUIVO.Value) +
                    ' and CODIGO_BANCO = ' +
                    IntToStr(BancodeDados.RetornoCODIGO_BANCO.Value);
                  // (BancodeDados.Adiciona.SQL.Text);
                  BancodeDados.Adiciona.ExecSQL;

                  BancodeDados.Adiciona.SQL.Text :=
                    'delete from livro_caixa where numero_arquivo=' +
                    IntToStr(BancodeDados.RetornoNUMERO_ARQUIVO.Value);
                  // (BancodeDados.Adiciona.SQL.Text);
                  BancodeDados.Adiciona.ExecSQL;
                end; // empty
              end; // istaDesfazerRet.IndexOf
              IndicaRetornoForm.QryRetorno.Next;
            end;
            BancodeDados.FDConnection1.Commit;
            Mensagem('Processo conclu?do com sucesso.', mtInformation,
              [mbOk], mrOk, 0);
          end
          else
          begin
            // NumeroArq
            Mensagem('Nenhum registro v?lido foi selecionado!', mtInformation,
              [mbOk], mrOk, 0);
          end;
      finally
        Screen.Cursor := crDefault;
        IndicaRetornoForm.Release;
        IndicaRetornoForm := nil;
      end;
    end;
    RetornoForm.Close;
  end;
end;

procedure TRetornoForm.BTIniciarClick(Sender: TObject);
var
  Registro: TSEDRegistro;
begin

  Registro := TSEDRegistro.Create;
  try
    Registro.RootKey := HKEY_CURRENT_USER;
    if Registro.AbrirChave(ChaveRegSED) then
    begin
      if rgOpcoes.ItemIndex = 0 then
        Registro.EscreveNumero('ret_op_lc', 0)
      else if rgOpcoes.ItemIndex = 1 then
        Registro.EscreveNumero('ret_op_lc', 1);

      if cbAnexarRel.Checked then
        // guardar no registro a ultima op??o usada pelo usuario  da op??o (Na Consulta de Recebimento Via Banco >> Anexar os relat?rios de ?Recebimento Via Banco? e ?Arquivo Retorno?)
        Registro.EscreveNumero('anex_rel_viabanc', 1)
      else
        Registro.EscreveNumero('anex_rel_viabanc', 0);

      Registro.FecharChave;
    end;
  finally
    Registro.Free;
  end; // gravado no regedit

  HabilitarBotoes(Self, false);
  AtivandoEve := 0;
  rgOpcoes.Enabled := false;
  chLancCX.Enabled := false;
  chConfirma.Enabled := false;
  cbAnexarRel.Enabled := false;

  if Trim(RetornoForm.EditBanco.Text) = '' then
  begin
    Mensagem('O nome do banco n?o foi informado.', mtInformation,
      [mbOk], mrOk, 0);
    EditBanco.SetFocus;
  end
  else
  begin

    // if (PrincipalForm.TeclaPressionada(VK_SHIFT) and (CodUsuario < -2)) then
    // suporte := True;
    // else
    // suporte := false;

    if RBProcessar.Checked then
    begin
      if (Trim(EditConta.Text) = '') and (chLancCX.Checked) then
      begin
        Mensagem('Informe a conta de movimenta??o para o livro caixa.',
          mtInformation, [mbOk], mrOk, 0);
        EditConta.SetFocus;
      end
      else
        Processar;
    end
    else if RBDesfazer.Checked then
      Desfazer;
  end;

  if (chLancCX.Checked) then
    rgOpcoes.Enabled := true;
  HabilitarBotoes(Self, true);

  chLancCX.Enabled := true;
  chConfirma.Enabled := true;
  cbAnexarRel.Enabled := true;
end;

procedure TRetornoForm.RBProcessarClick(Sender: TObject);
begin
  rgOpcoes.Enabled := true;

  chLancCX.Enabled := true;
  chLancCX.Checked := true;
end;

procedure TRetornoForm.RetornoTmpCalcFields(DataSet: TDataSet);
begin
  RetornoTmpOBSERVACAO.Value := (RetornoTmpOBS_1.AsString) + ' ' +
    (RetornoTmpOBS_2.AsString);
end;

procedure TRetornoForm.RBDesfazerClick(Sender: TObject);
begin
  rgOpcoes.Enabled := false;

  chLancCX.Checked := false;
  chLancCX.Enabled := false;
  RBProcessar.Checked := not(RBDesfazer.Checked);
end;

procedure TRetornoForm.chLancCXClick(Sender: TObject);
begin

  if chLancCX.Checked = true then
  begin
    rgOpcoes.Enabled := true;
    EditConta.Enabled := true;
  end
  else
  begin
    // if PrincipalForm.LiberaAcesso(199, 'baixar sem lan?ar no livro caixa') then
    if Mensagem('Deseja baixar sem lan?ar no livro caixa?', mtConfirmation,
      [mbYes, mbNo], mrYes, 0) = idNo then
    begin
      rgOpcoes.Enabled := false;
      EditConta.Enabled := false;
    end
    else
    begin
      rgOpcoes.Enabled := true;
      EditConta.Enabled := true;
      chLancCX.Checked := true;
    end;
  end;

end;

procedure TRetornoForm.CtrlF51Click(Sender: TObject);
begin
  RBDesfazer.Visible := not(RBDesfazer.Visible);
  RBDesfazer.Checked := not(RBDesfazer.Checked);
  RBProcessar.Checked := not(RBDesfazer.Checked);
end;

procedure TRetornoForm.dsRetornoTmpDataChange(Sender: TObject; Field: TField);
begin
  if RetornoForm.RetornoTmp.RecordCount > 0 then
  begin
    VisualizaRetornoForm.lblFalhas.Visible := true;
    VisualizaRetornoForm.lblQtdeFalhas.Visible := true;
    VisualizaRetornoForm.lblQtdeFalhas.Caption :=
      Format('%0.4d', [RetornoForm.RetornoTmp.RecordCount]);
  end;

end;

procedure TRetornoForm.EditBancoChange(Sender: TObject);
begin
  if (RetornoForm.EditBanco.Text) = '' then
    chLancCX.Enabled := false
  else
    chLancCX.Enabled := true;

  chLancCX.Checked := true;

end;

procedure TRetornoForm.EditBancoClick(Sender: TObject);
begin
  // chLancCX.Checked:=True;
end;

procedure TRetornoForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  BaixandoAutom := false;

  try
    if (EditConta.KeyValue > 0) then
      ContaID := EditConta.KeyValue;
  except
    ContaID := 0;
  end;

end;

procedure TRetornoForm.FormCreate(Sender: TObject);
begin
  listaDesfazerRet := TStringList.Create;
end;

procedure TRetornoForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
  begin
    Key := #0;
    Close;
  end;
end;

end.
