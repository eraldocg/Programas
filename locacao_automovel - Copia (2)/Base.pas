unit Base;

interface

uses
  SysUtils, Classes, Data.DB, Windows, jpeg, RLTypes, Controls, RLSaveDialog,
  RLPrintDialog, Gauges, RLMetaFile, RLPreviewForm, SedNFSe_TLB, RLReport,
  RLFilters, RLParser, Dialogs, Graphics, SEDDBImage, Forms, DBClient,
  Data.SqlExpr, Data.FMTBcd, Datasnap.Provider, IdIOHandler, IdIOHandlerSocket,
  IdIOHandlerStack, IdSSL, IdSSLOpenSSL, IdBaseComponent, IdComponent,
  IdTCPConnection,
  IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase,
  IdSMTP,
  IdMessage, IdText, IdAttachmentFile, IdGlobalProtocols, Winapi.ActiveX,
  RLRichFilter,
  RLHTMLFilter, RLXLSFilter, RLPDFFilter, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Comp.Client, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Comp.UI,
  FireDAC.Phys.IBBase, FireDAC.Phys.FB, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, ShellApi,
  FireDAC.Phys.SQLiteVDataSet, FireDAC.Comp.ScriptCommands, FireDAC.Stan.Util,
  FireDAC.Comp.Script, FireDAC.Phys.MSSQLDef, FireDAC.Phys.MySQLDef,
  FireDAC.Phys.MySQL, FireDAC.Phys.ODBCBase, FireDAC.Phys.MSSQL,
  RLDraftFilter, FireDAC.Comp.BatchMove, FireDAC.Comp.BatchMove.DataSet,
  FireDAC.Comp.BatchMove.SQL, ACBrBoleto, ACBrBoletoFCFortesFr, ACBrBase;

