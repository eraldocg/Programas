unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, 
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, vcl.Menus, 
  Vcl.StdCtrls, vcl.Grids, Vcl.ImgList, data.DB, vcl.AppEvnts, MidasLib, 
  ComCtrls, RLReport, Vcl.ExtCtrls, unThread, System.INIFiles, unRecursos, 
  Vcl.DBCtrls, Vcl.ExtDlgs, SEDRegistro2, Winapi.ShellApi, Vcl.Imaging.jpeg, 
  Data.FMTBcd, Data.SqlExpr, Vcl.DBGrids, FileCtrl, System.ImageList, 
  Vcl.Samples.Gauges, SEDDBImage, System.UITypes, NFseCSTh, ACBrIntegrador, 
  ACBrBase, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, 
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, 
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  SedDBGrid;

  const
  //SED_MUDARANO = WM_USER + 103;
  WM_SED_ASK_CONN_STR = WM_USER + 300;
  WM_SED_REFRESH_DOC_SCAN = WM_USER + 301;

type
  PTSedScan = ^TSedScan;
  TSedScan = record
    iTipo     : integer;
    idPessoa  : integer;
    idUsr     : integer;
    OrigId    : Integer;
    OrigNome  : ShortString;
    connStr   : ShortString;
  end;

type
  TPrincipalForm = class(TForm)

    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Componentes12_off: TMenuItem;
    Utilitarios1: TMenuItem;
    Sair1: TMenuItem;
    Gradefinanceira12: TMenuItem;
    N1: TMenuItem;
    Bacos1: TMenuItem;
    Clientes1: TMenuItem;
    Tesouraria1: TMenuItem;
    N3: TMenuItem;
    Pagar1: TMenuItem;
    ImageList1: TImageList;
    N4: TMenuItem;
    tipodeContas1: TMenuItem;
    N5: TMenuItem;
    LivroCaixa1: TMenuItem;
    Consultadettulos1: TMenuItem;
    N6: TMenuItem;
    Processararquivoderetorno12: TMenuItem;
    Boletosemitidos1: TMenuItem;
    Relatrios1: TMenuItem;
    Relatrios241: TMenuItem;
    Fornecedores1: TMenuItem;
    ApplicationEvents1: TApplicationEvents;
    Contatos1_off: TMenuItem;
    ImageMn: TImageList;
    StatusBar1: TStatusBar;
    ImgRel: TImage;
    N10: TMenuItem;
    ConsultadeNotasFiscias12: TMenuItem;
    Button1: TButton;
    N11: TMenuItem;
    AssistenteparaGeraodeNFS12: TMenuItem;
    Cadastro1: TMenuItem;
    Servios12: TMenuItem;
    Relaodeclientes1: TMenuItem;
    N12: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    Atualizarlistadeclientesnosite1_OFF: TMenuItem;
    Clientes12: TMenuItem;
    PopupMenu1: TPopupMenu;
    Novo1: TMenuItem;
    Excluir1: TMenuItem;
    Editar1: TMenuItem;
    N2: TMenuItem;
    N14: TMenuItem;
    Configuraes1: TMenuItem;
    Memo1: TMemo;
    Etiquetas1: TMenuItem;
    N15: TMenuItem;
    Login1: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    Autenticarusurio1: TMenuItem;
    Timer1: TTimer;
    qryContador: TFDQuery;
    qryContadorTOTAL: TIntegerField;
    PopupMenu2: TPopupMenu;
    Financeiro311: TMenuItem;
    Documentos1: TMenuItem;
    AtualizarFinanceiro1: TMenuItem;
    OpenPictureDialog1: TOpenPictureDialog;
    PopImagem: TPopupMenu;
    Imagem1: TMenuItem;
    Limpar12: TMenuItem;
    N19: TMenuItem;
    ConciliaoBancria1: TMenuItem;
    MalaDiretaEmail1_Off: TMenuItem;
    Timer2: TTimer;
    Ligaes1: TMenuItem;
    N20: TMenuItem;
    GerarArquivodeRemessa1: TMenuItem;
    MovimentacaoBancaria12: TMenuItem;
    N21: TMenuItem;
    N7: TMenuItem;
    MalaDiretaSMS1: TMenuItem;
    SaveDialog1: TSaveDialog;
    MemoMala: TMemo;
    qryDev: TFDQuery;
    qryDevFANTASIA: TStringField;
    qryDevN_Titulos: TIntegerField;
    qryDevCLI_ID: TIntegerField;
    RelatriodeRemessa1: TMenuItem;
    imgvisualizar: TImage;
    pnl_msg: TPanel;
    Image1: TImage;
    pnl_titulo_msg: TLabel;
    SedDBImage1: TSedDBImage;
    SedDBImage2: TSedDBImage;
    BoletosEmitidos2: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    ConfigurandooServidordeDados1: TMenuItem;
    CsNFSe: TFDQuery;
    upNFSeAt: TFDUpdateSQL;
    CsNFSeNFS_ID: TIntegerField;
    CsNFSeSIT: TSmallintField;
    CsNFSeSERIE: TStringField;
    CsNFSeVL_TOTAL: TFloatField;
    CsNFSeNFSE_NUMERO: TIntegerField;
    CsNFSeNFSE_COD_VERIF: TStringField;
    CsNFSeNFSE_DT_EMISSAO: TDateTimeField;
    CsNFSeNFSE_AMBIENTE: TSmallintField;
    ServiodeNFSe1: TMenuItem;
    Iniciar1: TMenuItem;
    Parar1: TMenuItem;
    N24: TMenuItem;
    N25: TMenuItem;
    AtualizarBancodeDados1: TMenuItem;
    N26: TMenuItem;
    CsNFSeXML_NFSE: TMemoField;
    locatario1: TMenuItem;
    N18: TMenuItem;
    procedure Sair1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Gradefinanceira12Click(Sender: TObject);
    procedure Bacos1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tipodeContas1Click(Sender: TObject);
    procedure LivroCaixa1Click(Sender: TObject);
    procedure Consultadettulos1Click(Sender: TObject);
    procedure Boletosemitidos1Click(Sender: TObject);
    procedure Relatrios241Click(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure Pagar1Click(Sender: TObject);
    procedure Processararquivoderetorno12Click(Sender: TObject);
    procedure ApplicationEvents1Message(var Msg: tagMSG; var Handled: Boolean);
    procedure Contatos1_offClick(Sender: TObject);
    procedure ConsultadeNotasFiscias12Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure AssistenteparaGeraodeNFS12Click(Sender: TObject);
    procedure Servios12Click(Sender: TObject);
    procedure Relaodeclientes1Click(Sender: TObject);
    procedure Atualizarlistadeclientesnosite1_OFFClick(Sender: TObject);
    procedure Clientes12Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Configuraes1Click(Sender: TObject);
    procedure Etiquetas1Click(Sender: TObject);
    procedure Login1Click(Sender: TObject);
    procedure Autenticarusurio1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure qryDevCalcFields(DataSet: TDataSet);
    procedure Financeiro311Click(Sender: TObject);
    procedure Documentos1Click(Sender: TObject);
    procedure Imagem1Click(Sender: TObject);
    procedure Limpar12Click(Sender: TObject);
    procedure btImagemClick(Sender: TObject);
    procedure PopImagemChange(Sender: TObject; Source: TMenuItem;
      Rebuild: Boolean);
    procedure ConciliaoBancria1Click(Sender: TObject);
    procedure MalaDiretaEmail1_OffClick(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Ligaes1Click(Sender: TObject);
    procedure GerarArquivodeRemessa1Click(Sender: TObject);
    procedure MalaDiretaSMS1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure pnl_msgResize(Sender: TObject);
    procedure BoletosEmitidos2Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure ConfigurandooServidordeDados1Click(Sender: TObject);
    procedure Iniciar1Click(Sender: TObject);
    procedure Parar1Click(Sender: TObject);
    procedure AtualizarBancodeDados1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MainMenu1Change(Sender: TObject; Source: TMenuItem;
      Rebuild: Boolean); //add por Denilson
 //   procedure ColorControl(Sender: TObject);
  private
    { Private declarations }
    DirTemp: String;
    procedure ResponderConnStr(var Msg: TMessage); message WM_SED_ASK_CONN_STR;
    procedure AtualizarListaDocScan(var Msg: TMessage); message WM_SED_REFRESH_DOC_SCAN;

  public
    { Public declarations }
    procedure CalcularValorBaixaIndividual(DataReceb: TDate; ApenasSomar: Boolean);
    function LiberaAcesso: Boolean;
    procedure ImprimeBoletos(IDsBoletos: String; usaTolerancia, papelCortado: Boolean);
    procedure CalcularValorPagar;
    procedure CalContas;
    procedure ImpNotaFiscal;
    procedure RastreioObjeto(codRastreio: String);
    function DataHoraServidor: TDateTime;
    function DataServidor: TDate;
    function RetornaLimpo(em: string): string;
    function GeraMalaDireta(tabela: TFDQuery; incluirTitulos: Boolean; Gauge: TGauge): Boolean;
    Procedure CarregaFotoParaBanco(FileName: String);
    procedure VerificaRemessaPendentes;
    procedure IncluirRetirarProtesto(acao, idProtesto: integer);
    function csContainingLIKE(csTipo: String; TipoIndex : SmallInt; noCaseSensitive : boolean = true ): String;
    function PegarTexto(Texto, Delimitador1, Delimitador2: String; CaseSensitive : boolean = false): string;
    procedure FormChange(Sender: TObject);
    function SQLrepositorio(IdSql: SmallInt): string;

  end;


var
  PrincipalForm: TPrincipalForm;
  EmpresaNome: String = 'SED Soft Ltda';
  EmpresaSite: String = 'www.sedsoft.com.br';
  SistemaNome: String = 'Locação de Automóvel';
  ChaveRegSED: String = 'SOFTWARE\SEDSoft\LocacaoAuto';
  CnpjID: String = '';
  NovoCliente_ID : integer;
  pedirSenha: Boolean = true;
  AtivaMulta: Integer = 0;
  AtivaJuros: Integer = 0;
  RetirarDesc: Boolean = false;
  OpcaoTipoValor: Integer = 0;
  OpcaoMulta: Integer = 0;
  vlTotalJuros: Currency = 0;
  vlTotalMulta: Currency = 0;
  vlTotalDesc: Currency = 0;
  vlTotalAcre: Currency = 0;
  vlTotalCredito: Currency = 0;
  vlTotalInteral: Currency = 0;
  vlTotalAPagar: Currency = 0;
  qtdTitARec: Integer = 0;
  vlTotalPago: Currency = 0;
  CalculandoBaixaInd: Boolean = false;
  SenhaActive: TSEDLogin;
  SomenteActiveSoft: Boolean = true;
  thCalculaValores: TThreadPadrao;
  usrID: Integer = 0;
  GerarNfseAutom : Boolean = false;
  usrLogin: String = '';
  usrNivel: Integer = 0;
  supervisorID: Integer = 0;
  supervisorLogin: String = '';
  supervisorNivel: Integer = 0;
  ImpBoletoAcbrSED        : Boolean = false;
  RemotoDriveID : Integer = 1;
  GrupoLayout: String = 'locacao';
  Serv : String;
  BancNome, BancUsuario, BancPassword, BancPorta : String;

  CodigoCliente  : Integer = 0;

  ContaID : Integer = 0;
  tentativas: Smallint = 0;
  ultTipoConta : Integer = 0;
  IndexCBTipoClient : Smallint = 0;
  homologacao : Boolean = false;
  EnvNotaPorRetorno : Boolean = False;
  TipoBoletoInstrucoes: Smallint = 0;
  retopcaix: integer = -1;
  anexarelviabanc: integer = 1;
  MostraMSG: Boolean = False;
  IDsEmissao          : String ='';
  IDsBoletos          : String ='';
  sqlTmp              : String ='';
  Suporte             : Boolean = false;
  AtivandoEve, DesatEvent, IndexCBTipBanc : integer;
  ClienteCNPJ         : string;
  listaCliSite: TStringList;
  ServicoAtivoNFSe    : Boolean;
  myNFseCSTh          : TNfseConsulta;
  PodeImpor           : Boolean = False;
  AbcFBTmp            : string='';

  //novos SQls
 // PagarSQL            : string = '';

  function DiretorioTemp: String;
  procedure HabilitarBotoes(Formulario: TForm; Valor: Boolean);
  function TeclaPressionada(const Key: Integer): Boolean;
  Function TestaCPFCNPJ(cpf: string; Msg: Boolean = True): String;
  function SelecionarDiretorio(Titulo, DirInicial: string): string;
  procedure CriarDiretorio(Diretorio: string);




implementation

uses
  Base, CsGrade_Financeira, CsBancos, CsClientes, CsTipo_Contas, CadCaixa,
  Acesso, CsTitulos, RelCarneCaixa, acFuncoesBoleto, CsBoletosEmitidos,
  Relatorios, CsFornecedores, CsPagar, Retorno, CsContatos, Baixa2, CsNfs,
  unImpressao, GerarNfs, IndicaClientesServicos, AtualizaCliSite,
  Rastreio, CadInforme, CadConfig, IndicaEtiquetas, CsLogin, Boletos1,
  InforContratospas, CsDocumentos, AlterandoServidor, ImpExtrato,
  MalaDiretaFormUnit, CsLigacoes, CadClientes, Remessa, Unit1, AjusteBanco,
  CsVeiculos, CsConf;

{$R *.dfm}

function TPrincipalForm.SQLrepositorio(IdSql: SmallInt): string;
var  SqlTmp : string;
begin
  SqlTmp := '';
  Result := '';

  case IdSql of
    0 : // boletos
    begin                                                //coalesce(b.valor_mensal, 0) + coalesce(b.valor_lic, 0) as valor_integral
      SqlTmp := 'select b.*, c.nome as cliente, c.cnpj, coalesce(b.valor_mensal, 0) + coalesce(b.valor_lic, 0) as valor_integral '+
                'from boletos b '+
                'left join clientes c on (c.cli_id = b.cli_id) '+
                'left join livro_caixa l on (l.caixa_id = b.caixa_id) '+
                'where 1=1 ';
    end;
    1 :
    begin
     SqlTmp :=  'select '+
                'c.*, m.nome as cidade_nome, e.nome as uf_nome, '+
                '(select count(boleto_id) from boletos where cli_id = c.cli_id and boletos.situacao_boleto=('+QuotedStr('A RECEBER')+') and c.sit=1) as n_titulos '+
                'from clientes c '+
                'left join municipios m on (m.codmun=c.cidade) '+
                'left join estados e on (e.uf_cod=c.estado) '+
                'where 1=1 ';
    end;
    2 :
    begin
     SqlTmp:=   'select l.*, c.conta as conta_nome, coalesce(l.entrada,0)-coalesce(l.saida,0) as saldo, (select descricao from pagar where pagar_id=l.pagar_id) as pagar_desc '+
                'from livro_caixa l '+
                'left join tipo_contas c on (c.conta_id = l.conta_id) '+
                'where 1=1 ';
    end;
    3 :
    begin
     SqlTmp:=   'select p.*, f.nome as fornecedor, f.fantasia, f.cnpj, '+
                '(select sum(coalesce(l.entrada,0)-coalesce(l.saida,0)) * (-1) from livro_caixa l where pagar_id=p.pagar_id) as valor_pago, '+
                '(case when coalesce(( select sum(coalesce(l.entrada,0)-coalesce(l.saida,0)) * (-1) from livro_caixa l where pagar_id=p.pagar_id),0) >=  coalesce(p.valor_apagar,0) '+
                ' then '+QuotedStr('PAGO')+' else '+QuotedStr('A PAGAR')+' end) as situacao_pagar, '+
                '(case when coalesce(p.valor_apagar,0)>=(select sum(coalesce(l.entrada,0)-coalesce(l.saida,0)) * (-1) from livro_caixa l where pagar_id=p.pagar_id) then '+
                'coalesce(p.valor_apagar,0) - (select sum(coalesce(l.entrada,0)-coalesce(l.saida,0)) * (-1) from livro_caixa l where pagar_id=p.pagar_id) else 0 end) as valor_falta '+
                'from pagar p '+
                'left join fornecedores f on (f.forne_id=p.forne_id)'+
                'where 1=1 ';
    end;
    4 :
    begin
     SqlTmp:='';//novo sql
    end;

  end;

  if Trim(SqlTmp)<>EmptyStr then
    Result:=SqlTmp
  else
    Result:=EmptyStr;
end;


function TPrincipalForm.PegarTexto(Texto, Delimitador1, Delimitador2: String; CaseSensitive : boolean = false): string;
  var
      Inicio, Fim : Integer;
      Saida       : string;
begin
  // Passar o texto para variável temporária
  Saida := Texto;
  // Verificar se é sensível ao caso
  // Pegar o início

  if CaseSensitive then
    Inicio := Pos(Delimitador1, Saida)
  else
    Inicio := Pos(ansiUpperCase(Delimitador1), ansiLowerCase(Saida));

  // Verificar se localizou
  if Inicio > 0 then
    Saida := Copy(Saida, Inicio + Length(Delimitador1), Length(Saida));

  // Pegar o fim
  if CaseSensitive then
    Fim := Pos(Delimitador2, Saida)
  else
    Fim := Pos(ansiUpperCase(Delimitador2), ansiUpperCase(Saida));

  // Verificar se localizou
  if Fim > 0 then
    Saida := Copy(Saida, 1, Fim - 1);

  // retornar o resultado
  Result := Saida;

end;

function TPrincipalForm.csContainingLIKE(csTipo: String; TipoIndex: SmallInt; noCaseSensitive : boolean = true ): String;
var
Tipo, FormarSQL : string;
begin
  if Trim(csTipo)<>EmptyStr then
  begin
    if RemotoDriveID=2 then //MYSQL
    begin
       case TipoIndex of
          0 :
          begin
            FormarSQL:=Trim(csTipo)+'%'; //Qualquer string que iniciem com csTipo. EX: 'csTipo%'
          end;
          1 :
          begin
            FormarSQL:='%'+Trim(csTipo)+'%'; //contendo string: csTipo. EX: '%csTipo%'
          end;
          2 :
          begin
            FormarSQL:=Trim(csTipo); //igual a string a csTipo
          end;
       end;
       Tipo:=' LIKE ';
    end else
    begin
       //Padrao FB
       case TipoIndex of
          0 :
          begin
            Tipo:=' starting with ';
          end;
          1 :
          begin
            Tipo:=' containing ';
          end;
          2 :
          begin
            Tipo:=' = ';
          end;
       end;
       FormarSQL:=Trim(csTipo);
    end;

    try
      if noCaseSensitive then
        Result := Tipo  + QuotedStr(Trim(AnsiUpperCase(FormarSQL)))
      else
        Result := Tipo  + QuotedStr(Trim(FormarSQL));

    except
      Result :='';
    end;

  end;

end;

procedure TPrincipalForm.IncluirRetirarProtesto(acao, idProtesto: integer);
var
  tituloAtual, I: integer;
begin
  // idTitulos := Bancodedados.PegarAtivo(listaBoletos);
  // acao
  // 1 - incluir
  // 2 - excluir

  if (listaBoletos.Count > 0) then
  begin
    if (idProtesto > 0) then
    begin
      try
        if not BancodeDados.FDConnection1.InTransaction then
          BancodeDados.FDConnection1.StartTransaction;

        for I := 0 to listaBoletos.Count - 1 do
        begin
          tituloAtual := StrToInt(listaBoletos[I]);

          if BancodeDados.Boletos.Locate('BOLETO_ID', tituloAtual, []) then // localiza cada um dos títulos marcados
          begin // aki vc vai ter cada um dos títulos marcados individualmente
            BancodeDados.Cont_Prt_Boleto.Close;
            BancodeDados.Cont_Prt_Boleto.SQL.Text := 'select * from cont_prt_boleto where prot_sit=0 and boleto_id = ' + IntToStr(BancodeDados.BoletosBOLETO_ID.Value);
            BancodeDados.Cont_Prt_Boleto.Open;

            if (acao = 1) then // incluir
            begin
              if (BancodeDados.BoletosSITUACAO_BOLETO.Value = 'A RECEBER') and (BancodeDados.BoletosVENCIMENTO.Value < DataServidor) then
              // apenas se estiver aberto e atrasado
              begin
                if not BancodeDados.Cont_Prt_Boleto.Locate('PRT_BLT_ID', idProtesto, []) then // se não encontrar o tipo, insere
                begin
                  BancodeDados.Cont_Prt_Boleto.Append;
                  BancodeDados.Cont_Prt_BoletoPROT_SIT.Value := 0; { 0-Protestado; 1-Retirado; 2- Cancelado }
                  BancodeDados.Cont_Prt_BoletoPRT_BLT_ID.Value := idProtesto;
                  BancodeDados.Cont_Prt_BoletoBOLETO_ID.Value := BancodeDados.BoletosBOLETO_ID.Value;
                  BancodeDados.Cont_Prt_Boleto.Post;
                end;
              end;
            end;

            if (acao = 2) then // Editar
            begin
              if BancodeDados.Cont_Prt_Boleto.Locate('PRT_BLT_ID', idProtesto, []) then // se encontrar o tipo, apaga
              begin
                if not (BancodeDados.Cont_Prt_Boleto.State in [dsEdit, dsInsert]) then
                  BancodeDados.Cont_Prt_Boleto.edit;

                BancodeDados.Cont_Prt_BoletoPROT_SIT.Value := 1; { 0-Protestado; 1-Retirado; 2- Cancelado }
                BancodeDados.Cont_Prt_BoletoDT_SIT.Value := PrincipalForm.DataServidor;
                BancodeDados.Cont_Prt_Boleto.Post;

              end;
            end;

            BancodeDados.Cont_Prt_Boleto.Close;
          end; // if locate

        end; // for

        BancodeDados.FDConnection1.CommitRetaining;
        try
          BancodeDados.Boletos.Refresh;
        except
        end;

      except
        on E: Exception do
        begin
          TraduzErro(E.Message);
        end;
      end;
    end
    else
      Mensagem('Tipo de protesto inválido.', mtInformation, [mbOk], mrOk, 0);
  end
  else
    Mensagem('Marque algum título antes de prosseguir.', mtInformation, [mbOk], mrOk, 0);
end;


procedure TPrincipalForm.Iniciar1Click(Sender: TObject);
begin
if not BancodeDados.Config.Active then BancodeDados.Config.Open;



//fazer tratamento para verificar a validade do certificado.

if Trim(BancodeDados.ConfigNFSE_CERT_DIG_NUM_SERIE.Value)<>EmptyStr then
begin
  if (usrNivel in [1,2]) then
  begin
  if (ServicoAtivoNFSe = False) then
    begin
      ServicoAtivoNFSe := TRUE;
      myNFseCSTh      := TNfseConsulta.Create(True); { Create suspended-second process does not run yet. }
   end
    else
      MessageDlg('Já existe um processo em andamento de verificação de NFse!', mtInformation, [mbOk], 0);
  end;

end else
  MessageDlg('Certificado não encontrado!', mtInformation, [mbOk], 0);



end;

Procedure TPrincipalForm.CarregaFotoParaBanco(FileName: String);
Var
  stImagem: TFileStream;
begin
  stImagem := TFileStream.Create(FileName, fmOpenRead or fmShareDenyWrite);
  Try
    // ibdsCredenciadosFOTO é um campo BLOB SUB_TYPE 0
    BancodeDados.BancosLOGOMARCA.LoadFromStream(stImagem);
  Finally
    stImagem.Free;
  End;
end;


procedure TPrincipalForm.VerificaRemessaPendentes;
var
  DTtmp: TDate;
  QryCs: TFDQuery;
begin
if(usrID > 0) then
begin

  DTtmp := PrincipalForm.DataServidor - 5;
  try
    if DTtmp > 0 then
    begin
      QryCs := TFDQuery.create(nil);
      try
        QryCs.Connection    := BancodeDados.FDConnection1;
        try                                                                                  //and SITUACAO_BOLETO = ' + QuotedStr('A RECEBER') + '
        QryCs.close;
        with QryCs.FormatOptions do
        begin
          OwnMapRules := True;
          with MapRules.Add do
          begin
            TargetDataType := dtInt32;
            SourceDataType := dtInt64;
          end;
        end;


          QryCs.SQL.Text := 'select count(emissao_id) as total from v_boletos_remessa where coalesce(retorno_id,0) = 0 and coalesce(remessa,0)=0 and coalesce(alt_via_banco,0)=0 and coalesce(cancelado,0)=0';
          QryCs.SQL.Add(' and (dt_proces >' + QuotedStr(FormatDateTime('yyyy/mm/dd', DTtmp)) + ')');

          if suporte then
          Mensagem(QryCs.SQL.Text, mtInformation, [mbok], mrok, 0);

          QryCs.open;
        except
            on E: Exception do
              TraduzErro(E.Message);
        end;



        QryCs.Last;

        //Application.ProcessMessages;
        if (QryCs.FieldByName('total').AsInteger > 0) then
        //if (QryCs.RecordCount > 0) then
        begin
          MostraMSG := True;

          PrincipalForm.pnl_titulo_msg.Caption := '';
          Msg := 'Pesquisa de remessa não enviada:';
          QryCs.first;
          //while not QryCs.eof do
          //begin
            //Msg := Msg + #13 + 'N.º de registro(s): ' + FormatFloat('000', QryCs.FieldByName('TOTAL').AsInteger);
            //if (QryCs.RecordCount <= 300) then
            if (QryCs.FieldByName('total').AsInteger > 0) then
            Msg := Msg + #13 + 'N.º de registro(s): ' + FormatFloat('000', QryCs.FieldByName('total').AsInteger)
            else//FormatFloat('000', QryCs.RecordCount) else
            Msg := Msg + #13 + 'N.º de registro(s) +300';

            //QryCs.Next;
          //end;
          QryCs.close;
          PrincipalForm.pnl_titulo_msg.Caption := (Msg);
          PrincipalForm.pnl_msg.Visible := True;

        end
        else
        begin
          PrincipalForm.pnl_msg.Visible := false;
          BancodeDados.QrySql.close;
          MostraMSG := false;
        end;

      finally
        QryCs.close;
        QryCs.Free;
      end;

    end;
  except

      if not Assigned(AjusteBancoForm) then
      AjusteBancoForm := tAjusteBancoForm.Create(Application);
      try
        AjusteBancoForm.ShowModal;
      ///  AjusteBancoForm.btAjustabancClick();
      finally
        AjusteBancoForm.Release;
        AjusteBancoForm := nil;
      end;
  end;


end;
end;
{
procedure TPrincipalForm.VerificaRemessaPendentes;
var
  DTtmp: TDate;
  QryCs: TFDQuery;
begin

  if (usrID > 0) then
  begin
    if (usrNivel in [1, 2]) then
    begin
      DTtmp := PrincipalForm.DataServidor - 5;
      try
        if DTtmp > 0 then
        begin
          QryCs := TFDQuery.create(nil);
          try
            QryCs.Connection    := BancodeDados.FDConnection1;


            QryCs.close;
            with qryCs.FormatOptions do
            begin
              OwnMapRules := True;
              with MapRules.Add do
              begin
                TargetDataType := dtInt32;
                SourceDataType := dtInt64;
              end;
            end;
            QryCs.SQL.Text := 'select count(emissao_id) as total from v_boletos_remessa where situacao_boleto = ' + QuotedStr('A RECEBER') + ' and coalesce(retorno_id,0) = 0 and coalesce(remessa,0)=0 and coalesce(alt_via_banco,0)=0 and coalesce(cancelado,0)=0 and (coalesce(cli_debito_auto, 0) = 0)' + ' and (dt_proces >' + QuotedStr(FormatDateTime('yyyy/mm/dd', DTtmp)) + ')';
            QryCs.open;

            //Application.ProcessMessages;
            if (QryCs.FieldByName('TOTAL').AsInteger > 0) then
            begin
              MostraMSG := True;

              PrincipalForm.pnl_titulo_msg.Caption := '';
              Msg := 'Pesquisa de remessa não enviada:';
              QryCs.first;
              //while not QryCs.eof do
              //begin
                Msg := Msg + #13 + 'N.º de registro(s): ' + FormatFloat('000', QryCs.FieldByName('TOTAL').AsInteger);
                //QryCs.Next;
              //end;
              QryCs.close;
              PrincipalForm.pnl_titulo_msg.Caption := (Msg);
              PrincipalForm.pnl_msg.Visible := True;

            end
            else
            begin
              PrincipalForm.pnl_msg.Visible := false;
              BancodeDados.QrySql.close;
              MostraMSG := false;
            end;

          finally
            QryCs.close;
            QryCs.Free;
          end;

        end;
      except
        on E: Exception do
          TraduzErro(E.Message);
      end;

    end;
  end;

end;    }

function TPrincipalForm.GeraMalaDireta(tabela: TFDQuery; incluirTitulos: Boolean; Gauge: TGauge): Boolean;
var
  I, TotalCampos: integer;
  F: TextFile;
  Arquivo: string;
  vlCampos: string;
  vlValores, vlTxt: string;
begin
  Result := True;
  try
    Screen.Cursor := crSQLWait;
    SaveDialog1.InitialDir := ExtractFilePath(ParamStr(0));
    if SaveDialog1.Execute then
    begin

      if Assigned(Gauge) then
        Gauge.Visible := True;
      tabela.Last;
      if Assigned(Gauge) then
        Gauge.MaxValue := tabela.RecNo;
      tabela.First;

      TotalCampos := tabela.FieldCount;
      // vlCampos :=VarArrayCreate([0,TotalCampos - 1], varVariant);
      // vlValores:=VarArrayCreate([0,TotalCampos - 1], varVariant);

      vlCampos := '';
      for I := 0 to TotalCampos - 1 do
      begin
        if { (Trim(UpperCase(Tabela.Fields[i].FieldName)) <> 'ATIVO') and } (Trim(UpperCase(tabela.Fields[I].FieldName)) <> 'FOTO') and (Trim(UpperCase(tabela.Fields[I].FieldName)) <> 'LOGOMARCA') then
        begin
          if Trim(vlCampos) = '' then
          //  vlCampos := tabela.Fields[I].FieldName
            vlCampos := tabela.Fields[I].DisplayName
          else
            vlCampos := vlCampos + ';' + tabela.Fields[I].DisplayName;
            //vlCampos := vlCampos + ';' + tabela.Fields[I].FieldName;
        end;
      end;

      Arquivo := SaveDialog1.FileName;
      try
        AssignFile(F, Arquivo);
        Rewrite(F);
        Writeln(F, vlCampos);
        while not tabela.Eof do
        begin
          if Assigned(Gauge) then
            Gauge.Progress := tabela.RecNo;
          Application.ProcessMessages;
          vlValores := '';
          for I := 0 to TotalCampos - 1 do
          begin
            if { (Trim(UpperCase(Tabela.Fields[i].FieldName)) <> 'ATIVO') and } (Trim(UpperCase(tabela.Fields[I].FieldName)) <> 'FOTO') and (Trim(UpperCase(tabela.Fields[I].FieldName)) <> 'LOGOMARCA') then
            begin
              if (tabela.Fields[I].DataType in [ftFloat, ftCurrency, ftBCD]) then
                vlTxt := FormatFloat(',0.00', tabela.Fields[I].AsCurrency)
              else
                vlTxt := tabela.Fields[I].AsString;

              vlTxt := StringReplace(vlTxt, #13, ' ', [rfReplaceAll]);
              vlTxt := StringReplace(vlTxt, #10, '', [rfReplaceAll]);
              vlTxt := StringReplace(vlTxt, '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ', '', [rfReplaceAll]);

              //Atualização Alex Eloy - 24/10/2016
              //if (valores = '') then
              if (I = 0) then
                vlValores := vlTxt
              else
                vlValores := vlValores + ';' + vlTxt;

            end;
          end;

          Writeln(F, vlValores);
          tabela.Next;
        end;
      finally
        CloseFile(F);
      end;
      Mensagem('Processo concluído com sucesso.', mtInformation, [mbOk], mrOk, 0);
    end; // SaveDialog
  except
    on E: Exception do
    begin
      Result := false;
      Mensagem('Erro ao gerar mala direta.' + #13 + E.Message, mtWarning, [mbOk], mrOk, 0);
    end
  end;
  if Assigned(Gauge) then
  begin
    Gauge.Progress := 0;
    Gauge.Visible := false;
  end;
  Screen.Cursor := crDefault;
end;


function TPrincipalForm.RetornaLimpo(em: string): string;
var
  i: Integer;
  temp: string;
  letras: string;
  x: Integer;
begin
  letras := '0123456789';

  for x := 1 to Length(em) do
    for i := 1 to Length(letras) do
      if em[x] = letras[i] then
        temp := temp + em[x];

  result := Trim(temp);
end;

function TPrincipalForm.DataHoraServidor: TDateTime;
begin
  Result := Now;

    try
      try
        BancodeDados.DataHora.Open;
        Result := BancodeDados.DataHoraCURRENT_TIMESTAMP.Value;
      finally
        BancodeDados.DataHora.Close;
      end;
    except
    end;

end;

procedure CriarDiretorio(Diretorio: string);
var
  dirTmp: String;
begin
  dirTmp := Copy(Diretorio, 1, Pos('\', Diretorio));
  Delete(Diretorio, 1, Pos('\', Diretorio));
  while Length(Diretorio) > 0 do
  begin
    if (Pos('\', Diretorio) > 0) then
    begin
      dirTmp := dirTmp + Copy(Diretorio, 1, Pos('\', Diretorio));
      Delete(Diretorio, 1, Pos('\', Diretorio));
    end
    else
    begin
      dirTmp := dirTmp + Diretorio;
      Diretorio := '';
    end;
    if not DirectoryExists(dirTmp) then
      CreateDir(dirTmp);
  end;
end;

function TPrincipalForm.DataServidor: TDate;
begin
  Result := Date;

    try
      try
        BancodeDados.DataHora.Open;
        Result := BancodeDados.DataHoraCURRENT_DATE.Value;
      finally
        BancodeDados.DataHora.Close;
      end;
    except
    end;
end;

function SelecionarDiretorio(Titulo, DirInicial: string): string;
var
  Pasta: String;
begin
  Pasta := DirInicial;
  SelectDirectory(Titulo, '', Pasta, [sdNewFolder, sdNewUI]);
  if (Trim(Pasta) <> '') then
    if (Pasta[Length(Pasta)] <> '\') then
      Pasta := Pasta + '\';
  Result := Pasta;
end;

{ Funçoes p/ Verificar validade do CPF e CNJ }
function CalculaCnpjCpf(numero: String): String;
var
  i, j, k: Integer;
  Soma: Integer;
  Digito: Integer;
  CNPJ: Boolean;
begin
  result := '';
  CNPJ := false;
  case Length(numero) of
    9:
      CNPJ := false;
    12:
      CNPJ := true;
  end;
  result := numero;
  for j := 1 to 2 do
  begin
    k := 2;
    Soma := 0;
    for i := Length(result) downto 1 do
    begin
      Soma := Soma + (Ord(result[i]) - Ord('0')) * k;
      Inc(k);
      if (k > 9) and CNPJ then
        k := 2;
    end;
    Digito := 11 - Soma mod 11;
    if Digito >= 10 then
      Digito := 0;
    result := result + Chr(Digito + Ord('0'));
  end;
end;

function TestaCPFCNPJ(cpf: string; Msg: Boolean = true): String;
var
  temp: string;
  temp2: string;
  i: Integer;
  cgcnovo: string;
  numero: String;
begin
  result := '';
  if trim(cpf) <> '' then
  begin
    temp := cpf;
    { testa se o CPF/CGC e Valido }
    for i := 1 to Length(temp) do
      if temp[i] in ['0' .. '9'] then
        numero := numero + temp[i];
    if Length(numero) = 11 then
      temp := Copy(numero, 1, 9);
    if Length(numero) = 14 then
      temp := Copy(numero, 1, 12);
    if CalculaCnpjCpf(temp) <> numero then
    begin
      result := '';
      if (Msg = true) then
        Mensagem('Verifique a autenticidade do CNPJ/CPF!', mtInformation, [mbOk], mrOK, 0);
    end
    else
    begin
      temp := numero;
      if temp <> '' then
      begin
        temp2 := '';
        for i := 0 to Length(temp) do
          if temp[i] in ['0' .. '9'] then
            temp2 := temp2 + temp[i];
        if Length(temp2) <= 11 then
        begin
          cgcnovo := temp2[1] + temp2[2] + temp2[3] + '.' + temp2[4] + temp2[5] + temp2[6] + '.' + temp2[7] + temp2[8] + temp2[9] + '-' + temp2[10] + temp2[11];
          result := cgcnovo;
        end
        else
        begin
          cgcnovo := temp2[1] + temp2[2] + '.' + temp2[3] + temp2[4] + temp2[5] + '.' + temp2[6] + temp2[7] + temp2[8] + '/' + temp2[9] + temp2[10] + temp2[11] + temp2[12] + '-' + temp2[13] + temp2[14];
          result := cgcnovo;
        end;
      end;
    end;
  end;
end;

function CPFTeste(cpfTmp: String): Boolean;
begin
  cpfTmp := TestaCPFCNPJ(cpfTmp, false);
  if (trim(cpfTmp) = '') or (trim(cpfTmp) = '000.000.000-00') or (trim(cpfTmp) = '111.111.111-11') or (trim(cpfTmp) = '222.222.222-22') or (trim(cpfTmp) = '333.333.333-33') or (trim(cpfTmp) = '444.444.444-44') or (trim(cpfTmp) = '555.555.555-55') or (trim(cpfTmp) = '666.666.666-66') or
    (trim(cpfTmp) = '777.777.777-77') or (trim(cpfTmp) = '888.888.888-88') or (trim(cpfTmp) = '999.999.999-99') or (trim(cpfTmp) = '000.000.001-91') or (trim(cpfTmp) = '00.000.000/0000-00') or (trim(cpfTmp) = '11.111.111/1111-11') or (trim(cpfTmp) = '22.222.222/2222-22') or
    (trim(cpfTmp) = '33.333.333/3333-33') or (trim(cpfTmp) = '44.444.444/4444-44') or (trim(cpfTmp) = '55.555.555/5555-55') or (trim(cpfTmp) = '66.666.666/6666-66') or (trim(cpfTmp) = '77.777.777/7777-77') or (trim(cpfTmp) = '88.888.888/8888-88') or (trim(cpfTmp) = '99.999.999/9999-99') then
    result := true
  else
    result := false;
end;

procedure TPrincipalForm.ResponderConnStr(var Msg: TMessage);
var
  SedScan: PTSedScan;
  hMem: THandle;
  idPessoa, iTipo, origId: integer;
  origNome : ShortString;
begin
  // try
  idPessoa := 0;
  iTipo := 0;

  if Assigned(CadClientesForm)  then
  begin
    iTipo     := 1;
    idPessoa  := BancodeDados.ClientesCLI_ID.Value;
    origId    := BancodeDados.ClientesCLI_ID.Value;
    origNome  := 'CLIENTE';
  end;

  if (idPessoa > 0) and (iTipo > 0) then
  begin
    hMem := CreateFileMapping($FFFFFFFF, nil, PAGE_READWRITE, 0, sizeof(TSedScan), 'ArqMemoria2');

    SedScan := MapViewOfFile(hMem, FILE_MAP_WRITE, 0, 0, sizeof(TSedScan));

    SedScan.iTipo     := iTipo;
    SedScan.idPessoa  := idPessoa;
    SedScan.idUsr     := usrID;
    SedScan.connStr   := (BancNome);
    SedScan.origID    := origId;
    SedScan.origNome  := origNome;

    Msg.Result := 1;
  end
  else
  begin
    Msg.Result := 2;
  end;
  // except
  // msg.Result := 0;
  // end;
end;


procedure TPrincipalForm.AtualizarListaDocScan(var Msg: TMessage);
begin
  if BancodeDados.SDoc.Active then
  begin
    BancodeDados.SDoc.Close;
    BancodeDados.SDoc.Open;
  end;
end;

function TeclaPressionada(const Key: Integer): Boolean;
begin
  Result := GetKeyState(Key) and 128 > 0;
end;
(* Exemplos de uso:

  if tbKeyIsDown(VK_CONTROL) then
  { Tecla Ctrl pressionada }

  if tbKeyIsDown(VK_MENU) then
  { Tecla Alt pressionada }

  if tbKeyIsDown(VK_SHIFT) then
  { Tecla Shift pressionada }

  if tbKeyIsDown(VK_F2) then
  { Tecla F2 pressionada }
*)

function DiretorioTemp: String;
begin
  if Trim(PrincipalForm.DirTemp) = '' then
    PrincipalForm.DirTemp := SysTempDir;
  // PrincipalForm.DirTemp := 'C:\';
  // if not DirectoryExists(PrincipalForm.DirTemp) then CreateDir(PrincipalForm.DirTemp);
  Result := PrincipalForm.DirTemp;
end;

procedure HabilitarBotoes(Formulario: TForm; Valor: Boolean);
//var
//  i: Integer;
begin
{  for i := 0 to Formulario.ComponentCount - 1 do
  begin
    if (Formulario.Components[i] is TButton) then
      (Formulario.Components[i] as TButton).Enabled := Valor;
  end;}
end;

procedure TPrincipalForm.Sair1Click(Sender: TObject);
begin
  Close;
end;

procedure TPrincipalForm.Servios12Click(Sender: TObject);
begin
//  if not(usrID > 0) then
//    Mensagem('É necessário efetuar login.', mtInformation, [mbOk], mrOk, 0)
//  else
//  begin
    if (usrNivel in [1, 2]) then
    begin
    if not Assigned(CsVeiculosForm) then
      CsVeiculosForm := tCsVeiculosForm.Create(Application);
    try
      CsVeiculosForm.ShowModal;
    finally
      CsVeiculosForm.Release;
      CsVeiculosForm := nil;
    end;
  end;
//  end;
end;

procedure TPrincipalForm.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := false;
  if (pedirSenha = true) then
  begin
    Autenticarusurio1Click(Sender);
  end
  else
  begin
    BancodeDados.Login.Close;
    BancodeDados.Login.SQL.text := 'select * from login where ativo = 1';
    BancodeDados.Login.Open;
    usrID := BancodeDados.LoginLOGIN_ID.Value;
    usrLogin := BancodeDados.LoginLOGIN.Value;
    usrNivel := BancodeDados.LoginNIVEL.Value;
    GerarNfseAutom:= (BancodeDados.LoginGERA_NFSE.Value=1);

    StatusBar1.Panels[1].text := usrLogin;
    BancodeDados.Login.Close;
  end;
end;

procedure TPrincipalForm.Timer2Timer(Sender: TObject);
var
  q : TFDQuery;
begin
  //Timer que garante a conexão com o banco de dados

  if not BancodeDados.FDConnection1.Connected then exit;

  q := TFDQuery.Create(nil);
  try
    q.Connection := BancodeDados.FDConnection1;
    q.close;
    q.SQL.Text := 'select ''ping'' from clientes where cli_id = 0;';
    q.Open;
  finally
    q.Free;
  end;
end;

procedure TPrincipalForm.FormShow(Sender: TObject);
var
  registro, regRegistro: TSEDRegistro;
  SenhaBCTemp : string;
begin
  //if not Assigned(regRegistro) then
  registro := TSEDRegistro.Create;
  try
    registro.RootKey := HKEY_LOCAL_MACHINE;
    if Registro.AbrirChave(ChaveRegSED) then
    begin

      Serv        := registro.LerTexto('serv', 'localhost');
      BancNome    := registro.LerTexto('banco','D:\sedsoftdb\locacao_auto.fdb.fdb');
      BancPorta   := registro.LerTexto('porta','3050');
      BancUsuario := registro.LerTexto('usuario','sysdba');
      SenhaBCTemp := registro.LerTexto('pswd','');
      RemotoDriveID:= Registro.LerNumero('bcdrive', 1);

      if Length(SenhaBCTemp)>0 then
      BancPassword:=BancodeDados.Criptografar(SenhaBCTemp) else BancPassword:='';

      registro.FecharChave;
    end;
  finally
    registro.Free;
  end;


  StatusBar1.Panels[0].Text := 'Locação de Automóvel';
  StatusBar1.Panels[2].Text := 'Aluguel Exclusivo para Motorista de Aplicativos';
  Cadastro1.Visible:=False;
  PrincipalForm.locatario1.Visible    :=false;

  Relatrios1.Visible:=False;
  //Componentes12.Visible:=False;
  Utilitarios1.Visible:=False;
  MovimentacaoBancaria12.Visible:=False;


    if (BancPorta=EmptyStr) or (BancUsuario=EmptyStr) or (BancPassword=EmptyStr) or (Serv=EmptyStr) or (BancNome=EmptyStr)
    then
    begin

        Mensagem('Servidor ou caminho do banco de dados não foi informado!',mtInformation,[mbOk],mrOk,0);

       if not Assigned(AlterandoServidorForm) then
        AlterandoServidorForm := TAlterandoServidorForm.Create(Application);
       try
        AlterandoServidorForm.ShowModal;
      finally
        AlterandoServidorForm.Release;
        AlterandoServidorForm := nil;
      end;
    end else
    if (Serv<>EmptyStr) and (BancNome<>EmptyStr) then
    begin

        BancodeDados.FechaConexoes;

        with BancodeDados do
        begin
          //BANCO 1
          try //1
              FDConnection1.close;
              FDConnection1.FormatOptions.OwnMapRules := False;
              FDConnection1.FormatOptions.MapRules.Clear;
              FDConnection1.Params.Clear;
              FDConnection1.LoginPrompt:= False;
              FDConnection1.Params.Add('Pooled=false');

              case RemotoDriveID of
              2: //'MySQL':
                begin

                  FDConnection1.FormatOptions.OwnMapRules := True;
                  //1
                  with FDConnection1.FormatOptions.MapRules.Add do
                  begin
                    SourceDataType := dtWideString; //incorreto
                    TargetDataType := dtAnsiString; //certo
                  end;
                 { //2
                  with FDConnection1.FormatOptions.MapRules.Add do
                  begin
                    SourceDataType := dtMemo;//incorreto
                    TargetDataType := dtBlob;//certo
                  end;

                  }
                  //3
                  with FDConnection1.FormatOptions.MapRules.Add do
                  begin
                    SourceDataType := dtFmtBCD;//incorreto
                    TargetDataType := dtInt64;//certo
                  end;
                  //4
                  with FDConnection1.FormatOptions.MapRules.Add do
                  begin
                    SourceDataType := dtUInt16;//incorreto
                    TargetDataType := dtInt64;//certo
                  end;
                  //5
                  with FDConnection1.FormatOptions.MapRules.Add do
                  begin
                    TargetDataType := dtDateTime;
                    SourceDataType := dtDateTimeStamp;
                  end;

                  FDConnection1.DriverName := trim('MySQL'); //drive do banco
                  FDConnection1.Params.Add('server='+Serv);//IP do servidor do banco de dados
                  FDConnection1.Params.Add('database='+BancNome); //caminho do banco de dados
                  FDConnection1.Params.Add('user_name='+BancUsuario);
                  FDConnection1.Params.Add('password='+BancPassword);
                  FDConnection1.Params.Add('drivername='+FDConnection1.DriverName);
                  FDConnection1.Params.Add('procol='+'TCPIP');
                  FDConnection1.Params.Add('port='+(BancPorta));
                  FDConnection1.Params.Add('CharacterSet=utf8');
                  FDConnection1.Params.Add('blobsize=');



               end
               ELSE
               begin  //0, 1

                  FDConnection1.FormatOptions.OwnMapRules := True;

                  with FDConnection1.FormatOptions.MapRules.Add do
                  begin
                    TargetDataType := dtDateTime;
                    SourceDataType := dtDateTimeStamp;
                  end;

                  with FDConnection1.FormatOptions.MapRules.Add do
                  begin
                    TargetDataType := dtAnsiString;
                    SourceDataType := dtWideString;
                  end;

                  FDConnection1.DriverName := trim('FB');
                  FDConnection1.Params.Add('server='+Serv);
                  FDConnection1.Params.Add('database='+BancNome); //caminho do banco de dados
                  FDConnection1.Params.Add('user_name='+BancUsuario);
                  FDConnection1.Params.Add('password='+BancPassword);
                  FDConnection1.Params.Add('drivername='+FDConnection1.DriverName);
                  FDConnection1.Params.Add('procol='+'TCPIP');
                  FDConnection1.Params.Add('port='+(Bancporta));
                  FDConnection1.Params.Add('DriverID=FB');//drive do banco
                  FDConnection1.Params.Add('CharacterSet=win1252');
                  FDConnection1.Params.Add('blobsize=-1');

               end;
              end;

              FDConnection1.Open;


              if FDConnection1.Connected then
              begin
               StatusBar1.Panels[4].text := 'Configuração: '+FDConnection1.DriverName;

               Screen.Cursor := crSQLWait;
               BancodeDados.RLPreviewSetup1.ZoomFactor := 130;

               if not Assigned(listaCliSite) then  listaCliSite := TStringList.Create;
               listaCliSite.Clear;
               listaCliSite.Sorted := True;
               listaCliSite.Duplicates := dupIgnore;

                //criando temporario campo para ajsutar o banco automaticamente na miracao de banco
                //sem precisar da rotina de ajuste...
                with BancodeDados.Script1 do
                begin

                  try
                    BancodeDados.FDConnection1.StartTransaction;
                    SQLScripts.Clear;
                    SQLScripts.Add;

                    with SQLScripts[0].SQL do
                    begin
                      ADD('alter table config add import_bc_fb smallint;');
                    end;
                    ValidateAll;
                    ExecuteAll;

                      try
                        BancodeDados.FDConnection1.CommitRetaining;
                      except
                      end;

                  except
                  //  BancodeDados.FDConnection1.Rollback;
                  end;
                end;


                // caso haja algum erro sera chamando o ajuste de banco de dados..
                try
                  if not BancodeDados.Config.active then BancodeDados.Config.Open;
                  PrincipalForm.VerificaRemessaPendentes;
                  //PrincipalForm.AtualizarFinanceiro1Click(Sender);


                  try
                  PrincipalForm.btImagemClick(Sender);
                  except
                  end;

                  PrincipalForm.Caption := SistemaNome + ' (Licença Temporária) '; //+ //BancodeDados.ConfigFANTASIA.AsString;

                  ClienteCNPJ:=BancodeDados.ConfigCNPJ.AsString;

                  if not BancodeDados.Clientes.active then BancodeDados.Clientes.Open;
                  BancodeDados.Clientes.Close;

                  if not BancodeDados.Boletos.active then BancodeDados.Boletos.Open;
                  BancodeDados.Boletos.Close;

                 //carregando SQL  Padrão

                except

                  if not Assigned(AjusteBancoForm) then
                  AjusteBancoForm := tAjusteBancoForm.Create(Application);
                  try
                    //AjusteBancoForm.ShowModal;
                    AjusteBancoForm.btAjustabancClick(sender);
                  finally
                    AjusteBancoForm.Release;
                    AjusteBancoForm := nil;

                  end;

                end;
                Screen.Cursor := crDefault;
              end;

          except on E:Exception do
           begin
             // ErroReg:=true;
              if (Pos('Error while trying to open file', E.Message)>0) then
              Mensagem ('O banco de dados da unidade  '+QuotedStr(Serv)+'  não foi localizado.'+#13+'Entre em contato com o suporte técnico.', mtWarning, [mbOk], mrOk, 0)
              else
              Mensagem('Falha na conexão com o servidor/remoto.'+#13+E.Message,mtWarning,[mbOk],mrOk,0);


               if not Assigned(AlterandoServidorForm) then
                AlterandoServidorForm := TAlterandoServidorForm.Create(Application);
               try
                AlterandoServidorForm.ShowModal;
              finally
                AlterandoServidorForm.Release;
                AlterandoServidorForm := nil;
              end;
               Application.Terminate;
            end;

          end;

        end;

    end;
    // else
    //begin
    // Mensagem('Servidor ou caminho do banco de dados não foi informado!',mtInformation,[mbOk],mrOk,0);
    //end;

end;

Procedure LimpaArquivos(vMasc: String);
{ Apaga arquivos usando mascaras tipo: *.zip, *.* }
Var
  Dir: TsearchRec;
  Erro: Integer;
Begin
{$WARNINGS OFF}
  Erro := FindFirst(vMasc, faArchive, Dir);
  While Erro = 0 do
  Begin
    DeleteFile(ExtractFilePAth(vMasc) + Dir.Name);
    Erro := FindNext(Dir);
  End;
  FindClose(Dir);
{$WARNINGS ON}
End;

procedure TPrincipalForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  // thCalculaValores.Pausar;
  // if Mensagem('Deseja sair agora?',mtConfirmation,[mbyes,mbNo],mryes,0)=idNo then
  // CanClose:=False;

  if ServicoAtivoNFSe then
  if Mensagem('Existe um processo de verificação de NFse. Deseja parar?',mtConfirmation,[mbYes,mbNo],mrNo,0)=idYes then
  begin
   // MyProcess.Tabela:=nil;
    myNFseCSTh.Terminate();
    PrincipalForm.StatusBar1.Panels[3].Text := '';
    PrincipalForm.StatusBar1.Panels[4].Text := '';
    PrincipalForm.StatusBar1.Panels[5].Text := '';
    ServicoAtivoNFSe := FALSE;
  end else CanClose:=False;

end;

procedure TPrincipalForm.FormCreate(Sender: TObject);
begin
Screen.OnActiveFormChange := FormChange;
end;



procedure TPrincipalForm.FormChange(Sender: TObject);
var
//  Ano, Mes, Dia: Word;
  ComponenteTmp: TComponent;
  i: integer;
//  marcado: Boolean;
begin
  try
    // Screen.ActiveForm.Position:=poScreenCenter;
    for i := 0 to Screen.ActiveForm.ComponentCount - 1 do
    begin
      ComponenteTmp := Screen.ActiveForm.Components[i];


      if (ComponenteTmp is TPanel) then
      begin
    //    TPanel(ComponenteTmp).Color     := TPanel(ComponenteTmp).Color = clWindow; //'$00E5E5E5';
      end
      else
      if (ComponenteTmp is TSedDBGrid) then
      begin
        TSedDBGrid(ComponenteTmp).GrupoLayout := GrupoLayout;
        TSedDBGrid(ComponenteTmp).Options     := TSedDBGrid(ComponenteTmp).Options + [dgTitleClick];

      //  TSedDBGrid(ComponenteTmp).FixedColor     := TSedDBGrid(ComponenteTmp).FixedColor =clWindow; //'$00E5E5E5';
      end
      else
      if (ComponenteTmp is TEdit) then
      begin
        if (UpperCase(ComponenteTmp.Name) = UpperCase('EditConsulta')) then
        begin
          TEdit(ComponenteTmp).Hint := 'Ctrl+L - Limpar...';
          TEdit(ComponenteTmp).ShowHint := True;
        end;
      end;
    end;
  except
  end;
end;



procedure TPrincipalForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
  begin
    Key := #0;
    Close;
  end;

  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NextDlgCtl, 0, 0);
  end;
end;

procedure TPrincipalForm.FormResize(Sender: TObject);
begin

  if Assigned(PrincipalForm) and MostraMSG then
  try
    pnl_msg.Visible := (PrincipalForm.WindowState = wsMaximized);
  except
  end;


end;

procedure TPrincipalForm.GerarArquivodeRemessa1Click(Sender: TObject);
begin
  if not(usrID > 0) then
    Mensagem('É necessário efetuar login.', mtInformation, [mbOk], mrOk, 0)
  else
  begin
     if (usrNivel in [1, 2]) then
    begin
      try
        if not Assigned(RemessaForm) then
          RemessaForm := TRemessaForm.Create(Application);
        RemessaForm.ShowModal;
      finally
        RemessaForm.Release;
        RemessaForm := nil;
      end;
    end;
  end;
end;

procedure TPrincipalForm.Gradefinanceira12Click(Sender: TObject);
begin
  if not(usrID > 0) then
    Mensagem('É necessário efetuar login.', mtInformation, [mbOk], mrOk, 0)
  else
  begin
    if (usrNivel in [1, 2]) then
    try
      if not Assigned(CsGrade_FinanceiraForm) then
        CsGrade_FinanceiraForm := TCsGrade_FinanceiraForm.Create(Application);
      CsGrade_FinanceiraForm.ShowModal;
    finally
      CsGrade_FinanceiraForm.Release;
      CsGrade_FinanceiraForm := nil;
    end;
  end;
end;

procedure TPrincipalForm.AssistenteparaGeraodeNFS12Click(Sender: TObject);
begin
  if not(usrID > 0) then
    Mensagem('É necessário efetuar login.', mtInformation, [mbOk], mrOk, 0)
  else
  begin
    if (usrNivel in [1, 2]) then
    begin
      if not Assigned(GerarNfsForm) then
        GerarNfsForm := TGerarNfsForm.Create(Application);
      try
        GerarNfsForm.ShowModal;
      finally
        GerarNfsForm.Release;
        GerarNfsForm := nil;
      end;
    end;
  end;
end;

procedure TPrincipalForm.AtualizarBancodeDados1Click(Sender: TObject);
begin
  if not(usrID > 0) then
    Mensagem('É necessário efetuar login.', mtInformation, [mbOk], mrOk, 0)
  else
  begin
    if (usrNivel in [1, 2]) then
    begin
      if not Assigned(AjusteBancoForm) then
        AjusteBancoForm := tAjusteBancoForm.Create(Application);
      try
        AjusteBancoForm.ShowModal;
      finally
        AjusteBancoForm.Release;
        AjusteBancoForm := nil;
      end;
    end;
  end;
end;

procedure TPrincipalForm.Atualizarlistadeclientesnosite1_OFFClick(Sender: TObject);
begin
  if not(usrID > 0) then
    Mensagem('É necessário efetuar login.', mtInformation, [mbOk], mrOk, 0)
  else
  begin
  if listaCliSite.Count=0 then
    begin
    if not Assigned(AtualizaCliSiteForm) then
      AtualizaCliSiteForm := TAtualizaCliSiteForm.Create(Application);
    try
      AtualizaCliSiteForm.ShowModal;
    finally
      AtualizaCliSiteForm.Release;
      AtualizaCliSiteForm := nil;
    end;
    end else
    begin
    if not Assigned(AtualizaCliSiteForm) then
      AtualizaCliSiteForm := TAtualizaCliSiteForm.Create(Application);
    try
      AtualizaCliSiteForm.btIniciarClick(Sender);
    finally
      AtualizaCliSiteForm.Release;
      AtualizaCliSiteForm := nil;
    end;
    end;
  end;
end;

procedure TPrincipalForm.Autenticarusurio1Click(Sender: TObject);
var
QryCs : TFDQuery;
begin
  if not Assigned(AcessoForm) then AcessoForm := TAcessoForm.Create(Application);
  try

    usrID       := 0;
    usrLogin    := '';
    usrNivel    := 0;
    StatusBar1.Panels[1].text := '';
    if AcessoForm.ShowModal = mrOk then
    begin
      StatusBar1.Panels[1].text := usrLogin;
    end;
  finally
    PrincipalForm.VerificaRemessaPendentes;

    if GerarNfseAutom then
    PrincipalForm.Iniciar1Click(Sender);

    AcessoForm.Release;
    AcessoForm := nil;
  end;


  //teste apos o login
  if(usrID > 0) then
  begin


   QryCs := TFDQuery.create(nil);
   try

     try
       QryCs.Connection    := BancodeDados.FDConnection1;
       QryCs.Close;
       QryCs.SQL.Text:='select distinct import_bc_fb from config where 1=1';
       QryCs.Open();

       if not (QryCs.FieldByName('import_bc_fb').AsInteger > 0)  then
       begin
        AtualizarBancodeDados1Click(Sender);
       end;
     except
     end;

   finally
     QryCs.close;
     QryCs.Free;
   end;

  end;



end;

procedure TPrincipalForm.Bacos1Click(Sender: TObject);
begin
  if not(usrID > 0) then
    Mensagem('É necessário efetuar login.', mtInformation, [mbOk], mrOk, 0)
  else
  begin
    if (usrNivel in [1, 2]) then
    begin
      try
        if not Assigned(CsBancosForm) then
          CsBancosForm := TCsBancosForm.Create(Application);
        CsBancosForm.ShowModal;
      finally
        CsBancosForm.Release;
        CsBancosForm := nil;
      end;
    end;
  end;
end;

procedure TPrincipalForm.Clientes1Click(Sender: TObject);
begin
  if not(usrID > 0) then
    Mensagem('É necessário efetuar login.', mtInformation, [mbOk], mrOk, 0)
  else
  begin
    Application.CreateForm(TCsClientesForm,CsClientesForm);
   // PrincipalForm.configVisaoCliente;
    try
      if not BancodeDados.Clientes.Active then BancodeDados.Clientes.Open;
      CsClientesForm.ShowModal;
    finally
      CsClientesForm.Release;
      CsClientesForm := nil;
    end;

    if listaCliSite.Count>0 then
    begin
     // if Mensagem('Deseja enviar as alterações para o servidor(web)?', mtConfirmation, [mbYes, mbNo], mrNo, 0) = idYes then
     // PrincipalForm.Atualizarlistadeclientesnosite1Click(Sender);
    end;

  end;
end;

procedure TPrincipalForm.Clientes12Click(Sender: TObject);
begin
  if not(usrID > 0) then
    Mensagem('É necessário efetuar login.', mtInformation, [mbOk], mrOk, 0)
  else
  begin
  if (usrNivel in [1, 2]) then
    try
      if not Assigned(CsClientesForm) then
        CsClientesForm := TCsClientesForm.Create(Application);
      CsClientesForm.ShowModal;
    finally
      CsClientesForm.Release;
      CsClientesForm := nil;
    end;

    if listaCliSite.Count>0 then
    begin
     // if Mensagem('Deseja enviar as alterações para enviar para o servidor(web)?', mtConfirmation, [mbYes, mbNo], mrNo, 0) = idYes then
     // PrincipalForm.Atualizarlistadeclientesnosite1Click(Sender);
    end;

  end;
end;

procedure TPrincipalForm.Financeiro311Click(Sender: TObject);
begin
if (usrNivel in [1, 2]) then
  begin
    NovoCliente_ID:=qryDevCLI_ID.Value;
    if NovoCliente_ID>0 then
    try
      if not assigned(Boletos1Form) then
        Boletos1Form := TBoletos1Form.create(Application);
      Boletos1Form.Caption := 'Financeiro do cliente - ' + qryDevFANTASIA.Value;
      Boletos1Form.ShowModal;
    finally
      Boletos1Form.Release;
      Boletos1Form := nil;
    end;
  end;
end;

procedure TPrincipalForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // thCalculaValores.Terminar;
  try
    // thCalculaValores.Free;
  except
  end;
  LimpaArquivos(DiretorioTemp + '*.xml');
  // LimpaArquivos(ExtractFilePath(ParamStr(0))+'*.map');


  if ServicoAtivoNFSe then
  begin
    myNFseCSTh.OnTerminate := nil;
    ServicoAtivoNFSe      := FALSE;
    myNFseCSTh.Terminate();
    myNFseCSTh := nil;
  end;

  listaCliSite.free;
end;

procedure TPrincipalForm.tipodeContas1Click(Sender: TObject);
begin
  if not(usrID > 0) then
    Mensagem('É necessário efetuar login.', mtInformation, [mbOk], mrOk, 0)
  else
  begin
    if (usrNivel in [1, 2]) then
      try
        if not Assigned(CsTipo_ContasForm) then
          CsTipo_ContasForm := TCsTipo_ContasForm.Create(Application);
        CsTipo_ContasForm.ShowModal;
      finally
        CsTipo_ContasForm.Release;
        CsTipo_ContasForm := nil;
      end;
  end;
end;

procedure TPrincipalForm.LivroCaixa1Click(Sender: TObject);
begin
  if not(usrID > 0) then
    Mensagem('É necessário efetuar login.', mtInformation, [mbOk], mrOk, 0)
  else
  begin
    if (usrNivel in [1, 2]) then
    begin
      if not Assigned(CadCaixaForm) then CadCaixaForm := TCadCaixaForm.Create(Application);
      try
        CadCaixaForm.DBGrid1.Columns[0].Visible:=False;
        CadCaixaForm.ShowModal;
      finally
        CadCaixaForm.Release;
        CadCaixaForm := nil;
      end;
    end;
  end;
end;

procedure TPrincipalForm.Login1Click(Sender: TObject);
begin
  if not(usrID > 0) then
    Mensagem('É necessário efetuar login.', mtInformation, [mbOk], mrOk, 0)
  else
  begin
    if (usrNivel in [1, 2]) then
    begin
      try
        if not Assigned(CsLoginForm) then
          CsLoginForm := TCsLoginForm.Create(Application);
        CsLoginForm.ShowModal;
      finally
        CsLoginForm.Release;
        CsLoginForm := nil;
       ///
      end;
    end;
  end;
end;



procedure TPrincipalForm.MainMenu1Change(Sender: TObject; Source: TMenuItem;
  Rebuild: Boolean);
begin
 Tesouraria1.Enabled:=False;
 ConsultadeNotasFiscias12.Enabled:=False;
 AssistenteparaGeraodeNFS12.Enabled:=False;


 Processararquivoderetorno12.Enabled:=False;
 GerarArquivodeRemessa1.Enabled:=False;
 RelatriodeRemessa1.Enabled:=False;
 ConciliaoBancria1.Enabled:=False;
 BoletosEmitidos2.Enabled:=False;

end;

procedure TPrincipalForm.MalaDiretaEmail1_OffClick(Sender: TObject);
begin
if not Assigned(MalaDiretaForm) then
MalaDiretaForm := tMalaDiretaForm.Create(Application);
  try
    MalaDiretaForm.ShowModal;
  finally
    MalaDiretaForm.Release;
    MalaDiretaForm := nil;
  end;
end;

procedure TPrincipalForm.MalaDiretaSMS1Click(Sender: TObject);
begin

  if not(usrID > 0) then
    Mensagem('É necessário efetuar login.', mtInformation, [mbOk], mrOk, 0)
  else
  begin

    if (usrNivel in [1, 2]) then
    begin
      if not Assigned(CsClientesForm) then CsClientesForm := TCsClientesForm.Create(Application);
      try

        CsClientesForm.Maladireta := True;
        CsClientesForm.SMS        := True;
        CsClientesForm.ShowModal;
      finally
        CsClientesForm.Release;
        CsClientesForm := nil;
      end;

      if listaCliSite.Count>0 then
      begin
       // if Mensagem('Deseja enviar as alterações para enviar para o servidor(web)?', mtConfirmation, [mbYes, mbNo], mrNo, 0) = idYes then
       // PrincipalForm.Atualizarlistadeclientesnosite1Click(Sender);
      end;
    end;

  end;

{

  Application.CreateForm(TCsClientesForm,CsClientesForm);
  try
    CsClientesForm.Maladireta := True;
    CsClientesForm.SMS        := True;
    CsClientesForm.ShowModal;
  finally
    CsClientesForm.Free;
  end;

    if listaCliSite.Count>0 then
    begin
      PrincipalForm.Atualizarlistadeclientesnosite1Click(Sender);
    end; }

end;

procedure TPrincipalForm.CalcularValorBaixaIndividual(DataReceb: TDate; ApenasSomar: Boolean);
var
  vlIntegral, VDesconto, VJuros, VMulta, VApagar, VAcrescimo, PJuros, PMulta, VlCalcJuros, vlCredTmp: Currency;
  QtdDias, IDBol: Integer;
begin
  if not(CalculandoBaixaInd = true) then
  begin
    CalculandoBaixaInd := true;
    try
      vlTotalJuros := 0;
      vlTotalMulta := 0;
      vlTotalDesc := 0;
      vlTotalAcre := 0;
      vlTotalInteral := 0;
      vlTotalAPagar := 0;
      qtdTitARec := 0;
      vlTotalPago := 0;
      vlTotalCredito := 0;

      IDBol := BancodeDados.RecBolBOLETO_ID.Value;

      BancodeDados.RecBol.DisableControls;
      BancodeDados.RecBol.First;

      BancodeDados.GradeFin.Close;
      BancodeDados.GradeFin.SQL.text := 'select * from grade_financeira order by grade_id';
      BancodeDados.GradeFin.Open;

      while not BancodeDados.RecBol.Eof do
      begin

        if (BancodeDados.RecBolVALOR_INTEGRAL.Value > 0) then
        begin
          if (BancodeDados.RecBolSITUACAO_BOLETO.Value = 'CRED A RECEBER') then
          begin
            vlTotalCredito := vlTotalCredito + StrToCurr(FormatFloat('0.00', BancodeDados.RecBolVALOR_INTEGRAL.Value));
            // vlTotalAPagar:=vlTotalAPagar - StrToCurr(FormatFloat('0.00', BancodeDados.RecBolVALOR_APAGAR.Value))
          end
          else if (BancodeDados.RecBolSITUACAO_BOLETO.Value = 'A RECEBER') then
          begin
            // if not (ApenasSomar = true) then begin
            if not(BancodeDados.RecBol.State in [dsedit, dsinsert]) then
              BancodeDados.RecBol.edit;

            if not BancodeDados.GradeFin.Locate('GRADE_ID', BancodeDados.RecBolGRADE_ID.Value, []) then
              BancodeDados.GradeFin.First;

            if (OpcaoMulta = 1) then
            begin
              QtdDias := Trunc(DataReceb - UltimoDiaMes(BancodeDados.RecBolVENCIMENTO.Value));
              // (DateToStr(DataReceb)+#13+DateToStr(UltimoDiaMes(BancodeDados.RecBolVENCIMENTO.Value))+#13+IntToStr(QtdDias));
            end
            else
            begin
              QtdDias := Trunc(DataReceb - BancodeDados.RecBolVENCIMENTO.Value);
              // (DateToStr(DataReceb)+#13+DateToStr(BancodeDados.RecBolVENCIMENTO.Value)+#13+IntToStr(QtdDias));
            end;
            if Assigned(Baixa2Form) then
            begin
              if (QtdDias <= Baixa2Form.EditDiasTol.AsInteger) then
                QtdDias := QtdDias - Baixa2Form.EditDiasTol.AsInteger;
            end;

            if QtdDias < 0 then
              QtdDias := 0;
            BancodeDados.RecBolDIAS.Value := QtdDias;

            PJuros := BancodeDados.GradeFinJUROS.Value;
            PMulta := BancodeDados.GradeFinMULTA.Value;
            VDesconto := BancodeDados.RecBolDESCONTO.Value;
            vlIntegral := BancodeDados.RecBolVALOR_INTEGRAL.Value;

            if (OpcaoTipoValor = 1) then
            begin
              VlCalcJuros := BancodeDados.RecBolVALOR_INTEGRAL.Value - VDesconto;
            end
            else
            begin
              VlCalcJuros := BancodeDados.RecBolVALOR_INTEGRAL.Value;
            end;

            VAcrescimo := BancodeDados.RecBolACRESCIMO.Value;

            if QtdDias > 0 then
            begin

              if (AtivaJuros = 1) then
              begin

                if (ApenasSomar = true) then
                  VJuros := BancodeDados.RecBolJUROS.Value
                else
                  VJuros := QtdDias * StrToCurr(FormatFloat('0.00', ((VlCalcJuros * PJuros) / 100)));

                // ('2: '+currtostr(StrToCurr(FormatFloat('0.00', ((VlCalcJuros * PJuros) / 100))))+#13+inttostr(QtdDias));

                BancodeDados.RecBolJUROS.Value := VJuros;
              end
              else
              begin
                { if Assigned(RecBolForm) then begin
                  VJuros:=BancodeDados.RecBolJUROS.Value;
                  end else begin }
                VJuros := 0;
                BancodeDados.RecBolJUROS.Value := 0;
                // end;
              end;

              if (AtivaMulta = 1) then
              begin

                if (ApenasSomar = true) then
                  VMulta := BancodeDados.RecBolMULTA.Value
                else
                  VMulta := StrToCurr(FormatFloat('0.00', (VlCalcJuros * PMulta) / 100));

                BancodeDados.RecBolMULTA.Value := VMulta;
              end
              else
              begin
                { if Assigned(RecBolForm) then begin
                  VMulta:=BancodeDados.RecBolMULTA.Value;
                  end else begin }
                VMulta := 0;
                BancodeDados.RecBolMULTA.Value := 0;
                // end;
              end;
            end
            else
            begin
              VMulta := 0;
              VJuros := 0;
              BancodeDados.RecBolMULTA.Value := 0;
              BancodeDados.RecBolJUROS.Value := 0;
            end;

            VApagar := (vlIntegral + VJuros + VMulta + VAcrescimo);

            if (RetirarDesc = true) then
            begin
              if QtdDias > 0 then
                VApagar := VApagar
              else
                VApagar := VApagar - VDesconto;
            end
            else
            begin
              VApagar := VApagar - VDesconto;
            end;

            if VApagar < 0 then
              VApagar := 0;

            BancodeDados.RecBolCREDITO.Value := 0;
            BancodeDados.RecBolvlAntAlterado.Value := 0;

            BancodeDados.RecBolVALOR_APAGAR.Value := VApagar;

            if (StrToCurr(FormatFloat('0.00', VApagar)) <> StrToCurr(FormatFloat('0.00', BancodeDados.RecBolVALOR_APAGAR_ANT.Value))) then
            begin
              // if (VApagar <> BancodeDados.RecBolVALOR_APAGAR_ANT.Value) then begin
              BancodeDados.RecBolVALOR_PAGO.Value := VApagar;
              BancodeDados.RecBolvlAntAlterado.Value := 1;
            end;

            BancodeDados.RecBolVALOR_APAGAR_ANT.Value := VApagar;

            if (RetirarDesc = true) then
            begin
              if QtdDias > 0 then
                vlTotalDesc := vlTotalDesc
              else
                vlTotalDesc := vlTotalDesc + StrToCurr(FormatFloat('0.00', BancodeDados.RecBolDESCONTO.Value));
            end
            else
            begin
              vlTotalDesc := vlTotalDesc + StrToCurr(FormatFloat('0.00', BancodeDados.RecBolDESCONTO.Value));
            end;

            if (BancodeDados.RecBol.State in [dsedit, dsinsert]) then
              BancodeDados.RecBol.Post;
            // end;//apenasSomar

            vlTotalMulta := vlTotalMulta + BancodeDados.RecBolMULTA.Value;
            vlTotalJuros := vlTotalJuros + BancodeDados.RecBolJUROS.Value;
            vlTotalAcre := vlTotalAcre + StrToCurr(FormatFloat('0.00', BancodeDados.RecBolACRESCIMO.Value));
            vlTotalInteral := vlTotalInteral + StrToCurr(FormatFloat('0.00', BancodeDados.RecBolVALOR_INTEGRAL.Value));
            vlTotalAPagar := vlTotalAPagar + StrToCurr(FormatFloat('0.00', BancodeDados.RecBolVALOR_APAGAR.Value));
            vlTotalPago := vlTotalPago + StrToCurr(FormatFloat('0.00', BancodeDados.RecBolVALOR_PAGO.Value));
            inc(qtdTitARec);

          end; // a receber
        end; // valor>0

        BancodeDados.RecBol.Next;
      end;

      // (CurrToStr(vlTotalCredito));
      if (vlTotalCredito > 0) then
      begin
        vlCredTmp := vlTotalCredito;

        vlTotalMulta := 0;
        vlTotalJuros := 0;
        vlTotalAcre := 0;
        vlTotalInteral := 0;
        vlTotalAPagar := 0;
        BancodeDados.RecBol.First;
        while not BancodeDados.RecBol.Eof do
        begin
          if (BancodeDados.RecBolSITUACAO_BOLETO.Value = 'A RECEBER') then
          begin
            BancodeDados.RecBol.edit;
            if (vlCredTmp > 0) then
            begin
              if (vlCredTmp >= BancodeDados.RecBolVALOR_APAGAR.Value) then
              begin
                BancodeDados.RecBolCREDITO.Value := BancodeDados.RecBolVALOR_APAGAR.Value;
                if (BancodeDados.RecBolvlAntAlterado.Value = 1) then
                  BancodeDados.RecBolVALOR_PAGO.Value := 0;
                vlCredTmp := vlCredTmp - BancodeDados.RecBolVALOR_APAGAR.Value;
              end
              else
              begin
                BancodeDados.RecBolCREDITO.Value := vlCredTmp;
                if (BancodeDados.RecBolvlAntAlterado.Value = 1) then
                  BancodeDados.RecBolVALOR_PAGO.Value := BancodeDados.RecBolVALOR_APAGAR.Value - BancodeDados.RecBolCREDITO.Value;
                vlCredTmp := vlCredTmp - BancodeDados.RecBolVALOR_APAGAR.Value;
              end;
            end
            else
              BancodeDados.RecBolCREDITO.Value := 0;
            BancodeDados.RecBol.Post;

            vlTotalMulta := vlTotalMulta + BancodeDados.RecBolMULTA.Value;
            vlTotalJuros := vlTotalJuros + BancodeDados.RecBolJUROS.Value;
            vlTotalAcre := vlTotalAcre + StrToCurr(FormatFloat('0.00', BancodeDados.RecBolACRESCIMO.Value));
            vlTotalInteral := vlTotalInteral + StrToCurr(FormatFloat('0.00', BancodeDados.RecBolVALOR_INTEGRAL.Value));
            vlTotalAPagar := vlTotalAPagar + StrToCurr(FormatFloat('0.00', BancodeDados.RecBolVALOR_APAGAR.Value));

          end;
          BancodeDados.RecBol.Next;
        end;

      end;

      BancodeDados.RecBol.Locate('BOLETO_ID', IDBol, []);
      BancodeDados.RecBol.EnableControls;

    except
      On E: Exception do
        TraduzErro(E.Message);
    end;
    CalculandoBaixaInd := false;
  end;
end;


function TPrincipalForm.LiberaAcesso: Boolean;
begin
  Result := false;
  {
    if (Privilegio>0) then begin
    if not VerificaLiberacao(Privilegio) then begin
    Mensagem('Usuário não autorizado para '+Msg+'.'+#13+'Clique Ok para solicitar autorização de um supervisor.',mtWarning,[mbOk],mrOk,0);
    end else begin
    if Mensagem('Tem certeza que deseja '+Msg+'?',mtConfirmation,[mbYes,mbNo],mrNo,0)=idYes then begin
    Result:=True;
    end else begin
    exit;
    end;
    end;
    end;
  }

  if not(Result = true) then
  begin
    if not Assigned(AcessoForm) then
      AcessoForm := TAcessoForm.Create(Application);
    try
      if AcessoForm.ShowModal = mrOk then
      begin
        // if (NivelSupervisor = 'Supervisor') or (NivelSupervisor = 'Administrador') then
        if (supervisorNivel >= 2) then
        begin
          Result := true;
        end
        else
        begin
          Mensagem('Acesso negado!' + #13 + 'O usúario informado não possui nível de Supervisor/Administrador.', mtWarning, [mbOk], mrOk, 0);
        end;
      end; // Privilegio>0
    finally
      AcessoForm.Release;
      AcessoForm := nil;
    end;
  end;
end;

procedure TPrincipalForm.Ligaes1Click(Sender: TObject);
begin
  if not(usrID > 0) then
    Mensagem('É necessário efetuar login.', mtInformation, [mbOk], mrOk, 0)
  else
  begin
    if not Assigned(CsLigacoesForm) then CsLigacoesForm := TCsLigacoesForm.Create(Application);
    try
      CsLigacoesForm.ShowModal;
    finally
      CsLigacoesForm.Release;
      CsLigacoesForm := nil;
    end;
  end;
end;

procedure TPrincipalForm.Limpar12Click(Sender: TObject);
begin
  if(usrID > 0) then
  begin
    if (usrNivel in [1,2]) then
    if not (BancodeDados.ConfigLOGO3.IsNull)  then
    if Mensagem('Deseja limpar a imagem?',mtConfirmation,[mbYes,mbNo],mrNo,0)=idYes then
    begin
        if not (BancodeDados.Config.State in [dsEdit]) then
        BancodeDados.Config.Edit;
        BancodeDados.ConfigLOGO3.Clear;
        imgvisualizar.Picture := Nil;
    end;
  end;
end;

procedure TPrincipalForm.Consultadettulos1Click(Sender: TObject);
begin
  if not(usrID > 0) then
    Mensagem('É necessário efetuar login.', mtInformation, [mbOk], mrOk, 0)
  else
  begin
    if (usrNivel in [1, 2]) then
    begin
      try
        if not Assigned(CsTitulosForm) then CsTitulosForm := TCsTitulosForm.Create(Application);
        CsTitulosForm.ShowModal;
      finally
        CsTitulosForm.Release;
        CsTitulosForm := nil;
      end;
    end;
  end;
end;

procedure TPrincipalForm.Button1Click(Sender: TObject);
var
  i: Integer;
  imp: TSedImpDireta;

begin
  imp := TSedImpDireta.Create;
  imp.IniciaImpressao(tiMatricial, '\\localhost\lx300');
  // imp.IniciaImpressao(tiMatricial, 'lpt3');
  imp.lpp8;
  imp.EspacoInicial := 5;
  for i := 1 to 67 do
    imp.Imprime
      ('1234567890asdfgqwert1234567890asdfgqwert1234567890asdfgqwert1234567890asdfgqwert1234567890asdfgqwert1234567890asdfgqwert1234567890asdfgqwert123');
  imp.FinalizaImpressao;
  imp.Free;

end;

procedure TPrincipalForm.btImagemClick(Sender: TObject);
var
imagem :TStream;
Jpg    :TJPEGImage;
begin
if not BancodeDados.ConfigLOGO3.IsNull then
try
  imagem  :=TMemoryStream.Create;
  Jpg     :=TJPEGImage.Create;
  imagem  :=BancodeDados.Config.CreateBlobStream(BancodeDados.ConfigLOGO3,bmRead);
  Jpg.LoadFromStream(imagem);
  imgvisualizar.Picture.Assign(Jpg);
finally
  imagem.Free;
end;

end;

procedure TPrincipalForm.Image1Click(Sender: TObject);
begin
GerarArquivodeRemessa1Click(Sender);
end;

procedure TPrincipalForm.Imagem1Click(Sender: TObject);
begin
 if (usrNivel in [1,2]) then
if(usrID > 0) then
if OpenPictureDialog1.Execute then begin
if not BancodeDados.Config.active then BancodeDados.Config.Open;
  if not (BancodeDados.Config.State in [dsInsert,dsEdit]) then BancodeDados.Config.Edit;
  if BancodeDados.ResizeImage(OpenPictureDialog1.FileName, 1000) then
    BancodeDados.GravarBlobNaTabela(BancodeDados.ConfigLOGO3, DiretorioTemp + ExtractFileName(OpenPictureDialog1.FileName));
  DeleteFile(DiretorioTemp + ExtractFileName(OpenPictureDialog1.FileName));
  BancodeDados.Config.Post;
  BancodeDados.FDConnection1.CommitRetaining;
  btImagemClick(Sender);
end;
end;

procedure TPrincipalForm.ImpNotaFiscal;
var
  imp: TSedImpDireta;
  emiDia, emiMes, emiAno, PortaImp, condicao: String;
  nItem: Integer;
  ini: TIniFile;
  procedure VerificaItem;
  begin
    case nItem of
      1:
        begin
          imp.LinhaAtual := 26;
          imp.MicroSaltoOn(5);
        end;
      2:
        begin
          imp.LinhaAtual := 28;
          imp.MicroSaltoOn(3);
        end;
      3:
        begin
          imp.LinhaAtual := 30;
          imp.MicroSaltoOn(5);
        end;
      4:
        begin
          imp.LinhaAtual := 32; { imp.MicroSaltoOn(4); } end;
      5:
        begin
          imp.LinhaAtual := 34;
        end;
      6:
        begin
          imp.LinhaAtual := 35;
          imp.MicroSaltoOn(5);
        end;
      7:
        begin
          imp.LinhaAtual := 37;
        end;
      8:
        begin
          imp.LinhaAtual := 39;
        end;
      9:
        begin
          imp.LinhaAtual := 41;
        end;
      10:
        begin
          imp.LinhaAtual := 42;
          imp.MicroSaltoOn(5);
        end;
      11:
        begin
          imp.LinhaAtual := 44;
        end;
      12:
        begin
          imp.LinhaAtual := 46;
        end;
      13:
        begin
          imp.LinhaAtual := 48;
        end;
      14:
        begin
          imp.LinhaAtual := 49;
          imp.MicroSaltoOn(5);
        end;
      15:
        begin
          imp.LinhaAtual := 51;
        end;
      16:
        begin
          imp.LinhaAtual := 53;
        end;
      17:
        begin
          imp.LinhaAtual := 55;
        end;
    end;
  end;

begin

  ini := TIniFile.Create(ExtractFilePAth(ParamStr(0)) + 'config.ini');
  try
    PortaImp := ini.ReadString('config', 'portaimp', 'C:\teste.txt');

    if not FileExists(ExtractFilePAth(ParamStr(0)) + 'config.ini') then
      ini.WriteString('config', 'portaimp', PortaImp);
  finally
    ini.Free;
  end;

  BancodeDados.PegaNFItens;
  imp := TSedImpDireta.Create;
  try
    imp.IniciaImpressao(tiMatricial, PortaImp);
    imp.EspacoInicial := 10;
    imp.cpp20;
    imp.lpp8;

    condicao := 'A VISTA';

    BancodeDados.Boletos.Close;
    BancodeDados.Boletos.SQL.text := PrincipalForm.SQLrepositorio(0) + ' and b.nfs_id = ' + IntToStr(BancodeDados.NfsNFS_ID.Value) + ' and b.situacao_boleto = ' + QuotedStr('A RECEBER') + ' order by b.vencimento';
    BancodeDados.Boletos.Open;

    if not BancodeDados.Boletos.IsEmpty then
    begin
      BancodeDados.Boletos.Last;
      if (BancodeDados.BoletosVENCIMENTO.Value > BancodeDados.NfsDT_RPS.Value) then
      begin
        condicao := 'A PRAZO: P/ ' + FormatDateTime('dd/mm/yyyy', BancodeDados.BoletosVENCIMENTO.Value);
      end
      else
      begin
        condicao := 'A PRAZO';
      end;
    end;

    emiDia := FormatDateTime('dd', BancodeDados.NfsDT_RPS.Value);
    emiMes := FormatDateTime('mm', BancodeDados.NfsDT_RPS.Value);
    emiAno := FormatDateTime('yyyy', BancodeDados.NfsDT_RPS.Value);

    imp.LinhaAtual := 12;
    imp.Imprime(Preenche('', 18) + BancodeDados.NfsNOME.Value);

    imp.LinhaAtual := 14;
    imp.Imprime(Preenche('', 18) + BancodeDados.NfsLOGRADOURO.Value);

    imp.LinhaAtual := 15;
    imp.MicroSaltoOn(5);
    imp.Imprime(Preenche('', 18) + Preenche(BancodeDados.NfsBAIRRO.Value, 42) + Preenche('', 16) + Preenche(BancodeDados.NfsCIDADE.Value, 45) + Preenche('', 11)
      + BancodeDados.NfsESTADO.Value);

    imp.LinhaAtual := 17;
    imp.MicroSaltoOn(6);
    imp.Imprime(Preenche('', 18) + BancodeDados.NfsCNPJ.Value);

    imp.LinhaAtual := 19;
    // imp.MicroSaltoOn(3);
    imp.Imprime(Preenche('', 31) + 'PRESTACAO DE SERVICO');

    imp.LinhaAtual := 21;
    // imp.MicroSaltoOn(5);
    imp.Imprime(Preenche('', 31) + Preenche(condicao, 68) + PreencheNumero(emiDia, 12) + PreencheNumero(emiMes, 12) + PreencheNumero(emiAno, 13));

    BancodeDados.Boletos.Close;
    BancodeDados.Boletos.SQL.text := PrincipalForm.SQLrepositorio(0) + ' and b.nfs_id = ' + IntToStr(BancodeDados.NfsNFS_ID.Value) + ' order by b.vencimento';
    BancodeDados.Boletos.Open;

    // Itens
    nItem := 0;
    BancodeDados.NfsServ.First;
    while not BancodeDados.NfsServ.Eof do
    begin
      inc(nItem);

      VerificaItem;

      imp.Imprime(PreencheNumero(FormatFloat(',0.##', BancodeDados.NfsServQUANT.Value), 8) + Preenche('', 13) + Preenche(BancodeDados.NfsServDESCRICAO.Value,
        78) + '   ' + PreencheNumero(FormatFloat(',0.00', BancodeDados.NfsServVL_UNIT.Value), 16) + '    ' +
        PreencheNumero(FormatFloat(',0.00', BancodeDados.NfsServVL_TOTAL.Value), 18));

      BancodeDados.NfsServ.Next;
    end;

    if not BancodeDados.Boletos.IsEmpty then
    begin
      inc(nItem);

      VerificaItem;

      imp.Imprime(Preenche('', 21) + Preenche('OBS.: NF REFERENTE AO(S) SEGUINTE(S) TITULO(S)', 78) + '   ' + PreencheNumero('* * *', 16) + '    ' +
        PreencheNumero('* * *', 18));

      BancodeDados.Boletos.First;
    end;

    while (nItem < 17) do
    begin
      inc(nItem);

      VerificaItem;

      if not BancodeDados.Boletos.Eof then
      begin
        imp.Imprime(Preenche('', 27) + Preenche('COD.: ' + FormatFloat('000000', BancodeDados.BoletosBOLETO_ID.Value) + ' - ' + 'Vencimento: ' +
          FormatDateTime('dd/mm/yyyy', BancodeDados.BoletosVENCIMENTO.Value) { + ' - ' + BancodeDados.BoletosDESCRICAO.Value } , 72) + '   ' +
          PreencheNumero('* * *', 16) + '    ' + PreencheNumero('* * *', 18));
        BancodeDados.Boletos.Next;
      end
      else
      begin
        imp.Imprime(Preenche('', 102) + PreencheNumero('* * *', 16) + '    ' + PreencheNumero('* * *', 18));
      end;
    end;

    {
      imp.LinhaAtual:=27;
      imp.MicroSaltoOn(5);
      imp.Imprime(PreencheNumero(FormatFloat(',0.##', BancodeDados.NfsServQUANT.Value), 8) + Preenche('', 12) + Preenche(BancodeDados.NfsServDESCRICAO.Value, 79) + '   ' + PreencheNumero(FormatFloat(',0.00', BancodeDados.NfsServVL_UNIT.Value), 16) + '    ' + PreencheNumero(FormatFloat(',0.00', BancodeDados.NfsServVL_TOTAL.Value), 18));
      imp.LinhaAtual:=29;
      imp.Imprime(PreencheNumero(FormatFloat(',0.##', BancodeDados.NfsServQUANT.Value), 8) + Preenche('', 12) + Preenche(BancodeDados.NfsServDESCRICAO.Value, 79) + '   ' + PreencheNumero(FormatFloat(',0.00', BancodeDados.NfsServVL_UNIT.Value), 16) + '    ' + PreencheNumero(FormatFloat(',0.00', BancodeDados.NfsServVL_TOTAL.Value), 18));

      imp.LinhaAtual:=30;
      imp.MicroSaltoOn(5);
      imp.Imprime(Preenche('', 102) + PreencheNumero('* * *', 16) + '    ' + PreencheNumero('* * *', 18));

      imp.LinhaAtual:=32;
      imp.Imprime(Preenche('', 102) + PreencheNumero('* * *', 16) + '    ' + PreencheNumero('* * *', 18));

      imp.LinhaAtual:=34;
      imp.Imprime(Preenche('', 102) + PreencheNumero('* * *', 16) + '    ' + PreencheNumero('* * *', 18));
      imp.LinhaAtual:=36;
      imp.Imprime(Preenche('', 102) + PreencheNumero('* * *', 16) + '    ' + PreencheNumero('* * *', 18));

      imp.LinhaAtual:=37;
      imp.MicroSaltoOn(5);
      imp.Imprime(Preenche('', 102) + PreencheNumero('* * *', 16) + '    ' + PreencheNumero('* * *', 18));

      imp.LinhaAtual:=39;
      imp.Imprime(Preenche('', 102) + PreencheNumero('* * *', 16) + '    ' + PreencheNumero('* * *', 18));

      imp.LinhaAtual:=41;
      imp.Imprime(Preenche('', 102) + PreencheNumero('* * *', 16) + '    ' + PreencheNumero('* * *', 18));
      imp.LinhaAtual:=43;
      imp.Imprime(Preenche('', 102) + PreencheNumero('* * *', 16) + '    ' + PreencheNumero('* * *', 18));

      imp.LinhaAtual:=44;
      imp.MicroSaltoOn(5);
      imp.Imprime(Preenche('', 102) + PreencheNumero('* * *', 16) + '    ' + PreencheNumero('* * *', 18));

      imp.LinhaAtual:=46;
      imp.Imprime(Preenche('', 102) + PreencheNumero('* * *', 16) + '    ' + PreencheNumero('* * *', 18));

      imp.LinhaAtual:=48;
      imp.Imprime(Preenche('', 102) + PreencheNumero('* * *', 16) + '    ' + PreencheNumero('* * *', 18));

      imp.LinhaAtual:=49;
      imp.MicroSaltoOn(5);
      imp.Imprime(Preenche('', 102) + PreencheNumero('* * *', 16) + '    ' + PreencheNumero('* * *', 18));

      imp.LinhaAtual:=51;
      imp.Imprime(Preenche('', 102) + PreencheNumero('* * *', 16) + '    ' + PreencheNumero('* * *', 18));

      imp.LinhaAtual:=53;
      imp.Imprime(Preenche('', 102) + PreencheNumero('* * *', 16) + '    ' + PreencheNumero('* * *', 18));

      imp.LinhaAtual:=55;
      imp.Imprime(Preenche('', 102) + PreencheNumero('* * *', 16) + '    ' + PreencheNumero('* * *', 18));
    }

    imp.LinhaAtual := 58;
    imp.Imprime(PreencheNumero(FormatFloat(',0.00', BancodeDados.NfsPERC_ISS.Value), 50) + PreencheNumero(FormatFloat(',0.00',
      BancodeDados.NfsVL_TOTAL.Value), 88));

    imp.LinhaAtual := 60;
    imp.MicroSaltoOn(5);
    imp.Imprime(PreencheNumero(FormatFloat(',0.00', BancodeDados.NfsVL_ISS.Value), 50) + PreencheNumero(FormatFloat(',0.00',
      BancodeDados.NfsVL_TOTAL.Value), 88));

  finally
    imp.FinalizaImpressao;
    imp.Free;
    BancodeDados.Boletos.Close;
  end;
end;

procedure TPrincipalForm.ImprimeBoletos(IDsBoletos: String; usaTolerancia, papelCortado: Boolean);
var
  IDEmissao, Boletos_ID: String;
  Boletotmp: TSedBoletos;
  Desc_Exp_Dia  : integer;
  digitosGerados_campo3 : string;
  digitosGerados_campo4 : string;
begin
  if not Assigned(RelCarneCaixaForm) then  RelCarneCaixaForm := TRelCarneCaixaForm.Create(Application);
  try
    RelCarneCaixaForm.qryBoletos.Close;
    RelCarneCaixaForm.qryBoletos.SQL.text := PrincipalForm.SQLrepositorio(0) + ' and b.situacao_boleto= ' + QuotedStr('A RECEBER') + ' and b.cli_id=' +IntToStr(BancodeDados.ClientesCLI_ID.Value) + ' and b.boleto_id in (' + IDsBoletos + ') order by b.vencimento';
    RelCarneCaixaForm.qryBoletos.Open;

    if not BancodeDados.Config.active then BancodeDados.Config.open;  //eraldo em 19/10/17

    TipoBoletoInstrucoes  := BancodeDados.ConfigTIPO_BOLETO.Value; //0: Gerar descrições com base no vencimento e desconto (padrão) | 1: Personalizar as descrições por tipo de desconto |2 Tolerância para desconto dentro do mês de vencimento

    if RelCarneCaixaForm.qryBoletos.IsEmpty then
    begin
      Mensagem('Não foram encontrados boletos para serem impressos.', mtInformation, [mbOk], mrOk, 0);
    end
    else
    begin
      if not BancodeDados.FDConnection1.InTransaction then BancodeDados.FDConnection1.StartTransaction;

      digitosGerados_campo3 := '';
      digitosGerados_campo4 := '';
      RelCarneCaixaForm.qryBoletos.DisableControls;

      RelCarneCaixaForm.qryBoletos.First;
      while not RelCarneCaixaForm.qryBoletos.Eof do
      begin
      Desc_Exp_Dia := 0;

        // aqui...
        if (RelCarneCaixaForm.qryBoletosVALOR_INTEGRAL.Value > 0) then
        begin

          Boletos_ID := RelCarneCaixaForm.qryBoletosBOLETO_ID.AsString;

          RelCarneCaixaForm.QryBancos.Close;
          RelCarneCaixaForm.QryBancos.Params[0].Value := RelCarneCaixaForm.QryBoletosBANCO_ID.Value;
          RelCarneCaixaForm.QryBancos.Open;

          if not BancodeDados.Emissoes.Active then BancodeDados.Emissoes.Open;

          BancodeDados.Emissoes.Append;
          BancodeDados.EmissoesSEQ_NOSSO_NUM.Value := BancodeDados.Pega_SeqNossoNumero(RelCarneCaixaForm.QryBancosBANCO_ID.Value);
          BancodeDados.EmissoesBANCO_ID.Value := RelCarneCaixaForm.QryBancosBANCO_ID.Value;

          {
          usaTolerancia:=false;
          if (usaTolerancia = true) then
          begin
            if BancodeDados.ClientesDIAS_TOL.IsNull then
              BancodeDados.EmissoesDIAS_TOLERANCIA.Value := RelCarneCaixaForm.QryBancosDIAS_TOLERANCIA.Value
            else
              BancodeDados.EmissoesDIAS_TOLERANCIA.Value := BancodeDados.ClientesDIAS_TOL.Value;
          end
          else
          begin
            BancodeDados.EmissoesDIAS_TOLERANCIA.Value := 0;
          end;
          }


          if RelCarneCaixaForm.QryBancosDIAS_BAIXAR_BANCO.Value>0 then
          BancodeDados.EmissoesDIAS_BAIXAR_BANCO.Value := RelCarneCaixaForm.QryBancosDIAS_BAIXAR_BANCO.Value;

          if (RelCarneCaixaForm.qryBoletosDESCONTO.Value > 0) then
          begin  //eraldo em 19/10/17
             //if BancodeDados.ClientesDESC_TOL.Value>0 then
             //   Desc_Exp_Dia:=BancodeDados.ClientesDESC_TOL.Value
             //   else
             if RelCarneCaixaForm.QryBancosDESC_TOL.Value>0 then
                Desc_Exp_Dia:=RelCarneCaixaForm.QryBancosDESC_TOL.Value
                else
                  Desc_Exp_Dia:=0;
          end;

          BancodeDados.EmissoesGRADE_ID.Value := RelCarneCaixaForm.qryBoletosGRADE_ID.Value;
          BancodeDados.EmissoesCLI_ID.Value   := RelCarneCaixaForm.qryBoletosCLI_ID.Value;
          BancodeDados.EmissoesEMISSAO.Value  := RelCarneCaixaForm.qryBoletosEMISSAO.Value;
          BancodeDados.EmissoesVENCIMENTO.Value := RelCarneCaixaForm.qryBoletosVENCIMENTO.Value;
          BancodeDados.EmissoesPARCELA.Value  := RelCarneCaixaForm.qryBoletosPARCELA.Value;

          BancodeDados.EmissoesCODIGO_BANCO.Value := RelCarneCaixaForm.QryBancosCODIGO_BANCO.Value;

          BancodeDados.EmissoesDT_PROCES.Value := date;

          BancodeDados.EmissoesESPECIE.Value  := 'DM';
          BancodeDados.EmissoesACEITE.Value   := 'N';
          BancodeDados.EmissoesMOEDA.Value    := 'R$';


          // BancodeDados.EmissoesQTD_MOEDA.Value:=0;
          // BancodeDados.EmissoesVALOR_MOEDA.Value:=0;
          BancodeDados.EmissoesVALOR_DOC.Value := RelCarneCaixaForm.qryBoletosVALOR_INTEGRAL.Value;
          //BancodeDados.EmissoesDESCONTO.Value   := 0;
          if RelCarneCaixaForm.qryBoletosDESCONTO.Value>0 then
          BancodeDados.EmissoesDESCONTO.Value :=RelCarneCaixaForm.qryBoletosDESCONTO.Value;

          if Trim(IDEmissao) = '' then
            IDEmissao := BancodeDados.EmissoesEMISSAO_ID.AsString
          else
            IDEmissao := IDEmissao + ',' + BancodeDados.EmissoesEMISSAO_ID.AsString;

          BancodeDados.EmissoesOBS.AsString := BancodeDados.MontaMsgBoleto(RelCarneCaixaForm.qryBoletosOBS_BOLETO.AsString, RelCarneCaixaForm.qryBoletosGRADE_ID.Value, RelCarneCaixaForm.qryBoletosVALOR_INTEGRAL.Value, Desc_Exp_Dia);

          Boletotmp := TSedBoletos.Create;
          try

            // Atribuir Variáveis
            Boletotmp.SeqNossoNumero := BancodeDados.EmissoesSEQ_NOSSO_NUM.Value;
            Boletotmp.CodBanco := RelCarneCaixaForm.QryBancosCODIGO_BANCO.Value;
            Boletotmp.Moeda := '9';
            Boletotmp.Carteira := RelCarneCaixaForm.QryBancosCARTEIRA.AsString;
            Boletotmp.CodCedente := Copy(RelCarneCaixaForm.QryBancosCODIGO_CEDENTE.Value, 1, 15);
            Boletotmp.DvCodCedente := RelCarneCaixaForm.QryBancosDIG_COD_CEDENTE.Value;
            Boletotmp.Agencia := RelCarneCaixaForm.QryBancosAGENCIA.Value;
            Boletotmp.DVAgencia := RelCarneCaixaForm.QryBancosDIG_AGENCIA.Value;
            Boletotmp.Conta := RelCarneCaixaForm.QryBancosCONTA_CORRENTE.Value;
            Boletotmp.DVConta := RelCarneCaixaForm.QryBancosDIG_CONTA_CORRENTE.Value;
            Boletotmp.Convenio := RelCarneCaixaForm.QryBancosCONVENIO.AsString;
            Boletotmp.DataVencimento := BancodeDados.EmissoesVENCIMENTO.Value;
            Boletotmp.DiasTolerancia := BancodeDados.EmissoesDIAS_TOLERANCIA.Value;
            Boletotmp.Valor_Documento := BancodeDados.EmissoesVALOR_DOC.Value;
            Boletotmp.Seu_Numero := BancodeDados.EmissoesEMISSAO_ID.AsString;

            {
              Boletotmp.SeqNossoNumero     := 15055;
              Boletotmp.CodBanco           := 104;
              Boletotmp.Moeda              := '9';
              Boletotmp.Carteira           := '14';
              Boletotmp.CodCedente         := '073787000000060';
              Boletotmp.DvCodCedente       := RelCarneCaixaForm.QryBancosDIG_COD_CEDENTE.Value;
              Boletotmp.Agencia            := RelCarneCaixaForm.QryBancosAGENCIA.Value;
              Boletotmp.DVAgencia          := RelCarneCaixaForm.QryBancosDIG_AGENCIA.Value;
              Boletotmp.Conta              := RelCarneCaixaForm.QryBancosCONTA_CORRENTE.Value;
              Boletotmp.DVConta            := RelCarneCaixaForm.QryBancosDIG_CONTA_CORRENTE.Value;
              Boletotmp.Convenio           := RelCarneCaixaForm.QryBancosCONVENIO.AsString;
              Boletotmp.DataVencimento     := StrToDate('28/2/2006');
              Boletotmp.DiasTolerancia     := 10;
              Boletotmp.Valor_Documento    := 100;
              Boletotmp.Seu_Numero         := BancodeDados.EmissoesEMISSAO_ID.AsString;
            }


              homologacao:= (RelCarneCaixaForm.QryBancosHOMOLOGACAO.Value = 1);


              if homologacao then
              begin
                if RelCarneCaixaForm.qryBoletos.RecNo <= 10 then
                begin

                  //Mensagem('O Banco '+RelCarneCaixaForm.QryBancosBANCO_NOME.AsString + ' está configurado para Homologação!'+ #13 +'No máximo 10 Boletos serão gerados!'+#13+'Gerando Boleto '+ format('%0.2d',[RelCarneCaixaForm.qryBoletos.RecNo]) + ' / '+format('%0.2d',[RelCarneCaixaForm.qryBoletos.RecordCount]),
                  //mtInformation, [mbOk], mrOk, 0);
                 //digitosGerados := '012346';
                 //repeat

                  if BancodeDados.BancosCODIGO_BANCO.AsInteger = 104 then //Se for caixa (pois o dígito verificador é o 10º caractere do campo 3)
                  begin
                    repeat
                      BancodeDados.EmissoesSEQ_NOSSO_NUM.Value  := BancodeDados.Pega_SeqNossoNumero(RelCarneCaixaForm.QryBancosBANCO_ID.Value);
                      Boletotmp.SeqNossoNumero := BancodeDados.EmissoesSEQ_NOSSO_NUM.Value;//Boletotmp.SeqNossoNumero + 1;
                      Boletotmp.CalculaInformacoes;
                      Application.ProcessMessages;
                    until (
                      (pos(copy(Boletotmp.LinhaDigitavel,36,1),digitosGerados_campo3) = 0) and //Testa o 10º Digito do Campo 3
                      ((pos(copy(Boletotmp.LinhaDigitavel,39,1),digitosGerados_campo4) = 0) or (Length(digitosGerados_campo4)=9)) and //Testa o Campo 4
                      (copy(Boletotmp.LinhaDigitavel,39,1)<>'0')
                      );

                    digitosGerados_campo3 := digitosGerados_campo3 + copy(Boletotmp.LinhaDigitavel,36,1);

                  end else
                  begin
                    repeat
                      BancodeDados.EmissoesSEQ_NOSSO_NUM.Value  := BancodeDados.Pega_SeqNossoNumero(RelCarneCaixaForm.QryBancosBANCO_ID.Value);
                      Boletotmp.SeqNossoNumero := BancodeDados.EmissoesSEQ_NOSSO_NUM.Value;//Boletotmp.SeqNossoNumero + 1;
                      Boletotmp.CalculaInformacoes;
                      Application.ProcessMessages;
                    until (
                      (pos(copy(Boletotmp.LinhaDigitavel,37,1),digitosGerados_campo3) = 0) and //Testa o 10º Digito do Campo 3
                      ((pos(copy(Boletotmp.LinhaDigitavel,39,1),digitosGerados_campo4) = 0) or (Length(digitosGerados_campo4)=9)) and //Testa o Campo 4
                      (copy(Boletotmp.LinhaDigitavel,39,1)<>'0')
                      );

                    digitosGerados_campo3 := digitosGerados_campo3 + copy(Boletotmp.LinhaDigitavel,37,1);
                  end;


                  digitosGerados_campo4 := digitosGerados_campo4 + copy(Boletotmp.LinhaDigitavel,39,1);
                  Application.ProcessMessages;
                end else
                begin
                  Boletotmp.CalculaInformacoes;
                end
              end else
              begin
                Boletotmp.CalculaInformacoes;
              end;
            // Calcular
            //Boletotmp.CalculaInformacoes;
           //Fim da Atualização - Alex Eloy - 03/01/2017


{
              if homologacao then
                   begin

                     //digitosGerados := '012346';
                     //repeat
                     repeat
                       BancodeDados.EmissoesSEQ_NOSSO_NUM.Value := BancodeDados.Pega_SeqNossoNumero(RelCarneCaixaForm.QryBancosBANCO_ID.Value);
                       Boletotmp.SeqNossoNumero := BancodeDados.EmissoesSEQ_NOSSO_NUM.Value;
                       Boletotmp.CalculaInformacoes;
                       Boletos1Form.Label5.Caption := IntToStr(Boletotmp.SeqNossoNumero);
                       Boletos1Form.Label6.Caption := Boletotmp.LinhaDigitavel;
                       Application.ProcessMessages;
                     until (
                     (pos(copy(Boletotmp.LinhaDigitavel,37,1),digitosGerados_campo3) = 0) and
                     ((pos(copy(Boletotmp.LinhaDigitavel,39,1),digitosGerados_campo4) = 0) or (Length(digitosGerados_campo4)=9)) and
                     (copy(Boletotmp.LinhaDigitavel,39,1)<>'0')
                     );




                     digitosGerados_campo3 := digitosGerados_campo3 + copy(Boletotmp.LinhaDigitavel,37,1);
                     digitosGerados_campo4 := digitosGerados_campo4 + copy(Boletotmp.LinhaDigitavel,39,1);
                     Boletos1Form.Label1.Caption := digitosGerados_campo3;
                     Boletos1Form.Label3.Caption := digitosGerados_campo4;
                     Application.ProcessMessages;
                       //until
                     //((Length(digitosGerados_campo3) = 10) and
                      //(Length(digitosGerados_campo3) = 9)
                     //);
//                     (digitosGerados_campo3 + #13 + digitosGerados_campo4);
                   end else
                   begin
                     Boletotmp.CalculaInformacoes;
                   end;

}
            // Receber Valores
            BancodeDados.EmissoesNOSSO_NUMERO.Value := Boletotmp.NossoNumero;
            BancodeDados.EmissoesLINHA_DIG.Value    := Boletotmp.LinhaDigitavel;
            BancodeDados.EmissoesCOD_BARRAS.Value   := Boletotmp.CodigoBarras;

          finally
            Boletotmp.Free;
          end;

          if Trim(Boletos_ID) = '' then
            Boletos_ID := '0';
          BancodeDados.Adiciona.SQL.text := 'update boletos set emissao_id=' + IntToStr(BancodeDados.EmissoesEMISSAO_ID.Value) + ' where boleto_id in (' + Boletos_ID + ');';
          BancodeDados.Adiciona.ExecSQL;

          BancodeDados.EmissoesID_BOLETOS.Value := Boletos_ID;
          BancodeDados.Emissoes.Post;
        end else
        begin // valor>0

          Mensagem('O valor integral do título não foi informado.', mtInformation, [mbOk], mrOk, 0)

        end;
        RelCarneCaixaForm.qryBoletos.Next;
        Application.ProcessMessages;
      end;

      BancodeDados.FDConnection1.CommitRetaining;


      if Trim(IDEmissao)<>EmptyStr then
      begin

        BancodeDados.V_Boletos.Close;
        BancodeDados.V_Boletos.SQL.text := 'select * from v_boletos where emissao_id in (' + IDEmissao + ') order by cli_nome, vencimento';
        BancodeDados.V_Boletos.Open;


        if BancodeDados.V_Boletos.IsEmpty then
          Mensagem('Nenhuma emissão de boleto foi encontrada.', mtInformation, [mbOk], mrOk, 0)
        else
        begin
          if (papelCortado = false) then
            BancodeDados.PrepararRel(RelCarneCaixaForm.RLReport1)
          else
            BancodeDados.PrepararRel(RelCarneCaixaForm.RLReport3);
         end;

        // if Mensagem('Deseja imprimir a capa dos boletos?', mtConfirmation, [mbYes,mbNo], mrYes, 0)=idYes then begin
        // BancodeDados.PrepararRel(RelCarneCaixaForm.RLReport2);
        // end;
      end;
    end; // qryBoletos.IsEmpty

  finally
    RelCarneCaixaForm.Release;
    RelCarneCaixaForm := nil;
  end;
end;

procedure TPrincipalForm.Boletosemitidos1Click(Sender: TObject);
begin
  if not(usrID > 0) then
    Mensagem('É necessário efetuar login.', mtInformation, [mbOk], mrOk, 0)
  else
  begin
    if (usrNivel in [1, 2]) then
    begin
      try
        if not Assigned(CsBoletosEmitidosForm) then
          CsBoletosEmitidosForm := TCsBoletosEmitidosForm.Create(Application);
        CsBoletosEmitidosForm.ShowModal;
      finally
        CsBoletosEmitidosForm.Release;
        CsBoletosEmitidosForm := nil;
      end;
    end;
  end;
end;

procedure TPrincipalForm.BoletosEmitidos2Click(Sender: TObject);
begin
if not(usrID > 0) then
    Mensagem('É necessário efetuar login.', mtInformation, [mbOk], mrOk, 0)
  else
  begin
  if (usrNivel in  [2]) then begin
    if not Assigned(CsBoletosEmitidosForm) then
      CsBoletosEmitidosForm := TCsBoletosEmitidosForm.Create(Application);
    try
      CsBoletosEmitidosForm.ShowModal;
    finally
      CsBoletosEmitidosForm.Release;
      CsBoletosEmitidosForm := nil;
    end;
  end;
end;
end;

procedure TPrincipalForm.RastreioObjeto(codRastreio: String);
begin
  if (Trim(codRastreio) <> '') then
  begin
    if not Assigned(RastreioForm) then
      RastreioForm := TRastreioForm.Create(Application);
    try
      RastreioForm.WebBrowser1.Navigate('http://websro.correios.com.br/sro_bin/txect01$.QueryList?P_LINGUA=001&P_TIPO=001&P_COD_UNI=' + Trim(codRastreio));
      RastreioForm.ShowModal;
    finally
      RastreioForm.Release;
      RastreioForm := nil;
    end;
  end
  else
    Mensagem('Informe o código de rastreio.', mtInformation, [mbOk], mrOk, 0);
end;

procedure TPrincipalForm.Relaodeclientes1Click(Sender: TObject);
begin
  if not(usrID > 0) then
    Mensagem('É necessário efetuar login.', mtInformation, [mbOk], mrOk, 0)
  else
  begin
    try
      if not Assigned(IndicaClientesServicosForm) then
        IndicaClientesServicosForm := TIndicaClientesServicosForm.Create(Application);
      IndicaClientesServicosForm.ShowModal;
    finally
      IndicaClientesServicosForm.Release;
      IndicaClientesServicosForm := nil;
    end;
  end;
end;

procedure TPrincipalForm.Relatrios241Click(Sender: TObject);
begin
  if not(usrID > 0) then
    Mensagem('É necessário efetuar login.', mtInformation, [mbOk], mrOk, 0)
  else
  begin
      if (usrNivel in [1, 2]) then
      try
        if not Assigned(RelatoriosForm) then
          RelatoriosForm := TRelatoriosForm.Create(Application);
        RelatoriosForm.ShowModal;
      finally
        RelatoriosForm.Release;
        RelatoriosForm := nil;
      end;

  end;
end;

procedure TPrincipalForm.Fornecedores1Click(Sender: TObject);
begin
  if not(usrID > 0) then
    Mensagem('É necessário efetuar login.', mtInformation, [mbOk], mrOk, 0)
  else
  begin

    try
      if not Assigned(CsFornecedoresForm) then
        CsFornecedoresForm := TCsFornecedoresForm.Create(Application);
      CsFornecedoresForm.ShowModal;
    finally
      CsFornecedoresForm.Release;
      CsFornecedoresForm := nil;
    end;

  end;
end;

procedure TPrincipalForm.Pagar1Click(Sender: TObject);
begin
  if not(usrID > 0) then
    Mensagem('É necessário efetuar login.', mtInformation, [mbOk], mrOk, 0)
  else
  begin
    if (usrNivel in [1, 2]) then
    begin
      try
        if not Assigned(CsPagarForm) then
          CsPagarForm := TCsPagarForm.Create(Application);
        CsPagarForm.ShowModal;
      finally
        CsPagarForm.Release;
        CsPagarForm := nil;
      end;
    end;
  end;
end;

procedure TPrincipalForm.Parar1Click(Sender: TObject);
begin

  if (usrNivel in [1, 2]) then
  if ServicoAtivoNFSe then
  begin
    if Mensagem('Existe um processo de verificação de NFse. Deseja parar?',mtConfirmation,[mbYes,mbNo],mrNo,0)=idYes then
    begin
      myNFseCSTh.OnTerminate := nil;
      myNFseCSTh.Terminate();
      ServicoAtivoNFSe := FALSE;
      myNFseCSTh := nil;

      PrincipalForm.StatusBar1.Panels[3].Text := '';
      PrincipalForm.StatusBar1.Panels[4].Text := '';
      PrincipalForm.StatusBar1.Panels[5].Text := '';
    end;
  end;

end;

procedure TPrincipalForm.pnl_msgResize(Sender: TObject);
begin
pnl_msg.Left := PrincipalForm.Width - pnl_msg.Width;
end;

procedure TPrincipalForm.PopImagemChange(Sender: TObject; Source: TMenuItem;
  Rebuild: Boolean);
begin
//if (BancodeDados.ConfigLOGO3.IsNull)  then Imagem1.Caption:='Imagem' else  Imagem1.Caption:='Alterar';
if (usrID > 0) then
begin
  Imagem1.Visible       :=true;
  Limpar12.Visible      :=true;
  ServiodeNFSe1.Visible :=true;
end else
begin
  Imagem1.Visible       :=False;
  Limpar12.Visible      :=False;
  ServiodeNFSe1.Visible :=False;
end;


if ServicoAtivoNFSe and (usrNivel in [2]) then
begin
 Parar1.Visible   :=True;
 Iniciar1.Visible :=False;
end
else begin
 Parar1.Visible   :=False;
 Iniciar1.Visible :=true;
end;


end;

procedure TPrincipalForm.CalcularValorPagar;
var
  VInicial, VAcrescimo, VAcExtra, VDesconto, PJuros, PMulta, VPagar, VJuros, VMulta: Currency;
  QtdDias: Integer;
begin
  if (BancodeDados.PagarVALOR.Value > 0) { and (BancodeDados.PagarSITUACAO_PAGAR.Value='A PAGAR') } then
  begin
    if not(BancodeDados.Pagar.State in [dsedit, dsinsert]) then
      BancodeDados.Pagar.edit;

    VInicial := BancodeDados.PagarVALOR.Value;
    VAcrescimo := BancodeDados.PagarACRESCIMO.Value;
    VAcExtra := BancodeDados.PagarACRESCIMO_EXTRA.Value;
    VDesconto := BancodeDados.PagarDESCONTO.Value;
    PJuros := BancodeDados.PagarJUROS_DIA.Value;
    PMulta := BancodeDados.PagarMULTA.Value;
    // if (BancodeDados.PagarPAGAMENTO.Value)>(BancodeDados.PagarVENCIMENTO.Value) then begin
    QtdDias := BancodeDados.PagarQtdDias.Value;

    if QtdDias > 0 then
    begin
      VJuros := (QtdDias * PJuros);
      VMulta := (VInicial / 100) * (PMulta);
    end
    else
    begin
      VJuros := 0;
      VMulta := 0;
    end;
    VPagar := ((VInicial + VAcrescimo + VAcExtra + VMulta + VJuros) - (VDesconto));
    if VPagar > 0 then
      BancodeDados.PagarVALOR_APAGAR.Value := VPagar
    else
      BancodeDados.PagarVALOR_APAGAR.Value := 0;

  end;
end;

procedure TPrincipalForm.Processararquivoderetorno12Click(Sender: TObject);
begin
  if not(usrID > 0) then
    Mensagem('É necessário efetuar login.', mtInformation, [mbOk], mrOk, 0)
  else
  begin
    if (usrNivel in [1, 2]) then
    begin
      try
        if not Assigned(RetornoForm) then
          RetornoForm := TRetornoForm.Create(Application);
        RetornoForm.ShowModal;
      finally
        RetornoForm.Release;
        RetornoForm := nil;
      end;

      if listaCliSite.Count>0 then
      begin
       // if Mensagem('Deseja enviar as alterações para o servidor(web)?', mtConfirmation, [mbYes, mbNo], mrNo, 0) = idYes then

       // PrincipalForm.Atualizarlistadeclientesnosite1Click(Sender);
      end;


    end;
  end;
end;

procedure TPrincipalForm.qryDevCalcFields(DataSet: TDataSet);
begin
  qryContador.Close;
  qryContador.Params[0].Value:=qryDevCLI_ID.Value;
  qryContador.Params[1].Value:=Date;
  qryContador.Open;
  if qryContadorTOTAL.Value>0 then
    qryDevN_Titulos.Value:=qryContadorTOTAL.Value;
end;

procedure TPrincipalForm.ApplicationEvents1Message(var Msg: tagMSG; var Handled: Boolean);
var
  i: SmallInt;
begin
  if Msg.Message = WM_MOUSEWHEEL then
  begin
    Msg.Message := WM_KEYDOWN;
    Msg.lParam := 0;
    i := HiWord(Msg.wParam);
    if i > 0 then
      Msg.wParam := VK_PRIOR
    else
      Msg.wParam := VK_NEXT;
    Handled := false;
  end;
end;

procedure TPrincipalForm.Contatos1_offClick(Sender: TObject);
begin
  if not(usrID > 0) then
    Mensagem('É necessário efetuar login.', mtInformation, [mbOk], mrOk, 0)
  else
  begin

    if not Assigned(CsContatosForm) then
      CsContatosForm := tCsContatosForm.Create(Application);
    try
      CsContatosForm.ShowModal;
    finally
      CsContatosForm.Release;
      CsContatosForm := nil;
    end;

  end;
end;

procedure TPrincipalForm.DBGrid1DblClick(Sender: TObject);
begin
if not(usrID > 0) then
  Mensagem('É necessário efetuar login.', mtInformation, [mbOk], mrOk, 0)
else
begin
  if not Assigned(CadInformeForm) then
    CadInformeForm := TCadInformeForm.Create(Application);
  try
    CadInformeForm.ShowModal;
  finally
    CadInformeForm.Release;
    CadInformeForm := nil;
  end;
end;

end;

procedure TPrincipalForm.Documentos1Click(Sender: TObject);
begin
  if not(usrID > 0) then
    Mensagem('É necessário efetuar login.', mtInformation, [mbOk], mrOk, 0)
  else
  begin
    if not Assigned(CsDocumentosForm) then
      CsDocumentosForm := tCsDocumentosForm.Create(Application);
    try
      CsDocumentosForm.ShowModal;
    finally
      CsDocumentosForm.Release;
      CsDocumentosForm := nil;
    end;
  end;

end;

procedure TPrincipalForm.Editar1Click(Sender: TObject);
begin
  if not(usrID > 0) then
    Mensagem('É necessário efetuar login.', mtInformation, [mbOk], mrOk, 0)
  else
  begin
  if not Assigned(CadInformeForm) then
    CadInformeForm := TCadInformeForm.Create(Application);
  try
    CadInformeForm.ShowModal;
  finally
    CadInformeForm.Release;
    CadInformeForm := nil;
  end;
  end;
end;

procedure TPrincipalForm.Etiquetas1Click(Sender: TObject);
begin
  if not(usrID > 0) then
    Mensagem('É necessário efetuar login.', mtInformation, [mbOk], mrOk, 0)
  else
  begin
    try
      if not Assigned(IndicaEtiquetasForm) then
        IndicaEtiquetasForm := TIndicaEtiquetasForm.Create(Application);
      IndicaEtiquetasForm.ShowModal;
    finally
      IndicaEtiquetasForm.Release;
      IndicaEtiquetasForm := nil;
    end;
  end;
end;

procedure TPrincipalForm.CalContas;
begin
  BancodeDados.SomBoletos.Close;
  BancodeDados.SomBoletos.SQL.text := 'Select sum(VALOR_APAGAR) as TT_ARECEBER from boletos where situacao_boleto =' + QuotedStr('A RECEBER') +
    ' and VENCIMENTO < ' + QuotedStr(FormatDateTime('yyyy/mm/dd', Date));
  BancodeDados.SomBoletos.Open;
  if not BancodeDados.SomBoletos.IsEmpty then
    PrincipalForm.StatusBar1.Panels[0].text := 'Inadimplência: ' + FormatFloat(',0.00', BancodeDados.SomBoletosTT_ARECEBER.Value)
  else
    PrincipalForm.StatusBar1.Panels[0].text := 'Inadimplência: 0,00';

  BancodeDados.SomBoletos.Close;
  BancodeDados.SomBoletos.SQL.text := 'select sum(VALOR_APAGAR) as TT_ARECEBER from boletos where situacao_boleto =' + QuotedStr('A RECEBER') +
    ' and VENCIMENTO = ' + QuotedStr(FormatDateTime('yyyy/mm/dd', Date));
  BancodeDados.SomBoletos.Open;
  if not BancodeDados.SomBoletos.IsEmpty then
    PrincipalForm.StatusBar1.Panels[1].text := 'Receber Hoje: ' + FormatFloat(',0.00', BancodeDados.SomBoletosTT_ARECEBER.Value)
  else
    PrincipalForm.StatusBar1.Panels[1].text := 'Receber Hoje: 0,00';
  BancodeDados.SomBoletos.Close;

  BancodeDados.SomPagar.Close;
  BancodeDados.SomPagar.SQL.text := 'Select sum(VALOR_FALTA) as tt_pagar from v_pagar where situacao_pagar=' + QuotedStr('A PAGAR') + ' and VENCIMENTO <= ' +
    QuotedStr(FormatDateTime('yyyy/mm/dd', Date));
  BancodeDados.SomPagar.Open;
  if not BancodeDados.SomPagar.IsEmpty then
    PrincipalForm.StatusBar1.Panels[2].text := 'A Pagar Hoje: ' + FormatFloat(',0.00', BancodeDados.SomPagarTT_PAGAR.Value)
  else
    PrincipalForm.StatusBar1.Panels[2].text := 'A Pagar Hoje: 0,00';
  BancodeDados.SomPagar.Close;

end;

procedure TPrincipalForm.ConciliaoBancria1Click(Sender: TObject);
begin
if not(usrID > 0) then
    Mensagem('É necessário efetuar login.', mtInformation, [mbOk], mrOk, 0)
  else
  begin
  if (usrNivel in [1, 2]) then
  try
    if not Assigned(ImpExtratoForm) then
      ImpExtratoForm := TImpExtratoForm.Create(Application);
    ImpExtratoForm.ShowModal;
  finally
    ImpExtratoForm.Release;
    ImpExtratoForm := nil;
  end;
end;
end;


procedure TPrincipalForm.Configuraes1Click(Sender: TObject);
begin

  if not(usrID > 0) then
    Mensagem('É necessário efetuar login.', mtInformation, [mbOk], mrOk, 0)
  else
  begin




    if (usrNivel in [1, 2]) then
    begin
    if not Assigned(CsConfForm) then
      CsConfForm := tCsConfForm.Create(Application);
    try
      CsConfForm.ShowModal;
    finally
      CsConfForm.Release;
      CsConfForm := nil;
    end;
  end;


  end;
end;

procedure TPrincipalForm.ConfigurandooServidordeDados1Click(Sender: TObject);
begin
//if(usrID > 0) then
try
  if not Assigned(AlterandoServidorForm) then
    AlterandoServidorForm := TAlterandoServidorForm.Create(Application);
  AlterandoServidorForm.ShowModal;
finally
  AlterandoServidorForm.Release;
  AlterandoServidorForm := nil;
end;
end;

procedure TPrincipalForm.ConsultadeNotasFiscias12Click(Sender: TObject);
begin
  if not(usrID > 0) then
    Mensagem('É necessário efetuar login.', mtInformation, [mbOk], mrOk, 0)
  else
  begin

       if not Assigned(CsNfsForm) then  CsNfsForm := TCsNfsForm.Create(Application);

       try
         //AtivEventProcNFS:=True;
        CsNfsForm.ShowModal;
      finally
        CsNfsForm.Release;
        CsNfsForm := nil;
      end;
    //end;
  end;
end;



end.