type
  TRGBArray = array [Word] of TRGBTriple;
  pRGBArray = ^TRGBArray;

  TBancodeDados = class(TDataModule)
    Clientes: TFDQuery;
    ClientesCLI_ID: TIntegerField;
    ClientesCNPJ: TStringField;
    ClientesTIPO: TStringField;
    ClientesCLIENTE_DESDE: TDateField;
    ClientesLOGRADOURO: TStringField;
    ClientesBAIRRO: TStringField;
    ClientesESTADO: TStringField;
    ClientesCEP: TStringField;
    ClientesFONE1: TStringField;
    ClientesFONE2: TStringField;
    ClientesFAX: TStringField;
    ClientesOBS: TMemoField;
    DsClientes: TDataSource;
    QryID: TFDQuery;
    GradeFin: TFDQuery;
    DSGrade: TDataSource;
    GradeFinGRADE_ID: TIntegerField;
    GradeFinDESCRICAO: TStringField;
    GradeFinMULTA: TFloatField;
    GradeFinJUROS: TFloatField;
    Boletos: TFDQuery;
    DSBoletos: TDataSource;
    BoletosBOLETO_ID: TIntegerField;
    BoletosPARCELA: TStringField;
    BoletosDESCONTO: TFloatField;
    BoletosACRESCIMO: TFloatField;
    BoletosVALOR_APAGAR: TFloatField;
    BoletosJUROS: TFloatField;
    BoletosMULTA: TFloatField;
    BoletosVALOR_PAGO: TFloatField;
    BoletosSITUACAO_BOLETO: TStringField;
    BoletosVENCIMENTO: TDateField;
    BoletosEMISSAO: TDateField;
    BoletosRECEBIMENTO: TDateField;
    BoletosCLI_ID: TIntegerField;
    BoletosDESCRICAO_PAGO: TStringField;
    BoletosGRADE_ID: TIntegerField;
    BoletosBANCO_ID: TIntegerField;
    BoletosRETORNO_ID: TIntegerField;
    BoletosOBS: TMemoField;
    BoletosOBS_BOLETO: TMemoField;
    BoletosUSR_CAD: TIntegerField;
    BoletosUSR_ID: TIntegerField;
    BoletosDT_ALTERADO: TDateField;
    BoletosBancoNome: TStringField;
    BoletosATIVO: TBooleanField;
    BoletosQtdDias: TIntegerField;
    Emissoes: TFDQuery;
    Retorno: TFDQuery;
    RetornoRETORNO_ID: TIntegerField;
    RetornoNUMERO_ARQUIVO: TIntegerField;
    RetornoDATA_ARQUIVO: TDateField;
    RetornoNUMERO_REGISTRO: TIntegerField;
    RetornoBANCO_ID: TIntegerField;
    RetornoCODIGO_BANCO: TIntegerField;
    RetornoCODIGO_AGENCIA: TIntegerField;
    RetornoDIGITO_AGENCIA: TStringField;
    RetornoNUMERO_CONTA: TStringField;
    RetornoDIGITO_CONTA: TIntegerField;
    RetornoCODIGO_CEDENTE: TStringField;
    RetornoNOME_CEDENTE: TStringField;
    RetornoCOD_SACADO: TIntegerField;
    RetornoNOME_SACADO: TStringField;
    RetornoSEU_NUMERO: TStringField;
    RetornoNOSSO_NUMERO: TStringField;
    RetornoCARTEIRA: TIntegerField;
    RetornoDATA_CREDITO: TDateField;
    RetornoDATA_RECEBIMENTO: TDateField;
    RetornoVALOR_DOCUMENTO: TFloatField;
    RetornoVALOR_IOF: TFloatField;
    RetornoVALOR_ABATIMENTO: TFloatField;
    RetornoVALOR_DESCONTO: TFloatField;
    RetornoVALOR_MORA: TFloatField;
    RetornoVALOR_OUTROS_CREDITOS: TFloatField;
    RetornoVALOR_DESP_COBRANCA: TFloatField;
    RetornoVALOR_OUTRAS_DESP: TFloatField;
    RetornoBAIXOU: TIntegerField;
    RetornoVALOR_MULTA: TFloatField;
    RetornoTX_BANCO: TFloatField;
    RetornoVALOR_PAGO: TFloatField;
    RetornoUSR_CAD: TIntegerField;
    RetornoUSUARIO_ID: TIntegerField;
    RetornoDT_ALTERADO: TDateField;
    RetornoDATA_VENCIMENTO: TDateField;
    EmissoesEMISSAO_ID: TIntegerField;
    EmissoesBANCO_ID: TIntegerField;
    EmissoesCLI_ID: TIntegerField;
    EmissoesEMISSAO: TDateField;
    EmissoesVENCIMENTO: TDateField;
    EmissoesPARCELA: TStringField;
    EmissoesESPECIE: TStringField;
    EmissoesACEITE: TStringField;
    EmissoesMOEDA: TStringField;
    EmissoesQTD_MOEDA: TIntegerField;
    EmissoesVALOR_MOEDA: TFloatField;
    EmissoesSEQ_NOSSO_NUM: TIntegerField;
    EmissoesNOSSO_NUMERO: TStringField;
    EmissoesVALOR_DOC: TFloatField;
    EmissoesCOD_BARRAS: TStringField;
    EmissoesLINHA_DIG: TStringField;
    EmissoesVALOR_RECEBIDO: TFloatField;
    EmissoesGRADE_ID: TIntegerField;
    EmissoesDESCONTO: TFloatField;
    EmissoesRETORNO_ID: TIntegerField;
    EmissoesID_BOLETOS: TStringField;
    EmissoesUSR_CAD: TIntegerField;
    EmissoesOBS: TMemoField;
    EmissoesDIAS_TOLERANCIA: TIntegerField;
    EmissoesSITUACAO_BOLETO: TStringField;
    EmissoesDATA_RECEBIMENTO: TDateField;
    DSEmissoes: TDataSource;
    DSRetorno: TDataSource;
    Contas: TFDQuery;
    DSContas: TDataSource;
    ContasCONTA_ID: TIntegerField;
    ContasCONTA: TStringField;
    ContasABREV: TStringField;
    ContasOBSERVACAO: TMemoField;
    ContasREFERENCIA: TStringField;
    ContasUSR_CAD: TIntegerField;
    ContasUSUARIO_ID: TIntegerField;
    ContasDT_ALTERADO: TDateField;
    DSLivroCaixa: TDataSource;
    QryLivro_Caixa: TFDQuery;
    QryLivro_CaixaTSAIDA: TFloatField;
    QryLivro_CaixaTENTRADA: TFloatField;
    QryLivro_CaixaDIFERENCA: TFloatField;
    qryGradeFin: TFDQuery;
    qryGradeFinGRADE_ID: TIntegerField;
    qryGradeFinMULTA: TFloatField;
    qryGradeFinJUROS: TFloatField;
    V_Boletos: TFDQuery;
    dsV_Boletos: TDataSource;
    V_BoletosEMISSAO_ID: TIntegerField;
    V_BoletosBANCO_ID: TIntegerField;
    V_BoletosCOD_BANCO: TIntegerField;
    V_BoletosDIG_BANCO: TIntegerField;
    V_BoletosAGENCIA: TStringField;
    V_BoletosDIG_AGENCIA: TStringField;
    V_BoletosCONTA_CORRENTE: TStringField;
    V_BoletosDIG_CONTA_CORRENTE: TStringField;
    V_BoletosCONVENIO: TIntegerField;
    V_BoletosLOGOMARCA: TBlobField;
    V_BoletosLOCAL_PAGAMENTO: TStringField;
    V_BoletosNOME_CEDENTE: TStringField;
    V_BoletosCARTEIRA: TIntegerField;
    V_BoletosCOD_CEDENTE: TStringField;
    V_BoletosDIG_COD_CEDENTE: TStringField;
    V_BoletosDIAS_TOLERANCIA: TIntegerField;
    V_BoletosCLI_ID: TIntegerField;
    V_BoletosGRADE_ID: TIntegerField;
    V_BoletosSITUACAO_BOLETO: TStringField;
    V_BoletosEMISSAO: TDateField;
    V_BoletosVENCIMENTO: TDateField;
    V_BoletosESPECIE: TStringField;
    V_BoletosACEITE: TStringField;
    V_BoletosMOEDA: TStringField;
    V_BoletosQTD_MOEDA: TIntegerField;
    V_BoletosVALOR_MOEDA: TFloatField;
    V_BoletosSEQ_NOSSO_NUM: TIntegerField;
    V_BoletosNOSSO_NUMERO: TStringField;
    V_BoletosVALOR_DOC: TFloatField;
    V_BoletosDESCONTO: TFloatField;
    V_BoletosCOD_BARRAS: TStringField;
    V_BoletosLINHA_DIG: TStringField;
    V_BoletosDATA_RECEBIMENTO: TDateField;
    V_BoletosVALOR_RECEBIDO: TFloatField;
    V_BoletosPARCELA: TStringField;
    V_BoletosOBS: TMemoField;
    V_BoletosAgCodCedente: TStringField;
    V_BoletosCodIdentBanco: TStringField;
    V_BoletosLOGRADOURO: TStringField;
    V_BoletosBAIRRO: TStringField;
    V_BoletosCIDADE: TStringField;
    V_BoletosESTADO: TStringField;
    V_BoletosCEP: TStringField;
    V_BoletosSacado: TStringField;
    V_BoletosEndereco: TStringField;
    BoletosVALOR_MENSAL: TFloatField;
    BoletosVALOR_LIC: TFloatField;
    Pagar: TFDQuery;
    DSPagar: TDataSource;
    PagarPAGAR_ID: TIntegerField;
    PagarDESCRICAO: TStringField;
    PagarPARCELA: TStringField;
    PagarFORNE_ID: TIntegerField;
    PagarCONTA_ID: TIntegerField;
    PagarGRADE_ID: TIntegerField;
    PagarEMISSAO: TDateField;
    PagarVENCIMENTO: TDateField;
    PagarPAGAMENTO: TDateField;
    PagarVALOR: TFloatField;
    PagarDESCONTO: TFloatField;
    PagarACRESCIMO: TFloatField;
    PagarACRESCIMO_EXTRA: TFloatField;
    PagarVALOR_APAGAR: TFloatField;
    PagarMULTA: TFloatField;
    PagarJUROS_DIA: TFloatField;
    PagarJUROS_MES: TFloatField;
    PagarFIXA: TSmallintField;
    PagarBANCO_ID: TIntegerField;
    PagarDESCRICAO_PAGO: TStringField;
    PagarOBSERVACAO: TMemoField;
    PagarUSR_CAD: TIntegerField;
    PagarUSUARIO_ID: TIntegerField;
    PagarDT_ALTERADO: TDateField;
    Fornecedores: TFDQuery;
    DSForne: TDataSource;
    FornecedoresFORNE_ID: TIntegerField;
    FornecedoresNOME: TStringField;
    FornecedoresFANTASIA: TStringField;
    FornecedoresRESPONSAVEL: TStringField;
    FornecedoresIE: TStringField;
    FornecedoresCNPJ: TStringField;
    FornecedoresEND_ID: TIntegerField;
    FornecedoresNUMERO: TStringField;
    FornecedoresTELEFONE: TStringField;
    FornecedoresCELULAR: TStringField;
    FornecedoresFAX: TStringField;
    FornecedoresEMAIL: TStringField;
    FornecedoresSITE: TStringField;
    FornecedoresOBS: TMemoField;
    FornecedoresBANCO_ID: TIntegerField;
    FornecedoresAGENCIA: TStringField;
    FornecedoresCONTA_CORRENTE: TStringField;
    FornecedoresCONTA_POUPANCA: TStringField;
    FornecedoresUSUARIO_ID: TIntegerField;
    FornecedoresUSR_CAD: TIntegerField;
    FornecedoresDATA_CADASTRO: TDateField;
    FornecedoresDT_ALTERADO: TDateField;
    PagarATIVO: TBooleanField;
    PagarForneNome: TStringField;
    PagarContaNome: TStringField;
    PagarQtdDias: TIntegerField;
    RetornoDataVencCalc: TDateField;
    CaixaPagar: TFDQuery;
    DSCaixaPagar: TDataSource;
    BoletosGradeNome: TStringField;
    BoletosEMISSAO_ID: TIntegerField;
    BoletosDiasTolCalc: TIntegerField;
    qryCli: TFDQuery;
    qryCliCLI_ID: TIntegerField;
    qryBancos: TFDQuery;
    qryBancosBANCO_ID: TIntegerField;
    qryBancosDIAS_TOLERANCIA: TIntegerField;
    BoletosCliFone: TStringField;
    qryCliFONE1: TStringField;
    BoletosGradeJuros: TCurrencyField;
    BoletosGradeMulta: TCurrencyField;
    qryPagar: TFDQuery;
    qryPagarPAGAR_ID: TIntegerField;
    qryPagarDESCRICAO: TStringField;
    qryPagarPARCELA: TStringField;
    qryPagarFORNE_ID: TIntegerField;
    qryPagarCONTA_ID: TIntegerField;
    qryPagarGRADE_ID: TIntegerField;
    qryPagarEMISSAO: TDateField;
    qryPagarVENCIMENTO: TDateField;
    qryPagarPAGAMENTO: TDateField;
    qryPagarVALOR: TFloatField;
    qryPagarDESCONTO: TFloatField;
    qryPagarACRESCIMO: TFloatField;
    qryPagarACRESCIMO_EXTRA: TFloatField;
    qryPagarVALOR_APAGAR: TFloatField;
    qryPagarMULTA: TFloatField;
    qryPagarJUROS_DIA: TFloatField;
    qryPagarJUROS_MES: TFloatField;
    qryPagarFIXA: TSmallintField;
    qryPagarBANCO_ID: TIntegerField;
    qryPagarDESCRICAO_PAGO: TStringField;
    qryPagarOBSERVACAO: TMemoField;
    qryPagarUSR_CAD: TIntegerField;
    qryPagarUSUARIO_ID: TIntegerField;
    qryPagarDT_ALTERADO: TDateField;
    qryPagarVALOR_PAGO: TFloatField;
    qryPagarVALOR_FALTA: TFloatField;
    qryPagarSITUACAO_PAGAR: TStringField;
    BoletosImpBoleto: TStringField;
    BoletosCAIXA_ID: TIntegerField;
    BoletosDT_CREDITO: TDateField;
    DsContatos: TDataSource;
    Contatos: TFDQuery;
    ContatosCONTATO_ID: TIntegerField;
    ContatosEMPRESA: TStringField;
    ContatosCONTATO: TStringField;
    ContatosCONT_EMAIL: TStringField;
    ContatosCONT_FUNCA: TStringField;
    ContatosLOGRADOURO: TStringField;
    ContatosNUMERO: TStringField;
    ContatosCEP: TStringField;
    ContatosBAIRRO: TStringField;
    ContatosCIDADE: TStringField;
    ContatosUF: TStringField;
    ContatosFONE1: TStringField;
    ContatosFONE2: TStringField;
    ContatosCELULAR: TStringField;
    ContatosFAX: TStringField;
    ContatosEMAIL: TStringField;
    ContatosSITE: TStringField;
    ContatosPAIS: TStringField;
    ContatosOBS: TMemoField;
    ContatosN_ALUNOS: TIntegerField;
    ContatosE_INF: TIntegerField;
    ContatosE_FUN: TIntegerField;
    ContatosE_MED: TIntegerField;
    ContatosCURSOS: TIntegerField;
    ContatosDT_CADASTRO: TDateField;
    ContatosSITUACAO: TStringField;
    ContatosATIVO: TBooleanField;
    ContatosDIRETOR: TStringField;
    ContatosTIPO: TStringField;
    ContatosPROCEDENTE: TStringField;
    V_BoletosSacado2: TStringField;
    RecBol: TClientDataSet;
    RecBolBOLETO_ID: TIntegerField;
    RecBolDESCRICAO: TStringField;
    RecBolVALOR_INTEGRAL: TCurrencyField;
    RecBolDESCONTO: TCurrencyField;
    RecBolACRESCIMO: TCurrencyField;
    RecBolMULTA: TCurrencyField;
    RecBolJUROS: TCurrencyField;
    RecBolVALOR_APAGAR_ANT: TCurrencyField;
    RecBolVALOR_APAGAR: TCurrencyField;
    RecBolVALOR_PAGO: TCurrencyField;
    RecBolCREDITO: TCurrencyField;
    RecBolOBS: TMemoField;
    RecBolPARCELA: TStringField;
    RecBolGRADE_ID: TIntegerField;
    RecBolSITUACAO_BOLETO: TStringField;
    RecBolVENCIMENTO: TDateField;
    RecBolDIAS: TIntegerField;
    RecBolvlAntAlterado: TIntegerField;
    dsRecBol: TDataSource;
    RecBolCLI_ID: TIntegerField;
    RetornoCONVENIO: TStringField;
    Bancos: TFDQuery;
    DSBancos: TDataSource;
    BancosBANCO_ID: TIntegerField;
    BancosBANCO_NOME: TStringField;
    BancosCODIGO_BANCO: TIntegerField;
    BancosDIG_BANCO: TIntegerField;
    BancosAGENCIA: TStringField;
    BancosDIG_AGENCIA: TStringField;
    BancosCONTA_CORRENTE: TStringField;
    BancosDIG_CONTA_CORRENTE: TStringField;
    BancosCODIGO_CEDENTE: TStringField;
    BancosDIG_COD_CEDENTE: TStringField;
    BancosNOME_CEDENTE: TStringField;
    BancosLOGOMARCA: TBlobField;
    BancosCONVENIO: TIntegerField;
    BancosMENS_CABECALHO: TStringField;
    BancosLOCAL_PAGAMENTO: TStringField;
    BancosNOSSO_NUMERO: TIntegerField;
    BancosCARTEIRA: TIntegerField;
    BancosDIAS_TOLERANCIA: TIntegerField;
    BancosABREV: TStringField;
    BancosUSR_CAD: TIntegerField;
    BancosUSUARIO_ID: TIntegerField;
    BancosDT_ALTERADO: TDateField;
    BancosMENSAGEM_1: TMemoField;
    BancosMENSAGEM_2: TMemoField;
    BancosMENSAGEM_3: TMemoField;
    BancosOBSERVACAO_1: TMemoField;
    BancosLAYOUT: TSmallintField;
    DsSerial: TDataSource;
    Serial: TFDQuery;
    SerialSERIAL_ID: TIntegerField;
    SerialDT_EMISSAO: TDateField;
    SerialHR_EMISSAO: TTimeField;
    SerialDT_VALIDADE: TDateField;
    SerialCLIENTE_ID: TIntegerField;
    BancosCAMINHO_RETORNO: TStringField;
    BoletosConfiavel: TIntegerField;
    ClientesCONFIAVEL: TSmallintField;
    SomBoletos: TFDQuery;
    SomBoletosTT_ARECEBER: TFloatField;
    SomPagar: TFDQuery;
    SomPagarTT_PAGAR: TFloatField;
    BoletosFantasia: TStringField;
    qryPesqRet: TFDQuery;
    qryPesqRetNOSSO_NUMERO: TStringField;
    QryRetorno: TFDQuery;
    QryRetornoRETORNO_ID: TIntegerField;
    QryRetornoNUMERO_ARQUIVO: TIntegerField;
    QryRetornoDATA_ARQUIVO: TDateField;
    QryRetornoNUMERO_REGISTRO: TIntegerField;
    QryRetornoBANCO_ID: TIntegerField;
    QryRetornoCODIGO_BANCO: TIntegerField;
    QryRetornoCODIGO_AGENCIA: TIntegerField;
    QryRetornoDIGITO_AGENCIA: TStringField;
    QryRetornoNUMERO_CONTA: TStringField;
    QryRetornoDIGITO_CONTA: TIntegerField;
    QryRetornoCODIGO_CEDENTE: TStringField;
    QryRetornoNOME_CEDENTE: TStringField;
    QryRetornoCOD_SACADO: TIntegerField;
    QryRetornoNOME_SACADO: TStringField;
    QryRetornoSEU_NUMERO: TStringField;
    QryRetornoNOSSO_NUMERO: TStringField;
    QryRetornoCARTEIRA: TIntegerField;
    QryRetornoDATA_CREDITO: TDateField;
    QryRetornoDATA_RECEBIMENTO: TDateField;
    QryRetornoVALOR_DOCUMENTO: TFloatField;
    QryRetornoVALOR_IOF: TFloatField;
    QryRetornoVALOR_ABATIMENTO: TFloatField;
    QryRetornoVALOR_DESCONTO: TFloatField;
    QryRetornoVALOR_MORA: TFloatField;
    QryRetornoVALOR_OUTROS_CREDITOS: TFloatField;
    QryRetornoVALOR_DESP_COBRANCA: TFloatField;
    QryRetornoVALOR_OUTRAS_DESP: TFloatField;
    QryRetornoBAIXOU: TIntegerField;
    QryRetornoVALOR_MULTA: TFloatField;
    QryRetornoTX_BANCO: TFloatField;
    QryRetornoVALOR_PAGO: TFloatField;
    QryRetornoUSR_CAD: TIntegerField;
    QryRetornoUSUARIO_ID: TIntegerField;
    QryRetornoDT_ALTERADO: TDateField;
    QryRetornoDATA_VENCIMENTO: TDateField;
    QryRetornoCONVENIO: TStringField;
    QryRetornoDIAS_TOLERANCIA: TIntegerField;
    ClientesENTREGUE_BOL: TSmallintField;
    ClientesSKYPE1: TStringField;
    Nfs: TFDQuery;
    NfsNFS_ID: TIntegerField;
    NfsSERIE: TStringField;
    NfsRPS_PROTOCOLO: TStringField;
    NfsNFSE_AMBIENTE: TSmallintField;
    NfsNFSE_NUMERO: TIntegerField;
    NfsNFSE_COD_VERIF: TStringField;
    NfsNFSE_DT_EMISSAO: TDateTimeField;
    NfsCLI_ID: TIntegerField;
    NfsSIT: TSmallintField;
    NfsDT_RPS: TDateField;
    NfsDT_FECHADA: TDateTimeField;
    NfsDT_ENVIADA: TDateTimeField;
    NfsVL_TOTAL: TFloatField;
    NfsVL_DEDUCOES: TFloatField;
    NfsVL_BS_CALC: TFloatField;
    NfsPERC_ISS: TFloatField;
    NfsVL_ISS: TFloatField;
    NfsIDS_BOLETOS: TStringField;
    NfsOBS: TMemoField;
    NfsUS_CAD: TIntegerField;
    NfsDT_CAD: TDateTimeField;
    NfsUS_ALT: TIntegerField;
    NfsDT_ALT: TDateTimeField;
    NfsOBS2: TMemoField;
    NfsXML_RPS: TMemoField;
    NfsXML_NFSE: TMemoField;
    NfsNOME: TStringField;
    NfsCNPJ: TStringField;
    NfsLOGRADOURO: TStringField;
    NfsBAIRRO: TStringField;
    NfsCIDADE: TStringField;
    NfsESTADO: TStringField;
    NfsServ: TFDQuery;
    NfsServNFS_IT_ID: TIntegerField;
    NfsServNFS_ID: TIntegerField;
    NfsServDESCRICAO: TStringField;
    NfsServQUANT: TFloatField;
    NfsServVL_UNIT: TFloatField;
    NfsServVL_TOTAL: TFloatField;
    NfsServUS_CAD: TIntegerField;
    NfsServDT_CAD: TDateTimeField;
    NfsServUS_ALT: TIntegerField;
    NfsServDT_ALT: TDateTimeField;
    dsNfs: TDataSource;
    dsNfsServ: TDataSource;
    NfsSitCalc: TStringField;
    qryNF: TFDQuery;
    ClientesFAT_NOTA: TSmallintField;
    NfsFANTASIA: TStringField;
    BoletosNFS_ID: TIntegerField;
    BoletosFaturado: TStringField;
    ClientesNOME: TStringField;
    SerialSERIAL: TMemoField;
    Livro_Caixa: TFDQuery;
    Livro_CaixaCAIXA_ID: TIntegerField;
    Livro_CaixaDESCRICAO: TStringField;
    Livro_CaixaABREV: TStringField;
    Livro_CaixaENTRADA: TFloatField;
    Livro_CaixaDATA: TDateField;
    Livro_CaixaHORA: TTimeField;
    Livro_CaixaSAIDA: TFloatField;
    Livro_CaixaSITUACAO: TIntegerField;
    Livro_CaixaDT_CANCELADA: TDateField;
    Livro_CaixaCAN_MOTIVO: TMemoField;
    Livro_CaixaOBSERVACAO: TMemoField;
    Livro_CaixaUSUARIO: TStringField;
    Livro_CaixaUSUARIO_ID: TIntegerField;
    Livro_CaixaBOLETO_ID: TIntegerField;
    Livro_CaixaPAGAR_ID: TIntegerField;
    Livro_CaixaCHEQUE_ID: TIntegerField;
    Livro_CaixaCONTA_ID: TIntegerField;
    Livro_CaixaCONTA_ID_DEST: TIntegerField;
    Livro_CaixaDESCRICAO_PAGO: TStringField;
    Livro_CaixaDOCUMENTO: TStringField;
    Livro_CaixaRETORNO_ID: TIntegerField;
    Livro_CaixaNUMERO_ARQUIVO: TIntegerField;
    Livro_CaixaUSR_CAD: TIntegerField;
    Livro_CaixaORIGEM_ID: TIntegerField;
    Livro_CaixaATIVO: TBooleanField;
    BoletosDESCRICAO: TStringField;
    Livro_CaixaDT_LANCADO: TDateTimeField;
    Livro_CaixaDT_ALTERADO: TDateTimeField;
    BoletosJurosCalc: TFloatField;
    BoletosvlAPagarCalc: TFloatField;
    BoletosvlFaltando: TFloatField;
    NfsTIPO: TSmallintField;
    Veiculos: TFDQuery;
    dsVeiculos: TDataSource;
    dsContServClien: TDataSource;
    Cont_Serv_Clien: TFDQuery;
    Cont_Serv_ClienC_S_C_ID: TIntegerField;
    Cont_Serv_ClienCLI_ID: TIntegerField;
    Cont_Serv_ClienDT_ALT_VL: TDateField;
    Cont_Serv_ClienOBS: TStringField;
    ClientesSIT: TSmallintField;
    QryFornec: TFDQuery;
    Cont_Serv_ClienFORNE_ID: TIntegerField;
    Cont_Serv_ClienFornecedor_nome: TStringField;
    QryFornecNOME: TStringField;
    FornecedoresFORNE_PERC: TFloatField;
    ClientesEMAIL_CONTATO1: TStringField;
    ClientesLOGIN: TStringField;
    ClientesSENHA: TStringField;
    ClientesSituac_Nome: TStringField;
    ClientesCOD_RASTREIO: TStringField;
    FDConnection1: TFDConnection;
    Adiciona: TFDQuery;
    upBancos: TFDUpdateSQL;
    upForne: TFDUpdateSQL;
    upContas: TFDUpdateSQL;
    upContServCli: TFDUpdateSQL;
    upNfsServ: TFDUpdateSQL;
    upSerial: TFDUpdateSQL;
    CaixaPagarCAIXA_ID: TIntegerField;
    CaixaPagarDESCRICAO: TStringField;
    CaixaPagarDATA: TDateField;
    CaixaPagarHORA: TTimeField;
    CaixaPagarSALDO: TFloatField;
    upBoletos: TFDUpdateSQL;
    IdSMTP1: TIdSMTP;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    Config: TFDQuery;
    ConfigLOGO: TBlobField;
    ConfigEMAIL_REMET: TStringField;
    ConfigEMAIL_SERV_SMTP: TStringField;
    ConfigEMAIL_PORTA_SMTP: TIntegerField;
    ConfigEMAIL_USER: TStringField;
    ConfigEMAIL_SSL_NIVEL: TIntegerField;
    ConfigEMAIL_SSL_METODO: TIntegerField;
    ConfigEMAIL_SSL_MODO: TIntegerField;
    upConfig: TFDUpdateSQL;
    dsConfig: TDataSource;
    ConfigEMAIL_COMPACTAR_ANEXO: TIntegerField;
    ClientesEMAIL_CONTATO2: TStringField;
    ConfigLOGO_PREFEITURA: TBlobField;
    qryNFSServ: TFDQuery;
    qryNFSServNFS_IT_ID: TIntegerField;
    qryNFSServDESCRICAO: TStringField;
    qryNFSServQUANT: TFloatField;
    qryNFSServVL_UNIT: TFloatField;
    qryNFSServVL_TOTAL: TFloatField;
    NfsEMAIL_CONTATO2: TStringField;
    ConfigNFSE_CERT_DIG_NUM_SERIE: TStringField;
    ConfigNFSE_AMBIENTE: TSmallintField;
    BoletosVENCIMENTO_ORIG: TDateField;
    BoletosVALOR_APAGAR_ORIG: TFloatField;
    ClientesListaServ: TStringField;
    qryServ: TFDQuery;
    qryServCLI_ID: TIntegerField;
    qryServServico: TStringField;
    ClientesIMP_BOL: TSmallintField;
    ClientesATIVO: TBooleanField;
    Login: TFDQuery;
    dsLogin: TDataSource;
    LoginLOGIN_ID: TIntegerField;
    LoginNIVEL: TIntegerField;
    LoginLOGIN: TStringField;
    LoginATIVO: TIntegerField;
    ConfigCNAE: TIntegerField;
    ConfigPERC_ISS: TFloatField;
    dsDocumentos: TDataSource;
    Documentos: TFDQuery;
    upDocumentos: TFDUpdateSQL;
    DocumentosDOC_ID: TIntegerField;
    DocumentosDOC_NOME: TStringField;
    DocumentosIMG: TBlobField;
    DocumentosOCULTAR_CAB: TSmallintField;
    DocumentosATIVO: TSmallintField;
    DocumentosESP_LINHA: TSmallintField;
    DocumentosMARGENS: TSmallintField;
    DocumentosFORCAR_RODAPE_IE: TSmallintField;
    DocumentosTIPO_IMG_CAB: TSmallintField;
    DocumentosTAM_FONTE_CAB: TSmallintField;
    DocumentosCABEC_TODAS: TSmallintField;
    DocumentosADIMPLENT: TSmallintField;
    DocumentosADIMP_DOC_MAT: TSmallintField;
    DocumentosOCULTAR_CEP: TSmallintField;
    DocumentosOCULTAR_RESOLUCAO: TSmallintField;
    DocumentosOCULTAR_PARC_ABERTO: TSmallintField;
    ConfigCEP: TStringField;
    ConfigCIDADE: TStringField;
    ConfigUF: TStringField;
    ConfigCOMPL_END: TStringField;
    ConfigFONE1: TStringField;
    ConfigFONE2: TStringField;
    ConfigFONE3: TStringField;
    ConfigEMAIL_SUPORT: TStringField;
    ConfigEMAIL_COMERC: TStringField;
    ConfigSITE: TStringField;
    ConfigCOD_SPC: TStringField;
    ConfigNOME: TStringField;
    ConfigFANTASIA: TStringField;
    ConfigSLOGAN: TStringField;
    ConfigCNPJ: TStringField;
    ConfigLOGO1: TBlobField;
    ConfigPAIS: TStringField;
    ConfigLOGRADOURO: TStringField;
    ConfigBAIRRO: TStringField;
    Cont_Serv_ClienDT_CONTRATO: TDateField;
    Cont_Serv_ClienVENC_DIA: TIntegerField;
    DocumentosCABEC_PRIM_PAG: TSmallintField;
    FornecedoresATIVO: TSmallintField;
    qryBol: TFDQuery;
    qryBolN_TITULOS: TIntegerField;
    ClientesConfiavelNome: TStringField;
    ConfigLOGO3: TBlobField;
    ClientesLOGO: TBlobField;
    Livro_CaixaEXTRATO: TSmallintField;
    dsCelul_Emails: TDataSource;
    Celul_Emails: TFDQuery;
    upCelul_Emails: TFDUpdateSQL;
    Celul_EmailsCEL_EM_ID: TIntegerField;
    Celul_EmailsSIT: TIntegerField;
    Celul_EmailsCELULAR_1: TStringField;
    Celul_EmailsOPER_CEL_ID: TIntegerField;
    Celul_EmailsNOME_ABREV: TStringField;
    Celul_EmailsFUNCAO: TStringField;
    Celul_EmailsEMAIL: TStringField;
    Celul_EmailsCLI_ID: TIntegerField;
    Celul_EmailsNASCIMENTO: TDateField;
    Celul_EmailsUS_CAD: TIntegerField;
    Celul_EmailsDT_CAD: TDateTimeField;
    Celul_EmailsUS_ALT: TIntegerField;
    Celul_EmailsDT_ALT: TDateTimeField;
    Celul_EmailsFANTASIA: TStringField;
    Observacoes: TFDQuery;
    dsObservac: TDataSource;
    ObservacoesOBS_ID: TIntegerField;
    ObservacoesCLI_ID: TIntegerField;
    NfsCOMPETENCIA: TDateField;
    RLRichFilter1: TRLRichFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    Ligacoes: TFDQuery;
    dsLigacoes: TDataSource;
    LigacoesLIGACAO_ID: TIntegerField;
    LigacoesASSUNTO: TStringField;
    LigacoesCONTATO: TStringField;
    LigacoesDT_LIGAR: TDateTimeField;
    LigacoesDT_SIT: TDateTimeField;
    LigacoesUSR_CAD: TIntegerField;
    LigacoesCLI_ID: TIntegerField;
    LigacoesSituacao_Nome: TStringField;
    LigacoesCliente_Nome: TStringField;
    LigacoesATIVO: TBooleanField;
    LigacoesTIPO: TSmallintField;
    qryClientes: TFDQuery;
    qryClientesFONE1: TStringField;
    qryClientesFONE2: TStringField;
    Ligacoesfone1: TStringField;
    LigacoesFone2: TStringField;
    LigacoesSIT: TSmallintField;
    LigacoesTipo_Nome: TStringField;
    DsCsClientes: TDataSource;
    CsClientes: TFDQuery;
    CsClientesCLI_ID: TIntegerField;
    CsClientesNOME: TStringField;
    CsClientesFANTASIA: TStringField;
    LigacoesUsuarioCad: TStringField;
    RLPDFFilter1: TRLPDFFilter;
    QryUsuario: TFDQuery;
    QryUsuarioLOGIN: TStringField;
    Oper_Celular: TFDQuery;
    Oper_CelularOPER_CEL_ID: TIntegerField;
    Oper_CelularDESCRICAO: TStringField;
    Oper_CelularCOD_OPER: TIntegerField;
    dsOperCelular: TDataSource;
    qryOper_Celular: TFDQuery;
    qryOper_CelularDESCRICAO: TStringField;
    ClientesOPER_CEL1_ID: TIntegerField;
    ClientesOPER_CEL2_ID: TIntegerField;
    ClientesOPER_FAX_ID: TIntegerField;
    ClientesCelula_Novo_2: TStringField;
    ClientesCelula_Novo_1: TStringField;
    qryOperadora: TFDQuery;
    qryOperadoraDESCRICAO: TStringField;
    qryOperadoraOPER_CEL_ID: TIntegerField;
    Celul_EmailsOperadoraNome: TStringField;
    dsS_Doc: TDataSource;
    SDoc: TFDQuery;
    SDocS_DOC_ID: TIntegerField;
    SDocTIPO: TIntegerField;
    SDocID: TIntegerField;
    SDocDOCUMENTO: TBlobField;
    SDocNOME_ARQ: TStringField;
    SDocTAMANHO: TFloatField;
    SDocUS_CAD: TIntegerField;
    SDocUsCad: TStringField;
    SDocORIGEM: TStringField;
    BancosCOB_REG: TSmallintField;
    V_BoletosATIVO: TBooleanField;
    BancosFOL_CONTRAT_REM: TStringField;
    BancosVAR_CARTEIRA: TIntegerField;
    BancosDIAS_PROTESTO: TIntegerField;
    ConfigTIPO_BOLETO: TIntegerField;
    BancosDESC_TOL: TSmallintField;
    BancosCONTRATO: TIntegerField;
    BancosTIPO_CONTA_CORRENTE: TIntegerField;
    BancosCODIGO_BANCO2: TIntegerField;
    GradeFinJUROS_MES_OPCAO: TSmallintField;
    GradeFinJUROS_MES: TFloatField;
    GradeFinPADRAO: TIntegerField;
    DataHora: TFDQuery;
    DataHoraCURRENT_TIMESTAMP: TDateTimeField;
    DataHoraCURRENT_DATE: TDateField;
    DataHoraCURRENT_TIME: TTimeField;
    PegaSeqRem: TFDStoredProc;
    Remessa: TFDQuery;
    RemessaREM_ID: TIntegerField;
    RemessaBANCO_ID: TIntegerField;
    RemessaDATA: TDateTimeField;
    RemessaTIPO_REM: TSmallintField;
    RemessaN_SEQ_REM: TLargeintField;
    BancosN_SEQ_REM: TLargeintField;
    BancosCAMINHO_REMESSA: TStringField;
    BancosESPECIE_DOC: TStringField;
    BancosSAC_AVALISTA: TSmallintField;
    BancosACEITA_DEB_AUT: TSmallintField;
    BancosINF_JUROS: TSmallintField;
    BancosINF_DESC: TSmallintField;
    BancosCONT_ENCERRADA: TSmallintField;
    BancosN_SEQ_REM_DEB_AUTO: TLargeintField;
    ClientesDEBITO_AUTO: TSmallintField;
    EmissoesCANCELADO: TSmallintField;
    EmissoesDT_PROCES: TDateField;
    EmissoesFORNE_ID: TIntegerField;
    V_BoletosCLI_NOME: TStringField;
    V_BoletosCLI_ABREV: TStringField;
    V_BoletosCLI_CNPJ_CPF: TStringField;
    V_BoletosCarteiraTmp: TStringField;
    V_BoletosCOB_REG: TSmallintField;
    EmissoesREMESSA: TIntegerField;
    BancosHOMOLOGACAO: TSmallintField;
    ClientesCONTRATO: TSmallintField;
    SmsServ: TFDQuery;
    SmsServSMS_SERV_ID: TIntegerField;
    SmsServNUMERO_DEST: TStringField;
    SmsServDESTINAT_ID: TIntegerField;
    SmsServDESTINATARIO: TStringField;
    SmsServMATRIC_ID: TIntegerField;
    SmsServTURMA_ID: TIntegerField;
    SmsServTURMA_ABREV: TStringField;
    SmsServDOC_SMS_ID: TIntegerField;
    SmsServDT_HT_PREV_ENV: TDateTimeField;
    SmsServTIPO_EMAIL: TIntegerField;
    SmsServENVIO: TSmallintField;
    SmsServDT_CAD: TDateTimeField;
    SmsServDT_ENVIO: TDateTimeField;
    SmsServSMS_ID: TIntegerField;
    QrySql: TFDQuery;
    ClientesNUMERO: TStringField;
    RetornoTIPO: TSmallintField;
    RetornoRetornoDebAuto: TStringField;
    RetornoTipoQuitacao: TStringField;
    RLDraftFilter1: TRLDraftFilter;
    Livro_CaixaCANCELADO: TSmallintField;
    Livro_CaixaTIPO_CONTAS_ID: TIntegerField;
    BoletosTIPO_CONTAS_ID: TIntegerField;
    RetornoDescAbat: TCurrencyField;
    BoletosDUPLIC_BOL_ID: TIntegerField;
    BoletosDUPLIC_RET_ID: TIntegerField;
    Livro_CaixaCONTA_NOME: TStringField;
    BoletosOP_PAG_ID: TIntegerField;
    BoletosRECEB_ID: TIntegerField;
    Livro_CaixaOP_PAG_ID: TIntegerField;
    BancosDIAS_BAIXAR_BANCO: TSmallintField;
    EmissoesDIAS_BAIXAR_BANCO: TSmallintField;
    RetornoNOME_ARQ: TStringField;
    QryRetornoNOME_ARQ: TStringField;
    Retorno_Ocor: TFDQuery;
    Retorno_OcorATIVO: TBooleanField;
    Retorno_OcorRET_OC_ID: TIntegerField;
    Retorno_OcorNUMERO_ARQUIVO: TIntegerField;
    Retorno_OcorDATA_ARQUIVO: TDateField;
    Retorno_OcorNOSSO_NUMERO: TStringField;
    Retorno_OcorDATA_CREDITO: TDateField;
    Retorno_OcorVALOR_DOCUMENTO: TFloatField;
    Retorno_OcorDATA_RECEBIMENTO: TDateField;
    Retorno_OcorCODIGO_BANCO: TIntegerField;
    Retorno_OcorNOME_ARQ: TStringField;
    Retorno_OcorCODIGO_AGENCIA: TStringField;
    Retorno_OcorDIGITO_AGENCIA: TStringField;
    Retorno_OcorNUMERO_CONTA: TStringField;
    Retorno_OcorDIGITO_CONTA: TIntegerField;
    Retorno_OcorNUMERO_REGISTRO: TIntegerField;
    Retorno_OcorSEU_NUMERO: TStringField;
    Retorno_OcorTIPO: TSmallintField;
    Retorno_OcorBANCO_ID: TIntegerField;
    Retorno_OcorCOD_OCORRENCIA: TIntegerField;
    Retorno_OcorOCORRENCIA_NOME: TStringField;
    Retorno_OcorCOD_SACADO: TIntegerField;
    Retorno_OcorNOME_SACADO: TStringField;
    Retorno_OcorCODIGO_CEDENTE: TStringField;
    Retorno_OcorTX_BANCO: TFloatField;
    Retorno_OcorVALOR_PAGO: TFloatField;
    Retorno_OcorUSR_CAD: TIntegerField;
    Retorno_OcorUSUARIO_ID: TIntegerField;
    Retorno_OcorDT_ALTERADO: TDateField;
    Retorno_OcorDATA_VENCIMENTO: TDateField;
    Retorno_OcorCOD_DEB: TIntegerField;
    Retorno_OcorOBS_1: TStringField;
    Retorno_OcorOBS_2: TStringField;
    Retorno_OcorOBS_3: TMemoField;
    Retorno_OcorObservacao: TStringField;
    dsRetorno_Oc: TDataSource;
    Remessa_Ocorrencia: TFDQuery;
    Remessa_OcorrenciaREM_OCORR_ID: TIntegerField;
    Remessa_OcorrenciaEMISSAO_ID: TIntegerField;
    Remessa_OcorrenciaCOD_MOV_REM: TIntegerField;
    Remessa_OcorrenciaTIPO_OCORRENCIA: TStringField;
    Remessa_OcorrenciaBANCO_ID: TIntegerField;
    Remessa_OcorrenciaUS_CAD: TIntegerField;
    Remessa_OcorrenciaDT_CAD: TDateTimeField;
    dsRemessaOcorrencia: TDataSource;
    BancosBAIX_BOL_PARAM: TSmallintField;
    qryRetorn1: TFDQuery;
    qryRetorn1VALOR_PAGO: TFloatField;
    qryBanco: TFDQuery;
    qryBancoBANCO_NOME: TStringField;
    qryBancoBANCO_ID: TIntegerField;
    qryBancoCODIGO_BANCO: TIntegerField;
    qryBancoBAIX_BOL_PARAM: TSmallintField;
    qryBancoLAYOUT: TSmallintField;
    BoletosACRESC_EXTRA: TFloatField;
    dsContPrtBoleto: TDataSource;
    upContPrtBoleto: TFDUpdateSQL;
    qryPrt_Boleto: TFDQuery;
    qryPrt_BoletoPROTESTAR: TStringField;
    TempEtiqueta: TClientDataSet;
    TempEtiquetaRESPONSAVEL: TStringField;
    TempEtiquetaLOGRADOURO: TStringField;
    TempEtiquetaNUMERO: TStringField;
    TempEtiquetaBAIRRO: TStringField;
    TempEtiquetaCIDADE: TStringField;
    TempEtiquetaUF: TStringField;
    TempEtiquetaCEP: TStringField;
    TempEtiquetaCOMPLEMENTO: TStringField;
    TempEtiquetaTURMA_NOME: TStringField;
    TempEtiquetaALUNO: TStringField;
    TempEtiquetaALUNOS: TMemoField;
    dsTempEtiqueta: TDataSource;
    BoletosProtestado: TStringField;
    BoletosRemessaGerada: TStringField;
    BoletosRemessaSit: TStringField;
    dtPrt_Boleto: TDataSource;
    Prt_Boleto: TFDQuery;
    Prt_BoletoPRT_BLT_ID: TIntegerField;
    Prt_BoletoPROTESTAR: TStringField;
    Prt_BoletoSIT: TSmallintField;
    Prt_BoletoDT_CAD: TDateTimeField;
    Prt_BoletoUS_CAD: TIntegerField;
    Prt_BoletoDT_ALT: TDateTimeField;
    Prt_BoletoUS_ALT: TIntegerField;
    upPrt_Boleto: TFDUpdateSQL;
    EmissoesCOD_MOV: TIntegerField;
    Qry: TFDQuery;
    V_BoletosCOD_MOV: TIntegerField;
    V_BoletosLOJA_ID: TIntegerField;
    V_BoletosDIAS_BAIXAR_BANCO: TSmallintField;
    V_BoletosRETORNO_ID: TIntegerField;
    V_BoletosREMESSA: TIntegerField;
    V_BoletosCANCELADO: TSmallintField;
    V_BoletosDT_PROCES: TDateField;
    V_BoletosFORNE_ID: TIntegerField;
    V_BoletosCLI_DEBITO_AUTO: TSmallintField;
    V_BoletosCLI_BANCO_ID: TIntegerField;
    V_BoletosCLI_BANC_AGENCIA: TStringField;
    V_BoletosCLI_BANC_CONTA: TStringField;
    V_BoletosCLI_BANC_OPERACAO: TIntegerField;
    V_BoletosRemessaSit: TStringField;
    V_BoletosRemessaGerada: TStringField;
    V_BoletosValor_Rec_Boleto: TCurrencyField;
    RetornoCOD_OCORRENCIA: TIntegerField;
    RetornoCOB_DEB: TIntegerField;
    Cont_Prt_Boleto: TFDQuery;
    Cont_Prt_BoletoCONT_PRT_BLT_ID: TIntegerField;
    Cont_Prt_BoletoTipo_Protesto: TStringField;
    Cont_Prt_BoletoPRT_BLT_ID: TIntegerField;
    Cont_Prt_BoletoBOLETO_ID: TIntegerField;
    Cont_Prt_BoletoPROT_SIT: TSmallintField;
    Cont_Prt_BoletoSituacao: TStringField;
    Cont_Prt_BoletoDT_SIT: TDateField;
    Cont_Prt_BoletoDT_PRT: TDateField;
    Cont_Prt_BoletoDT_CAD: TDateTimeField;
    Cont_Prt_BoletoDT_SIT_ANT: TDateField;
    Cont_Prt_BoletoPRT_SIT_ANT: TSmallintField;
    Cont_Prt_BoletoUS_CAD: TIntegerField;
    Cont_Prt_BoletoUsuarioAlt: TStringField;
    Cont_Prt_BoletoUS_ALT: TIntegerField;
    Cont_Prt_BoletoDT_ALT: TDateTimeField;
    Cont_Prt_BoletoUsuarioCad: TStringField;
    BancosNOME_ARQ_RET: TSmallintField;
    BoletosRET_OC_ID: TIntegerField;
    EmissoesREMESSA_ID_ANT: TIntegerField;
    ConfigNFSE_N_RPS: TIntegerField;
    ConfigNFSE_TIPO_RPS: TSmallintField;
    ConfigNFSE_RETER_ISS: TSmallintField;
    ConfigINSC_MUNIC: TStringField;
    ConfigNFSE_COD_TRIB_SERV: TIntegerField;
    ConfigNFSE_SEQ_NUM: TIntegerField;
    ConfigNFSE_USA_ACBR: TSmallintField;
    ConfigOPT_SIMP_NAC: TSmallintField;
    Municipios: TFDQuery;
    MunicipiosCODMUN: TIntegerField;
    MunicipiosUF: TStringField;
    MunicipiosUF_COD: TStringField;
    MunicipiosNOME: TStringField;
    DSMunicipios: TDataSource;
    qryEstados2: TFDQuery;
    qryEstados2UF_COD: TStringField;
    qryEstados2UF: TStringField;
    qryEstados2NOME: TStringField;
    DsEstados2: TDataSource;
    Municipios2: TFDQuery;
    Municipios2CODMUN: TIntegerField;
    Municipios2UF: TStringField;
    Municipios2UF_COD: TStringField;
    Municipios2NOME: TStringField;
    DSMunicopios2: TDataSource;
    Nacionalidade: TFDQuery;
    NacionalidadeCODIGO: TStringField;
    NacionalidadeNOME: TStringField;
    dsNacional: TDataSource;
    ConfigNFSERIE: TIntegerField;
    RLPreviewSetup1: TRLPreviewSetup;
    ClientesBANCO_ID: TIntegerField;
    ClientesBANC_AGENCIA: TStringField;
    ClientesBANC_CONTA: TStringField;
    ClientesBANC_OPERACAO: TIntegerField;
    ClientesCIDADE: TStringField;
    ConfigNFSE_COD_ATV_MUN: TIntegerField;
    upNfs: TFDUpdateSQL;
    NfsCIDADE_NOME: TStringField;
    NfsUF_NOME: TStringField;
    ConfigTIPO_CLIENT: TSmallintField;
    LoginGERA_NFSE: TSmallintField;
    LoginNfseGerar: TStringField;
    ServidorWeb: TFDConnection;
    ClientesSite: TFDQuery;
    dsClientesSite: TDataSource;
    TransServidorWeb: TFDTransaction;
    MySQLDriver: TFDPhysMySQLDriverLink;
    QrySqlServWeb: TFDQuery;
    ClientesINSC_MUNICIPAL: TStringField;
    FBDriver: TFDPhysFBDriverLink;
    WaitCursor1: TFDGUIxWaitCursor;
    LoginSENHA: TMemoField;
    Proc1PegarID: TFDStoredProc;
    ObservacoesOBS: TMemoField;
    ConfigMSG: TMemoField;
    Emails_Serv: TFDQuery;
    Emails_ServEM_SERV_ID: TIntegerField;
    Emails_ServEMAIL_DEST: TStringField;
    Emails_ServDESTINAT_ID: TIntegerField;
    Emails_ServASSUNTO: TStringField;
    Emails_ServDestinatario_Nome: TStringField;
    Emails_ServTURMA_ID: TIntegerField;
    Emails_ServTIPO_EMAIL: TSmallintField;
    Emails_ServTipo_Email_Nome: TStringField;
    Emails_ServDOC_MODELO: TMemoField;
    Emails_ServDOC_ID: TIntegerField;
    Emails_ServENVIO: TSmallintField;
    Emails_ServDT_ENVIO: TDateTimeField;
    Emails_ServSituacao: TStringField;
    Emails_ServDESTINATARIO: TStringField;
    Emails_ServTURMA_ABREV: TStringField;
    Emails_ServMATRIC_ID: TIntegerField;
    Emails_ServATIVO: TBooleanField;
    Emails_ServOBS: TMemoField;
    Emails_ServEMAIL_ID: TIntegerField;
    Emails_ServRemetente: TStringField;
    Emails_ServDT_HT_PREV_ENV: TDateTimeField;
    Emails_ServANEXO_S_DOC_ID: TIntegerField;
    Emails_ServArqAnexo: TStringField;
    dsEmailsServ: TDataSource;
    Script1: TFDScript;
    SDocDT_CAD: TDateTimeField;
    SQLWriter2: TFDBatchMoveSQLWriter;
    csTabExiste: TFDQuery;
    csTabExisteQTDE: TIntegerField;
    SQLWriter3: TFDBatchMoveSQLWriter;
    ACBrBoleto1: TACBrBoleto;
    ACBrBoletoFCFortes1: TACBrBoletoFCFortes;
    PegaNossoNum: TFDStoredProc;
    ConfigEMAIL_PASS: TMemoField;
    DocumentosPAG1: TMemoField;
    DocumentosDOC_HTML: TMemoField;
    ConfigOBSERVACAO: TMemoField;
    Celul_EmailsOBS: TMemoField;
    LigacoesOBS: TMemoField;
    SmsServTEXTO: TMemoField;
    SmsServOBS: TMemoField;
    ClientesBANC_ACATAMENTO: TMemoField;
    V_BoletosCLI_BANC_ACATAMENTO: TMemoField;
    EmissoesCODIGO_BANCO: TIntegerField;
    BoletosREMESSA_ID: TIntegerField;
    BoletosCLIENTE: TStringField;
    BoletosCNPJ: TStringField;
    ClientesCIDADE_NOME: TStringField;
    ClientesUF_NOME: TStringField;
    ClientesN_TITULOS: TIntegerField;
    Livro_CaixaSALDO: TFloatField;
    Livro_CaixaPAGAR_DESC: TStringField;
    PagarVALOR_PAGO: TFloatField;
    PagarSITUACAO_PAGAR: TStringField;
    PagarVALOR_FALTA: TFloatField;
    PagarFORNECEDOR: TStringField;
    PagarFANTASIA: TStringField;
    PagarCNPJ: TStringField;
    BoletosVALOR_INTEGRAL: TFloatField;
    Pega_Seq_Nfse: TFDStoredProc;
    ClientesFANTASIA_RED: TStringField;
    ClientesNASCIMENTO: TDateField;
    ClientesSEXO: TStringField;
    ClientesNACIONALIDADE: TStringField;
    ClientesUF_NATURAL: TStringField;
    ClientesNATURALIDADE: TStringField;
    ClientesEST_CIVIL: TStringField;
    ClientesPROFISSAO: TStringField;
    ClientesCONTATO: TStringField;
    upClientes: TFDUpdateSQL;
    qryMunicipiosClient: TFDQuery;
    qryMunicipiosClientCODMUN: TIntegerField;
    qryMunicipiosClientUF: TStringField;
    qryMunicipiosClientUF_COD: TStringField;
    qryMunicipiosClientNOME: TStringField;
    DsMunicipiosClient: TDataSource;
    qryEstadosClient: TFDQuery;
    qryEstadosClientUF_COD: TStringField;
    qryEstadosClientUF: TStringField;
    qryEstadosClientNOME: TStringField;
    dsEstadosClient: TDataSource;
    ClientesRG: TStringField;
    ClientesRG_DATA: TDateField;
    ClientesRG_ORG_ID: TIntegerField;
    ClientesRG_UF: TStringField;
    ClientesPASSAPORTE: TStringField;
    OrgExped: TFDQuery;
    OrgExpedORG_ID: TIntegerField;
    OrgExpedORG_INEP_ID: TIntegerField;
    OrgExpedORG_EXPED: TStringField;
    dsOrgExped: TDataSource;
    VeiculosVEICULO_ID: TIntegerField;
    VeiculosPLACA: TStringField;
    VeiculosMARCA: TStringField;
    VeiculosMODELO: TStringField;
    VeiculosCOR: TStringField;
    VeiculosRENAVAM: TStringField;
    VeiculosSIT: TIntegerField;
    VeiculosCONF_ID: TIntegerField;
    VeiculosDOC_ID: TIntegerField;
    VeiculosDT_CAD: TDateField;
    VeiculosOBS: TStringField;
    ConfigCidade_Nome: TStringField;
    qryMunicipio: TFDQuery;
    qryMunicipioNOME: TStringField;
    qryMunicipioUF: TStringField;
    ConfigNASCIMENTO: TDateField;
    ConfigSEXO: TStringField;
    ConfigNACIONALIDADE: TStringField;
    ConfigUF_NATURAL: TStringField;
    ConfigNATURALIDADE: TStringField;
    ConfigEST_CIVIL: TStringField;
    ConfigPROFISSAO: TStringField;
    ConfigCONTATO: TStringField;
    ConfigRG: TStringField;
    ConfigRG_DATA: TDateField;
    ConfigRG_ORG_ID: TIntegerField;
    ConfigRG_UF: TStringField;
    ConfigPASSAPORTE: TStringField;
    ConfigIMPORT_BC_FB: TSmallintField;
    ConfigCONF_ID: TIntegerField;
    ConfigCELULAR_1: TStringField;
    Municipios3: TFDQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    DSMunicopios3: TDataSource;
    qryEstados3: TFDQuery;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    DsEstados3: TDataSource;
    ConfigCHAVE_PIX: TStringField;
    Cont_Serv_ClienSIT: TIntegerField;
    Cont_Serv_ClienVEICULO_ID: TIntegerField;
    qryVeic: TFDQuery;
    Cont_Serv_ClienPlaca: TStringField;
    Cont_Serv_ClienModelo: TStringField;
    Cont_Serv_ClienMarca: TStringField;
    qryVeicPLACA: TStringField;
    qryVeicMODELO: TStringField;
    qryVeicMARCA: TStringField;
    VeiculosVL_FRANQ_SEGURO: TFloatField;
    Cont_Serv_ClienGRADE_ID: TIntegerField;
    ConfigVL_MULT_CONTRATUAL: TFloatField;
    ConfigVALOR: TFloatField;
    Cont_Serv_ClienVALOR: TFloatField;
    Cont_Serv_ClienDT_CAD: TDateTimeField;
    Cont_Serv_ClienBANCO_ID: TIntegerField;
    Cont_Serv_ClienDT_SIT: TDateField;
    Cont_Serv_ClienDIAS_TOL: TIntegerField;
    Cont_Serv_ClienSituacao_Nome: TStringField;
    qryCliNOME: TStringField;
    qryServVEICULO_ID: TIntegerField;
    Cont_Serv_ClienDT_CONTRATO_FIM: TDateField;
    BancosCHAVE_PIX: TStringField;
    VeiculosANO_FAB: TIntegerField;
    VeiculosANO_MODELO: TIntegerField;
    VeiculosPLACA_ANTERIOR: TStringField;
    Cont_Serv_ClienDias_locacao: TIntegerField;
    qryClientesNOME: TStringField;
    VeiculosC_S_C_ID: TIntegerField;
    ConfigCNH_N_REG: TStringField;
    ConfigCNH_DT_1_HAB: TDateField;
    ConfigCNH_RENACH: TStringField;
    ConfigCNH_DT_VALIDADE: TDateField;
    ClientesCNH_N_REG: TStringField;
    ClientesCNH_DT_1_HAB: TDateField;
    ClientesCNH_RENACH: TStringField;
    ClientesCNH_DT_VALIDADE: TDateField;
    procedure ClientesAfterOpen(DataSet: TDataSet);
    procedure ClientesBeforeClose(DataSet: TDataSet);
    procedure ClientesAfterInsert(DataSet: TDataSet);
    procedure BoletosBeforeOpen(DataSet: TDataSet);
    procedure GradeFinAfterInsert(DataSet: TDataSet);
    procedure BancosAfterInsert(DataSet: TDataSet);
    procedure BoletosAfterInsert(DataSet: TDataSet);
    procedure BoletosCalcFields(DataSet: TDataSet);
    procedure EmissoesAfterInsert(DataSet: TDataSet);
    procedure RetornoAfterInsert(DataSet: TDataSet);
    procedure ContasAfterInsert(DataSet: TDataSet);
    procedure Livro_CaixaAfterInsert(DataSet: TDataSet);
    procedure Livro_CaixaBeforeDelete(DataSet: TDataSet);
    procedure Livro_CaixaBeforeEdit(DataSet: TDataSet);
    procedure Livro_CaixaCalcFields(DataSet: TDataSet);
    procedure BoletosBeforePost(DataSet: TDataSet);
    procedure V_BoletosCalcFields(DataSet: TDataSet);
    procedure PagarAfterInsert(DataSet: TDataSet);
    procedure PagarBeforeDelete(DataSet: TDataSet);
    procedure BoletosBeforeDelete(DataSet: TDataSet);
    procedure FornecedoresAfterInsert(DataSet: TDataSet);
    procedure PagarCalcFields(DataSet: TDataSet);
    procedure PagarBeforeOpen(DataSet: TDataSet);
    procedure RetornoCalcFields(DataSet: TDataSet);
    procedure BoletosAfterClose(DataSet: TDataSet);
    procedure ContatosCalcFields(DataSet: TDataSet);
    procedure ContatosAfterInsert(DataSet: TDataSet);
    procedure SerialAfterInsert(DataSet: TDataSet);
    procedure SerialBeforePost(DataSet: TDataSet);
    procedure PagarAfterPost(DataSet: TDataSet);
    procedure PagarAfterDelete(DataSet: TDataSet);
    procedure NfsAfterInsert(DataSet: TDataSet);
    procedure NfsAfterOpen(DataSet: TDataSet);
    procedure NfsBeforeCancel(DataSet: TDataSet);
    procedure NfsBeforeClose(DataSet: TDataSet);
    procedure NfsBeforePost(DataSet: TDataSet);
    procedure NfsCalcFields(DataSet: TDataSet);
    procedure NfsServAfterDelete(DataSet: TDataSet);
    procedure NfsServAfterInsert(DataSet: TDataSet);
    procedure NfsServAfterPost(DataSet: TDataSet);
    procedure NfsServBeforePost(DataSet: TDataSet);
    procedure Livro_CaixaBeforePost(DataSet: TDataSet);
    procedure VeiculosAfterInsert(DataSet: TDataSet);
    procedure Cont_Serv_ClienAfterInsert(DataSet: TDataSet);
    procedure Cont_Serv_ClienCalcFields(DataSet: TDataSet);
    procedure ClientesCalcFields(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure ConfigAfterInsert(DataSet: TDataSet);
    procedure ConfigBeforePost(DataSet: TDataSet);
    procedure RLPreviewSetup1Send(Sender: TObject);
    procedure IdSMTP1Work(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCount: Int64);
    procedure IdSMTP1WorkBegin(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCountMax: Int64);
    procedure IdSMTP1WorkEnd(ASender: TObject; AWorkMode: TWorkMode);
    procedure Livro_CaixaBeforeOpen(DataSet: TDataSet);
    procedure ContatosBeforeOpen(DataSet: TDataSet);
    procedure Livro_CaixaAfterOpen(DataSet: TDataSet);
    procedure Livro_CaixaBeforeClose(DataSet: TDataSet);
    procedure BoletosBeforeClose(DataSet: TDataSet);
    procedure BoletosAfterOpen(DataSet: TDataSet);
    procedure LoginAfterInsert(DataSet: TDataSet);
    procedure LoginBeforePost(DataSet: TDataSet);
    procedure DocumentosAfterInsert(DataSet: TDataSet);
    procedure DocumentosBeforePost(DataSet: TDataSet);
    procedure Celul_EmailsAfterInsert(DataSet: TDataSet);
    procedure Celul_EmailsBeforePost(DataSet: TDataSet);
    procedure ObservacoesAfterInsert(DataSet: TDataSet);
    procedure ObservacoesBeforePost(DataSet: TDataSet);
    procedure ClientesBeforePost(DataSet: TDataSet);
    procedure LigacoesAfterInsert(DataSet: TDataSet);
    procedure LigacoesBeforePost(DataSet: TDataSet);
    procedure LigacoesCalcFields(DataSet: TDataSet);
    procedure Celul_EmailsCalcFields(DataSet: TDataSet);
    procedure Celul_EmailsBeforeOpen(DataSet: TDataSet);
    procedure SDocAfterInsert(DataSet: TDataSet);
    procedure SDocCalcFields(DataSet: TDataSet);
    procedure V_BoletosBeforeOpen(DataSet: TDataSet);
    procedure RemessaAfterInsert(DataSet: TDataSet);
    procedure Remessa_OcorrenciaAfterInsert(DataSet: TDataSet);
    procedure Retorno_OcorAfterInsert(DataSet: TDataSet);
    procedure Cont_Prt_BoletoAfterInsert(DataSet: TDataSet);
    procedure Cont_Prt_BoletoCalcFields(DataSet: TDataSet);
    procedure Prt_BoletoAfterInsert(DataSet: TDataSet);
    procedure ConfigUFChange(Sender: TField);
    procedure ConfigCIDADEChange(Sender: TField);
    procedure ConfigPAISChange(Sender: TField);
    procedure ClientesESTADOChange(Sender: TField);
    procedure ClientesCIDADEChange(Sender: TField);
    procedure DataModuleDestroy(Sender: TObject);
    procedure LoginCalcFields(DataSet: TDataSet);
    procedure MySQLDriverDriverCreated(Sender: TObject);
    procedure ServidorWebRecover(ASender, AInitiator: TObject;
      AException: Exception; var AAction: TFDPhysConnectionRecoverAction);
    procedure FBDriverDriverCreated(Sender: TObject);
    procedure FDConnection1Error(ASender, AInitiator: TObject;
      var AException: Exception);
    procedure SmsServAfterInsert(DataSet: TDataSet);
    procedure Emails_ServAfterInsert(DataSet: TDataSet);
    procedure ClientesBeforeOpen(DataSet: TDataSet);
    procedure ClientesNACIONALIDADEChange(Sender: TField);
    procedure ClientesUF_NATURALChange(Sender: TField);
    procedure ClientesNATURALIDADEChange(Sender: TField);
    procedure ConfigCalcFields(DataSet: TDataSet);
    procedure ConfigUF_NATURALChange(Sender: TField);
    procedure ConfigNACIONALIDADEChange(Sender: TField);
    procedure Cont_Serv_ClienBeforePost(DataSet: TDataSet);
    procedure Cont_Serv_ClienAfterPost(DataSet: TDataSet);
    procedure Cont_Serv_ClienBeforeOpen(DataSet: TDataSet);
    procedure BancosBeforePost(DataSet: TDataSet);
    procedure VeiculosBeforePost(DataSet: TDataSet);
    procedure Cont_Serv_ClienBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
    PCopiaCarbono: Boolean;

  public
    { Public declarations }
    function PegaDescricaoRetornoDebAuto(cod: integer): String;
    // function PegarID3(Generator: String): Integer;
    procedure AbrirDocScan;
    procedure AdicionarDocScan(arq: string = '');
    procedure PegaDocScan(iTipo, idPessoa, origID: integer; origNome: string);
    function Pega_SeqRemessa(BancoID: integer): integer;
    // function PegaID2(Generator: String): Integer;
    function MontaData(VencimentoTmp: TDate; DiaVenc: integer): TDate;

    function PegaNovo(Generator: String): integer;
    function Pega_SeqNossoNumero(BancoID: integer): Int64;
    function PegaSeq_Nfse(configID: integer): integer;
    // add por Denilson 08/09/2020

    function MontaMsgBoleto(Msg: string; GradeID: integer; vl: currency;
      Desc_Exp_Dia: integer): String;
    procedure MudaOrdem(Tabela: TFDQuery; Ordem: TField; Ordem2: String = '');
    function MontaRecebimentoTemp(apenasMesmoAno: Boolean): Boolean;
    procedure PrepararRel(Relatorio: TRLReport; FMatricial: Boolean = false;
      RLDraftFilterTemp: TRLDraftFilter = nil; FMalaDireta: Boolean = false;
      Gauge: TGauge = nil);
    procedure FecharNota;
    procedure PegaNFItens;
    procedure CalculaTotalNfs;
    procedure MarcarAtivo(ListaTmp: TStringList; IDTmp: integer;
      var Campo: TBooleanField);
    procedure CalcularAtivo(ListaTmp: TStringList; IDTmp: integer;
      var Campo: TBooleanField);
    function PegarAtivo(ListaTmp: TStringList): String;
    function EnviarEmail(Destinatario, Assunto, Corpo, Anexo: String): Boolean;
    function ResizeImage(FileName: string; MaxWidth: integer): Boolean;
    procedure SalvarImagenDisco(BlobField: TBlobField);
    procedure GravarBlobNaTabela(Campo: TBlobField; CaminhoArquivo: String);
    function PegaListaServicos(idNota: integer): String;
    function InstanciarNFSe: Boolean;
    function EnviarNFSe(esperarResposta: Boolean): Boolean;
    property CopiaCarbono: Boolean read PCopiaCarbono write PCopiaCarbono;
    // function PegaDescricaoRetornoDebAuto(cod: integer): String;
    function CancelarNFSe(pedirMotivo: Boolean): Boolean;
    procedure ObterDadosdaNFSe(Num_Rps, Serie: String); // add waclcir

    // novos funcoes p?s migra??o
    procedure FechaConexoes;
    function Criptografar(wStri: String): String;
    function ConectandoServidorWeb: Boolean;
    function MySqlPegaID(NomeTabela: String): integer;
    procedure conRecover(ASender, AInitiator: TObject; AException: Exception;
      var AAction: TFDPhysConnectionRecoverAction);
  end;

var
  BancodeDados: TBancodeDados;
  BaixandoAutom: Boolean = false;
  IDNfs: integer = 0;
  IDCaixa: integer = 0;
  IDBol: integer = 0;
  listaPagar: TStringList;
  listaBoletos: TStringList;
  listaCaixa: TStringList;
  listaContatos: TStringList;
  listaServ: TStringList;
  listaV_Boletos: TStringList;
  // LocalDriveID    : SmallInt = 0;

  emailTamMax: Int64 = 0;
  nfse: ISedNFSe;
  listaCli: TStringList;
  Msg: String;

implementation

uses
  Principal, CsTitulos, unRecursos, EnviarEmail, ProgressoEmail, unImpressao,
  IndicaClientesServicos, CsClientes, CsNfs;

{$R *.dfm}

procedure TBancodeDados.conRecover(ASender, AInitiator: TObject;
  AException: Exception; var AAction: TFDPhysConnectionRecoverAction);
var
  res: integer;
begin
  res := Mensagem
    ('Sua conex?o com o banco de dados foi perdida. Deseja conectar?',
    mtConfirmation, [mbYes, mbNo, mbCancel], mrYes, 0);

  case res of
    mrYes:
      AAction := faOfflineAbort;
    mrOk:
      AAction := faRetry;
    mrCancel:
      AAction := faFail;
  end;

end;

function TBancodeDados.MySqlPegaID(NomeTabela: String): integer;
begin

  if RemotoDriveID in [2] then
  begin
    Result := 0;
    try

      Proc1PegarID.Prepare;
      Proc1PegarID.Params[0].AsString := Trim(AnsiLowerCase(BancNome));
      Proc1PegarID.Params[1].AsString := Trim(AnsiLowerCase(NomeTabela));

      Proc1PegarID.ExecProc;
      Result := Proc1PegarID.Params[2].Value;

    except
      on E: Exception do
      begin
        MessageDlg('Erro ao carregar o c?digo: ' + #13 + #13 +
          (IntToStr(Proc1PegarID.Params[2].Value)) + #13 + E.Message, mtError,
          [mbOk], 0);
      end;
    end;
    Proc1PegarID.Close;
  end;

end;

function TBancodeDados.Criptografar(wStri: String): String;
var
  Simbolos: array [0 .. 4] of String;
  x: integer;
begin

  Simbolos[1] := 'ABCDEFGHIJLMNOPQRSTUVXZYWK ~!@#$%^&*()';
  Simbolos[2] := '???????????5???????????????????????????';
  Simbolos[3] := 'abcdefghijlmnopqrstuvxzywk1234567890';
  Simbolos[4] := '????????????????-+??????????????????';

  for x := 1 to Length(Trim(wStri)) do
  begin

    if pos(copy(wStri, x, 1), Simbolos[1]) > 0 then
      Result := Result + copy(Simbolos[2], pos(copy(wStri, x, 1),
        Simbolos[1]), 1)

    else if pos(copy(wStri, x, 1), Simbolos[2]) > 0 then
      Result := Result + copy(Simbolos[1], pos(copy(wStri, x, 1),
        Simbolos[2]), 1)

    else if pos(copy(wStri, x, 1), Simbolos[3]) > 0 then
      Result := Result + copy(Simbolos[4], pos(copy(wStri, x, 1),
        Simbolos[3]), 1)

    else if pos(copy(wStri, x, 1), Simbolos[4]) > 0 then
      Result := Result + copy(Simbolos[3], pos(copy(wStri, x, 1),
        Simbolos[4]), 1);
  end;

end;

procedure TBancodeDados.FechaConexoes;
var
  I, F, P: integer;
begin
  try
    for I := 0 to ComponentCount - 1 do
    begin
      if (Components[I] is TFDQuery) then
      begin
        if TFDQuery(Components[I]).Active then
          TFDQuery(Components[I]).Close;
      end;
    end;

    for P := 0 to ComponentCount - 1 do
    begin
      if (Components[P] is TFDStoredProc) then
      begin
        if TFDStoredProc(Components[P]).Active then
          TFDStoredProc(Components[P]).Close;
      end;
    end;

    for F := 0 to ComponentCount - 1 do
    begin
      if (Components[F] is TFDConnection) then
      begin
        if TFDConnection(Components[F]).Connected then
          TFDConnection(Components[F]).Close;
      end;
    end;

  except
    on E: Exception do
      TraduzErro(E.Message);
  end;
end;

function TBancodeDados.PegaDescricaoRetornoDebAuto(cod: integer): String;
begin
  case cod of
    00:
      Result := 'D?bito efetuado';
    01:
      Result := 'D?bito n?o efetuado - Insufici?ncia de fundos';
    02:
      Result := 'D?bito n?o efetuado - Conta n?o cadastrada';
    04:
      Result := 'D?bito n?o efetuado - Outras restri??es';
    05:
      Result := 'D?bito n?o efetuado ? valor do d?bito excede valor limite aprovado.';
    10:
      Result := 'D?bito n?o efetuado - Ag?ncia em regime de encerramento';
    12:
      Result := 'D?bito n?o efetuado - Valor inv?lido';
    13:
      Result := 'D?bito n?o efetuado - Data de lan?amento inv?lida';
    14:
      Result := 'D?bito n?o efetuado - Ag?ncia inv?lida';
    15:
      Result := 'D?bito n?o efetuado - conta inv?lida';
    18:
      Result := 'D?bito n?o efetuado - Data do d?bito anterior ? do processamento';
    30:
      Result := 'D?bito n?o efetuado - Sem contrato de d?bito autom?tico';
    31:
      Result := 'D?bito efetuado em data diferente da data informada ? feriado na pra?a de d?bito';
    96:
      Result := 'Manuten??o do Cadastro';
    97:
      Result := 'Cancelamento - N?o encontrado';
    98:
      Result := 'Cancelamento - N?o efetuado, fora do tempo h?bil';
    99:
      Result := 'Cancelamento - cancelado conforme solicita??o';
  end;

end;

function TBancodeDados.MontaData(VencimentoTmp: TDate; DiaVenc: integer): TDate;
var
  Ano, Mes, Dia: Word;
begin
  DecodeDate(VencimentoTmp, Ano, Mes, Dia);

  if (DiaVenc > 0) then
    Dia := DiaVenc;

  while Mes > 12 do
  begin
    Ano := Ano + 1;
    Mes := 1 + (Mes - 13);
  end;

  if Dia = 31 then
  begin

    if (Mes = 2) then
    begin
      if AnoBiSexto(Ano) then
        Dia := 29
      else
        Dia := 28;
    end;

    if ((Mes = 4) or (Mes = 6) or (Mes = 9) or (Mes = 11)) then
    begin
      Dia := 30;
    end;
  end
  else // Dia=31

    if (Dia = 30) or (Dia = 29) then
    begin

      if (Mes = 2) then
      begin
        if AnoBiSexto(Ano) then
          Dia := 29
        else
          Dia := 28;
      end;

    end; // Dia=30 ou 29

  Result := EncodeDate(Ano, Mes, Dia);
end;

function TBancodeDados.Pega_SeqRemessa(BancoID: integer): integer;
begin

  if not FDConnection1.InTransaction then
    FDConnection1.StartTransaction;

  PegaSeqRem.Close;
  PegaSeqRem.ParamByName('VL_BANCO_ID').Value := BancoID;
  PegaSeqRem.ExecProc;

  if PegaSeqRem.ParamByName('VL_SEQ').IsNull then
    Result := 0
  else
    Result := PegaSeqRem.ParamByName('VL_SEQ').Value;

  PegaSeqRem.Close;

  FDConnection1.CommitRetaining;
end;

function TBancodeDados.Pega_SeqNossoNumero(BancoID: integer): Int64;
begin

  if not FDConnection1.InTransaction then
    FDConnection1.StartTransaction;

  PegaNossoNum.Close;
  PegaNossoNum.ParamByName('VL_BANCO_ID').Value := BancoID;
  PegaNossoNum.ExecProc;

  if PegaNossoNum.ParamByName('VL_SEQ').IsNull then
    Result := 0
  else
    Result := PegaNossoNum.ParamByName('VL_SEQ').Value;

  FDConnection1.CommitRetaining;
end;

procedure TBancodeDados.AdicionarDocScan(arq: string = '');
var
  dlg: TOpenDialog;
begin
  if SDoc.Active then
  begin
    if (arq <> '') then
    begin
      ShellExecute(Application.Handle, 'open', pchar('scan.exe'),
        pchar(AnsiQuotedStr(arq, '"') + ' -n'), nil, SW_HIDE);
    end
    else
    begin
      dlg := TOpenDialog.Create(Application);
      if dlg.Execute then
      begin
        ShellExecute(Application.Handle, 'open', pchar('scan.exe'),
          pchar(AnsiQuotedStr(dlg.FileName, '"') + ' -n'), nil, SW_HIDE);
      end;
    end;
  end;
end;

procedure TBancodeDados.AbrirDocScan;
begin
  if (SDocS_DOC_ID.Value > 0) then
  begin
    SDocDOCUMENTO.SaveToFile(DiretorioTemp + SDocNOME_ARQ.AsString);

    ShellExecute(Application.Handle, nil,
      pchar(DiretorioTemp + SDocNOME_ARQ.AsString), nil, nil, SW_SHOWMAXIMIZED);
  end;
end;

procedure TBancodeDados.PegaDocScan(iTipo, idPessoa, origID: integer;
  origNome: string);
begin
  /// BancodeDados.FDConnection3.StartTransaction;
  SDoc.Close;
  SDoc.SQL.Text := 'select * from s_doc where tipo = ' + IntToStr(iTipo) +
    ' and ID = ' + IntToStr(idPessoa);

  if origID > 0 then
    SDoc.SQL.Add(' and id_orig= ' + IntToStr(origID));

  if Trim(origNome) <> '' then
    SDoc.SQL.Add(' and origem = ' + QuotedStr(origNome));

  SDoc.SQL.Add(' order by dt_cad desc');
  // (SDoc.SQL.Text);
  SDoc.Open;

end;

function TBancodeDados.PegaNovo(Generator: String): integer;
begin
  if RemotoDriveID in [0, 1] then
  begin
    QryID.Close;
    QryID.SQL.Text := 'select gen_id(' + Generator + ',1) from rdb$database;';
    try

      QryID.Open;
      Result := QryID.FieldByName('GEN_ID').AsInteger;
      // QryID.Fields[0].AsInteger;
    finally
      QryID.Close;
    end;
  end;
end;

procedure TBancodeDados.ClientesAfterOpen(DataSet: TDataSet);
begin
  // Unidades.Open;
  // Inst.Open;

end;

procedure TBancodeDados.ClientesBeforeClose(DataSet: TDataSet);
begin
  // Inst.Close;
  // Unidades.Close;
end;

procedure TBancodeDados.ClientesBeforeOpen(DataSet: TDataSet);
begin
  // if not Login.Active then Login.Open;

  with Clientes.FormatOptions do
  begin
    OwnMapRules := True;
    with MapRules.Add do
    begin
      TargetDataType := dtInt32;
      SourceDataType := dtInt64;
    end;
  end;
end;

procedure TBancodeDados.ClientesBeforePost(DataSet: TDataSet);
begin

  if (ClientesNOME.Value = '') then
    Abort;

end;

procedure TBancodeDados.ClientesCalcFields(DataSet: TDataSet);
var
  ListaTmp: String;
begin
  BancodeDados.qryOper_Celular.Close;
  BancodeDados.qryOper_Celular.Params[0].Value := ClientesOPER_CEL1_ID.Value;
  BancodeDados.qryOper_Celular.Open;

  if RetornaNumeros(ClientesFONE1.Value) <> '' then
    ClientesCelula_Novo_1.AsString := ClientesFONE1.Value + ' ' +
      BancodeDados.qryOper_CelularDESCRICAO.Value;

  BancodeDados.qryOper_Celular.Close;
  BancodeDados.qryOper_Celular.Params[0].Value := ClientesOPER_CEL2_ID.Value;
  BancodeDados.qryOper_Celular.Open;

  if RetornaNumeros(ClientesFONE2.Value) <> '' then
    ClientesCelula_Novo_2.AsString := ClientesFONE2.Value + ' ' +
      BancodeDados.qryOper_CelularDESCRICAO.Value;
  BancodeDados.qryOper_Celular.Close;

  if (ClientesCONFIAVEL.Value = 1) and (ClientesSIT.Value = 1) then
    ClientesConfiavelNome.Value := 'SIM'
  else
    ClientesConfiavelNome.Value := 'N?O';

  if ClientesSIT.Value = 1 then
    ClientesSituac_Nome.Value := 'ATIVO'
  else
    ClientesSituac_Nome.Value := 'INATIVO';

  CalcularAtivo(listaCli, ClientesCLI_ID.Value, ClientesATIVO);

  if Assigned(IndicaClientesServicosForm) then
  begin
    ListaTmp := '';
    qryServ.Close;
    qryServ.SQL.Text :=
      'select veiculo_id, cli_id from cont_serv_clien where cli_id = ' +
      IntToStr(ClientesCLI_ID.Value);
    if (listaServ.Count > 0) then
      qryServ.SQL.Add(' and veiculo_id in (' + PegarAtivo(listaServ) + ')');
    qryServ.Open;
    qryServ.First;
    while not qryServ.Eof do
    begin
      if (Trim(ListaTmp) = '') then
        ListaTmp := qryServServico.AsString
      else
        ListaTmp := ListaTmp + #13 + qryServServico.AsString;
      qryServ.Next;
    end;
    ClientesListaServ.AsString := ListaTmp;
    // (ListaTmp);
  end;

end;

procedure TBancodeDados.ClientesCIDADEChange(Sender: TField);
begin
  BancodeDados.Municipios2.Close;
  BancodeDados.Municipios2.Params[0].Value := BancodeDados.ClientesESTADO.Value;
  BancodeDados.Municipios2.Open;
  BancodeDados.Municipios2.Last;

end;

procedure TBancodeDados.ClientesESTADOChange(Sender: TField);
begin
  BancodeDados.Municipios2.Close;
  BancodeDados.Municipios2.Params[0].Value := BancodeDados.ClientesESTADO.Value;
  BancodeDados.Municipios2.Open;
  BancodeDados.Municipios2.Last;
end;

procedure TBancodeDados.ClientesNACIONALIDADEChange(Sender: TField);
var
  PaisID: integer;

begin
  PaisID := StrToIntDef(ClientesNACIONALIDADE.Value, 0);

  BancodeDados.qryEstadosClient.Close;
  BancodeDados.qryEstadosClient.Params[0].Value := IntToStr(PaisID);
  BancodeDados.qryEstadosClient.Open;
  BancodeDados.qryEstadosClient.Last;

  if (ClientesNACIONALIDADE.OldValue <> ClientesNACIONALIDADE.NewValue) then
    BancodeDados.ClientesUF_NATURAL.Value := '';

end;

procedure TBancodeDados.ClientesNATURALIDADEChange(Sender: TField);
begin
  qryMunicipiosClient.Close;
  qryMunicipiosClient.Params[0].Value := ClientesUF_NATURAL.Value;
  qryMunicipiosClient.Open;
  qryMunicipiosClient.Last;

end;

procedure TBancodeDados.ClientesUF_NATURALChange(Sender: TField);
var
  UF: integer;

begin
  UF := StrToIntDef(ClientesUF_NATURAL.Value, 0);

  qryMunicipiosClient.Close;
  qryMunicipiosClient.Params[0].Value := UF;
  qryMunicipiosClient.Open;
  qryMunicipiosClient.Last;

end;

procedure TBancodeDados.ClientesAfterInsert(DataSet: TDataSet);
begin
  if RemotoDriveID in [2] then
    ClientesCLI_ID.Value := MySqlPegaID('CLIENTES')
  else
    ClientesCLI_ID.Value := PegaNovo('GEN_CLICOD');

  ClientesCONFIAVEL.Value := 1;
  ClientesFAT_NOTA.Value := 0;
  ClientesENTREGUE_BOL.Value := 0;
  ClientesIMP_BOL.Value := 0;
  ClientesSIT.Value := 1;
  ClientesCONTRATO.Value := 0;

  ClientesPROFISSAO.Value := 'MOTORISTA';

  if not Config.Active then
    Config.Open;

  if Trim(ConfigCIDADE.Value) <> EmptyStr then
    ClientesCIDADE.Value := ConfigCIDADE.Value;

  if Trim(ConfigUF.Value) <> EmptyStr then
    ClientesESTADO.Value := ConfigUF.Value;

  ClientesNACIONALIDADE.Value := '76';

  if Trim(ConfigUF.Value) <> EmptyStr then
    ClientesUF_NATURAL.Value := ConfigUF.Value;

end;

procedure TBancodeDados.IdSMTP1Work(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCount: Int64);
begin
  if Assigned(ProgressoEmailForm) then
  begin
    ProgressoEmailForm.Show;
    ProgressoEmailForm.lbTamanho.Caption := FormatFloat(',0', AWorkCount / 1024)
      + ' / ' + FormatFloat(',0', emailTamMax / 1024) + ' KB.';
    ProgressoEmailForm.Gauge1.Progress := AWorkCount;
  end;
  Application.ProcessMessages;
end;

procedure TBancodeDados.IdSMTP1WorkBegin(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCountMax: Int64);
begin
  if Assigned(ProgressoEmailForm) then
  begin
    ProgressoEmailForm.lbTamanho.Caption := '';
    ProgressoEmailForm.Gauge1.Progress := 0;
    ProgressoEmailForm.Gauge1.MaxValue := emailTamMax;
  end;
  Application.ProcessMessages;
end;

procedure TBancodeDados.IdSMTP1WorkEnd(ASender: TObject; AWorkMode: TWorkMode);
begin
  if Assigned(ProgressoEmailForm) then
  begin
    ProgressoEmailForm.Close;
  end;
  Application.ProcessMessages;
end;

procedure TBancodeDados.BoletosBeforeOpen(DataSet: TDataSet);
begin
  // if not Login.Active then Login.Open;

  listaBoletos.Clear;

  if not qryCli.Active then
    qryCli.Open;
  if not qryBancos.Active then
    qryBancos.Open;
  // if not Clientes.Active then
  // Clientes.Open;
  if not Bancos.Active then
    Bancos.Open;
  if not GradeFin.Active then
    GradeFin.Open;
end;

procedure TBancodeDados.GradeFinAfterInsert(DataSet: TDataSet);
begin
  if RemotoDriveID in [2] then
    GradeFinGRADE_ID.Value := MySqlPegaID('GRADE_FINANCEIRA')
  else
    GradeFinGRADE_ID.Value := PegaNovo('GEN_GRADECOD');
  GradeFinJUROS_MES_OPCAO.Value := 0;
  GradeFinPADRAO.Value := 0;
  GradeFinJUROS_MES_OPCAO.Value := 0;
end;

procedure TBancodeDados.BancosAfterInsert(DataSet: TDataSet);
begin
  if RemotoDriveID in [2] then
    BancosBANCO_ID.Value := MySqlPegaID('BANCOS')
  else
    BancosBANCO_ID.Value := PegaNovo('GEN_BANCOCOD');

  BancosCOB_REG.Value := 0;
  BancosLAYOUT.Value := 1;

  BancosESPECIE_DOC.Value := 'DM';
  BancosSAC_AVALISTA.Value := 0;
  BancosACEITA_DEB_AUT.Value := 0;
  BancosINF_JUROS.Value := 1;
  BancosINF_DESC.Value := 1;
  BancosCONT_ENCERRADA.Value := 0;
  BancosHOMOLOGACAO.Value := 0;
  BancosNOME_ARQ_RET.Value := 0;
end;

procedure TBancodeDados.BancosBeforePost(DataSet: TDataSet);
begin
  if (BancosBANCO_NOME.Value = '') then
    Abort;
  if (BancosABREV.Value = '') then
    Abort;

end;

procedure TBancodeDados.BoletosAfterInsert(DataSet: TDataSet);
begin

  if RemotoDriveID in [2] then
    BoletosBOLETO_ID.Value := MySqlPegaID('BOLETOS')
  else
    BoletosBOLETO_ID.Value := PegaNovo('GEN_BOLCOD');

  BoletosSITUACAO_BOLETO.Value := 'A RECEBER';
  BoletosCLI_ID.Value := ClientesCLI_ID.Value;
  BoletosEMISSAO.Value := Date;
  BoletosVENCIMENTO.Value := Date;
end;

procedure TBancodeDados.BoletosAfterOpen(DataSet: TDataSet);
begin

  if (IDBol > 0) then
    Boletos.Locate('BOLETO_ID', IDBol, []);
end;

procedure TBancodeDados.BoletosCalcFields(DataSet: TDataSet);
var
  QtdDias, qtdDiasCalc: integer;
  vlJuros, vlMulta: currency;
begin
  if BoletosEMISSAO_ID.Value > 0 then
    BoletosImpBoleto.Value := 'SIM'
  else
    BoletosImpBoleto.Value := 'NAO';
  if BoletosNFS_ID.Value > 0 then
    BoletosFaturado.Value := 'SIM'
  else
    BoletosFaturado.Value := 'NAO';

  CalcularAtivo(listaBoletos, BoletosBOLETO_ID.Value, BoletosATIVO);

  if BoletosSITUACAO_BOLETO.Value = 'RECEBIDO' then
    QtdDias := Trunc(BoletosRECEBIMENTO.Value - BoletosVENCIMENTO.Value)
  else
    QtdDias := Trunc(Date - BoletosVENCIMENTO.Value);

  if (QtdDias < 0) then
    QtdDias := 0;
  BoletosQtdDias.Value := QtdDias;

  if qryCli.Locate('CLI_ID', BoletosCLI_ID.Value, []) then
  begin

    if qryBancos.Locate('BANCO_ID', BoletosBANCO_ID.Value, []) then
      BoletosDiasTolCalc.Value := qryBancosDIAS_TOLERANCIA.Value;

    BoletosCliFone.Value := qryCliFONE1.Value;
    BoletosFantasia.Value := qryCliNOME.Value;
  end;

  vlMulta := 0;
  vlJuros := 0;

  if (QtdDias <= BoletosDiasTolCalc.Value) then
    qtdDiasCalc := QtdDias - BoletosDiasTolCalc.Value
  else
    qtdDiasCalc := QtdDias;

  if qtdDiasCalc < 0 then
    qtdDiasCalc := 0;
  if qtdDiasCalc > 0 then
  begin
    FormatSettings.DecimalSeparator := '.';
    if BoletosSITUACAO_BOLETO.Value = 'RECEBIDO' then
    begin
      // if BoletosBOLETO_ID.Value=286 then ('1');
      try
        vlMulta := BoletosMULTA.Value;
      except
        vlMulta := BoletosMULTA.Value;
      end;
      try
        vlJuros := BoletosJUROS.Value;
      except
        vlJuros := BoletosJUROS.Value;
      end;
    end
    else
    begin
      // if BoletosBOLETO_ID.Value=286 then ('2');
      try
        vlMulta := StrToCurr(FormatFloat('0.00',
          (BoletosVALOR_INTEGRAL.Value * BoletosGradeMulta.Value) / 100));
      except
        vlMulta := StrToCurr(FormatFloat('0.00',
          (BoletosVALOR_INTEGRAL.Value * BoletosGradeMulta.Value) / 100));
      end;

      try
        vlJuros := StrToCurr(FormatFloat('0.00',
          (BoletosVALOR_INTEGRAL.AsCurrency *
          BoletosGradeJuros.AsCurrency) / 100));
      except
        vlJuros := StrToCurr(FormatFloat('0.00',
          (BoletosVALOR_INTEGRAL.AsCurrency *
          BoletosGradeJuros.AsCurrency) / 100));
      end;

      // if (BoletosBOLETO_ID.Value = 5191) then ('1: '+currtostr(vlJuros)+#13+inttostr(qtdDiasCalc));
      vlJuros := vlJuros * qtdDiasCalc;
    end;
    FormatSettings.DecimalSeparator := ',';
  end;

  BoletosJurosCalc.Value := vlJuros + vlMulta;
  BoletosvlAPagarCalc.Value := vlJuros + vlMulta + BoletosVALOR_INTEGRAL.Value;

  if BoletosSITUACAO_BOLETO.Value = 'CANCELADO' then
    BoletosvlFaltando.Value := 0
  else
    BoletosvlFaltando.Value := BoletosvlAPagarCalc.Value -
      BoletosVALOR_PAGO.Value;
end;

procedure TBancodeDados.Emails_ServAfterInsert(DataSet: TDataSet);
begin
  if RemotoDriveID in [2] then
    Emails_ServEM_SERV_ID.Value := MySqlPegaID('EMAILS_SERV')
  else
    Emails_ServEM_SERV_ID.Value := PegaNovo('GEN_EM_SERVCOD');

  Emails_ServENVIO.Value := 0;
end;

procedure TBancodeDados.EmissoesAfterInsert(DataSet: TDataSet);
begin
  if RemotoDriveID in [2] then
    EmissoesEMISSAO_ID.Value := MySqlPegaID('BOLETOS_EMISSAO')
  else
    EmissoesEMISSAO_ID.Value := PegaNovo('GEN_BOL_EMI');

  EmissoesSITUACAO_BOLETO.Value := 'A RECEBER';

end;

procedure TBancodeDados.RetornoAfterInsert(DataSet: TDataSet);
begin
  if RemotoDriveID in [2] then
    RetornoRETORNO_ID.Value := MySqlPegaID('RETORNO')
  else
    RetornoRETORNO_ID.Value := PegaNovo('GEN_RETORNOCOD');
end;

procedure TBancodeDados.ContasAfterInsert(DataSet: TDataSet);
begin
  if RemotoDriveID in [2] then
    ContasCONTA_ID.Value := MySqlPegaID('TIPO_CONTAS')
  else
    ContasCONTA_ID.Value := PegaNovo('GEN_TPCTCOD');
end;

procedure TBancodeDados.LigacoesAfterInsert(DataSet: TDataSet);
begin
  if RemotoDriveID in [2] then
    LigacoesLIGACAO_ID.Value := MySqlPegaID('LIGACOES')
  else
    LigacoesLIGACAO_ID.Value := PegaNovo('GEN_LIGACAOCOD');
  LigacoesDT_LIGAR.Value := Now;
  LigacoesSIT.Value := 1;
  LigacoesTIPO.Value := 1;
  LigacoesUSR_CAD.Value := usrID;
  if (Assigned(CsClientesForm)) then
    LigacoesCLI_ID.Value := ClientesCLI_ID.Value
  else
    LigacoesCLI_ID.Value := 0
end;

procedure TBancodeDados.LigacoesBeforePost(DataSet: TDataSet);
begin
  if (BancodeDados.LigacoesCLI_ID.Value = 0) or
    (BancodeDados.LigacoesCLI_ID.IsNull) then
    Abort;

  LigacoesDT_SIT.Value := Date;
end;

procedure TBancodeDados.LigacoesCalcFields(DataSet: TDataSet);
begin

  if LigacoesCLI_ID.Value > 0 then
  begin
    qryClientes.Close;
    qryClientes.Params[0].Value := LigacoesCLI_ID.Value;
    qryClientes.Open;
    LigacoesCliente_Nome.AsString := qryClientesNOME.AsString;
    Ligacoesfone1.AsString := qryClientesFONE1.AsString;
    LigacoesFone2.AsString := qryClientesFONE2.AsString;
  end;

  if LigacoesSIT.Value = 1 then
    LigacoesSituacao_Nome.Value := 'PENDENTE';
  if LigacoesSIT.Value = 2 then
    LigacoesSituacao_Nome.Value := 'RESOLVIDO';
  if LigacoesSIT.Value = 3 then
    LigacoesSituacao_Nome.Value := 'PARCIAL';
  if LigacoesSIT.Value = 4 then
    LigacoesSituacao_Nome.Value := 'N?O ATENDIDO';

  if LigacoesTIPO.Value = 1 then
    LigacoesTipo_Nome.Value := 'SUPORTE LIGOU'
  else if LigacoesTIPO.Value = 2 then
    LigacoesTipo_Nome.Value := 'CLIENTE LIGOU'
  else if LigacoesTIPO.Value = 3 then
    LigacoesTipo_Nome.Value := 'WHATSAPP'
  else if LigacoesTIPO.Value = 4 then
    LigacoesTipo_Nome.Value := 'SMS'
  else if LigacoesTIPO.Value = 5 then
    LigacoesTipo_Nome.Value := 'VISITA'
  else if LigacoesTIPO.Value = 6 then
    LigacoesTipo_Nome.Value := 'COBRAN?A'
  else if LigacoesTIPO.Value = 7 then
    LigacoesTipo_Nome.Value := 'OUTRO';

  QryUsuario.Close;
  QryUsuario.Params[0].Value := LigacoesUSR_CAD.Value;
  QryUsuario.Open;
  LigacoesUsuarioCad.Value := QryUsuarioLOGIN.Value;
  QryUsuario.Close;

end;

procedure TBancodeDados.Livro_CaixaAfterInsert(DataSet: TDataSet);
begin
  if RemotoDriveID in [2] then
    Livro_CaixaCAIXA_ID.Value := MySqlPegaID('LIVRO_CAIXA')
  else
    Livro_CaixaCAIXA_ID.Value := PegaNovo('GEN_CAXCOD');
  Livro_CaixaDT_LANCADO.Value := Now;
  Livro_CaixaDATA.Value := Date;
  Livro_CaixaHORA.Value := time;
  // LivroCaixaUSR_CAD.Value:=CodUsuario;
  // LivroCaixaINST_ID.Value:=BancodeDados.ConfigINST_ID.value;
  Livro_CaixaDESCRICAO_PAGO.Value := 'Deposito';
  Livro_CaixaSITUACAO.Value := 0;
  Livro_CaixaSAIDA.Value := 0;
  Livro_CaixaENTRADA.Value := 0;
end;

procedure TBancodeDados.Livro_CaixaAfterOpen(DataSet: TDataSet);
begin
  if (IDCaixa > 0) then
    Livro_Caixa.Locate('CAIXA_ID', IDCaixa, []);
end;

procedure TBancodeDados.Livro_CaixaBeforeClose(DataSet: TDataSet);
begin
  IDCaixa := Livro_CaixaCAIXA_ID.Value;
end;

procedure TBancodeDados.Livro_CaixaBeforeDelete(DataSet: TDataSet);
begin
  if Livro_CaixaORIGEM_ID.Value > 0 then
    Abort;
  Adiciona.SQL.Text := 'delete from livro_caixa where origem_id = ' +
    IntToStr(Livro_CaixaCAIXA_ID.Value);
  Adiciona.ExecSQL;
end;

procedure TBancodeDados.Livro_CaixaBeforeEdit(DataSet: TDataSet);
begin
  if not(BaixandoAutom = True) then
    if (Livro_CaixaBOLETO_ID.Value > 0) { or (Livro_CaixaPAGAR_ID.Value>0) } or
      (Livro_CaixaCHEQUE_ID.Value > 0) or (Livro_CaixaNUMERO_ARQUIVO.Value > 0)
      or (Livro_CaixaORIGEM_ID.Value > 0) then
      Abort;
end;

procedure TBancodeDados.Livro_CaixaBeforeOpen(DataSet: TDataSet);
begin
  listaCaixa.Clear;
end;

procedure TBancodeDados.Livro_CaixaBeforePost(DataSet: TDataSet);
begin
  Livro_CaixaDESCRICAO.Value := copy(Livro_CaixaDESCRICAO.Value, 1, 60);
  Livro_CaixaDT_ALTERADO.Value := Now;
end;

procedure TBancodeDados.Livro_CaixaCalcFields(DataSet: TDataSet);
begin
  CalcularAtivo(listaCaixa, Livro_CaixaCAIXA_ID.Value, Livro_CaixaATIVO);
end;

procedure TBancodeDados.LoginAfterInsert(DataSet: TDataSet);
begin
  if RemotoDriveID in [2] then
    LoginLOGIN_ID.Value := MySqlPegaID('LOGIN')
  else
    LoginLOGIN_ID.Value := PegaNovo('GEN_LOGCOD');
  LoginATIVO.Value := 1;
  LoginNIVEL.Value := 0;
end;

procedure TBancodeDados.LoginBeforePost(DataSet: TDataSet);
begin
  if Trim(LoginSENHA.Value) <> '' then
    if DecifrarSed(LoginSENHA.AsString, false, LoginLOGIN_ID.Value * 2233) = ''
    then
    begin
      LoginSENHA.AsString := CifrarSed(LoginSENHA.AsString,
        LoginLOGIN_ID.Value * 2233);
    end;
end;

procedure TBancodeDados.LoginCalcFields(DataSet: TDataSet);
begin
  if not BancodeDados.Login.Active then
    BancodeDados.Login.Open();
  if BancodeDados.LoginGERA_NFSE.Value > 0 then
    BancodeDados.LoginNfseGerar.AsString := 'SIM'
  else
    BancodeDados.LoginNfseGerar.AsString := 'N?O';

end;

procedure TBancodeDados.BoletosBeforePost(DataSet: TDataSet);
var
  Emissa2ID: integer;

begin
  Emissa2ID := BoletosEMISSAO_ID.Value;

  if BoletosVENCIMENTO_ORIG.IsNull then
    BoletosVENCIMENTO_ORIG.Value := BoletosVENCIMENTO.Value;

  if BoletosVALOR_APAGAR_ORIG.IsNull then
    BoletosVALOR_APAGAR_ORIG.Value := BoletosVALOR_APAGAR.Value;

  BoletosVALOR_APAGAR.Value :=
    (BoletosVALOR_MENSAL.Value + BoletosVALOR_LIC.Value +
    BoletosACRESCIMO.Value) - BoletosDESCONTO.Value;
  if (BoletosSITUACAO_BOLETO.Value = 'A RECEBER') or
    (BoletosSITUACAO_BOLETO.Value = 'CANCELADO') then
  begin
    Adiciona.SQL.Text := 'delete from livro_caixa where boleto_id=' +
      IntToStr(BoletosBOLETO_ID.Value);
    Adiciona.ExecSQL;
  end;

  if (Emissa2ID > 0) then
  begin // boletos emitidos: atualizando o campo 'data de recebimento' e a 'situacao do boleto', tirando os campos calculados
    if (BoletosSITUACAO_BOLETO.NewValue = 'RECEBIDO') then
      BancodeDados.Adiciona.SQL.Text :=
        'update boletos_emissao set data_recebimento=' +
        QuotedStr(FormatDateTime('yyyy/mm/dd', BoletosRECEBIMENTO.NewValue)) +
        ', situacao_boleto =' + QuotedStr(BoletosSITUACAO_BOLETO.Value) +
        ' where emissao_id in (' + IntToStr(Emissa2ID) + ')'
    else if (BoletosSITUACAO_BOLETO.OldValue = 'RECEBIDO') then
      BancodeDados.Adiciona.SQL.Text :=
        'update boletos_emissao set data_recebimento=null, situacao_boleto =' +
        QuotedStr(BoletosSITUACAO_BOLETO.Value) + ' where emissao_id in (' +
        IntToStr(Emissa2ID) + ')';
    BancodeDados.Adiciona.ExecSQL;
  end;

end;

procedure TBancodeDados.V_BoletosBeforeOpen(DataSet: TDataSet);
begin
  listaV_Boletos.Clear;

end;

procedure TBancodeDados.V_BoletosCalcFields(DataSet: TDataSet);
var
  agTmp, codCedTmp: String;
begin
  BancodeDados.qryRetorn1.Close;
  BancodeDados.qryRetorn1.Params[0].Value :=
    BancodeDados.V_BoletosBANCO_ID.Value;
  BancodeDados.qryRetorn1.Params[1].Value :=
    BancodeDados.V_BoletosNOSSO_NUMERO.Value;
  BancodeDados.qryRetorn1.Open;
  BancodeDados.V_BoletosValor_Rec_Boleto.Value :=
    BancodeDados.qryRetorn1VALOR_PAGO.Value;

  if V_BoletosREMESSA.Value > 0 then
  begin
    V_BoletosRemessaGerada.Value := 'SIM';
    if (V_BoletosCOD_MOV.Value = 2) then
      V_BoletosRemessaSit.Value := 'Entrada Confirmada'
    else
      V_BoletosRemessaSit.Value := 'Aguardando Confirma??o'

  end
  else
  begin
    V_BoletosRemessaSit.Value := 'N?o enviada';
    V_BoletosRemessaGerada.Value := 'N?O';
  end;

  CalcularAtivo(listaV_Boletos, V_BoletosEMISSAO_ID.Value, V_BoletosATIVO);

  if (V_BoletosCOD_BANCO.Value = 399) then
  begin
    if V_BoletosCARTEIRA.Value = 2 then
      V_BoletosCarteiraTmp.Value := 'CNR'
    else
      V_BoletosCarteiraTmp.Value := IntToStr(V_BoletosCARTEIRA.Value);
  end
  else if (V_BoletosCOD_BANCO.Value = 104) then
  begin
    if V_BoletosCOB_REG.Value = 0 then
      V_BoletosCarteiraTmp.Value := 'SR'
    else
      V_BoletosCarteiraTmp.Value := 'RG';
  end
  else
    V_BoletosCarteiraTmp.Value := FormatFloat('00', V_BoletosCARTEIRA.Value);

  try
    if (V_BoletosDIG_AGENCIA.Value <> '') then
      agTmp := FormatFloat('0000', StrToInt64(V_BoletosAGENCIA.Value)) + '-' +
        V_BoletosDIG_AGENCIA.Value
    else
      agTmp := V_BoletosAGENCIA.Value;
  except
    agTmp := V_BoletosAGENCIA.Value;
  end;

  try
    if (V_BoletosDIG_COD_CEDENTE.Value <> '') then
      codCedTmp := (V_BoletosCOD_CEDENTE.Value) + '-' +
        (V_BoletosDIG_COD_CEDENTE.Value)
      // codCedTmp := FormatFloat('00000000', StrToInt64(V_BoletosCOD_CEDENTE.Value)) + '-' + V_BoletosDIG_COD_CEDENTE.Value
    else
      codCedTmp := V_BoletosCOD_CEDENTE.Value;
  except
    codCedTmp := V_BoletosCOD_CEDENTE.Value;
  end;
  if Length(V_BoletosCOD_CEDENTE.Value) > 14 then
    V_BoletosAgCodCedente.Value := codCedTmp
  else
    V_BoletosAgCodCedente.Value := agTmp + ' / ' + codCedTmp;

  V_BoletosCodIdentBanco.Value := FormatFloat('000', V_BoletosCOD_BANCO.Value) +
    '-' + V_BoletosDIG_BANCO.AsString;
  V_BoletosSacado.Value := FormatFloat('000000', V_BoletosCLI_ID.Value) + ' / '
    + V_BoletosCLI_NOME.Value + ' - CPF/CNPJ: ' + V_BoletosCLI_CNPJ_CPF.Value;
  V_BoletosSacado2.Value := FormatFloat('000000', V_BoletosCLI_ID.Value) + ' / '
    + V_BoletosCLI_ABREV.Value + ' - CPF/CNPJ: ' + V_BoletosCLI_CNPJ_CPF.Value;
  V_BoletosEndereco.Value := V_BoletosLOGRADOURO.Value + ' - ' +
    V_BoletosBAIRRO.Value + ' - ' + V_BoletosCIDADE.Value + ' - ' +
    V_BoletosESTADO.Value;
end;

function TBancodeDados.MontaMsgBoleto(Msg: string; GradeID: integer;
  vl: currency; Desc_Exp_Dia: integer): String;
var
  vlMulta, vlJuros: currency;
  DtVenc, DTJurosMulta, DtDesconto: TDate;
begin
  if not GradeFin.Active then
    GradeFin.Open;

  if GradeFin.Locate('GRADE_ID', EmissoesGRADE_ID.Value, []) then
  begin
    vlMulta := (vl * GradeFinMULTA.Value) / 100;
    vlJuros := (vl * GradeFinJUROS.Value) / 100;;
  end
  else
  begin
    vlMulta := (vl * 2) / 100;
    vlJuros := (vl * 0.35) / 100;
  end;

  DTJurosMulta := EmissoesVENCIMENTO.Value + EmissoesDIAS_TOLERANCIA.Value;
  DtVenc := EmissoesVENCIMENTO.Value;

  Result := Msg;

  if (EmissoesDESCONTO.Value > 0) then // 18
  begin
    Result := Result + #13 + 'Sr(a). caixa, receber o valor de ' +
      FormatFloat('R$ ,0.00', EmissoesVALOR_DOC.Value - EmissoesDESCONTO.Value);

    DtDesconto := MontaData(DtVenc, Desc_Exp_Dia);
    if DtDesconto > DtVenc then
      DtDesconto := DtVenc;

    if (Desc_Exp_Dia > 0) then
      Result := Result + ' se o pagamento for efetuado at? o dia ' +
        FormatDateTime('dd/mm/yyyy', DtDesconto) + '.'

    else
      Result := Result + ' se o pagamento for efetuado at? ' +
        FormatDateTime('dd/mm/yyyy', DtVenc);
  end; // infDesc = true  //18

  Result := Result + #13 + #13 + 'MULTA DE ' + FormatFloat('R$ ,0.00', vlMulta)
    + ' AP?S: ' + FormatDateTime('dd/mm/yyyy', DTJurosMulta) + '  -  JUROS DE '
    + FormatFloat('R$ ,0.00', vlJuros) + ' AO DIA.';

  if EmissoesDIAS_TOLERANCIA.Value > 0 then
    Result := Result + #13 + #13 + 'COBRAR JUROS E MULTA AP?S: ' +
      FormatDateTime('dd/mm/yyyy', DTJurosMulta)
  else
    Result := Result + #13 + #13 + 'COBRAR JUROS E MULTA AP?S O VENCIMENTO.';

end;

procedure TBancodeDados.MudaOrdem(Tabela: TFDQuery; Ordem: TField;
  Ordem2: String = '');
var
  tmp, SQLAntigo, ordemTmp: String;
  Posicao: integer;
begin
  if Tabela.Active then
  begin
    ordemTmp := '';

    if (Ordem <> nil) then
    begin
      if not(Ordem.FieldKind in [fkCalculated, fkLookup]) then
        ordemTmp := Ordem.FieldName;
    end
    else
    begin
      if Trim(Ordem2) <> '' then
        ordemTmp := Ordem2;
    end;

    if (Trim(ordemTmp) <> '') then
    begin
      SQLAntigo := Tabela.SQL.Text;

      Tabela.Close;
      tmp := Trim(Tabela.SQL.Text);
      if pos('order', LowerCase(tmp)) > 0 then
      begin
        Posicao := pos('order', LowerCase(tmp)) - 1;
        tmp := copy(tmp, 1, Posicao) + ' order by ' + ordemTmp;
      end
      else
      begin
        tmp := tmp + ' order by ' + ordemTmp;
      end;

      try
        Tabela.Close;
        Tabela.SQL.Text := tmp;
        Tabela.Open;
      except
        On E: Exception do
        begin
          // TraduzErro(E.Message);
          try
            Tabela.Close;
            Tabela.SQL.Text := SQLAntigo;
            Tabela.Open;
          except
          end;
        end;
      end;

    end;
  end;
end;

procedure TBancodeDados.MySQLDriverDriverCreated(Sender: TObject);
begin
  MySQLDriver.VendorLib := ExtractFilePath(ParamStr(0)) + 'libmysql.dll';

end;

procedure TBancodeDados.PagarAfterInsert(DataSet: TDataSet);
begin
  if RemotoDriveID in [2] then
    PagarPAGAR_ID.Value := MySqlPegaID('PAGAR')
  else
    PagarPAGAR_ID.Value := PegaNovo('GEN_PAGCOD');

  PagarEMISSAO.Value := Date;
  PagarVENCIMENTO.Value := Date;
  PagarFIXA.Value := 0;
end;

procedure TBancodeDados.PagarBeforeDelete(DataSet: TDataSet);
begin
  Adiciona.SQL.Text := 'delete from livro_caixa where pagar_id = ' +
    IntToStr(PagarPAGAR_ID.Value);
  Adiciona.ExecSQL;
end;

procedure TBancodeDados.BoletosBeforeClose(DataSet: TDataSet);
begin
  IDBol := BoletosBOLETO_ID.Value;
end;

procedure TBancodeDados.BoletosBeforeDelete(DataSet: TDataSet);
var
  TipoOcorrencia, QtdDias: integer;
begin

  if (BoletosEMISSAO_ID.Value > 0) then
  begin // Pedido de Baixa de boletos registrados
    V_Boletos.Close;
    TipoOcorrencia := 2;

    QtdDias := Trunc(PrincipalForm.DataServidor - BoletosVENCIMENTO.Value);
    if (QtdDias < 0) then
      QtdDias := 0;

    QrySql.Close;
    QrySql.SQL.Text :=
      'select remessa, cod_mov from boletos_emissao where emissao_id = ' +
      IntToStr(BoletosEMISSAO_ID.Value);
    QrySql.Open;

    if (BancodeDados.QrySql.FieldByName('REMESSA').AsInteger > 0) and
      (QtdDias <= 29) and (BancodeDados.QrySql.FieldByName('COD_MOV')
      .AsInteger = 2) then
    begin // caso tenha gerado a remessa, deve gerar um outro arq. remessa com o codigo de movi

      Remessa_Ocorrencia.Close;
      Remessa_Ocorrencia.SQL.Text :=
        'select * from remessa_ocorrencia where emissao_id = ' +
        IntToStr(BoletosEMISSAO_ID.Value) + ' and cod_mov_rem = ' +
        IntToStr(TipoOcorrencia);
      // +' and TIPO_OCORRENCIA = '+QuotedStr('Pedido de baixa');
      Remessa_Ocorrencia.Open;

      if Remessa_Ocorrencia.IsEmpty then
        Remessa_Ocorrencia.Append
      else
        Remessa_Ocorrencia.Edit;
      Remessa_OcorrenciaCOD_MOV_REM.Value := TipoOcorrencia;
      Remessa_OcorrenciaTIPO_OCORRENCIA.Value := 'Pedido de baixa';
      Remessa_OcorrenciaEMISSAO_ID.Value := BoletosEMISSAO_ID.Value;
      Remessa_OcorrenciaBANCO_ID.Value := BoletosBANCO_ID.Value;
      Remessa_Ocorrencia.Post;
      BancodeDados.FDConnection1.CommitRetaining;

      BancodeDados.Adiciona.SQL.Text :=
        'update boletos_emissao set remessa = null, dt_proces=' +
        QuotedStr(FormatDateTime('yyyy/mm/dd', PrincipalForm.DataServidor)) +
        ' where EMISSAO_ID = ' + IntToStr(BoletosEMISSAO_ID.Value);
      BancodeDados.Adiciona.ExecSQL;

      BancodeDados.Adiciona.SQL.Text :=
        'update boletos set emissao_id = null where emissao_id = ' +
        IntToStr(BoletosEMISSAO_ID.Value);
      BancodeDados.Adiciona.ExecSQL;

    end
    else
    begin
      BancodeDados.Adiciona.SQL.Text :=
        'update boletos_emissao set cancelado=1 where emissao_id = ' +
        IntToStr(BoletosEMISSAO_ID.Value);
      BancodeDados.Adiciona.ExecSQL;

      BancodeDados.Adiciona.SQL.Text :=
        'update boletos set emissao_id = null where emissao_id = ' +
        IntToStr(BoletosEMISSAO_ID.Value);
      BancodeDados.Adiciona.ExecSQL;
    end;

  end;

  if not FDConnection1.InTransaction then
    FDConnection1.StartTransaction;
  Adiciona.SQL.Text := 'update livro_caixa set cancelado = 1 where boleto_id = '
    + IntToStr(BoletosBOLETO_ID.Value);
  Adiciona.ExecSQL;

end;

procedure TBancodeDados.FornecedoresAfterInsert(DataSet: TDataSet);
begin
  if RemotoDriveID in [2] then
    FornecedoresFORNE_ID.Value := MySqlPegaID('FORNECEDORES')
  else
    FornecedoresFORNE_ID.Value := PegaNovo('GEN_FORCOD');
  FornecedoresATIVO.Value := 1;
end;

procedure TBancodeDados.PagarCalcFields(DataSet: TDataSet);
var
  QtdDias: integer;
begin
  if PagarSITUACAO_PAGAR.Value = 'PAGO' then
    QtdDias := Trunc(PagarPAGAMENTO.Value - PagarVENCIMENTO.Value)
  else
    QtdDias := Trunc(Date - PagarVENCIMENTO.Value);

  if (QtdDias < 0) then
    QtdDias := 0;
  PagarQtdDias.Value := QtdDias;

  CalcularAtivo(listaPagar, PagarPAGAR_ID.Value, PagarATIVO);
end;

procedure TBancodeDados.PagarBeforeOpen(DataSet: TDataSet);
begin
  listaPagar.Clear;

  if not Fornecedores.Active then
    Fornecedores.Open;
  if not Contas.Active then
    Contas.Open;
end;

procedure TBancodeDados.RetornoCalcFields(DataSet: TDataSet);

var
  DiasTolerar: integer;

begin

  if Trim(RetornoSEU_NUMERO.Value) <> EmptyStr then
    try
      QrySql.Close;
      QrySql.SQL.Text :=
        'select dias_tolerancia from boletos_emissao where emissao_id = ' +
        QuotedStr(RetornoSEU_NUMERO.Value);
      QrySql.Open();

      DiasTolerar := QrySql.FieldByName('DIAS_TOLERANCIA').Value;
    except
      DiasTolerar := 0;
    end;

  try
    RetornoDataVencCalc.Value := RetornoDATA_VENCIMENTO.Value - DiasTolerar;
  except
    RetornoDataVencCalc.Value := RetornoDATA_VENCIMENTO.Value;
  end;

  RetornoDescAbat.Value := RetornoVALOR_DESCONTO.Value +
    RetornoVALOR_ABATIMENTO.Value;
  if RetornoDATA_VENCIMENTO.Value > 0 then
    try
      RetornoDataVencCalc.Value := RetornoDATA_VENCIMENTO.Value - DiasTolerar;
    except
      RetornoDataVencCalc.Value := RetornoDATA_VENCIMENTO.Value;
    end;

  if (RetornoTIPO.Value = 2) then
  begin
    RetornoRetornoDebAuto.Value := PegaDescricaoRetornoDebAuto
      (RetornoCOB_DEB.Value);
    RetornoTipoQuitacao.Value := 'D?bito Autom?tico';
  end
  else
    RetornoTipoQuitacao.Value := 'Retorno Cobran?a';

end;

procedure TBancodeDados.Retorno_OcorAfterInsert(DataSet: TDataSet);
begin
  if RemotoDriveID in [2] then
    Retorno_OcorRET_OC_ID.Value := MySqlPegaID('RETORNO_OCORRENCIA')
  else
    Retorno_OcorRET_OC_ID.Value := PegaNovo('GEN_RET_OC_COD');
  // Retorno_OcorUSR_CAD.Value := CodUsuario;
end;

procedure TBancodeDados.RLPreviewSetup1Send(Sender: TObject);
begin
  CriarEnviarEmail(TRLPreviewForm(Sender).Preview.Pages);
end;

procedure TBancodeDados.BoletosAfterClose(DataSet: TDataSet);
begin
  qryCli.Close;
  qryBancos.Close;
end;

procedure TBancodeDados.ContatosCalcFields(DataSet: TDataSet);
begin
  CalcularAtivo(listaContatos, ContatosCONTATO_ID.Value, ContatosATIVO);
end;

procedure TBancodeDados.Cont_Prt_BoletoAfterInsert(DataSet: TDataSet);
begin
  if RemotoDriveID in [2] then
    Cont_Prt_BoletoCONT_PRT_BLT_ID.Value := MySqlPegaID('CONT_PRT_BOLETO')
  else
    Cont_Prt_BoletoCONT_PRT_BLT_ID.Value := PegaNovo('GEN_CONT_PRTCOD');
  Cont_Prt_BoletoPROT_SIT.Value := 0; { 0-Protestado; 1-Retirado; 2- Cancelado }
  Cont_Prt_BoletoDT_PRT.Value := PrincipalForm.DataServidor;

  // Cont_Prt_BoletoUS_CAD.Value := CodUsuario;
  Cont_Prt_BoletoDT_CAD.Value := PrincipalForm.DataHoraServidor;
end;

procedure TBancodeDados.Cont_Prt_BoletoCalcFields(DataSet: TDataSet);
begin
  if Cont_Prt_BoletoPROT_SIT.Value = 0 then
    Cont_Prt_BoletoSituacao.Value := 'Protestado'
  else if Cont_Prt_BoletoPROT_SIT.Value = 1 then
    Cont_Prt_BoletoSituacao.Value := 'Retirado'
  else if Cont_Prt_BoletoPROT_SIT.Value = 2 then
    Cont_Prt_BoletoSituacao.Value := 'Cancelado';

  qryPrt_Boleto.Close;
  qryPrt_Boleto.Params[0].Value :=
    (BancodeDados.Cont_Prt_BoletoPRT_BLT_ID.Value);
  qryPrt_Boleto.Open;
  BancodeDados.Cont_Prt_BoletoTipo_Protesto.Value :=
    qryPrt_BoletoPROTESTAR.Value;

end;

procedure TBancodeDados.Cont_Serv_ClienAfterInsert(DataSet: TDataSet);
begin

  if RemotoDriveID in [2] then
    Cont_Serv_ClienC_S_C_ID.Value := MySqlPegaID('CONT_SERV_CLIEN')
  else
    Cont_Serv_ClienC_S_C_ID.Value := PegaNovo('GEN_C_S_C_COD');

  Cont_Serv_ClienCLI_ID.Value := ClientesCLI_ID.Value;
  Cont_Serv_ClienDT_CONTRATO.Value := Date;
  Cont_Serv_ClienSIT.Value := 1;
  Cont_Serv_ClienFORNE_ID.Value := -1;
  Cont_Serv_ClienDT_CAD.Value := Now;
  Cont_Serv_ClienDT_CONTRATO_FIM.Value := Date + 7;

  QrySql.Close;
  QrySql.SQL.Text := 'select banco_id from bancos';
  QrySql.Open();
  if QrySql.RecordCount = 1 then
    Cont_Serv_ClienBANCO_ID.Value := QrySql.FieldByName('banco_id').Value;

  QrySql.Close;
  QrySql.SQL.Text := 'select grade_id from grade_financeira where padrao = 1';
  QrySql.Open();

  if not QrySql.IsEmpty then
    Cont_Serv_ClienGRADE_ID.Value := QrySql.FieldByName('grade_id').Value
  else
  begin
    QrySql.Close;
    QrySql.SQL.Text := 'select grade_id from grade_financeira';
    QrySql.Open();

    if QrySql.RecordCount = 1 then
      Cont_Serv_ClienGRADE_ID.Value := QrySql.FieldByName('grade_id').Value;
  end;
  QrySql.Close

end;

procedure TBancodeDados.Cont_Serv_ClienAfterPost(DataSet: TDataSet);
begin
  // Cont_Serv_Clien.Refresh;

end;

procedure TBancodeDados.Cont_Serv_ClienBeforeDelete(DataSet: TDataSet);
begin

  Adiciona.SQL.Text := 'update veiculos set c_s_c_id=0 where veiculo_id = ' +
    IntToStr(Cont_Serv_ClienVEICULO_ID.Value);
  Adiciona.ExecSQL;

end;

procedure TBancodeDados.Cont_Serv_ClienBeforeOpen(DataSet: TDataSet);
begin
  /// Cont_Serv_Clien.Refresh;
end;

procedure TBancodeDados.Cont_Serv_ClienBeforePost(DataSet: TDataSet);
begin
  if Cont_Serv_ClienSIT.Value in [2, 3] then // 2: Cancelado, 3: devolvido
  begin
    Cont_Serv_ClienDT_SIT.Value := Date;
  end
  else
  begin
    Cont_Serv_ClienDT_SIT.Clear;
  end;

  case Cont_Serv_ClienSIT.Value of
    1: // 1: locado
      begin
        Adiciona.SQL.Text := 'update veiculos set c_s_c_id=' +
          IntToStr(Cont_Serv_ClienC_S_C_ID.Value) + ' where veiculo_id = ' +
          IntToStr(Cont_Serv_ClienVEICULO_ID.Value);
        Adiciona.ExecSQL;
      end
  else
    begin // 2: Cancelado, 3: devolvido
      Adiciona.SQL.Text := 'update veiculos set c_s_c_id=0 where veiculo_id = '
        + IntToStr(Cont_Serv_ClienVEICULO_ID.Value);
      Adiciona.ExecSQL;
    end;

  end;

end;

procedure TBancodeDados.Cont_Serv_ClienCalcFields(DataSet: TDataSet);
begin

  case Cont_Serv_ClienSIT.Value of
    1:
      Cont_Serv_ClienSituacao_Nome.Value := 'Locado';
    2:
      Cont_Serv_ClienSituacao_Nome.Value := 'Cancelado';
    3:
      Cont_Serv_ClienSituacao_Nome.Value := 'Devolvido'
  else
    Cont_Serv_ClienSituacao_Nome.Value := '';
  end;

  if Cont_Serv_ClienVEICULO_ID.Value > 0 then
  begin
    qryVeic.Close;
    qryVeic.Params[0].Value := Cont_Serv_ClienVEICULO_ID.Value;
    qryVeic.Open;
    Cont_Serv_ClienPlaca.Value := qryVeicPLACA.Value;
    Cont_Serv_ClienModelo.Value := qryVeicMODELO.Value;
    Cont_Serv_ClienMarca.Value := qryVeicMARCA.Value;
    qryVeic.Open;
  end
  else
  begin
    Cont_Serv_ClienPlaca.Value := '';
    Cont_Serv_ClienModelo.Value := '';
    Cont_Serv_ClienMarca.Value := '';

  end;

  if Cont_Serv_ClienFORNE_ID.Value > 0 then
  begin
    QryFornec.Close;
    QryFornec.Params[0].Value := Cont_Serv_ClienFORNE_ID.Value;
    QryFornec.Open;
    Cont_Serv_ClienFornecedor_nome.Value := QryFornecNOME.Value;
    QryFornec.Close;
  end;

  if (Cont_Serv_ClienDT_CONTRATO_FIM.Value > 0) and
    (Cont_Serv_ClienDT_CONTRATO.Value > 0) then
    try

      if Cont_Serv_ClienDT_CONTRATO_FIM.Value > Cont_Serv_ClienDT_CONTRATO.Value
      then
        Cont_Serv_ClienDias_locacao.Value :=
          Trunc(Cont_Serv_ClienDT_CONTRATO_FIM.Value -
          Cont_Serv_ClienDT_CONTRATO.Value)
      else
        Cont_Serv_ClienDias_locacao.Value := 0;

    except
      Cont_Serv_ClienDias_locacao.Value := 0;
    end;

end;

procedure TBancodeDados.DataModuleCreate(Sender: TObject);
begin
  listaPagar := TStringList.Create;
  listaBoletos := TStringList.Create;
  listaCaixa := TStringList.Create;
  listaContatos := TStringList.Create;
  listaServ := TStringList.Create;
  listaCli := TStringList.Create;
  listaV_Boletos := TStringList.Create;
  CoInitialize(nil);

  MySQLDriver.VendorLib := EmptyStr;
  FBDriver.VendorLib := EmptyStr;
end;

procedure TBancodeDados.DataModuleDestroy(Sender: TObject);
begin
  CoUnInitialize;
end;

procedure TBancodeDados.DocumentosAfterInsert(DataSet: TDataSet);
begin
  if RemotoDriveID in [2] then
    DocumentosDOC_ID.Value := MySqlPegaID('DOCUMENTOS')
  else
    DocumentosDOC_ID.Value := PegaNovo('GEN_DOC_COD');

  DocumentosTIPO_IMG_CAB.Value := 0;
  DocumentosTAM_FONTE_CAB.Value := 12;
  DocumentosOCULTAR_CAB.Value := 0;
  DocumentosATIVO.Value := 1;
  DocumentosCABEC_TODAS.Value := 1;
  DocumentosCABEC_PRIM_PAG.Value := 1;
  DocumentosESP_LINHA.Value := 10;
  DocumentosMARGENS.Value := 0;
  DocumentosADIMPLENT.Value := 0;
  DocumentosOCULTAR_CEP.Value := 0;
  DocumentosOCULTAR_RESOLUCAO.Value := 0;
  DocumentosOCULTAR_PARC_ABERTO.Value := 0;
end;

procedure TBancodeDados.DocumentosBeforePost(DataSet: TDataSet);
begin
  if (BancodeDados.DocumentosDOC_NOME.Value = '') then
  begin
    Mensagem('Informe um nome v?lido para o documento.', mtInformation,
      [mbOk], mrOk, 0);
    Abort;
  end;
end;

function TBancodeDados.ConectandoServidorWeb: Boolean;
begin

  with BancodeDados do
  begin
    try
      ServidorWeb.Close;
      ServidorWeb.FormatOptions.OwnMapRules := false;
      ServidorWeb.FormatOptions.MapRules.Clear;
      ServidorWeb.Params.Clear;
      ServidorWeb.LoginPrompt := false;
      ServidorWeb.Params.Add('Pooled=false');
      ServidorWeb.FormatOptions.OwnMapRules := True;

      with ServidorWeb.FormatOptions.MapRules.Add do
      begin
        TargetDataType := dtAnsiString;
        SourceDataType := dtWideString;
      end;

      with ServidorWeb.FormatOptions.MapRules.Add do
      begin
        TargetDataType := dtDateTime;
        SourceDataType := dtDateTimeStamp;
      end;

      with ServidorWeb.FormatOptions.MapRules.Add do
      begin
        TargetDataType := dtInt32;
        SourceDataType := dtInt64;
      end;

      with ServidorWeb.FormatOptions.MapRules.Add do
      begin
        TargetDataType := dtBlob;
        SourceDataType := dtMemo;
      end;

      ServidorWeb.DriverName := Trim('MySQL'); // drive do banco
      ServidorWeb.Params.Add('database=db3044'); // caminho do banco de dados
      ServidorWeb.Params.Add('user_name=db3044a1');
      ServidorWeb.Params.Add('password=XHkka8S6');
      ServidorWeb.Params.Add('server=db3044.mysql51.laniway.com.br');
      // IP do servidor do banco de dados
      ServidorWeb.Params.Add('drivername=MySQL');
      ServidorWeb.Params.Add('procol=TCPIP');
      ServidorWeb.Params.Add('port=3306');
      ServidorWeb.Params.Add('DriverID=MySQL'); // drive do banco
      ServidorWeb.Params.Add('CharacterSet=utf8');
      ServidorWeb.Params.Add('blobsize=');
      ServidorWeb.Open;

      Result := ServidorWeb.Connected;

    except
      on E: Exception do
        TraduzErro(E.Message);
    end;
  end;

end;

procedure TBancodeDados.ConfigAfterInsert(DataSet: TDataSet);
begin
  if RemotoDriveID in [2] then
    ConfigCONF_ID.Value := MySqlPegaID('CONFIG')
  else
    ConfigCONF_ID.Value := PegaNovo('GEN_CONFCOD');

  ConfigEMAIL_PORTA_SMTP.Value := 587;
  ConfigEMAIL_COMPACTAR_ANEXO.Value := 0;
  ConfigEMAIL_SSL_NIVEL.Value := 3;
  ConfigEMAIL_SSL_METODO.Value := 2;
  ConfigEMAIL_SSL_MODO.Value := 0;
  ConfigNFSE_N_RPS.Value := 0;
  ConfigNFSE_TIPO_RPS.Value := 0;
  ConfigNFSE_RETER_ISS.Value := 0;
  ConfigNFSE_COD_TRIB_SERV.Value := 0;
  ConfigNFSE_SEQ_NUM.Value := 0;
  ConfigNFSE_USA_ACBR.Value := 0;
  ConfigOPT_SIMP_NAC.Value := 1;
  ConfigNFSERIE.Value := 1;

  ConfigNACIONALIDADE.Value := '76';
  ConfigPAIS.Value := '76';
  ConfigIMPORT_BC_FB.Value := 1;
  ConfigTIPO_BOLETO.Value := 2;

end;

procedure TBancodeDados.ConfigBeforePost(DataSet: TDataSet);
begin
  if Trim(ConfigEMAIL_PASS.Value) <> '' then
    if DecifrarSed(ConfigEMAIL_PASS.Value, false, 8267) = '' then
      ConfigEMAIL_PASS.Value := CifrarSed(ConfigEMAIL_PASS.Value, 8267);

  if (ConfigNOME.Value = '') then
    Abort;
  if (ConfigCNPJ.Value = '') then
    Abort;

end;

procedure TBancodeDados.ConfigCalcFields(DataSet: TDataSet);
var
  ID: integer;

begin
  ID := StrToIntDef(BancodeDados.ConfigCIDADE.Value, 0);

  BancodeDados.qryMunicipio.Close;
  BancodeDados.qryMunicipio.Params[0].Value := ID;
  BancodeDados.qryMunicipio.Open;

  if not BancodeDados.qryMunicipio.IsEmpty then
    ConfigCidade_Nome.Value := Municipios2NOME.Value;

end;

procedure TBancodeDados.ConfigCIDADEChange(Sender: TField);
// var
// ID : SmallInt;

begin
  // ID :=StrToIntDef(BancodeDados.ConfigCIDADE.Value,0);

  // if ID>0 then
  begin

    BancodeDados.Municipios2.Close;
    BancodeDados.Municipios2.Params[0].Value := BancodeDados.ConfigUF.Value;
    BancodeDados.Municipios2.Open;
    BancodeDados.Municipios2.Last;

  end;

end;

procedure TBancodeDados.ConfigNACIONALIDADEChange(Sender: TField);
var
  PaisID: integer;

begin
  PaisID := StrToIntDef(ConfigNACIONALIDADE.Value, 0);

  BancodeDados.qryEstados3.Close;
  BancodeDados.qryEstados3.Params[0].Value := IntToStr(PaisID);
  BancodeDados.qryEstados3.Open;
  BancodeDados.qryEstados3.Last;

  if (ConfigNACIONALIDADE.OldValue) <> (ConfigNACIONALIDADE.NewValue) then
    BancodeDados.ConfigUF_NATURAL.Value := '';

end;

procedure TBancodeDados.ConfigPAISChange(Sender: TField);
// var
// ID : SmallInt;

begin
  // ID :=StrToIntDef(BancodeDados.ConfigPAIS.Value, 0);

  // if ID>0 then begin

  BancodeDados.qryEstados2.Close;
  BancodeDados.qryEstados2.Params[0].Value :=
    Trim(BancodeDados.ConfigPAIS.Value);
  BancodeDados.qryEstados2.Open;
  BancodeDados.qryEstados2.Last;
  // end;

end;

procedure TBancodeDados.ConfigUFChange(Sender: TField);
// var
// ID : Integer;
begin
  // ID:=StrToIntDef (BancodeDados.ConfigUF.AsString, 0);

  // if ID>0 then
  // begin
  BancodeDados.Municipios2.Close;
  BancodeDados.Municipios2.Params[0].Value := BancodeDados.ConfigUF.Value;
  BancodeDados.Municipios2.Open;
  BancodeDados.Municipios2.Last;
  // end;

end;

procedure TBancodeDados.ConfigUF_NATURALChange(Sender: TField);
begin
  BancodeDados.Municipios3.Close;
  BancodeDados.Municipios3.Params[0].Value :=
    BancodeDados.ConfigUF_NATURAL.Value;
  BancodeDados.Municipios3.Open;
  BancodeDados.Municipios3.Last;

end;

procedure TBancodeDados.ContatosAfterInsert(DataSet: TDataSet);
begin
  if RemotoDriveID in [2] then
    ContatosCONTATO_ID.Value := MySqlPegaID('CONTATOS')
  else
    ContatosCONTATO_ID.Value := PegaNovo('GEN_CONTATOCOD');

  ContatosSITUACAO.Value := 'SEM RETORNO';
  ContatosTIPO.Value := 'Escola Privada';
  ContatosDT_CADASTRO.Value := Date;
  ContatosPAIS.Value := 'Brasil';
  ContatosPROCEDENTE.Value := 'Carta';
end;

procedure TBancodeDados.ContatosBeforeOpen(DataSet: TDataSet);
begin
  listaContatos.Clear;
end;

function TBancodeDados.MontaRecebimentoTemp(apenasMesmoAno: Boolean): Boolean;
var
  aReceb: Boolean;
begin
  aReceb := false;
  Result := false;
  try
    if RecBol.Active then
      RecBol.Close;
    if Boletos.Active then
      if not Boletos.IsEmpty then
      begin

        RecBol.FileName := DiretorioTemp + 'recboltmp.xml';
        RecBol.CreateDataSet;
        RecBol.Open;
        RecBol.IndexFieldNames := 'SITUACAO_BOLETO;PARCELA';

        try
          Boletos.DisableControls;
          Boletos.First;
          Result := True;
          while not Boletos.Eof do
          begin
            if (BoletosATIVO.Value = True) then
            begin

              if (BoletosSITUACAO_BOLETO.Value = 'A RECEBER') or
                (BoletosSITUACAO_BOLETO.Value = 'CRED A RECEBER') then
              begin
                { if not (BoletosTIPO_CONTAS_ID.Value>0) then begin
                  Result:=False;
                  RecBol.Close;
                  Mensagem('H? um ou mais t?tulos sem tipo de conta definido.', mtWarning, [mbOk], mrOk, 0);
                  break;
                  end;

                  if (apenasMesmoAno = true) then begin
                  if (AnoLetTemp <> BoletosANO_LETIVO.Value) then begin
                  Result:=False;
                  RecBol.Close;
                  Mensagem('S? ? poss?vel utilizar t?tulos referentes ao mesmo ano.', mtWarning, [mbOk], mrOk, 0);
                  break;
                  end;
                  end; }

                if (BoletosSITUACAO_BOLETO.Value = 'A RECEBER') then
                  aReceb := True;

                RecBol.Append;
                RecBolBOLETO_ID.Value := BoletosBOLETO_ID.Value;
                RecBolDESCRICAO.AsString := BoletosDESCRICAO.Value;
                RecBolVALOR_INTEGRAL.Value := BoletosVALOR_INTEGRAL.Value;
                RecBolDESCONTO.Value := BoletosDESCONTO.Value;
                RecBolACRESCIMO.Value := BoletosACRESCIMO.Value;
                RecBolMULTA.Value := BoletosMULTA.Value;
                RecBolJUROS.Value := BoletosJUROS.Value;
                // (currtostr(BoletosJUROS.Value));
                RecBolVALOR_APAGAR_ANT.Value := BoletosVALOR_APAGAR.Value;
                RecBolVALOR_APAGAR.Value := BoletosVALOR_APAGAR.Value;
                RecBolVALOR_PAGO.Value := BoletosVALOR_APAGAR.Value;
                RecBolCREDITO.Value := 0;
                RecBolvlAntAlterado.Value := 0;
                RecBolCLI_ID.Value := BoletosCLI_ID.Value;
                RecBolPARCELA.AsString := BoletosPARCELA.Value;
                RecBolGRADE_ID.Value := BoletosGRADE_ID.Value;
                RecBolSITUACAO_BOLETO.AsString := BoletosSITUACAO_BOLETO.Value;
                RecBolVENCIMENTO.Value := BoletosVENCIMENTO.Value;
                RecBol.Post;
              end;
            end;
            Boletos.Next;
          end;

        finally
          Boletos.EnableControls;
          RecBol.EnableControls;
        end;

        if not(aReceb = True) or RecBol.IsEmpty then
        begin
          Result := false;
          RecBol.Close;
          Mensagem('N?o foi encontrato nenhum t?tulo a receber.', mtInformation,
            [mbOk], mrOk, 0);
        end;

      end;
  except
    On E: Exception do
    begin
      Result := false;
      TraduzErro(E.Message);
    end;
  end;
end;

procedure TBancodeDados.SerialAfterInsert(DataSet: TDataSet);
begin
  if RemotoDriveID in [2] then
    SerialSERIAL_ID.Value := MySqlPegaID('SERIAL')
  else
    SerialSERIAL_ID.Value := PegaNovo('GEN_SERIALCOD');

  SerialDT_EMISSAO.Value := Date;
  SerialHR_EMISSAO.Value := time;
  SerialCLIENTE_ID.Value := BancodeDados.ClientesCLI_ID.Value;

end;

procedure TBancodeDados.SerialBeforePost(DataSet: TDataSet);
begin
  if not SerialCLIENTE_ID.Value > 0 then
  begin
    Abort;
    Mensagem('Cliente n?o informado. Opera??o cancelada.', mtInformation,
      [mbOk], mrOk, 0);
  end;

  if Trim(SerialSERIAL.AsString) = '' then
  begin
    Abort;
    Mensagem('Chave serial inv?lida. Opera??o cancelada.', mtInformation,
      [mbOk], mrOk, 0);
  end;

end;

procedure TBancodeDados.VeiculosAfterInsert(DataSet: TDataSet);
begin

  if RemotoDriveID in [2] then
    VeiculosVEICULO_ID.Value := MySqlPegaID('VEICULOS')
  else
    VeiculosVEICULO_ID.Value := PegaNovo('GEN_VEICULO_COD');

  VeiculosDT_CAD.Value := Date;

  VeiculosSIT.Value := 0;

end;

procedure TBancodeDados.VeiculosBeforePost(DataSet: TDataSet);
begin
  if (VeiculosPLACA.Value = EmptyStr) then
    Abort;

end;

procedure TBancodeDados.ServidorWebRecover(ASender, AInitiator: TObject;
  AException: Exception; var AAction: TFDPhysConnectionRecoverAction);
var
  iRes: integer;
begin
  iRes := MessageDlg
    ('A conex?o est? perdida. Off-line: sim, tente novamente: ok, falhe: cancele.',
    mtConfirmation, [mbYes, mbOk, mbCancel], 0);
  case iRes of
    mrYes:
      AAction := faOfflineAbort;
    mrOk:
      AAction := faRetry;
    mrCancel:
      AAction := faFail;
  end;

end;

procedure TBancodeDados.SmsServAfterInsert(DataSet: TDataSet);
begin
  if RemotoDriveID in [2] then
    SmsServSMS_SERV_ID.Value := MySqlPegaID('SMS_SERV')
  else
    SmsServSMS_SERV_ID.Value := PegaNovo('GEN_SMS_SERVCOD');

  SmsServDT_CAD.Value := PrincipalForm.DataHoraServidor;
  SmsServENVIO.Value := 0;

  // SmsServTIPO.Value         := CodModulo;
end;
// select * from SMS_SERV

procedure TBancodeDados.SDocAfterInsert(DataSet: TDataSet);
begin
  if RemotoDriveID in [2] then
    SDocS_DOC_ID.Value := MySqlPegaID('S_DOC')
  else
    SDocS_DOC_ID.Value := PegaNovo('GEN_SDOCCOD');

  SDocDT_CAD.AsDateTime := (Now);

end;

procedure TBancodeDados.SDocCalcFields(DataSet: TDataSet);
begin
  if not Login.Active then
    Login.Open;

  Login.First;
  if Login.Locate('LOGIN_ID', SDocUS_CAD.Value, []) then
    SDocUsCad.Value := LoginLOGIN.Value;
end;

procedure TBancodeDados.PrepararRel(Relatorio: TRLReport;
  FMatricial: Boolean = false; RLDraftFilterTemp: TRLDraftFilter = nil;
  FMalaDireta: Boolean = false; Gauge: TGauge = nil);
var
  I { , TamPapel } : integer;
  CorPadrao, CorPadraoTXT: TColor;
  ComponenteTmp: TComponent;
begin

  if not Config.Active then
    Config.Open;

  try
    CorPadrao := $00FEE2CF;
    {
      if ((InstituicaoCOR_PADRAO1.IsNull) or (InstituicaoCOR_PADRAO1.Value = '')) then
      begin
      CorPadrao := $00FEE2CF;
      end
      else
      begin
      CorPadrao := StringToColor(InstituicaoCOR_PADRAO1.Value);
      end; }
  except
    CorPadrao := $00FEE2CF;
  end;

  try
    CorPadraoTXT := clBlack;
    {
      if ((InstituicaoCOR_PADRAOTXT1.IsNull) or (InstituicaoCOR_PADRAOTXT1.Value = '')) then
      begin
      CorPadraoTXT := clBlack;
      end
      else
      begin
      CorPadraoTXT := StringToColor(InstituicaoCOR_PADRAOTXT1.Value);
      end; }
  except
    CorPadraoTXT := clBlack;
  end;

  for I := 0 to Relatorio.Owner.ComponentCount - 1 do
  begin
    try
      ComponenteTmp := Relatorio.Owner.Components[I];
      if (ComponenteTmp is TRLLabel) then
      begin
        if (FMatricial = True) then
          (ComponenteTmp as TRLLabel).Font.Style := [];

        if (pos(UpperCase('LbNomeInstituicao'), UpperCase(ComponenteTmp.Name)
          )) > 0 then
        begin
          // if (BancodeDados.InstituicaoREL_CABEC_IMP_FANT_RAZ.Value=1) then
          // (ComponenteTmp as TRLLabel).Caption := BancodeDados.InstituicaoNOME.Value else
          (ComponenteTmp as TRLLabel).Caption := BancodeDados.ConfigNOME.Value;

          if (FMatricial = True) then
            (ComponenteTmp as TRLLabel).Font.Color := clBlack
          else
            (ComponenteTmp as TRLLabel).Font.Color := CorPadraoTXT;
        end
        else if (pos(UpperCase('lbCNPJ'), UpperCase(ComponenteTmp.Name))) > 0
        then
        begin
          (ComponenteTmp as TRLLabel).Caption := BancodeDados.ConfigCNPJ.Value;
          if (FMatricial = True) then
            (ComponenteTmp as TRLLabel).Font.Color := clBlack
          else
            (ComponenteTmp as TRLLabel).Font.Color := CorPadraoTXT;
        end
        else if (pos(UpperCase('LbEndereco'), UpperCase(ComponenteTmp.Name))) > 0
        then
        begin
          (ComponenteTmp as TRLLabel).Caption := 'End.: ' +
            BancodeDados.ConfigLOGRADOURO.Value + ', Telefone: ' +
            BancodeDados.ConfigFONE1.Value + ' - ' +
            BancodeDados.ConfigFONE2.Value + ' ' +
            BancodeDados.ConfigBAIRRO.Value + ' - CEP: ' +
            BancodeDados.ConfigCEP.Value + ', ' +
            BancodeDados.ConfigCidade_Nome.Value + ' - ' +
            PegaUF(BancodeDados.ConfigUF.Value);
          if (FMatricial = True) then
            (ComponenteTmp as TRLLabel).Font.Color := clBlack
          else
            (ComponenteTmp as TRLLabel).Font.Color := CorPadraoTXT;
        end
        else if (pos(UpperCase('LbSite'), UpperCase(ComponenteTmp.Name))) > 0
        then
        begin
          (ComponenteTmp as TRLLabel).Caption := '';
          if Trim(BancodeDados.ConfigEMAIL_COMERC.Value) <> '' then
            (ComponenteTmp as TRLLabel).Caption := 'E-mail: ' +
              BancodeDados.ConfigEMAIL_COMERC.Value;
          if Trim(BancodeDados.ConfigSITE.Value) <> '' then
            (ComponenteTmp as TRLLabel).Caption := (ComponenteTmp as TRLLabel)
              .Caption + ' - Site: ' + BancodeDados.ConfigSITE.Value;
          if (FMatricial = True) then
            (ComponenteTmp as TRLLabel).Font.Color := clBlack
          else
            (ComponenteTmp as TRLLabel).Font.Color := CorPadraoTXT; // RLDraw
        end
        else if (pos(UpperCase('lbCorPadrao'), UpperCase(ComponenteTmp.Name))) > 0
        then
        begin
          if (FMatricial = True) then
            (ComponenteTmp as TRLLabel).Visible := false
          else
            (ComponenteTmp as TRLLabel).Color := CorPadrao;
        end
        else if (pos(UpperCase('lbPeriodo'), UpperCase(ComponenteTmp.Name))) > 0
        then
        begin
        end
        else if (pos(UpperCase('lbAnoLetivo'), UpperCase(ComponenteTmp.Name))) > 0
        then
        begin
        end
        else if (pos(UpperCase('lbTitulo'), UpperCase(ComponenteTmp.Name))) > 0
        then
        begin
          if not(FMatricial = True) then
            (ComponenteTmp as TRLLabel).Font.Color := CorPadraoTXT;
        end
        else if (pos(UpperCase('lbEmpresaNome'), UpperCase(ComponenteTmp.Name)
          )) > 0 then
        begin
          (ComponenteTmp as TRLLabel).Caption := EmpresaNome;
        end
        else if (pos(UpperCase('lbEmpresaSite'), UpperCase(ComponenteTmp.Name)
          )) > 0 then
        begin
          (ComponenteTmp as TRLLabel).Caption := EmpresaSite;
        end
        else if (pos(UpperCase('lbSistemaNome'), UpperCase(ComponenteTmp.Name)
          )) > 0 then
        begin
          (ComponenteTmp as TRLLabel).Caption := SistemaNome;
        end
        else if (pos(UpperCase('linhamatricial'), UpperCase(ComponenteTmp.Name)
          )) > 0 then
        begin
          if (FMatricial = True) then
            (ComponenteTmp as TRLLabel).Visible := True
          else
            (ComponenteTmp as TRLLabel).Visible := false;
        end
        else

          { if (Pos(UpperCase('LbResol'), UpperCase(ComponenteTmp.Name))) > 0 then
            begin
            (ComponenteTmp as TRLLabel).Caption := 'Resolu??o N? : ' + BancodeDados.InstituicaoRESOLUCAO.Value;
            end
            else } if (pos(UpperCase('LbResolCNPJ'),
            UpperCase(ComponenteTmp.Name))) > 0 then
          begin
            (ComponenteTmp as TRLLabel).Caption := 'CNPJ: ' +
              BancodeDados.ConfigCNPJ.Value;
          end
          else if (pos(UpperCase('lblogradouro'), UpperCase(ComponenteTmp.Name)
            )) > 0 then
          begin
            (ComponenteTmp as TRLLabel).Caption := 'Endere?o: ' +
              BancodeDados.ConfigLOGRADOURO.Value + ' - ' +
              BancodeDados.ConfigBAIRRO.Value + ', ' +
              BancodeDados.ConfigCIDADE.Value + ', ' +
              BancodeDados.ConfigUF.Value + '.';
          end
          else if (pos(UpperCase('LbCidadeData'), UpperCase(ComponenteTmp.Name)
            )) > 0 then
          begin
            (ComponenteTmp as TRLLabel).Caption :=
              BancodeDados.ConfigCidade_Nome.Value + ', ' +
              PegaUF(BancodeDados.ConfigUF.Value) + ' - ' +
              FormatDateTime('dd/mm/yyyy', Date);
          end
          else if (pos(UpperCase('LbTelefEmail'), UpperCase(ComponenteTmp.Name)
            )) > 0 then
          begin
            if (Trim(BancodeDados.ConfigEMAIL_COMERC.Value) <> '') then
              (ComponenteTmp as TRLLabel).Caption := 'Telefone: ' +
                BancodeDados.ConfigFONE1.Value + ' - E-mail: ' +
                BancodeDados.ConfigEMAIL_COMERC.Value
            else
              (ComponenteTmp as TRLLabel).Caption := 'Telefone: ' +
                BancodeDados.ConfigFONE1.Value;
          end
          else if (pos(UpperCase('lbNomeSite'), UpperCase(ComponenteTmp.Name)
            )) > 0 then
          begin
            if (Trim(BancodeDados.ConfigSITE.Value) <> '') then
              (ComponenteTmp as TRLLabel).Caption := 'Site: ' +
                BancodeDados.ConfigSITE.Value
            else
              (ComponenteTmp as TRLLabel).Caption := '';
          end;

      end
      else if (ComponenteTmp is TSEDRLDBImage) then
      begin
        if (FMatricial = True) then
        begin
          (ComponenteTmp as TSEDRLDBImage).Visible := false;
        end
        else
        begin
          (ComponenteTmp as TSEDRLDBImage).Scaled := false;
          (ComponenteTmp as TSEDRLDBImage).Stretch := True;
        end;
      end
      else if (ComponenteTmp is TRLDraw) then
      begin
        if (pos(UpperCase('lbCorPadrao'), UpperCase(ComponenteTmp.Name))) > 0
        then
        begin
          if (FMatricial = True) then
            (ComponenteTmp as TRLDraw).Visible := false
          else
          begin
            (ComponenteTmp as TRLDraw).Color := CorPadrao;
            (ComponenteTmp as TRLDraw).Brush.Color := CorPadrao;
          end;
        end;
      end;

    except
    end;
  end;

  {
    if TamPapel = 1 then
    Relatorio.PageSetup.PaperSize:=fpA4 else
    if TamPapel = 2 then
    Relatorio.PageSetup.PaperSize:=fpLetter else
    if TamPapel = 3 then
    Relatorio.PageSetup.PaperSize:=fpLegal else
    if TamPapel = 4 then
    Relatorio.PageSetup.PaperSize:=fpLegal3;
  }

  if (FMalaDireta = True) then
  begin
    PrincipalForm.GeraMalaDireta(TFDQuery(Relatorio.DataSource.DataSet),
      True, Gauge);
  end
  else if (FMatricial = True) then
  begin
    Relatorio.DefaultFilter := RLDraftFilterTemp;
    Relatorio.PageSetup.PaperSize := fpLetter;
    Relatorio.Print;
  end
  else
  begin
    Relatorio.Preview;
  end;

end;

procedure TBancodeDados.Prt_BoletoAfterInsert(DataSet: TDataSet);
begin
  if RemotoDriveID in [2] then
    Prt_BoletoPRT_BLT_ID.Value := MySqlPegaID('PRT_BOLETO')
  else
    Prt_BoletoPRT_BLT_ID.Value := PegaNovo('GEN_PRT_BOLETOCOD');

  // Prt_BoletoUS_CAD.Value := CodUsuario;
  Prt_BoletoDT_CAD.Value := PrincipalForm.DataServidor;
  Prt_BoletoSIT.Value := 1;
end;

procedure TBancodeDados.PagarAfterPost(DataSet: TDataSet);
begin
  // thCalculaValores.Recomecar;
end;

procedure TBancodeDados.PagarAfterDelete(DataSet: TDataSet);
begin
  // thCalculaValores.Recomecar;
end;

procedure TBancodeDados.NfsAfterInsert(DataSet: TDataSet);
begin
  if RemotoDriveID in [2] then
    NfsNFS_ID.Value := MySqlPegaID('NFS')
  else
    NfsNFS_ID.Value := PegaNovo('GEN_NFS_COD');

  // NfsRPS_NUMERO.Value:=0;
  NfsSIT.Value := 0;
  NfsTIPO.Value := 1; // 0 - Tal?o; 1 - Eletronica
  NfsSERIE.Value := '1';
  NfsDT_RPS.Value := Date;
  NfsUS_CAD.Value := 0;
  NfsDT_CAD.Value := Now;

  if not Config.Active then
    Config.Open;

  NfsPERC_ISS.Value := ConfigPERC_ISS.Value;
end;

procedure TBancodeDados.NfsAfterOpen(DataSet: TDataSet);
begin
  if (IDNfs > 0) then
    Nfs.Locate('NFS_ID', IDNfs, []);
end;

procedure TBancodeDados.NfsBeforeCancel(DataSet: TDataSet);
begin
  if (Nfs.State = dsInsert) then
  begin
    NfsServ.Close;
    Adiciona.SQL.Text := 'DELETE FROM NFS_SERV WHERE NFS_ID = ' +
      IntToStr(NfsNFS_ID.Value);
    Adiciona.ExecSQL;
  end;
end;

procedure TBancodeDados.NfsBeforeClose(DataSet: TDataSet);
begin
  IDNfs := NfsNFS_ID.Value;
  NfsServ.Close;
end;

procedure TBancodeDados.NfsBeforePost(DataSet: TDataSet);
begin
  if (NfsCLI_ID.Value <= 0) then
  begin
    Mensagem('Informe o cliente desta nota fiscal.', mtInformation,
      [mbOk], mrOk, 0);
    Abort;
  end;

  NfsUS_ALT.Value := 0;
  NfsDT_ALT.Value := Now;


  // if not (NfsSIT.value in [4,3]) then  //para ajuste manual de notas com divergencia do servidor
  // begin
  // NfsNFSE_COD_VERIF.Clear;
  // NfsNFSE_DT_EMISSAO.Clear;
  // NfsXML_NFSE.Clear;
  // NfsNFSE_NUMERO.Clear;
  // NfsOBS2.Clear;
  // end;

end;

procedure TBancodeDados.NfsCalcFields(DataSet: TDataSet);
begin
  case NfsSIT.Value of
    0:
      NfsSitCalc.Value := 'Aberta (' + IntToStr(NfsSIT.Value) + ')';
    1:
      NfsSitCalc.Value := 'Fechada (' + IntToStr(NfsSIT.Value) + ')';
    2:
      NfsSitCalc.Value := 'Cancelada (' + IntToStr(NfsSIT.Value) + ')';
    3:
      NfsSitCalc.Value := 'Aguardando proces(' + IntToStr(NfsSIT.Value) + ')';
    4:
      NfsSitCalc.Value := 'Enviada (' + IntToStr(NfsSIT.Value) + ')';
  end;

  if (NfsNFSE_NUMERO.Value > 0) then
    NfsSitCalc.Value := 'Enviada (' + IntToStr(NfsSIT.Value) + ')';

  // NfsCompetencia.Value := FormatDateTime('dd/mm/yyyy', NfsDT_RPS.Value);

end;

procedure TBancodeDados.CalculaTotalNfs;
var
  idTmpServ: integer;
  vlTotal: currency;
begin
  if (NfsNFS_ID.Value > 0) then
  begin
    idTmpServ := NfsServNFS_IT_ID.Value;
    NfsServ.DisableControls;
    try
      Screen.Cursor := crSQLWait;
      try
        NfsServ.First;
        vlTotal := 0;

        if not FDConnection1.InTransaction then
          FDConnection1.StartTransaction;

        while not NfsServ.Eof do
        begin
          vlTotal := vlTotal + NfsServVL_TOTAL.Value;
          NfsServ.Next;
        end;

        if not(Nfs.State in [dsInsert, dsEdit]) then
          Nfs.Edit;

        NfsVL_TOTAL.Value := vlTotal;

        NfsVL_BS_CALC.Value := vlTotal;
        NfsVL_ISS.Value :=
          StrToCurr(FormatFloat('0.00', (vlTotal * NfsPERC_ISS.Value) / 100));

        if not(Nfs.State = dsInsert) then
          Nfs.Post;

        FDConnection1.CommitRetaining;
      except
        On E: Exception do
        begin
          Mensagem('Erro ao calcular o total da nota.' + #13 + E.Message,
            mtWarning, [mbOk], mrOk, 0);
        end;
      end;
    finally
      NfsServ.Locate('NFS_IT_ID', idTmpServ, []);
      NfsServ.EnableControls;
    end;
    Screen.Cursor := crDefault;
  end;
end;

procedure TBancodeDados.Celul_EmailsAfterInsert(DataSet: TDataSet);
begin
  if RemotoDriveID in [2] then
    Celul_EmailsCEL_EM_ID.Value := MySqlPegaID('CELUL_EMAILS')
  else
    Celul_EmailsCEL_EM_ID.Value := PegaNovo('GEN_CEL_EMRCOD');

  Celul_EmailsDT_CAD.Value := Now;
  Celul_EmailsSIT.Value := 0;
  Celul_EmailsCLI_ID.Value := ClientesCLI_ID.Value;
end;

procedure TBancodeDados.Celul_EmailsBeforeOpen(DataSet: TDataSet);
begin
  if not qryOperadora.Active then
    qryOperadora.Open
end;

procedure TBancodeDados.Celul_EmailsBeforePost(DataSet: TDataSet);
begin
  if Trim(BancodeDados.Celul_EmailsCELULAR_1.Value) = '' then
    Abort;

  BancodeDados.Celul_EmailsUS_ALT.Value := 0;
  BancodeDados.Celul_EmailsDT_ALT.Value := Now;

end;

procedure TBancodeDados.Celul_EmailsCalcFields(DataSet: TDataSet);
begin
  // qryOper_Celular.Close;
  // qryOper_Celular.Params[0].Value:=Celul_EmailsOPER_CEL_ID.Value;
  // qryOper_Celular.Open;

  // Celul_EmailsOperadora1.Value:=qryOper_CelularDESCRICAO.Value;
end;

procedure TBancodeDados.NfsServAfterDelete(DataSet: TDataSet);
begin
  CalculaTotalNfs;
end;

procedure TBancodeDados.NfsServAfterInsert(DataSet: TDataSet);
begin
  if RemotoDriveID in [2] then
    NfsServNFS_IT_ID.Value := MySqlPegaID('NFS_SERV')
  else
    NfsServNFS_IT_ID.Value := PegaNovo('GEN_NFS_SERV_COD');

  NfsServNFS_ID.Value := NfsNFS_ID.Value;
  NfsServUS_CAD.Value := 0;
  NfsServDT_CAD.Value := Now;
end;

procedure TBancodeDados.NfsServAfterPost(DataSet: TDataSet);
begin
  CalculaTotalNfs;
end;

procedure TBancodeDados.NfsServBeforePost(DataSet: TDataSet);
begin
  if Trim(NfsServDESCRICAO.Value) = '' then
  begin
    Abort;
  end;
  if not(NfsServQUANT.Value > 0) then
  begin
    Mensagem('Informe a quantidade do servi?o.', mtInformation, [mbOk],
      mrOk, 0);
    Abort;
  end;
  if not(NfsServVL_UNIT.Value > 0) then
  begin
    Mensagem('Informe o valor unit?rio do servi?o.', mtInformation,
      [mbOk], mrOk, 0);
    Abort;
  end;

  NfsServVL_TOTAL.Value :=
    StrToCurr(FormatFloat('0.00', NfsServQUANT.Value * NfsServVL_UNIT.Value));
  NfsServUS_ALT.Value := 0;
  NfsServDT_ALT.Value := Now;
end;

procedure TBancodeDados.ObservacoesAfterInsert(DataSet: TDataSet);
begin
  if RemotoDriveID in [2] then
    ObservacoesOBS_ID.Value := MySqlPegaID('OBSERVACOES')
  else
    ObservacoesOBS_ID.Value := PegaNovo('GEN_OBSCOD');

  ObservacoesCLI_ID.Value := ClientesCLI_ID.Value;
end;

procedure TBancodeDados.ObservacoesBeforePost(DataSet: TDataSet);
begin
  if Trim(BancodeDados.ObservacoesOBS.Value) = '' then
    Abort;

end;


// Felipe - 29/08/2019

procedure TBancodeDados.ObterDadosdaNFSe(Num_Rps, Serie: String);
type
  TCsNfseRps = function(Num_Rps: string; Serie: String): Boolean; stdcall;
var
  xHandle: THandle;
  xNota: TCsNfseRps;
  Temnota: Boolean;
begin
  // se retornou dados dessa nota atualiza no banco e muda a situa??o da nota
  try
    if BancodeDados.InstanciarNFSe then
    begin
      if (ConfigNFSE_AMBIENTE.Value = 1) then
        nfse.WebService.Ambiente := tipoAmbiente_Producao
      else
        nfse.WebService.Ambiente := tipoAmbiente_Homologacao;

      if (nfse.Certificado.SelecionaCertificadoNroSerie
        (Trim(ConfigNFSE_CERT_DIG_NUM_SERIE.Value) + ';' +
        RetornaNumeros(ConfigCIDADE.AsString) + ';')) then
      begin
        // Sleep(4000);
        Application.ProcessMessages;
        if not Config.Active then
          Config.Open;

        nfse.Emitente.CNPJ := ConfigCNPJ.Value;
        nfse.Emitente.InscMunicipal := RetornaNumeros(ConfigINSC_MUNIC.Value);
        nfse.CodCidade := StrToIntDef(ConfigCIDADE.Value, 0);
        nfse.NotaFiscal.Serie := Serie;
        nfse.NotaFiscal.NumeroRps := StrToInt(Num_Rps);

        if (nfse.ConsultarNFSePorRps(Num_Rps, Serie) = True) then
        begin
          BancodeDados.Nfs.First;
          if (BancodeDados.Nfs.Locate('NFS_ID', Num_Rps, [])) then
          begin
            if not(BancodeDados.Nfs.State in [dsEdit]) then
              BancodeDados.Nfs.Edit;

            BancodeDados.NfsNFSE_NUMERO.Value := nfse.NFSeNumero;
            BancodeDados.NfsSIT.Value := 4;
            BancodeDados.NfsNFSE_COD_VERIF.Value := nfse.NFSeCodVerif;
            BancodeDados.NfsNFSE_DT_EMISSAO.Value := nfse.NFSeDtEmissao;
            BancodeDados.NfsXML_NFSE.AsString := nfse.TextoXML_NFSe;

            if (nfse.WebService.Ambiente = tipoAmbiente_Producao) then
              BancodeDados.NfsNFSE_AMBIENTE.Value := 1
            else
              BancodeDados.NfsNFSE_AMBIENTE.Value := 2;

            BancodeDados.Nfs.Post;
            if not BancodeDados.FDConnection1.InTransaction then
              BancodeDados.FDConnection1.StartTransaction;
            BancodeDados.FDConnection1.CommitRetaining;
          end;
        end;

      end;
      // CsNfsForm.TimerNfs1.Enabled:=false;
    end;
  except
    on E: Exception do
    begin
      Mensagem('Erro ao obter dados da nota.' + #13 + E.Message, mtWarning,
        [mbOk], mrOk, 0);
    end;
  end;
end;

procedure TBancodeDados.FBDriverDriverCreated(Sender: TObject);
begin
  FBDriver.VendorLib := ExtractFilePath(ParamStr(0)) + 'fbclient.dll';

end;

procedure TBancodeDados.FDConnection1Error(ASender, AInitiator: TObject;
  var AException: Exception);
var
  oExc: EFDDBEngineException;
begin
  if AException is EFDDBEngineException then
  begin
    oExc := EFDDBEngineException(AException);
    if oExc.Kind = ekRecordLocked then
      oExc.Message :=
        'Por favor, tente a opera??o mais tarde. No momento, o registro est? ocupado'
    else if (oExc.Kind = ekUKViolated) and SameText(oExc[0].ObjName,
      'UniqueKey_Orders') then
      oExc.Message :=
        'Forne?a as informa??es solicitadas. Parece que o registro j? foi feito';
  end;

end;

procedure TBancodeDados.FecharNota;
begin
  // if (BancodeDados.NfsSIT.Value = 1) then Mensagem('Esta nota j? est? fechada.', mtInformation, [mbOk], mrOk, 0) else
  // if (BancodeDados.NfsSIT.Value = 2) then Mensagem('Esta nota est? cancelada.', mtInformation, [mbOk], mrOk, 0) else
  if (BancodeDados.NfsSIT.Value <> 0) then
    Mensagem('Esta nota n?o est? aberta.', mtInformation, [mbOk], mrOk, 0)
  else
  begin
    if (Trim(BancodeDados.NfsCNPJ.Value) = '') then
    begin
      Mensagem('O cliente n?o possui CNPJ.', mtWarning, [mbOk], mrOk, 0);
      exit;
    end;

    if not FDConnection1.InTransaction then
      FDConnection1.StartTransaction;
    if not(Nfs.State in [dsEdit]) then
      Nfs.Edit;

    NfsSIT.Value := 1;
    Nfs.Post;

    FDConnection1.CommitRetaining;
  end;
end;

function TBancodeDados.PegaListaServicos(idNota: integer): String;
begin
  PrincipalForm.Memo1.Lines.Clear;

  qryNFSServ.Close;
  qryNFSServ.Params[0].Value := idNota;
  qryNFSServ.Open;

  if not qryNFSServ.IsEmpty then
  begin
    qryNFSServ.First;
    while not qryNFSServ.Eof do
    begin
      PrincipalForm.Memo1.Lines.Add(qryNFSServDESCRICAO.Value + ' - ' +
        FormatFloat('R$ ,0.00', qryNFSServVL_TOTAL.Value));
      qryNFSServ.Next;
    end;

    Boletos.Close;
    Boletos.SQL.Text := PrincipalForm.SQLrepositorio(0) + ' and b.nfs_id = ' +
      IntToStr(idNota) + ' order by b.recebimento';
    Boletos.Open;

    PrincipalForm.Memo1.Lines.Add('');
    PrincipalForm.Memo1.Lines.Add
      ('OBS.: NF REFERENTE AO(S) SEGUINTE(S) TITULO(S)');

    Boletos.First;
    while not Boletos.Eof do
    begin
      PrincipalForm.Memo1.Lines.Add('COD.: ' + FormatFloat('000000',
        BoletosBOLETO_ID.Value) + ' - ' + 'Vencimento: ' +
        FormatDateTime('dd/mm/yyyy', BoletosVENCIMENTO_ORIG.Value));
      Boletos.Next;
    end;

    Result := PrincipalForm.Memo1.Lines.Text;
  end;

  qryNFSServ.Close;
end;

procedure TBancodeDados.PegaNFItens;
begin
  NfsServ.Close;
  try
    if (NfsNFS_ID.Value > 0) then
    begin
      NfsServ.SQL.Text := 'select * from nfs_serv where nfs_id = ' +
        IntToStr(NfsNFS_ID.Value) + ' order by nfs_it_id';
      NfsServ.Open;
    end;
  except
    On E: Exception do
      TraduzErro(E.Message);
  end;
end;

procedure TBancodeDados.MarcarAtivo(ListaTmp: TStringList; IDTmp: integer;
  var Campo: TBooleanField);
var
  idxTmp: integer;
begin
  if Assigned(ListaTmp) then
  begin
    idxTmp := ListaTmp.IndexOf(IntToStr(IDTmp));
    if (idxTmp >= 0) then
    begin
      ListaTmp.Delete(idxTmp);
      Campo.Value := false;
    end
    else
    begin
      ListaTmp.Add(IntToStr(IDTmp));
      Campo.Value := True;
    end;
  end;
end;

procedure TBancodeDados.CalcularAtivo(ListaTmp: TStringList; IDTmp: integer;
  var Campo: TBooleanField);
begin
  if Assigned(ListaTmp) then
  begin
    if (ListaTmp.IndexOf(IntToStr(IDTmp)) >= 0) then
      Campo.Value := True
    else
      Campo.Value := false;
  end
  else
  begin
    Campo.Value := false;
  end;
end;

function TBancodeDados.PegarAtivo(ListaTmp: TStringList): String;
var
  txt: String;
  I: integer;
begin
  txt := '';
  if Assigned(ListaTmp) then
  begin
    ListaTmp.Sort;
    for I := 0 to ListaTmp.Count - 1 do
    begin
      if Trim(txt) = '' then
        txt := ListaTmp[I]
      else
        txt := txt + ', ' + ListaTmp[I];
    end;

    Result := txt;
  end
  else
    Result := '';
end;

function TBancodeDados.PegaSeq_Nfse(configID: integer): integer;
begin
  if not FDConnection1.InTransaction then
    FDConnection1.StartTransaction;

  Pega_Seq_Nfse.Close;
  Pega_Seq_Nfse.ParamByName('VL_CONF_ID').Value := configID;
  Pega_Seq_Nfse.ExecProc;

  if Pega_Seq_Nfse.ParamByName('VL_SEQ').IsNull then
    Result := 0
  else
    Result := Pega_Seq_Nfse.ParamByName('VL_SEQ').Value;

  FDConnection1.CommitRetaining;
end;

function AcentoHTML(Nome: String): String;
const
  // ComAcentuacao : array[1..59] of string=('?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '?', '"', '?', '<', '>', '?', '?', '?', '?');
  ComAcentuacao = '??????????????????????????????????????????????????????????';
  SemAcentuacao: array [1 .. 58] of string = ('&agrave;', '&aacute;', '&acirc;',
    '&atilde;', '&auml;', '&egrave;', '&eacute;', '&ecirc;', '&euml;',
    '&igrave;', '&iacute;', '&icirc;', '&iuml;', '&ograve;', '&oacute;',
    '&ocirc;', '&otilde;', '&ouml;', '&ugrave;', '&uacute;', '&ucirc;',
    '&uuml;', '&ccedil;', '&Agrave;', '&Aacute;', '&Acirc;', '&Atilde;',
    '&Auml;', '&Egrave;', '&Eacute;', '&Ecirc;', '&Euml;', '&Igrave;',
    '&Iacute;', '&Icirc;', '&Iuml;', '&Ograve;', '&Oacute;', '&Ocirc;',
    '&Otilde;', '&Ouml;', '&Ugrave;', '&Uacute;', '&Ucirc;', '&Uuml;',
    '&Ccedil;', '&acute;', '&uml;', '&brvbar;', '&sect;', '&euro;', '&not;',
    '&pound;', '&sup1;', '&sup2;', '&sup3;', '&ordm;', '&ordf;');
var
  I: integer;
begin

  for I := 1 to Length(ComAcentuacao) do
  begin
    Nome := StringReplace(Nome, ComAcentuacao[I], SemAcentuacao[I],
      [rfReplaceAll]);
    // Nome := SubstituirString(Nome, ComAcentuacao[i], SemAcentuacao[i]);
  end;
  Result := Trim(Nome);
end;

function TBancodeDados.EnviarEmail(Destinatario, Assunto, Corpo,
  Anexo: String): Boolean;
var
  pass, arq2: String;
  idMensagem: TIdMessage;
  stream: TMemoryStream;
  compactarAnexo: Boolean;
begin

  Result := false;
  compactarAnexo := false;
  try
    if not Config.Active then
      Config.Open;
    pass := DecifrarSed(ConfigEMAIL_PASS.Value, false, 8267);
    if (Trim(ConfigEMAIL_REMET.Value) <> '') then
    begin
      if (Trim(ConfigEMAIL_SERV_SMTP.Value) <> '') and
        (ConfigEMAIL_PORTA_SMTP.Value > 0) then
      begin
        if (Trim(ConfigEMAIL_USER.Value) <> '') and (Trim(pass) <> '') then
        begin
          if not Assigned(ProgressoEmailForm) then
            ProgressoEmailForm := TProgressoEmailForm.Create(Application);
          ProgressoEmailForm.Show;

          compactarAnexo := (ConfigEMAIL_COMPACTAR_ANEXO.Value = 1);

          idMensagem := TIdMessage.Create(Application);
          try
            // if IdSMTP1.Connected then IdSMTP1.Disconnect();
            if not IdSMTP1.Connected then
            begin
              case ConfigEMAIL_SSL_NIVEL.Value of
                0:
                  IdSMTP1.UseTLS := utNoTLSSupport;
                1:
                  IdSMTP1.UseTLS := utUseExplicitTLS;
                2:
                  IdSMTP1.UseTLS := utUseImplicitTLS;
                3:
                  IdSMTP1.UseTLS := utUseRequireTLS;
              end;

              case ConfigEMAIL_SSL_METODO.Value of
                0:
                  IdSSLIOHandlerSocketOpenSSL1.SSLOptions.Method := sslvSSLv2;
                1:
                  IdSSLIOHandlerSocketOpenSSL1.SSLOptions.Method := sslvSSLv23;
                2:
                  IdSSLIOHandlerSocketOpenSSL1.SSLOptions.Method := sslvSSLv3;
                3:
                  IdSSLIOHandlerSocketOpenSSL1.SSLOptions.Method := sslvTLSv1;
              end;

              case ConfigEMAIL_SSL_MODO.Value of
                0:
                  IdSSLIOHandlerSocketOpenSSL1.SSLOptions.Mode := sslmBoth;
                1:
                  IdSSLIOHandlerSocketOpenSSL1.SSLOptions.Mode := sslmClient;
                2:
                  IdSSLIOHandlerSocketOpenSSL1.SSLOptions.Mode := sslmServer;
                3:
                  IdSSLIOHandlerSocketOpenSSL1.SSLOptions.Mode :=
                    sslmUnassigned;
              end;

              IdSMTP1.ReadTimeout := 20000;
              IdSMTP1.Username := Trim(ConfigEMAIL_USER.Value);
              IdSMTP1.Password := pass;
              IdSMTP1.Host := Trim(ConfigEMAIL_SERV_SMTP.Value);
              IdSMTP1.Port := ConfigEMAIL_PORTA_SMTP.Value;
              IdSMTP1.AuthType := satDefault;
              IdSMTP1.Connect;
            end;

            with idMensagem do
            begin
              From.Address := Trim(ConfigEMAIL_USER.Value);
              From.Name := Trim(ConfigEMAIL_REMET.Value);
              Subject := Trim(Assunto);

              Priority := mpHighest;

              // if Assigned(MalaDiretaForm then
              if CopiaCarbono then
                BccList.EMailAddresses := Trim(Destinatario)
              else
                Recipients.EMailAddresses := Trim(Destinatario);

              {
                Body.Text := Trim(StringReplace(Corpo, #13, '<br />', [rfReplaceAll]));
                ContentType := 'text/html';
              }

              with TIdText.Create(MessageParts, nil) do
              begin
                Corpo := AcentoHTML(Corpo);
                Body.Text := Trim(StringReplace(Corpo, #13, '<br />',
                  [rfReplaceAll]));
                ContentType := 'text/html';
              end;

              if (Trim(Anexo) <> '') then
              begin
                arq2 := Trim(Anexo);

                { if (compactarAnexo = true) then
                  begin
                  arq2 := ChangeFileExt(Anexo, '.zip');
                  AbZipper1.FileName := arq2;
                  AbZipper1.AddFiles(Anexo, 0);
                  AbZipper1.CloseArchive;
                  end; }

                with TIdAttachmentFile.Create(MessageParts, Trim(arq2)) do
                begin
                  // ContentType := 'application/pdf';
                  ContentType := GetMIMETypeFromFile(Trim(arq2));
                  FileName := ExtractFileName(Trim(arq2));
                end;
              end;

              ContentType := 'multipart/mixed';

              // Encoding := meMIME;
              // ConvertPreamble := true;
              // AttachmentEncoding := 'MIME';

              stream := TMemoryStream.Create;
              try
                SaveToStream(stream);
                emailTamMax := stream.Size;
              finally
                stream.Free;
              end;

              // MessageParts.Clear;
              IdSMTP1.Send(idMensagem);
              Result := True;
              // ('foi');
            end;

          finally
            idMensagem.Free;
          end;
          IdSMTP1.Disconnect();
        end
        else
          Mensagem('Configura??o de email incompleta. Informe o usu?rio e a senha.',
            mtWarning, [mbOk], mrOk, 0);
      end
      else
        Mensagem('Configura??o de email incompleta. Informe o servidor SMTP e a porta de conex?o.',
          mtWarning, [mbOk], mrOk, 0);
    end
    else
      Mensagem('Configura??o de email incompleta. Informe o nome do remetente.',
        mtWarning, [mbOk], mrOk, 0);
  except
    On E: Exception do
    begin
      if IdSMTP1.Connected then
        IdSMTP1.Disconnect();

      if (pos(UpperCase('Credentials Rejected'), UpperCase(E.Message)) > 0) then
        Mensagem('Usu?rio ou senha inv?lidos.', mtWarning, [mbOk], mrOk, 0)

      else if (pos(UpperCase('Username and Password not accepted'),
        UpperCase(E.Message)) > 0) then
        Mensagem('Usu?rio ou senha inv?lidos.', mtWarning, [mbOk], mrOk, 0)

      else if (pos(UpperCase('Host not found'), UpperCase(E.Message)) > 0) then
        Mensagem('Servidor SMTP n?o encontrado.', mtWarning, [mbOk], mrOk, 0)

      else if (pos(UpperCase('Socket Error # 11004'), UpperCase(E.Message)) > 0)
      then
        Mensagem('Servidor SMTP n?o encontrado.', mtWarning, [mbOk], mrOk, 0)

      else if (pos(UpperCase('Connection timed out'), UpperCase(E.Message)) > 0)
      then
        Mensagem('O servidor demorou a responder, verifique se a porta para conex?o est? correta.',
          mtWarning, [mbOk], mrOk, 0)

      else if (pos(UpperCase('read timeout'), UpperCase(E.Message)) > 0) then
        Mensagem('O servidor demorou a responder, talvez o mesmo requeira uma Conex?o SSL segura.',
          mtWarning, [mbOk], mrOk, 0)

      else if (pos(UpperCase('connection closed'), UpperCase(E.Message)) > 0)
      then
        Mensagem('A conex?o foi encerrada pelo servidor.', mtWarning,
          [mbOk], mrOk, 0)

      else
        Mensagem('Erro ao enviar email!' + #13#13 + E.Message, mtWarning,
          [mbOk], mrOk, 0);
    end;
  end;
  if (compactarAnexo = True) then
  begin
    if (pos('.zip', arq2) > 0) then
    begin
      DeleteFile(pchar(arq2));
    end;
  end;
end;

function SaveJPEGPictureFile(Bitmap: TBitmap; FilePath, FileName: string;
  Quality: integer): Boolean;
begin
  Result := True;
  try
    if ForceDirectories(FilePath) then
    begin
      with TJPEGImage.Create do
      begin
        try
          Assign(Bitmap);
          CompressionQuality := Quality;
          SaveToFile(FilePath + FileName);
        finally
          Free;
        end;
      end;
    end;
  except
    raise;
    Result := false;
  end;
end;

procedure SmoothResize(Src, Dst: TBitmap);
var
  x, y: integer;
  xP, yP: integer;
  xP2, yP2: integer;
  SrcLine1, SrcLine2: pRGBArray;
  t3: integer;
  z, z2, iz2: integer;
  DstLine: pRGBArray;
  DstGap: integer;
  w1, w2, w3, w4: integer;
begin
  Src.PixelFormat := pf24Bit;
  Dst.PixelFormat := pf24Bit;

  if (Src.Width = Dst.Width) and (Src.Height = Dst.Height) then
    Dst.Assign(Src)
  else
  begin
    DstLine := Dst.ScanLine[0];
    DstGap := integer(Dst.ScanLine[1]) - integer(DstLine);

    xP2 := MulDiv(pred(Src.Width), $10000, Dst.Width);
    yP2 := MulDiv(pred(Src.Height), $10000, Dst.Height);
    yP := 0;

    for y := 0 to pred(Dst.Height) do
    begin
      xP := 0;

      SrcLine1 := Src.ScanLine[yP shr 16];

      if (yP shr 16 < pred(Src.Height)) then
        SrcLine2 := Src.ScanLine[succ(yP shr 16)]
      else
        SrcLine2 := Src.ScanLine[yP shr 16];

      z2 := succ(yP and $FFFF);
      iz2 := succ((not yP) and $FFFF);
      for x := 0 to pred(Dst.Width) do
      begin
        t3 := xP shr 16;
        z := xP and $FFFF;
        w2 := MulDiv(z, iz2, $10000);
        w1 := iz2 - w2;
        w4 := MulDiv(z, z2, $10000);
        w3 := z2 - w4;
        DstLine[x].rgbtRed :=
          (SrcLine1[t3].rgbtRed * w1 + SrcLine1[t3 + 1].rgbtRed * w2 +
          SrcLine2[t3].rgbtRed * w3 + SrcLine2[t3 + 1].rgbtRed * w4) shr 16;
        DstLine[x].rgbtGreen :=
          (SrcLine1[t3].rgbtGreen * w1 + SrcLine1[t3 + 1].rgbtGreen * w2 +

          SrcLine2[t3].rgbtGreen * w3 + SrcLine2[t3 + 1].rgbtGreen * w4) shr 16;
        DstLine[x].rgbtBlue :=
          (SrcLine1[t3].rgbtBlue * w1 + SrcLine1[t3 + 1].rgbtBlue * w2 +
          SrcLine2[t3].rgbtBlue * w3 + SrcLine2[t3 + 1].rgbtBlue * w4) shr 16;
        Inc(xP, xP2);
      end;
      Inc(yP, yP2);
      DstLine := pRGBArray(integer(DstLine) + DstGap);
    end;
  end;
end;

procedure TBancodeDados.RemessaAfterInsert(DataSet: TDataSet);
begin
  if RemotoDriveID in [2] then
    RemessaREM_ID.Value := MySqlPegaID('REMESSA')
  else
    RemessaREM_ID.Value := PegaNovo('GEN_REMCOD');
  RemessaDATA.Value := PrincipalForm.DataHoraServidor;

end;

procedure TBancodeDados.Remessa_OcorrenciaAfterInsert(DataSet: TDataSet);
begin
  if RemotoDriveID in [2] then
    Remessa_OcorrenciaREM_OCORR_ID.Value := MySqlPegaID('REMESSA_OCORRENCIA')
  else
    Remessa_OcorrenciaREM_OCORR_ID.Value := PegaNovo('GEN_REM_OCORR_COD');
  // Remessa_OcorrenciaUS_CAD.Value       := CodUsuario;
  Remessa_OcorrenciaDT_CAD.Value := PrincipalForm.DataHoraServidor;

end;

function TBancodeDados.ResizeImage(FileName: string; MaxWidth: integer)
  : Boolean;
var
  OldBitmap: TBitmap;
  NewBitmap: TBitmap;
  // aWidth: Integer;
  JPEGImage: TJPEGImage;
  arqExt: String;
begin
  Result := false;
  try
    arqExt := ExtractFileExt(FileName);

    JPEGImage := TJPEGImage.Create;
    JPEGImage.LoadFromFile(FileName);
    if (JPEGImage.Width >= MaxWidth + 50) then
    begin
      OldBitmap := TBitmap.Create;
      try
        OldBitmap.Assign(JPEGImage);
        // aWidth := OldBitmap.Width;
        begin
          // aWidth := MaxWidth;
          NewBitmap := TBitmap.Create;
          try
            NewBitmap.Width := MaxWidth;
            NewBitmap.Height := MulDiv(MaxWidth, OldBitmap.Height,
              OldBitmap.Width);
            SmoothResize(OldBitmap, NewBitmap);

            // Result := SaveJPEGPictureFile(NewBitmap, ExtractFilePath(FileName), ExtractFileName(ChangeFileExt(FileName, '_resized' + arqExt)), MaxWidth * 2);
            Result := SaveJPEGPictureFile(NewBitmap, DiretorioTemp,
              ExtractFileName(FileName), MaxWidth * 2);

            { RenameFile(FileName, ChangeFileExt(FileName, '.$$$'));
              if SaveJPEGPictureFile(NewBitmap, ExtractFilePath(FileName), ExtractFileName(FileName), MaxWidth * 2) then
              DeleteFile(ChangeFileExt(FileName, '.$$$'))
              else
              RenameFile(ChangeFileExt(FileName, '.$$$'), FileName); }
          finally
            NewBitmap.Free;
          end;
        end;
      finally
        OldBitmap.Free;
      end;
    end
    else
    begin
      CopyFile(pchar(FileName),
        pchar(DiretorioTemp + ExtractFileName(FileName)), false);
      Result := True;
    end;
  except
    On E: Exception do
      Mensagem(E.Message, mtWarning, [mbOk], mrOk, 0);
  end;
end;

procedure TBancodeDados.SalvarImagenDisco(BlobField: TBlobField);
var
  jpgFoto: TJPEGImage;
  msFoto: TMemoryStream;
  arquivo: String;
  svDialog: TSaveDialog;
begin
  msFoto := TMemoryStream.Create;
  TGraphicField(BlobField).SaveToStream(msFoto);
  if (msFoto.Size > 0) then
  begin
    svDialog := TSaveDialog.Create(Self);
    try
      svDialog.Filter := 'Imagens JPEG|*.jpg;*.jpeg';
      svDialog.DefaultExt := 'jpg';
      if svDialog.Execute then
      begin
        // bmpFoto:=TBitmap.Create;
        msFoto.Position := 0;
        // bmpFoto.LoadFromStream(msFoto);

        arquivo := svDialog.FileName;

        jpgFoto := TJPEGImage.Create;
        // jpgFoto.Assign(bmpFoto);
        jpgFoto.LoadFromStream(msFoto);
        jpgFoto.SaveToFile(arquivo);
        jpgFoto.Free;
      end;
    finally
      svDialog.Free;
    end;
  end;
end;

procedure TBancodeDados.GravarBlobNaTabela(Campo: TBlobField;
  CaminhoArquivo: String);
var
  FileStream: TFileStream;
  Tamanho: integer;
begin
  if FileExists(CaminhoArquivo) then
  begin
    FileStream := TFileStream.Create(CaminhoArquivo, fmOpenRead);
    Tamanho := FileStream.Size;
    FileStream.Free;
    try
      if Tamanho > 0 then
      begin
        Campo.LoadFromFile(CaminhoArquivo);
      end
      else
      begin
        Campo.Assign(nil);
      end;
    except
      On E: Exception do
      begin
        Mensagem('Ocorreu um erro inesperado ao gravar o campo blob.' + #13 +
          #13 + E.Message, mtWarning, [mbOk], mrOk, 0);
      end;
    end;
  end
  else
    Mensagem('Arquivo n?o localizado.', mtInformation, [mbOk], mrOk, 0);
end;

function TBancodeDados.InstanciarNFSe: Boolean;
begin
  Result := false;
  try

    if Assigned(nfse) then
      nfse := nil;
    CoInitialize(nil);
    try
      nfse := CoSedNFSe_.Create;
      Result := True;
    finally
      // nfse := nil;
    end;

  except
    On E: Exception do
    begin
      if (pos('Classe n?o registrada', E.Message) > 0) then
      begin
        // Mensagem('Classe n?o registrada. ? necess?rio instalar o .NET 4 e registrar o arquivo sednfse.dll', mtWarning, [mbOk], mrOk, 0)
        if FileExists('C:\Windows\Microsoft.NET\Framework\v4.0.30319\regasm.exe')
        then
        begin
          WinExec(PAnsiChar
            (AnsiString
            ('C:\Windows\Microsoft.NET\Framework\v4.0.30319\regasm.exe "' +
            ExtractFilePath(ParamStr(0)) + 'sednfse.dll"')), SW_SHOWNORMAL);
        end;
        nfse := CoSedNFSe_.Create;
        Result := True;
      end;
    end;
  end;
end;

function TBancodeDados.EnviarNFSe(esperarResposta: Boolean): Boolean;
var
  dirTmp: String;
  vlNotaTmp, vlNotaServdor: currency;

  procedure SalvarXMLRPS;
  begin
    if (nfse.NotaFiscal.NumeroRps > 0) then
      try
        dirTmp := ExtractFilePath(ParamStr(0)) + 'nfse\' +
          FormatFloat('0000000', NfsNFS_ID.Value) + FormatDateTime('yyyy-mm',
          Date) + '\rps\';
        if not DirectoryExists(dirTmp) then
          ForceDirectories(dirTmp);
        nfse.SalvarXML_RPS(dirTmp + 'loterps_' + FormatFloat('000000',
          nfse.NotaFiscal.NumeroRps) + '.xml');
      except
        On E: Exception do
          TraduzErro(E.Message);
      end;
  end;

  procedure SalvarXMLNFSe;
  begin
    if (nfse.NFSeNumero > 0) then
      try
        dirTmp := ExtractFilePath(ParamStr(0)) + 'nfse\' +
          FormatFloat('0000000', NfsNFS_ID.Value) + FormatDateTime('yyyy-mm',
          Date) + '\nfse\';

        if not DirectoryExists(dirTmp) then
          ForceDirectories(dirTmp);
        nfse.SalvarXML_NFSe(dirTmp + 'nfse\' + 'nfse_' + FormatFloat('00000000',
          nfse.NFSeNumero) + '_loterps_' + FormatFloat('000000',
          nfse.NFSeIDLote) + '.xml');
      except
        On E: Exception do
          TraduzErro(E.Message);
      end;
  end;
// add walcir   2019

begin
  Result := false;
  try
    if (NfsNFS_ID.Value > 0) then
    begin
      if not(NfsNFSE_NUMERO.Value > 0) then
      begin
        if (NfsSIT.Value = 1) or (NfsSIT.Value = 3) then
        begin
          if not Config.Active then
            Config.Open;

          // if (Config.Locate('INST_ID', NfsINST_ID.Value, [])) then
          begin
            if (Trim(ConfigNFSE_CERT_DIG_NUM_SERIE.Value) <> EmptyStr) then
            begin

              try
                if BancodeDados.InstanciarNFSe then
                begin

                  if (ConfigNFSE_AMBIENTE.Value = 1) then
                    nfse.WebService.Ambiente := tipoAmbiente_Producao
                  else
                    nfse.WebService.Ambiente := tipoAmbiente_Homologacao;

                  if (nfse.Certificado.SelecionaCertificadoNroSerie
                    (Trim(ConfigNFSE_CERT_DIG_NUM_SERIE.AsString) + ';' +
                    Trim(ConfigCIDADE.AsString) + ';')) then
                  begin
                    SetForegroundWindow(Application.Handle);
                    // if not Config.active then Config.open;
                    // Config.First;

                    if Trim(ConfigCNPJ.Value) <> EmptyStr then
                      nfse.Emitente.CNPJ := RetornaNumeros(ConfigCNPJ.Value);
                    nfse.Emitente.InscMunicipal :=
                      RetornaNumeros(ConfigINSC_MUNIC.AsString);

                    nfse.CodCidade := StrToIntDef(Trim(ConfigCIDADE.Value), 0);
                    nfse.NotaFiscal.TipoRps := ConfigNFSE_TIPO_RPS.Value;

                    if (ConfigOPT_SIMP_NAC.Value = 1) then // 0: nao e 1: sim
                      nfse.NotaFiscal.OptSimples := tipoSimNao_Sim
                    else
                      nfse.NotaFiscal.OptSimples := tipoSimNao_Nao;

                    if (ConfigNFSE_COD_TRIB_SERV.Value > 0) then
                      nfse.NotaFiscal.Servico.CodigoTributacaoMunicipio :=
                        FormatFloat('0000', ConfigNFSE_COD_TRIB_SERV.Value);

                    if (ConfigNFSE_COD_ATV_MUN.Value) > 0 then
                      nfse.NotaFiscal.Servico.ItemListaServico :=
                        FormatFloat('0000', ConfigNFSE_COD_ATV_MUN.Value);;
                    // podendo ser o mesmo do cod. de trib

                    nfse.NotaFiscal.Servico.CodigoCnae := ConfigCNAE.Value;

                    nfse.MostarMsgErro := esperarResposta;

                    // try

                    if (Trim(NfsRPS_PROTOCOLO.Value)) <> EmptyStr then
                    begin // J? tinha sido enviado e esta esperando processamento
                      // ('entrou');
                      // 1 - N?o recebido
                      // 2 - N?o processado
                      // 3 - Processado com erro
                      // 4 - Processado com sucesso
                      try
                        case nfse.AnalisarRespostaEnvio
                          (Trim(NfsRPS_PROTOCOLO.AsString)) of

                          3:
                            begin
                              // ('AnalisarRespostaEnvio: 3');
                              if not FDConnection1.InTransaction then
                                FDConnection1.StartTransaction;
                              if not(Nfs.State in [dsEdit]) then
                                Nfs.Edit;
                              NfsSIT.Value := 3;
                              Nfs.Post;
                              FDConnection1.CommitRetaining;
                              nfse.MostarMsgErro := True;

                              if (pos('RPS j? informado', String(nfse.msgErro)
                                ) > 0) then
                              begin
                                // ('Aguardando resposta de envio: 3 - RPS j? informado');
                                if nfse.ConsultarNFSePorRps
                                  (IntToStr(BancodeDados.NfsNFS_ID.Value), '1')
                                then
                                begin
                                  if (nfse.NFSeNumero > 0) then
                                  begin
                                    if not BancodeDados.FDConnection1.InTransaction
                                    then
                                      BancodeDados.FDConnection1.
                                        StartTransaction;

                                    if not(Nfs.State in [dsEdit]) then
                                      Nfs.Edit;

                                    vlNotaTmp := NfsVL_TOTAL.Value;
                                    vlNotaServdor :=
                                      nfse.NotaFiscal.Servico.vlTotal;
                                    if (vlNotaServdor <> vlNotaTmp) then
                                    begin
                                      NfsSIT.Value := 1;
                                      if Trim(NfsOBS2.AsString) = '' then
                                        NfsOBS2.AsString :=
                                        FormatDateTime('dd/mm/yy hh:mm:ss', Now)
                                        + #13 + 'O valor da nota no sistema (' +
                                        FormatFloat(',0.00', vlNotaTmp) +
                                        ') est? diferente do valor informado pelo servidor '
                                        + FormatFloat(',0.00',
                                        vlNotaServdor) + '.'
                                      else
                                        NfsOBS2.AsString :=
                                        FormatDateTime('dd/mm/yy hh:mm:ss', Now)
                                        + #13 + 'O valor da nota no sistema (' +
                                        FormatFloat(',0.00', vlNotaTmp) +
                                        ') est? diferente do valor informado pelo servidor '
                                        + FormatFloat(',0.00', vlNotaServdor) +
                                        '.' + #13#13 + NfsOBS2.AsString;
                                    end
                                    else
                                    begin
                                      BancodeDados.NfsNFSE_NUMERO.Value :=
                                        nfse.NFSeNumero;
                                      BancodeDados.NfsSIT.Value := 4;
                                      BancodeDados.NfsNFSE_COD_VERIF.Value :=
                                        nfse.NFSeCodVerif;
                                      BancodeDados.NfsNFSE_DT_EMISSAO.Value :=
                                        nfse.NFSeDtEmissao;
                                      BancodeDados.NfsXML_NFSE.AsString :=
                                        nfse.TextoXML_NFSe;
                                      BancodeDados.NfsNFSE_AMBIENTE.Value :=
                                        ConfigNFSE_AMBIENTE.Value;
                                    end;

                                    BancodeDados.Nfs.Post;
                                    BancodeDados.FDConnection1.CommitRetaining;
                                  end;
                                end;
                              end;

                              if nfse.ConsultarSituacaoLoteRps
                                ((RetornaNumeros(NfsRPS_PROTOCOLO.Value))) > 0
                              then // pegando  o erro do lote
                              begin

                                nfse.ConsultarLoteRps
                                  (Trim(NfsRPS_PROTOCOLO.AsString));

                              end;

                            end;
                          4:
                            begin
                              // ('AnalisarRespostaEnvio: 4');
                              if (nfse.NFSeNumero > 0) then
                              begin
                                if not FDConnection1.InTransaction then
                                  FDConnection1.StartTransaction;

                                if not(Nfs.State in [dsEdit]) then
                                  Nfs.Edit;
                                vlNotaTmp := NfsVL_TOTAL.Value;
                                vlNotaServdor :=
                                  nfse.NotaFiscal.Servico.vlTotal;
                                if (vlNotaServdor <> vlNotaTmp) then
                                begin

                                  // NfsSIT.Value := 4;
                                  if Trim(NfsOBS2.AsString) = '' then
                                    NfsOBS2.AsString :=
                                      FormatDateTime('dd/mm/yy hh:mm:ss', Now) +
                                      #13 + 'O valor da nota no sistema (' +
                                      FormatFloat(',0.00', vlNotaTmp) +
                                      ') est? diferente do valor informado pelo servidor '
                                      + FormatFloat(',0.00',
                                      vlNotaServdor) + '.'
                                  else
                                    NfsOBS2.AsString :=
                                      FormatDateTime('dd/mm/yy hh:mm:ss', Now) +
                                      #13 + 'O valor da nota no sistema (' +
                                      FormatFloat(',0.00', vlNotaTmp) +
                                      ') est? diferente do valor informado pelo servidor '
                                      + FormatFloat(',0.00', vlNotaServdor) +
                                      '.' + #13#13 + NfsOBS2.AsString;
                                end
                                else
                                begin
                                  NfsNFSE_NUMERO.Value := nfse.NFSeNumero;
                                  NfsSIT.Value := 4;
                                  NfsNFSE_COD_VERIF.Value := nfse.NFSeCodVerif;
                                  NfsNFSE_DT_EMISSAO.Value :=
                                    nfse.NFSeDtEmissao;
                                  NfsXML_NFSE.AsString := nfse.TextoXML_NFSe;
                                  SalvarXMLNFSe;
                                end;

                                Nfs.Post;
                                FDConnection1.CommitRetaining;
                              end;

                            end;
                        end;
                      except
                        on E: Exception do
                        begin
                          Mensagem('Exce??o no m?todo - nfse.AnalisarRespostaEnvio(Trim(NfsRPS_PROTOCOLO.Value)) -.'
                            + #13 + E.Message, mtInformation, [mbOk], mrOk, 0);
                        end;
                      end;

                    end
                    else
                    begin
                      // ('enviar');
                      nfse.NotaFiscal.DtEmissao := NfsDT_RPS.Value;
                      nfse.NotaFiscal.NumeroRps := NfsNFS_ID.Value;

                      try

                        nfse.NotaFiscal.DtCompetencia := NfsCOMPETENCIA.Value;
                      except
                        on E: Exception do
                          Mensagem('Erro ao atribuir compet?ncia. ' + E.Message,
                            mtWarning, [mbOk], mrOk, 0);
                      end;

                      nfse.NotaFiscal.Serie := IntToStr(ConfigNFSERIE.Value);

                      // nfse.NotaFiscal.
                      Clientes.Close;
                      Clientes.SQL.Text := PrincipalForm.SQLrepositorio(1) +
                        ' and c.cli_id = ' + IntToStr(NfsCLI_ID.Value);
                      Clientes.Open;

                      nfse.Cliente.CNPJ_CPF :=
                        RetornaNumeros(ClientesCNPJ.Value);
                      nfse.Cliente.RazaoSocial :=
                        UpperCase(SemAcento(ClientesNOME.Value));
                      nfse.Cliente.Logradouro :=
                        SemAcento(ClientesLOGRADOURO.Value);
                      // nfse.Cliente.Numero := SemAcento(qryEndRespNUMERO.Value);
                      nfse.Cliente.Bairro := SemAcento(ClientesBAIRRO.Value);
                      // nfse.Cliente.CodCidade := qryEndRespCID_COD.Value;
                      nfse.Cliente.Cidade := SemAcento(ClientesCIDADE.Value);
                      nfse.Cliente.UF := ClientesESTADO.Value;
                      nfse.Cliente.Telefone :=
                        RetornaNumeros(ClientesFONE1.Value);
                      nfse.Cliente.Fax := RetornaNumeros(ClientesFAX.Value);

                      // Added by Denilson SED 28/04/2020 14:01:54
                      if nfse.CodCidade = 2504009 then
                      // se for campina grande...
                      begin
                        if ClientesINSC_MUNICIPAL.Value <> EmptyStr then
                          // se o cliente tiver inscri??o municipal atribui no xml.
                          nfse.Cliente.InscMunicipal :=
                            ClientesINSC_MUNICIPAL.Value;

                      end;
                      // fim add

                      // tratamento de email....
                      if not(Trim(ClientesEMAIL_CONTATO2.AsString) = '') then
                        nfse.Cliente.Email := ClientesEMAIL_CONTATO2.AsString
                      else if not(Trim(ClientesEMAIL_CONTATO2.AsString) = '')
                      then
                        nfse.Cliente.Email := ClientesEMAIL_CONTATO1.AsString
                      else
                        nfse.Cliente.Email := 'cobranca@sedsoft.com.br';

                      if (RetornaNumeros(ClientesCEP.Value) <> '') then
                        nfse.Cliente.CEP :=
                          StrToInt(RetornaNumeros(ClientesCEP.Value));

                      nfse.NotaFiscal.RegimeTrib :=
                        tipoRegimeTributacao_MicroEmpresaMunicipal;

                      nfse.NotaFiscal.IncentCultural := tipoSimNao_Nao;

                      // nfse.NotaFiscal.Servico.Descricao := SubstituirString(PegaListaServicos(NfsNFS_ID.Value), #13, ' || ');
                      nfse.NotaFiscal.Servico.Descricao :=
                        SubstituirString(PegaListaServicos(NfsNFS_ID.Value),
                        #13, '<br />');
                      // nfse.NotaFiscal.Servico.Descricao := PegaListaServicos(NfsNFS_ID.Value);

                      nfse.NotaFiscal.Servico.vlTotal := NfsVL_TOTAL.Value;

                      nfse.NotaFiscal.Servico.Aliq := NfsPERC_ISS.Value;

                      if nfse.CodCidade = 2507507 then // joao pessoa-pb
                        nfse.NotaFiscal.Servico.CodigoCnaeItemLista := '1.05';

                      // if nfse.GerarXML then
                      // begin
                      // if nfse.AssinarXML then
                      // begin
                      Application.ProcessMessages;
                      if nfse.EnviarLoteRps(esperarResposta) then
                      begin

                        if (Trim(nfse.ProtocoloEnvioRPS) <> '') then
                        begin
                          SalvarXMLRPS;
                          Application.ProcessMessages;
                          if not FDConnection1.InTransaction then
                            FDConnection1.StartTransaction;
                          if not(Nfs.State in [dsEdit]) then
                            Nfs.Edit;

                          NfsRPS_PROTOCOLO.Value := nfse.ProtocoloEnvioRPS;
                          NfsSIT.Value := 3;
                          NfsNFSE_AMBIENTE.Value := ConfigNFSE_AMBIENTE.Value;
                          NfsXML_RPS.AsString := nfse.TextoXML_RPS;

                          if (nfse.NFSeNumero > 0) then
                          begin
                            NfsNFSE_NUMERO.Value := nfse.NFSeNumero;
                            NfsSIT.Value := 4;
                            NfsNFSE_COD_VERIF.Value := nfse.NFSeCodVerif;
                            NfsNFSE_DT_EMISSAO.Value := nfse.NFSeDtEmissao;
                            NfsXML_NFSE.AsString := nfse.TextoXML_NFSe;
                          end;

                          Nfs.Post;

                          FDConnection1.CommitRetaining;

                          SalvarXMLNFSe;

                          Result := True;
                        end;
                      end
                      else
                      begin // EnviarLote  //aguardando resposta
                        if not(Nfs.State in [dsEdit]) then
                          Nfs.Edit;
                        NfsSIT.Value := 3;
                        NfsRPS_PROTOCOLO.Value := nfse.ProtocoloEnvioRPS;
                        Nfs.Post;
                      end;

                    end; // Protocolo
                    if (Trim(nfse.msgErro) <> '') then
                    begin
                      if not FDConnection1.InTransaction then
                        FDConnection1.StartTransaction;
                      Nfs.Edit;
                      if Trim(NfsOBS2.AsString) = '' then
                        NfsOBS2.AsString := FormatDateTime('dd/mm/yy hh:mm:ss',
                          Now) + #13 + nfse.msgErro
                      else
                        NfsOBS2.AsString := FormatDateTime('dd/mm/yy hh:mm:ss',
                          Now) + #13 + nfse.msgErro + #13#13 + NfsOBS2.AsString;
                      Nfs.Post;
                      FDConnection1.CommitRetaining;
                    end;

                  end;
                end;
              except

                on E: Exception do
                begin
                  Mensagem('Exce??o no m?todo - EnviarNFSe -.' + #13 +
                    E.Message, mtInformation, [mbOk], mrOk, 0);
                end;

              end;
            end
            else
            begin
              Mensagem('? necess?rio informar o n?mero de s?rie do certificado digital no cadastro da unidade escolar.',
                mtInformation, [mbOk], mrOk, 0);

            end;
          end;
          // else
          // Mensagem('Unidade escolar n?o encontrada.', mtInformation, [mbOk], mrOk, 0);
        end
        else
        begin
          Mensagem('A nota n?o est? fechada.', mtInformation, [mbOk], mrOk, 0);
        end;

      end
      else
      begin
        Mensagem('A nota j? foi enviada.', mtInformation, [mbOk], mrOk, 0);
      end;

    end;

    if Assigned(nfse) then
      nfse := nil;
  except
    On E: Exception do
    begin

      if (pos('Classe n?o registrada', E.Message) > 0) then
        Mensagem('Classe n?o registrada. ? necess?rio instalar o .NET 4 e registrar o arquivo sednfse.dll',
          mtWarning, [mbOk], mrOk, 0)
      else
      begin
        Mensagem(E.Message, mtError, [mbOk], mrOk, 0);
      end;

    end;
  end;

end;

{
  function TBancodeDados.PegaID2(Generator: String): Integer;
  begin
  QryID2.Close;
  QryID2.SQL.Text := 'select gen_id(' + Generator + ',1) from rdb$database;';
  try
  QryID2.Open;
  Result := QryID2.Fields[0].AsInteger;
  finally
  QryID2.Close;
  end;
  end; }

function TBancodeDados.CancelarNFSe(pedirMotivo: Boolean): Boolean;
var
  podeCancelar: Boolean;
begin
  podeCancelar := false;
  if (BancodeDados.NfsNFSE_NUMERO.Value > 0) then
  begin
    if not Config.Active then
      Config.Open;

    if (Trim(BancodeDados.ConfigNFSE_CERT_DIG_NUM_SERIE.Value) <> '') then
    begin
      if BancodeDados.InstanciarNFSe then
      begin
        if (BancodeDados.ConfigNFSE_AMBIENTE.Value = 1) then
          nfse.WebService.Ambiente := tipoAmbiente_Producao
        else
          nfse.WebService.Ambiente := tipoAmbiente_Homologacao;

        podeCancelar := nfse.CancelarNFSe
          (BancodeDados.NfsNFSE_NUMERO.Value, True);

        if (Trim(nfse.msgErro) <> '') then
        begin
          if not BancodeDados.FDConnection1.InTransaction then
            BancodeDados.FDConnection1.StartTransaction;
          BancodeDados.Nfs.Edit;
          if Trim(BancodeDados.NfsOBS2.AsString) = '' then
            BancodeDados.NfsOBS2.AsString := FormatDateTime('dd/mm/yy hh:mm:ss',
              PrincipalForm.DataHoraServidor) + #13 + nfse.msgErro
          else
            BancodeDados.NfsOBS2.AsString := FormatDateTime('dd/mm/yy hh:mm:ss',
              PrincipalForm.DataHoraServidor) + #13 + nfse.msgErro + #13#13 +
              BancodeDados.NfsOBS2.AsString;
          BancodeDados.Nfs.Post;
          BancodeDados.FDConnection1.CommitRetaining;
        end;
      end;
    end;
  end
  else
    Mensagem('? necess?rio informar o n?mero de s?rie do certificado digital no cadastro da unidade escolar.',
      mtInformation, [mbOk], mrOk, 0);

  if (podeCancelar = True) then
  begin
    BancodeDados.Nfs.Edit;
    BancodeDados.NfsSIT.Value := 2;
    BancodeDados.Nfs.Post;

    BancodeDados.Adiciona.SQL.Text :=
      'update boletos set nfs_id = null where nfs_id = ' +
      IntToStr(BancodeDados.NfsNFS_ID.Value);
    BancodeDados.Adiciona.ExecSQL;

    BancodeDados.FDConnection1.CommitRetaining;
  end;
end;

end.
