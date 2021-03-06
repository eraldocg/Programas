object AjusteBancoForm: TAjusteBancoForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Atualiza'#231#227'o de Banco de Dados'
  ClientHeight = 440
  ClientWidth = 1183
  Color = 7562340
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 852
    Height = 440
    ActivePage = TabFirebird
    Align = alLeft
    Style = tsButtons
    TabOrder = 0
    object TabFirebird: TTabSheet
      Caption = 'FireBird'
      object PageControl3: TPageControl
        Left = 0
        Top = 0
        Width = 844
        Height = 409
        ActivePage = TabSheet2
        Align = alClient
        Style = tsButtons
        TabOrder = 0
        object TabSheet2: TTabSheet
          Caption = 'Campos'
          object FBCampos: TMemo
            Left = 0
            Top = 0
            Width = 836
            Height = 378
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              '//Dependencias...'#167
              'drop view tcontas_caixa;'#167
              'drop view v_boletos;'#167
              'drop view v_boletos_remessa;'#167
              'drop view v_client_serv;'#167
              'drop table instituicao;'#167
              'drop view v_pagar;'
              ''
              ''
              '//Comandos...'#167
              'alter table pagar drop situacao_pagar;'#167
              'alter table pagar drop valor_pago;'#167
              'alter table pagar drop valor_falta;'#167
              ''
              ''
              '//sedLocacao...'#167
              'alter table boletos add c_s_c_id integer;'#167
              
                'update RDB$RELATION_FIELDS set RDB$NULL_FLAG = 1 where (RDB$FIEL' +
                'D_NAME = '#39'PLACA'#39') and (RDB$RELATION_NAME = '#39'VEICULOS'#39');'#167
              
                'update RDB$RELATION_FIELDS set RDB$NULL_FLAG = 1 where (RDB$FIEL' +
                'D_NAME = '#39'VEICULO_ID'#39') and (RDB$RELATION_NAME = '#39'CONT_SERV_CLIEN' +
                #39');'#167
              
                'update RDB$RELATION_FIELDS set RDB$FIELD_SOURCE = '#39'STRING60'#39' whe' +
                're (RDB$FIELD_NAME = '#39'ABREV'#39') and (RDB$RELATION_NAME = '#39'BANCOS'#39')' +
                ';'#167
              ''
              ''
              'alter table cont_serv_clien drop ativo;'#167
              'alter table cont_serv_clien drop servic_id;'#167
              'alter table cont_serv_clien add dt_cad timestamp;'#167
              'alter table cont_serv_clien add banco_id integer;'#167
              'alter table cont_serv_clien add dt_sit date;'#167
              'alter table cont_serv_clien add dias_tol integer;'#167
              'alter table cont_serv_clien add dt_contrato_fim date;'#167
              'alter table cont_serv_clien add sit integer;'#167
              'alter table cont_serv_clien add veiculo_id integer;'#167
              'alter table cont_serv_clien drop vl_mensal;'#167
              'alter table cont_serv_clien drop vl_instalar;'#167
              'alter table cont_serv_clien drop forne_perc;'#167
              'alter table cont_serv_clien add valor money;'#167
              'alter table cont_serv_clien add grade_id integer;'#167
              ''
              'alter table clientes add cnh_n_reg varchar(20);'#167
              'alter table clientes add cnh_dt_1_hab date;'#167
              'alter table clientes add cnh_renach varchar(11);'#167
              'alter table clientes add cnh_dt_validade date;'#167
              ''
              'alter table config add cnh_n_reg varchar(20);'#167
              'alter table config add cnh_dt_1_hab date;'#167
              'alter table config add cnh_renach varchar(11);'#167
              'alter table config add cnh_dt_validade date;'#167
              ''
              'alter table config add vl_mult_contratual money;'#167
              'alter table config add valor money;'#167
              'alter table veiculos add vl_franq_seguro money;'#167
              'alter table veiculos add ano_fab integer;'#167
              'alter table veiculos add ano_modelo integer;'#167
              'alter table veiculos add placa_anterior varchar(20);'#167
              ''
              'alter table config add nascimento date;'#167
              'alter table config add sexo varchar(1);'#167
              'alter table config add nacionalidade varchar(20);'#167
              'alter table config add uf_natural varchar(20);'#167
              'alter table config add naturalidade varchar(60);'#167
              'alter table config add est_civil varchar(20);'#167
              'alter table config add profissao varchar(60);'#167
              'alter table config add contato varchar(60);'#167
              
                'update config set nacionalidade ='#39'76'#39' where nacionalidade is nul' +
                'l;'#167
              'alter table config add rg varchar(16);'#167
              'alter table config add rg_data date;'#167
              'alter table config add rg_org_id integer;'#167
              'alter table config add rg_uf varchar(20);'#167
              'alter table config add passaporte varchar(20);'#167
              'alter table config add celular_1 varchar(16);'#167
              'alter table config add chave_pix varchar(60);'#167
              'alter table bancos add chave_pix varchar(60);'#167
              ''
              ''
              'alter table clientes drop fantasia;'#167
              'alter table clientes drop cidade_antiga;'#167
              'alter table clientes drop dia_venc;'#167
              'alter table clientes drop dias_tol;'#167
              'alter table clientes drop diretor;'#167
              'alter table clientes drop direto_cpf;'#167
              'alter table clientes drop bkp;'#167
              'alter table clientes drop bkp_usuario;'#167
              'alter table clientes drop bkp_dt;'#167
              'alter table clientes drop desc_tol;'#167
              'alter table clientes drop dt_exp;'#167
              'alter table clientes drop sit_exp;'#167
              ''
              'alter table clientes add nascimento date;'#167
              'alter table clientes add sexo varchar(1);'#167
              'alter table clientes add nacionalidade varchar(20);'#167
              'alter table clientes add uf_natural varchar(20);'#167
              'alter table clientes add naturalidade varchar(60);'#167
              'alter table clientes add est_civil varchar(20);'#167
              'alter table clientes add profissao varchar(60);'#167
              'alter table clientes add contato varchar(60);'#167
              
                'update clientes set nacionalidade ='#39'76'#39' where nacionalidade is n' +
                'ull;'#167
              'alter table clientes add rg varchar(16);'#167
              'alter table clientes add rg_data date;'#167
              'alter table clientes add rg_org_id integer;'#167
              'alter table clientes add rg_uf varchar(20);'#167
              'alter table clientes add passaporte varchar(20);'#167
              'alter table veiculos add c_s_c_id integer;'#167
              ''
              ''
              'create table veiculos ('
              '    veiculo_id  intobrig not null,'
              '    placa  varchar(20),'
              '    marca  varchar(60),'
              '    modelo  varchar(60),'
              '    ano    integer,'
              '    cor    varchar(60),'
              '    renavam    varchar(60),'
              '    sit     integer,'
              '    conf_id     integer,'
              '    doc_id      integer,'
              '    dt_cad     date,'
              '    c_s_c_id   integer,'
              '    obs          varchar(240),'
              'primary key (veiculo_id)'
              ');'#167
              '//Generators...'#167
              'create generator gen_veiculo_cod;'#167
              ''
              'create table orgao_exped ('
              '    org_id       intobrig not null,'
              '    org_exped    varchar(60),'
              '    org_inep_id  intobrig,'
              '    primary key (org_id)'
              ');'#167
              ''
              'INSERT INTO ORGAO_EXPED (ORG_ID, ORG_EXPED, ORG_INEP_ID)'
              '                 VALUES (10, '#39'SSP'#39', 10);'#167
              'INSERT INTO ORGAO_EXPED (ORG_ID, ORG_EXPED, ORG_INEP_ID)'
              '                 VALUES (40, '#39'Minist'#233'rios Militares'#39', 40);'#167
              'INSERT INTO ORGAO_EXPED (ORG_ID, ORG_EXPED, ORG_INEP_ID)'
              '                 VALUES (41, '#39'Minist'#233'rio da Aeron'#225'utica'#39', 41);'#167
              'INSERT INTO ORGAO_EXPED (ORG_ID, ORG_EXPED, ORG_INEP_ID)'
              '                 VALUES (42, '#39'Minist'#233'rio do Ex'#233'rcito'#39', 42);'#167
              'INSERT INTO ORGAO_EXPED (ORG_ID, ORG_EXPED, ORG_INEP_ID)'
              '                 VALUES (43, '#39'Minist'#233'rio da Marinha'#39', 43);'#167
              'INSERT INTO ORGAO_EXPED (ORG_ID, ORG_EXPED, ORG_INEP_ID)'
              '                 VALUES (44, '#39'Pol'#237'cia Federal'#39', 44);'#167
              'INSERT INTO ORGAO_EXPED (ORG_ID, ORG_EXPED, ORG_INEP_ID)'
              '                 VALUES (60, '#39#211'rg'#227'os Classistas'#39', 60);'#167
              'INSERT INTO ORGAO_EXPED (ORG_ID, ORG_EXPED, ORG_INEP_ID)'
              
                '                 VALUES (61, '#39'Conselho Regional de Administra'#231#227'o' +
                #39', 61);'#167
              'INSERT INTO ORGAO_EXPED (ORG_ID, ORG_EXPED, ORG_INEP_ID)'
              
                '                 VALUES (62, '#39'Conselho Regional de Assist. Socia' +
                'l'#39', 62);'#167
              'INSERT INTO ORGAO_EXPED (ORG_ID, ORG_EXPED, ORG_INEP_ID)'
              
                '                 VALUES (63, '#39'Conselho Regional de Biblioteconom' +
                'ia'#39', 63);'#167
              'INSERT INTO ORGAO_EXPED (ORG_ID, ORG_EXPED, ORG_INEP_ID)'
              
                '                 VALUES (64, '#39'Conselho Regional de Contabilidade' +
                #39', 64);'#167
              'INSERT INTO ORGAO_EXPED (ORG_ID, ORG_EXPED, ORG_INEP_ID)'
              
                '                 VALUES (65, '#39'Conselho Regional de Corretores Im' +
                #243'veis'#39', 65);'#167
              'INSERT INTO ORGAO_EXPED (ORG_ID, ORG_EXPED, ORG_INEP_ID)'
              '                 VALUES (83, '#39'Conselho Regional Economia'#39', 83);'#167
              'INSERT INTO ORGAO_EXPED (ORG_ID, ORG_EXPED, ORG_INEP_ID)'
              
                '                 VALUES (66, '#39'Conselho Regional de Enfermagem'#39', ' +
                '66);'#167
              'INSERT INTO ORGAO_EXPED (ORG_ID, ORG_EXPED, ORG_INEP_ID)'
              
                '                 VALUES (67, '#39'Conselho Regional de Engenharia, A' +
                'rquitetura e Agronomia'#39', 67);'#167
              'INSERT INTO ORGAO_EXPED (ORG_ID, ORG_EXPED, ORG_INEP_ID)'
              
                '                 VALUES (68, '#39'Conselho Regional de Estat'#237'stica'#39',' +
                ' 68);'#167
              'INSERT INTO ORGAO_EXPED (ORG_ID, ORG_EXPED, ORG_INEP_ID)'
              
                '                 VALUES (69, '#39'Conselho Regional de Farm'#225'cia'#39', 69' +
                ');'#167
              'INSERT INTO ORGAO_EXPED (ORG_ID, ORG_EXPED, ORG_INEP_ID)'
              
                '                 VALUES (70, '#39'Conselho Regional de Fisioterapia ' +
                'e Terapia Ocupacional'#39', 70);'#167
              'INSERT INTO ORGAO_EXPED (ORG_ID, ORG_EXPED, ORG_INEP_ID)'
              
                '                 VALUES (71, '#39'Conselho Regional de Medicina'#39', 71' +
                ');'#167
              'INSERT INTO ORGAO_EXPED (ORG_ID, ORG_EXPED, ORG_INEP_ID)'
              
                '                 VALUES (72, '#39'Conselho Regional de Medicina Vete' +
                'rin'#225'ria'#39', 72);'#167
              'INSERT INTO ORGAO_EXPED (ORG_ID, ORG_EXPED, ORG_INEP_ID)'
              
                '                 VALUES (73, '#39'Ordem dos M'#250'sicos do Brasil'#39', 73);' +
                #167
              'INSERT INTO ORGAO_EXPED (ORG_ID, ORG_EXPED, ORG_INEP_ID)'
              
                '                 VALUES (74, '#39'Conselho Regional de Nutri'#231#227'o'#39', 74' +
                ');'#167
              'INSERT INTO ORGAO_EXPED (ORG_ID, ORG_EXPED, ORG_INEP_ID)'
              
                '                 VALUES (75, '#39'Conselho Regional de Odontologia'#39',' +
                ' 75);'#167
              'INSERT INTO ORGAO_EXPED (ORG_ID, ORG_EXPED, ORG_INEP_ID)'
              
                '                 VALUES (76, '#39'Conselho Regional de Profissionais' +
                ' de Rela'#231#245'es P'#250'blicas'#39', 76);'#167
              'INSERT INTO ORGAO_EXPED (ORG_ID, ORG_EXPED, ORG_INEP_ID)'
              
                '                 VALUES (77, '#39'Conselho Regional de Psicologia'#39', ' +
                '77);'#167
              'INSERT INTO ORGAO_EXPED (ORG_ID, ORG_EXPED, ORG_INEP_ID)'
              
                '                 VALUES (78, '#39'Conselho Regional de Qu'#237'mica'#39', 78)' +
                ';'#167
              'INSERT INTO ORGAO_EXPED (ORG_ID, ORG_EXPED, ORG_INEP_ID)'
              
                '                 VALUES (79, '#39'Conselho Regional de Representante' +
                's Comerciais'#39', 79);'#167
              'INSERT INTO ORGAO_EXPED (ORG_ID, ORG_EXPED, ORG_INEP_ID)'
              
                '                 VALUES (80, '#39'Ordem dos Advogados do Brasil'#39', 80' +
                ');'#167
              'INSERT INTO ORGAO_EXPED (ORG_ID, ORG_EXPED, ORG_INEP_ID)'
              '                 VALUES (81, '#39'Outros Emissores'#39', 81);'#167
              'INSERT INTO ORGAO_EXPED (ORG_ID, ORG_EXPED, ORG_INEP_ID)'
              '                 VALUES (82, '#39'Documento Estrangeiro'#39', 82);'#167
              'INSERT INTO ORGAO_EXPED (ORG_ID, ORG_EXPED, ORG_INEP_ID)'
              '                 VALUES (1000, '#39'SSDS'#39', 81);'#167
              ''
              ''
              '//AQUIi_sedLocacao...'#167
              ''
              ''
              ''
              'alter table config drop cidade_nome;'#167
              'alter table retorno drop dias_tolerancia;'#167
              'alter table clientes drop cidade_nome;'#167
              'alter table clientes drop uf_nome;'#167
              'alter table clientes drop n_titulos;'#167
              'alter table boletos drop valor_integral;'#167
              'alter table boletos drop cliente;'#167
              'alter table config add import_bc_fb smallint;'#167
              'alter table config add nfse_seq_num integer;'#167
              
                'update RDB$RELATION_FIELDS set RDB$FIELD_SOURCE = '#39'INTEIRO'#39' wher' +
                'e (RDB$FIELD_NAME = '#39'REMESSA_ID'#39') and (RDB$RELATION_NAME = '#39'BOLE' +
                'TOS'#39');'#167
              
                'update RDB$RELATION_FIELDS set RDB$FIELD_SOURCE = '#39'STRING20'#39' whe' +
                're (RDB$FIELD_NAME = '#39'SITUACAO_BOLETO'#39') and (RDB$RELATION_NAME =' +
                ' '#39'BOLETOS_EMISSAO'#39');'#167
              
                'update RDB$RELATION_FIELDS set RDB$FIELD_SOURCE = '#39'INTEIRO'#39' wher' +
                'e (RDB$FIELD_NAME = '#39'CODIGO_BANCO'#39') and (RDB$RELATION_NAME = '#39'BO' +
                'LETOS_EMISSAO'#39');'#167
              
                'update RDB$RELATION_FIELDS set RDB$FIELD_SOURCE = '#39'DATA'#39' where (' +
                'RDB$FIELD_NAME = '#39'DATA_RECEBIMENTO'#39') and (RDB$RELATION_NAME = '#39'B' +
                'OLETOS_EMISSAO'#39');'#167
              'alter table boletos_emissao add data_recebimento date;'#167
              'alter table boletos_emissao add situacao_boleto string20;'#167
              'alter table boletos_emissao add codigo_banco integer;'#167
              ''
              'alter table boletos add remessa_id integer;'#167
              
                'update boletos set remessa_id=(select distinct remessa from bole' +
                'tos_emissao where emissao_id=boletos.emissao_id) where (boletos.' +
                'emissao_id is null);'#167
              ''
              
                'update boletos_emissao set situacao_boleto=(select distinct situ' +
                'acao_boleto from boletos where boletos.emissao_id=boletos_emissa' +
                'o.emissao_id and boletos.situacao_boleto='#39'RECEBIDO'#39') where bolet' +
                'os_emissao.situacao_boleto is null;'#167
              
                'update boletos_emissao set situacao_boleto=(select distinct situ' +
                'acao_boleto from boletos where boletos.emissao_id=boletos_emissa' +
                'o.emissao_id and boletos.situacao_boleto='#39'A RECEBER'#39') where bole' +
                'tos_emissao.situacao_boleto is null;'#167
              
                'update boletos_emissao set situacao_boleto= '#39'A RECEBER'#39' where si' +
                'tuacao_boleto is null;'#167
              
                'update boletos_emissao set situacao_boleto='#39'CANCELADO'#39' where coa' +
                'lesce(boletos_emissao.cancelado,0)=1 and (boletos_emissao.situac' +
                'ao_boleto is null);'#167
              ''
              
                'update boletos_emissao set data_recebimento=(select distinct rec' +
                'ebimento from boletos where emissao_id=boletos_emissao.emissao_i' +
                'd) where boletos_emissao.data_recebimento is null;'#167
              
                'update boletos_emissao set situacao_boleto=(select distinct situ' +
                'acao_boleto from boletos where boletos.emissao_id=boletos_emissa' +
                'o.emissao_id and not boletos.recebimento is null) where boletos_' +
                'emissao.situacao_boleto is null;'#167
              
                'update boletos_emissao set codigo_banco=(select distinct codigo_' +
                'banco from bancos where bancos.banco_id=boletos_emissao.banco_id' +
                ') where boletos_emissao.codigo_banco is null;'#167
              ''
              ''
              'alter table livro_caixa drop saldo;'#167
              'alter table livro_caixa drop pagar_desc;'#167
              '//Tabelas...'#167
              ''
              ''
              ''
              ''
              ''
              '//Views...'#167
              'create view v_pagar('
              'pagar_id,'
              'forne_id,'
              'fornecedor,'
              'cnpj,'
              'valor,'
              'vencimento,'
              'pagamento,'
              'parcela,'
              'situacao_pagar,'
              'valor_pago,'
              'valor_falta'
              ')'
              'as'
              'select'
              
                'p.pagar_id, f.forne_id, f.nome as fornecedor, f.cnpj, p.valor, p' +
                '.vencimento, p.pagamento, p.parcela,'
              
                '(case when coalesce(( select sum(coalesce(l.entrada,0)-coalesce(' +
                'l.saida,0)) * (-1) from livro_caixa l where pagar_id=p.pagar_id)' +
                ',0) >=  coalesce(p.valor_apagar,0)  then'
              ' '#39'PAGO'#39' else '#39'A PAGAR'#39' end) as situacao_pagar,'
              
                '(select sum(coalesce(l.entrada,0)-coalesce(l.saida,0)) * (-1) fr' +
                'om livro_caixa l where pagar_id=p.pagar_id) as valor_pago,'
              
                '(case when coalesce(p.valor_apagar,0)>=(select sum(coalesce(l.en' +
                'trada,0)-coalesce(l.saida,0)) * (-1) from livro_caixa l where pa' +
                'gar_id=p.pagar_id) then'
              
                'coalesce(p.valor_apagar,0) - (select sum(coalesce(l.entrada,0)-c' +
                'oalesce(l.saida,0)) * (-1) from livro_caixa l where pagar_id=p.p' +
                'agar_id) else 0 end) as valor_falta'
              'from pagar p'
              'left outer join livro_caixa l on l.pagar_id = p.pagar_id'
              'left outer join fornecedores f on f.forne_id = p.forne_id;'#167
              ''
              ''
              'create view tcontas_caixa('
              '    caixa_id,'
              '    descricao,'
              '    entrada,'
              '    saida,'
              '    data,'
              '    saldo,'
              '    situacao,'
              '    dt_cancelada,'
              '    boleto_id,'
              '    pagar_id,'
              '    conta_id,'
              '    cheque_id,'
              '    inst_id,'
              '    descricao_pago,'
              '    documento,'
              '    dt_lancado,'
              '    usuario_id,'
              '    conta,'
              '    observacao,'
              '    referencia)'
              'as'
              'select'
              
                '    l.caixa_id, l.descricao, l.entrada, l.saida, l.data, coalesc' +
                'e(l.entrada,0)-coalesce(l.saida,0) as saldo, l.situacao, l.dt_ca' +
                'ncelada,'
              
                '    l.boleto_id, l.pagar_id, l.conta_id, l.cheque_id, l.inst_id,' +
                ' l.descricao_pago,'
              '    l.documento, l.dt_lancado, l.usuario_id, t.conta,'
              '    t.observacao, t.referencia'
              
                'from livro_caixa l left outer join tipo_contas t on l.conta_id =' +
                ' t.conta_id;'#167
              ''
              ''
              'create view v_boletos('
              '    emissao_id,'
              '    banco_id,'
              '    cod_banco,'
              '    dig_banco,'
              '    agencia,'
              '    dig_agencia,'
              '    conta_corrente,'
              '    dig_conta_corrente,'
              '    convenio,'
              '    logomarca,'
              '    local_pagamento,'
              '    nome_cedente,'
              '    carteira,'
              '    cod_cedente,'
              '    dig_cod_cedente,'
              '    dias_tolerancia,'
              '    cob_reg,'
              '    cli_id,'
              '    cli_nome,'
              '    grade_id,'
              '    situacao_boleto,'
              '    emissao,'
              '    vencimento,'
              '    especie,'
              '    aceite,'
              '    moeda,'
              '    qtd_moeda,'
              '    valor_moeda,'
              '    seq_nosso_num,'
              '    nosso_numero,'
              '    cod_mov,'
              '    loja_id,'
              '    dias_baixar_banco,'
              '    valor_doc,'
              '    desconto,'
              '    cod_barras,'
              '    linha_dig,'
              '    data_recebimento,'
              '    valor_recebido,'
              '    parcela,'
              '    retorno_id,'
              '    remessa,'
              '    obs,'
              '    cancelado,'
              '    dt_proces,'
              '    forne_id,'
              '    logradouro,'
              '    bairro,'
              '    cidade,'
              '    estado,'
              '    cep,'
              '    cli_debito_auto,'
              '    cli_cnpj_cpf,'
              '    cli_banco_id,'
              '    cli_banc_agencia,'
              '    cli_banc_conta,'
              '    cli_banc_operacao,'
              '    cli_banc_acatamento)'
              'as  select a.emissao_id,'
              
                'a.banco_id, b.codigo_banco, b.dig_banco, b.agencia, b.dig_agenci' +
                'a, b.conta_corrente, b.dig_conta_corrente, b.convenio,b.logomarc' +
                'a, b.local_pagamento,'
              
                'b.nome_cedente, b.carteira, b.codigo_cedente, b.dig_cod_cedente,' +
                ' b.dias_tolerancia, b.cob_reg, a.cli_id, c.nome, a.grade_id,'
              
                'coalesce(a.situacao_boleto,'#39'A RECEBER'#39'), a.emissao,a.vencimento,' +
                'a.especie,a.aceite,a.moeda,a.qtd_moeda,a.valor_moeda,a.seq_nosso' +
                '_num,a.nosso_numero, a.cod_mov, '
              
                'a.loja_id, a.dias_baixar_banco, a.valor_doc, a.desconto,a.cod_ba' +
                'rras,a.linha_dig,a.data_recebimento,a.valor_recebido, a.parcela,' +
                ' a.retorno_id, a.remessa, a.obs, a.cancelado,'
              
                'a.dt_proces, a.forne_id, c.logradouro, c.bairro, c.cidade, c.est' +
                'ado, c.cep, c.debito_auto, c.cnpj, c.banco_id, c.banc_agencia, c' +
                '.banc_conta, c.banc_operacao, c.banc_acatamento'
              'from boletos_emissao a'
              'left outer'
              'join bancos b on (a.banco_id = b.banco_id)'
              'join clientes c on (a.cli_id = c.cli_id);'#167
              ''
              ''
              'create view v_boletos_remessa('
              '    emissao_id,'
              '    banco_id,'
              '    cod_banco,'
              '    dig_banco,'
              '    agencia,'
              '    dig_agencia,'
              '    conta_corrente,'
              '    dig_conta_corrente,'
              '    convenio,'
              '    logomarca,'
              '    local_pagamento,'
              '    nome_cedente,'
              '    carteira,'
              '    cod_cedente,'
              '    dig_cod_cedente,'
              '    dias_tolerancia,'
              '    cob_reg,'
              '    cli_id,'
              '    cli_nome,'
              '    grade_id,'
              '    situacao_boleto,'
              '    emissao,'
              '    vencimento,'
              '    especie,'
              '    aceite,'
              '    moeda,'
              '    qtd_moeda,'
              '    valor_moeda,'
              '    seq_nosso_num,'
              '    nosso_numero,'
              '    cod_mov,'
              '    loja_id,'
              '    dias_baixar_banco,'
              '    valor_doc,'
              '    desconto,'
              '    cod_barras,'
              '    linha_dig,'
              '    data_recebimento,'
              '    valor_recebido,'
              '    parcela,'
              '    retorno_id,'
              '    remessa,'
              '    obs,'
              '    cancelado,'
              '    dt_proces,'
              '    forne_id,'
              '    logradouro,'
              '    bairro,'
              '    cidade,'
              '    estado,'
              '    cep,'
              '    cli_debito_auto,'
              '    cli_cnpj_cpf,'
              '    cli_banco_id,'
              '    cli_banc_agencia,'
              '    cli_banc_conta,'
              '    cli_banc_operacao,'
              '    cli_banc_acatamento,'
              '    cli_cep,'
              '    cod_mov_rem,'
              '    tipo_ocorrencia,'
              '    alt_via_banco)'
              'as'
              'select a.emissao_id,'
              
                'a.banco_id, b.codigo_banco, b.dig_banco, b.agencia, b.dig_agenci' +
                'a, b.conta_corrente, b.dig_conta_corrente, b.convenio, b.logomar' +
                'ca, '
              
                'b.local_pagamento, b.nome_cedente, b.carteira, b.codigo_cedente,' +
                ' b.dig_cod_cedente, b.dias_tolerancia, b.cob_reg, a.cli_id, c.no' +
                'me, a.grade_id,'
              
                'coalesce(a.situacao_boleto,'#39'A RECEBER'#39'), a.emissao,a.vencimento,' +
                'a.especie,a.aceite,a.moeda,a.qtd_moeda,a.valor_moeda,a.seq_nosso' +
                '_num,a.nosso_numero, a.cod_mov, '
              'a.loja_id, a.dias_baixar_banco,'
              
                'a.valor_doc,a.desconto,a.cod_barras,a.linha_dig,a.data_recebimen' +
                'to,a.valor_recebido, a.parcela, a.retorno_id, a.remessa, a.obs, ' +
                'a.cancelado, '
              'a.dt_proces, a.forne_id,'
              
                'c.logradouro, c.bairro, c.cidade, c.estado, c.cep, c.debito_auto' +
                ', c.cnpj, c.banco_id, c.banc_agencia, c.banc_conta, c.banc_opera' +
                'cao, '
              'c.banc_acatamento, c.cep,'
              'ro.cod_mov_rem, ro.tipo_ocorrencia, a.alt_via_banco'
              'from boletos_emissao a '
              'left outer join bancos b on (a.banco_id = b.banco_id)'
              'left join clientes c on (a.cli_id = c.cli_id)'
              
                'left join remessa_ocorrencia ro on (ro.emissao_id = a.emissao_id' +
                ');'#167
              ''
              ''
              'create view v_client_serv('
              '    cli_id,'
              '    nome,'
              '    cnpj,'
              '    tipo,'
              '    logradouro,'
              '    numero,'
              '    bairro,'
              '    cidade,'
              '    estado,'
              '    cep,'
              '    fone1,'
              '    fone2,'
              '    obs,'
              '    nascimento,'
              '    sexo,'
              '    nacionalidade,'
              '    uf_natural,'
              '    naturalidade,'
              '    est_civil,'
              '    profissao,'
              '    contato,'
              '    rg,'
              '    rg_data,'
              '    rg_org_id,'
              '    rg_uf,'
              '    passaporte,'
              '    cnh_n_reg, cnh_dt_1_hab, cnh_renach, cnh_dt_validade,'
              '    dia_venc,'
              '    dias_tol,'
              '    obs_contrato,'
              '    confiavel,'
              '    entregue_bol,'
              '    skype1,'
              '    email_contato1,'
              '    fat_nota,'
              '    sit,'
              '    cod_rastreio,'
              '    email_contato2,'
              '    imp_bol,'
              '    c_s_c_id,'
              '    dt_alt_vl,'
              '    forne_id,'
              '    valor,'
              '    grade_id,'
              '    venc_dia,'
              '    dt_contrato,'
              '    dt_contrato_fim,'
              '    banco_id,'
              '    veiculo_id,'
              '    placa,'
              '    marca,'
              '    modelo,'
              '    ano_fab,'
              '    ano_modelo,'
              '    cor,'
              '    renavam,'
              '    conf_id,'
              '    contrato_id,'
              '    vl_franq_seguro,'
              '    obs_veiculo'
              '    )'
              'as'
              'select'
              
                'c.cli_id, c.nome as nome_cliente, c.cnpj, c.tipo, c.logradouro, ' +
                ' c.numero,c.bairro, c.cidade,  c.estado, c.cep, c.fone1, c.fone2' +
                ', c.obs,'
              
                'c.nascimento, c.sexo, c.nacionalidade,  c.uf_natural, c.naturali' +
                'dade, c.est_civil, c.profissao, c.contato,  c.rg,  c.rg_data,  c' +
                '.rg_org_id, c.rg_uf,  c.passaporte,'
              'c.cnh_n_reg, c.cnh_dt_1_hab, c.cnh_renach, c.cnh_dt_validade, '
              
                's.venc_dia,s.dias_tol, s.obs as obs_contrato, c.confiavel, c.ent' +
                'regue_bol, c.skype1, c.email_contato1, c.fat_nota, c.sit as sit_' +
                'cliente, c.cod_rastreio, c.email_contato2, c.imp_bol,'
              
                's.c_s_c_id, s.dt_alt_vl, s.forne_id, s.valor, s.grade_id, s.venc' +
                '_dia, s.dt_contrato, s.dt_contrato_fim, s.banco_id, v.veiculo_id' +
                ', v.placa, v.marca, v.modelo, v.ano_fab,  v.ano_modelo, v.cor, v' +
                '.renavam,'
              
                'v.conf_id, v.doc_id as contrato_id, v.vl_franq_seguro, v.obs as ' +
                'obs_veiculo'
              'from clientes c left outer'
              'join cont_serv_clien s on (s.cli_id=c.cli_id)'
              'join veiculos v on (s.veiculo_id=v.veiculo_id);'#167
              ''
              ''
              ''
              '//Procedure...'#167
              ''
              ''
              '//Indices...'#167)
            ParentFont = False
            ScrollBars = ssBoth
            TabOrder = 0
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'Comandos'
          ImageIndex = 1
          object FBComandos: TMemo
            Left = 0
            Top = 0
            Width = 836
            Height = 378
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = []
            Lines.Strings = (
              
                'update config set import_bc_fb=1 where coalesce(import_bc_fb,0)=' +
                '0;'#167
              'alter table s_doc add primary key (s_doc_id);'#167
              'alter table sms_serv add primary key (sms_serv_id);'#167
              'alter table emails_serv add primary key (em_serv_id);'#167)
            ParentFont = False
            TabOrder = 0
          end
        end
        object TabSheet4: TTabSheet
          Caption = 'Campos Antigos'
          ImageIndex = 2
          object FBCamposAntigo: TMemo
            Left = 0
            Top = 0
            Width = 836
            Height = 378
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = []
            Lines.Strings = (
              '//Dependencias...'#167
              ''
              ''
              ''
              '//Tabelas...'#167
              ''
              'CREATE TABLE EMAILS_SERV ('
              '    EM_SERV_ID      INTOBRIG,'
              '    EMAIL_DEST      STRING240,'
              '    DESTINAT_ID     INTEGER,'
              '    ASSUNTO         STRING60,'
              '    DESTINATARIO    STRING60,'
              '    MATRIC_ID       INTEGER,'
              '    TURMA_ID        INTEGER,'
              '    TURMA_ABREV     STRING9,'
              '    DT_PREV_ENV     DATE,'
              '    HR_PREV_ENV     TIME,'
              '    ANEXO           IMAGEM,'
              '    TIPO_EMAIL      SMALLINT,'
              '    EMAIL_ID        INTEGER,'
              '    DOC_MODELO      MEMO,'
              '    DOC_ID          INTEGER,'
              '    ENVIO           SMALLINT,'
              '    DT_ENVIO        TIMESTAMP,'
              '    OBS             MEMO,'
              '    DT_HT_PREV_ENV  DATAHORA,'
              '    ANEXO_S_DOC_ID  INTEIRO,'
              '    TIPO            SMALLINT,'
              'PRIMARY KEY( EM_SERV_ID)'
              ');'#167
              ''
              'CREATE TABLE SMS_SERV ('
              '    SMS_SERV_ID     INTOBRIG,'
              '    NUMERO_DEST     STRING240,'
              '    DESTINAT_ID     INTEIRO,'
              '    DESTINATARIO    STRING60,'
              '    MATRIC_ID       INTEIRO,'
              '    TURMA_ID        INTEIRO,'
              '    TURMA_ABREV     STRING9,'
              '    DOC_SMS_ID      INTEIRO,'
              '    TEXTO           MEMO,'
              '    DT_HT_PREV_ENV  DATAHORA,'
              '    TIPO_EMAIL      INTEIRO,'
              '    ENVIO           SMALLINT,'
              '    DT_CAD          DATAHORA,'
              '    DT_ENVIO        DATAHORA,'
              '    OBS             MEMO,'
              '    SMS_ID          INTEIRO,'
              '    TIPO            SMALLINT,'
              'PRIMARY KEY(SMS_SERV_ID)'
              ');'#167
              ''
              ''
              'CREATE TABLE S_DOC ('
              'S_DOC_ID   INTOBRIG,'
              'TIPO       INTOBRIG,'
              'ID         INTOBRIG,'
              'DOCUMENTO  IMAGEM,'
              'NOME_ARQ   STRING120,'
              'TAMANHO    MONEY,'
              'US_CAD     INTEIRO,'
              'DT_CAD     DATAHORA,'
              'ID_ORIG    INTEGER,'
              'ORIGEM     STRING60,'
              'SED_INTERNET SMALLINT,'
              'PRIMARY KEY(S_DOC_ID)'
              ');'#167
              ''
              ''
              '//Generators...'#167
              'CREATE GENERATOR GEN_EM_SERVCOD;'#167
              'CREATE GENERATOR GEN_SMS_SERVCOD;'#167
              'CREATE GENERATOR GEN_SDOCCOD;'#167
              ''
              ''
              '//Indices...'#167
              'CREATE INDEX IDX_S_DOC_ID ON S_DOC(TIPO, ID);'#167)
            ParentFont = False
            TabOrder = 0
          end
        end
      end
    end
    object TabMysql: TTabSheet
      Caption = 'TabMysql'
      ImageIndex = 1
      object PageControl4: TPageControl
        Left = 0
        Top = 0
        Width = 844
        Height = 409
        ActivePage = MySqlComando
        Align = alClient
        Style = tsButtons
        TabOrder = 0
        object MySqlComando: TTabSheet
          Caption = 'Campos'
          object MySQLComandos: TMemo
            Left = 0
            Top = 0
            Width = 836
            Height = 378
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              '//Dependencias...'#167
              'drop view tcontas_caixa;'#167
              'drop view v_boletos;'#167
              'drop view v_boletos_remessa;'#167
              'drop view v_client_serv;'#167
              'drop table instituicao;'#167
              'drop view v_pagar;'
              ''
              ''
              '//Comandos...'#167
              ''
              ''
              ''
              '//sedLocacao...'#167
              ''
              ''
              'create table veiculos ('
              '    veiculo_id  intobrig not null,'
              '    placa  varchar(20),'
              '    marca  varchar(60),'
              '    modelo  varchar(60),'
              '    ano    integer,'
              '    cor    varchar(60),'
              '    renavam    varchar(60),'
              '    sit     integer,'
              '    conf_id     integer,'
              '    doc_id      integer,'
              '    dt_cad     date,'
              '    c_s_c_id  integer,'
              '    obs          varchar(240),'
              'primary key (veiculo_id)'
              ');'#167
              '//Generators...'#167
              ''
              'create table orgao_exped ('
              '    org_id       intobrig not null,'
              '    org_exped    varchar(60),'
              '    org_inep_id  intobrig,'
              '    primary key (org_id)'
              ');'#167
              ''
              
                'INSERT INTO alto_padrao_mysql.orgao_exped (org_exped,org_inep_id' +
                ') VALUES'
              '     ('#39'SSP'#39',10),'
              '     ('#39'Minist'#233'rios Militares'#39',40),'
              '     ('#39'Minist'#233'rio da Aeron'#225'utica'#39',41),'
              '     ('#39'Minist'#233'rio do Ex'#233'rcito'#39',42),'
              '     ('#39'Minist'#233'rio da Marinha'#39',43),'
              '     ('#39'Pol'#237'cia Federal'#39',44),'
              '     ('#39#211'rg'#227'os Classistas'#39',60),'
              '     ('#39'Conselho Regional de Administra'#231#227'o'#39',61),'
              '     ('#39'Conselho Regional de Assist. Social'#39',62),'
              '     ('#39'Conselho Regional de Biblioteconomia'#39',63);'#167
              
                'INSERT INTO alto_padrao_mysql.orgao_exped (org_exped,org_inep_id' +
                ') VALUES'
              '     ('#39'Conselho Regional de Contabilidade'#39',64),'
              '     ('#39'Conselho Regional de Corretores Im'#243'veis'#39',65),'
              '     ('#39'Conselho Regional de Enfermagem'#39',66),'
              
                '     ('#39'Conselho Regional de Engenharia, Arquitetura e Agronomia'#39 +
                ',67),'
              '     ('#39'Conselho Regional de Estat'#237'stica'#39',68),'
              '     ('#39'Conselho Regional de Farm'#225'cia'#39',69),'
              
                '     ('#39'Conselho Regional de Fisioterapia e Terapia Ocupacional'#39',' +
                '70),'
              '     ('#39'Conselho Regional de Medicina'#39',71),'
              '     ('#39'Conselho Regional de Medicina Veterin'#225'ria'#39',72),'
              '     ('#39'Ordem dos M'#250'sicos do Brasil'#39',73);'#167
              
                'INSERT INTO alto_padrao_mysql.orgao_exped (org_exped,org_inep_id' +
                ') VALUES'
              '     ('#39'Conselho Regional de Nutri'#231#227'o'#39',74),'
              '     ('#39'Conselho Regional de Odontologia'#39',75),'
              
                '     ('#39'Conselho Regional de Profissionais de Rela'#231#245'es P'#250'blicas'#39',' +
                '76),'
              '     ('#39'Conselho Regional de Psicologia'#39',77),'
              '     ('#39'Conselho Regional de Qu'#237'mica'#39',78),'
              '     ('#39'Conselho Regional de Representantes Comerciais'#39',79),'
              '     ('#39'Ordem dos Advogados do Brasil'#39',80),'
              '     ('#39'Outros Emissores'#39',81),'
              '     ('#39'Documento Estrangeiro'#39',82),'
              '     ('#39'Conselho Regional Economia'#39',83);'#167
              
                'INSERT INTO alto_padrao_mysql.orgao_exped (org_exped,org_inep_id' +
                ') VALUES'
              '     ('#39'SSDS'#39',81);'#167
              '// termina_aqui_sedLocacao...'#167
              ''
              ''
              ''
              ''
              ''
              ''
              
                'update boletos_emissao set data_recebimento=(select distinct rec' +
                'ebimento from boletos where emissao_id=boletos_emissao.emissao_i' +
                'd) where boletos_emissao.data_recebimento is null;'#167
              
                'update boletos_emissao set situacao_boleto=(select distinct situ' +
                'acao_boleto from boletos where boletos.emissao_id=boletos_emissa' +
                'o.emissao_id and not boletos.recebimento is null) where boletos_' +
                'emissao.situacao_boleto is null;'#167
              
                'update boletos_emissao set codigo_banco=(select distinct codigo_' +
                'banco from bancos where bancos.banco_id=boletos_emissao.banco_id' +
                ') where boletos_emissao.codigo_banco is null;'#167
              
                'update boletos_emissao set situacao_boleto='#39'CANCELADO'#39' where coa' +
                'lesce(boletos_emissao.cancelado,0)=1 and (boletos_emissao.situac' +
                'ao_boleto is null);'#167
              ''
              
                'update config set nfse_seq_num  = (select max(valor) from seq_nf' +
                ' where empres_id=config.conf_id) where nfse_seq_num is null;'#167
              '//Tabelas...'#167
              ''
              ''
              ''
              ''
              ''
              '//Views...'#167
              ''
              'create view v_pagar('
              'pagar_id,'
              'forne_id,'
              'fornecedor,'
              'cnpj,'
              'valor,'
              'vencimento,'
              'pagamento,'
              'parcela,'
              'situacao_pagar,'
              'valor_pago,'
              'valor_falta'
              ')'
              'as'
              'select'
              
                'p.pagar_id, f.forne_id, f.nome as fornecedor, f.cnpj, p.valor, p' +
                '.vencimento, p.pagamento, p.parcela,'
              
                '(case when coalesce(( select sum(coalesce(l.entrada,0)-coalesce(' +
                'l.saida,0)) * (-1) from livro_caixa l where pagar_id=p.pagar_id)' +
                ',0) >=  coalesce(p.valor_apagar,0)  then'
              ' '#39'PAGO'#39' else '#39'A PAGAR'#39' end) as situacao_pagar,'
              
                '(select sum(coalesce(l.entrada,0)-coalesce(l.saida,0)) * (-1) fr' +
                'om livro_caixa l where pagar_id=p.pagar_id) as valor_pago,'
              
                '(case when coalesce(p.valor_apagar,0)>=(select sum(coalesce(l.en' +
                'trada,0)-coalesce(l.saida,0)) * (-1) from livro_caixa l where pa' +
                'gar_id=p.pagar_id) then'
              
                'coalesce(p.valor_apagar,0) - (select sum(coalesce(l.entrada,0)-c' +
                'oalesce(l.saida,0)) * (-1) from livro_caixa l where pagar_id=p.p' +
                'agar_id) else 0 end) as valor_falta'
              'from pagar p'
              'left outer join livro_caixa l on l.pagar_id = p.pagar_id'
              'left outer join fornecedores f on f.forne_id = p.forne_id;'#167
              ''
              ''
              'create view tcontas_caixa('
              '    caixa_id,'
              '    descricao,'
              '    entrada,'
              '    saida,'
              '    data,'
              '    saldo,'
              '    situacao,'
              '    dt_cancelada,'
              '    boleto_id,'
              '    pagar_id,'
              '    conta_id,'
              '    cheque_id,'
              '    inst_id,'
              '    descricao_pago,'
              '    documento,'
              '    dt_lancado,'
              '    usuario_id,'
              '    conta,'
              '    observacao,'
              '    referencia)'
              'as'
              'select'
              
                '    l.caixa_id, l.descricao, l.entrada, l.saida, l.data, l.saldo' +
                ', l.situacao, l.dt_cancelada,'
              
                '    l.boleto_id, l.pagar_id, l.conta_id, l.cheque_id, l.inst_id,' +
                ' l.descricao_pago,'
              '    l.documento, l.dt_lancado, l.usuario_id, t.conta,'
              '    t.observacao, t.referencia'
              
                'from livro_caixa l left outer join tipo_contas t on l.conta_id =' +
                ' t.conta_id;'#167
              ''
              ''
              'create view v_boletos('
              '    emissao_id,'
              '    banco_id,'
              '    cod_banco,'
              '    dig_banco,'
              '    agencia,'
              '    dig_agencia,'
              '    conta_corrente,'
              '    dig_conta_corrente,'
              '    convenio,'
              '    logomarca,'
              '    local_pagamento,'
              '    nome_cedente,'
              '    carteira,'
              '    cod_cedente,'
              '    dig_cod_cedente,'
              '    dias_tolerancia,'
              '    cob_reg,'
              '    cli_id,'
              '    cli_nome,'
              '    grade_id,'
              '    situacao_boleto,'
              '    emissao,'
              '    vencimento,'
              '    especie,'
              '    aceite,'
              '    moeda,'
              '    qtd_moeda,'
              '    valor_moeda,'
              '    seq_nosso_num,'
              '    nosso_numero,'
              '    cod_mov,'
              '    loja_id,'
              '    dias_baixar_banco,'
              '    valor_doc,'
              '    desconto,'
              '    cod_barras,'
              '    linha_dig,'
              '    data_recebimento,'
              '    valor_recebido,'
              '    parcela,'
              '    retorno_id,'
              '    remessa,'
              '    obs,'
              '    cancelado,'
              '    dt_proces,'
              '    forne_id,'
              '    logradouro,'
              '    bairro,'
              '    cidade,'
              '    estado,'
              '    cep,'
              '    cli_debito_auto,'
              '    cli_cnpj_cpf,'
              '    cli_banco_id,'
              '    cli_banc_agencia,'
              '    cli_banc_conta,'
              '    cli_banc_operacao,'
              '    cli_banc_acatamento)'
              'as  select a.emissao_id,'
              
                'a.banco_id, b.codigo_banco, b.dig_banco, b.agencia, b.dig_agenci' +
                'a, b.conta_corrente, b.dig_conta_corrente, b.convenio,b.logomarc' +
                'a, b.local_pagamento,'
              
                'b.nome_cedente, b.carteira, b.codigo_cedente, b.dig_cod_cedente,' +
                ' b.dias_tolerancia, b.cob_reg, a.cli_id, c.nome, a.grade_id,'
              
                'coalesce(a.situacao_boleto,'#39'A RECEBER'#39'), a.emissao,a.vencimento,' +
                'a.especie,a.aceite,a.moeda,a.qtd_moeda,a.valor_moeda,a.seq_nosso' +
                '_num,a.nosso_numero, a.cod_mov, '
              
                'a.loja_id, a.dias_baixar_banco, a.valor_doc, a.desconto,a.cod_ba' +
                'rras,a.linha_dig,a.data_recebimento,a.valor_recebido, a.parcela,' +
                ' a.retorno_id, a.remessa, a.obs, a.cancelado,'
              
                'a.dt_proces, a.forne_id, c.logradouro, c.bairro, c.cidade, c.est' +
                'ado, c.cep, c.debito_auto, c.cnpj, c.banco_id, c.banc_agencia, c' +
                '.banc_conta, c.banc_operacao, c.banc_acatamento'
              'from boletos_emissao a'
              'left outer'
              'join bancos b on (a.banco_id = b.banco_id)'
              'join clientes c on (a.cli_id = c.cli_id);'#167
              ''
              ''
              'create view v_boletos_remessa('
              '    emissao_id,'
              '    banco_id,'
              '    cod_banco,'
              '    dig_banco,'
              '    agencia,'
              '    dig_agencia,'
              '    conta_corrente,'
              '    dig_conta_corrente,'
              '    convenio,'
              '    logomarca,'
              '    local_pagamento,'
              '    nome_cedente,'
              '    carteira,'
              '    cod_cedente,'
              '    dig_cod_cedente,'
              '    dias_tolerancia,'
              '    cob_reg,'
              '    cli_id,'
              '    cli_nome,'
              '    grade_id,'
              '    situacao_boleto,'
              '    emissao,'
              '    vencimento,'
              '    especie,'
              '    aceite,'
              '    moeda,'
              '    qtd_moeda,'
              '    valor_moeda,'
              '    seq_nosso_num,'
              '    nosso_numero,'
              '    cod_mov,'
              '    loja_id,'
              '    dias_baixar_banco,'
              '    valor_doc,'
              '    desconto,'
              '    cod_barras,'
              '    linha_dig,'
              '    data_recebimento,'
              '    valor_recebido,'
              '    parcela,'
              '    retorno_id,'
              '    remessa,'
              '    obs,'
              '    cancelado,'
              '    dt_proces,'
              '    forne_id,'
              '    logradouro,'
              '    bairro,'
              '    cidade,'
              '    estado,'
              '    cep,'
              '    cli_debito_auto,'
              '    cli_cnpj_cpf,'
              '    cli_banco_id,'
              '    cli_banc_agencia,'
              '    cli_banc_conta,'
              '    cli_banc_operacao,'
              '    cli_banc_acatamento,'
              '    cli_cep,'
              '    cod_mov_rem,'
              '    tipo_ocorrencia,'
              '    alt_via_banco)'
              'as'
              'select a.emissao_id,'
              
                'a.banco_id, b.codigo_banco, b.dig_banco, b.agencia, b.dig_agenci' +
                'a, b.conta_corrente, b.dig_conta_corrente, b.convenio, b.logomar' +
                'ca, '
              
                'b.local_pagamento, b.nome_cedente, b.carteira, b.codigo_cedente,' +
                ' b.dig_cod_cedente, b.dias_tolerancia, b.cob_reg, a.cli_id, c.no' +
                'me, a.grade_id,'
              
                'coalesce(a.situacao_boleto,'#39'A RECEBER'#39'), a.emissao,a.vencimento,' +
                'a.especie,a.aceite,a.moeda,a.qtd_moeda,a.valor_moeda,a.seq_nosso' +
                '_num,a.nosso_numero, a.cod_mov, '
              'a.loja_id, a.dias_baixar_banco,'
              
                'a.valor_doc,a.desconto,a.cod_barras,a.linha_dig,a.data_recebimen' +
                'to,a.valor_recebido, a.parcela, a.retorno_id, a.remessa, a.obs, ' +
                'a.cancelado, '
              'a.dt_proces, a.forne_id,'
              
                'c.logradouro, c.bairro, c.cidade, c.estado, c.cep, c.debito_auto' +
                ', c.cnpj, c.banco_id, c.banc_agencia, c.banc_conta, c.banc_opera' +
                'cao, '
              'c.banc_acatamento, c.cep,'
              'ro.cod_mov_rem, ro.tipo_ocorrencia, a.alt_via_banco'
              'from boletos_emissao a '
              'left outer join bancos b on (a.banco_id = b.banco_id)'
              'left join clientes c on (a.cli_id = c.cli_id)'
              
                'left join remessa_ocorrencia ro on (ro.emissao_id = a.emissao_id' +
                ');'#167
              ''
              ''
              'create view v_client_serv('
              '    cli_id,'
              '    nome,'
              '    cnpj,'
              '    tipo,'
              '    logradouro,'
              '    numero,'
              '    bairro,'
              '    cidade,'
              '    estado,'
              '    cep,'
              '    fone1,'
              '    fone2,'
              '    obs,'
              '    nascimento,'
              '    sexo,'
              '    nacionalidade,'
              '    uf_natural,'
              '    naturalidade,'
              '    est_civil,'
              '    profissao,'
              '    contato,'
              '    rg,'
              '    rg_data,'
              '    rg_org_id,'
              '    rg_uf,'
              '    passaporte,'
              '    dia_venc,'
              '    dias_tol,'
              '    obs_contrato,'
              '    confiavel,'
              '    entregue_bol,'
              '    skype1,'
              '    email_contato1,'
              '    fat_nota,'
              '    sit,'
              '    cod_rastreio,'
              '    email_contato2,'
              '    imp_bol,'
              '    c_s_c_id,'
              '    dt_alt_vl,'
              '    forne_id,'
              '    valor,'
              '    grade_id,'
              '    venc_dia,'
              '    dt_contrato,'
              '    dt_contrato_fim,'
              '    banco_id,'
              '    veiculo_id,'
              '    placa,'
              '    marca,'
              '    modelo,'
              '    ano,'
              '    cor,'
              '    renavam,'
              '    conf_id,'
              '    contrato_id,'
              '    vl_franq_seguro,'
              '    obs_veiculo'
              '    )'
              'as'
              'select'
              
                'c.cli_id, c.nome as nome_cliente, c.cnpj, c.tipo, c.logradouro, ' +
                'c.numero, c.bairro, c.cidade,  c.estado, c.cep, c.fone1, c.fone2' +
                ', c.obs,'
              
                'c.nascimento, c.sexo, c.nacionalidade,  c.uf_natural, c.naturali' +
                'dade, c.est_civil, c.profissao, c.contato,  c.rg,  c.rg_data,  c' +
                '.rg_org_id, c.rg_uf,  c.passaporte, s.venc_dia,'
              
                's.dias_tol, s.obs as obs_contrato, c.confiavel, c.entregue_bol, ' +
                'c.skype1, c.email_contato1, c.fat_nota, c.sit as sit_cliente, c.' +
                'cod_rastreio, c.email_contato2, c.imp_bol,'
              
                's.c_s_c_id, s.dt_alt_vl, s.forne_id, s.valor, s.grade_id, s.venc' +
                '_dia, s.dt_contrato, s.dt_contrato_fim, s.banco_id, v.veiculo_id' +
                ', v.placa, v.marca, v.modelo, v.ano, v.cor, v.renavam,'
              
                'v.conf_id, v.doc_id as contrato_id, v.vl_franq_seguro, v.obs as ' +
                'obs_veiculo'
              'from clientes c left outer'
              'join cont_serv_clien s on (s.cli_id=c.cli_id)'
              'join veiculos v on (s.veiculo_id=v.veiculo_id);'#167
              ''
              ''
              '//Procedure...'#167
              ''
              ''
              'drop procedure if exists pegar_id;'#167
              'delimiter $$'
              
                'create procedure pegar_id(in bnome varchar(255), in tnome varcha' +
                'r(255), out prox_id int)'
              'begin'
              'declare vl_seq int default 0 ;'
              'declare _stmt varchar(1024);'
              ''
              
                #9'select auto_increment into prox_id from information_schema.tabl' +
                'es where table_schema = bnome AND table_name = tnome; '
              #9'set vl_seq=prox_id+1;'
              '  '
              
                #9'set @sql = concat('#39'alter table '#39',tnome,'#39' auto_increment = '#39', vl' +
                '_seq);'
              #9'prepare _stmt from @sql;'
              #9'execute _stmt;'
              #9'deallocate prepare _stmt;  '
              'end $$'
              'delimiter ;'#167
              ''
              ''
              'drop procedure if exists pega_seq_nfse;'#167
              'delimiter $$  '
              
                'create procedure pega_seq_nfse (in vl_conf_id integer, out vl_se' +
                'q integer)'
              'begin'
              '   declare vl_tmp bigint;'
              
                '   select coalesce(nfse_seq_num,0) from config where conf_id=vl_' +
                'conf_id into vl_tmp;      '
              '   set vl_seq = vl_tmp + 1;      '
              
                '   update config set nfse_seq_num = vl_seq where conf_id = vl_co' +
                'nf_id;   '
              'end $$  '
              'delimiter ;'#167
              ''
              'drop procedure if exists pega_seq_nosso_numero;'#167
              'delimiter $$  '
              
                'create procedure pega_seq_nosso_numero (in vl_banco_id integer, ' +
                'out vl_seq integer)'
              'begin'
              '   declare vl_tmp bigint;'
              
                '   select coalesce(nosso_numero,0) from bancos where banco_id=vl' +
                '_banco_id into vl_tmp;     '
              '   set vl_seq = vl_tmp + 1;      '
              
                '   update bancos set nosso_numero = vl_seq where banco_id = vl_b' +
                'anco_id;   '
              'end $$  '
              'delimiter ;'#167
              ''
              ''
              'drop procedure if exists pega_seq_rem;'#167
              'delimiter $$  '
              
                'create procedure pega_seq_rem (in vl_banco_id integer, out vl_se' +
                'q integer)'
              'begin'
              '   declare vl_tmp bigint;'
              
                '   select coalesce(n_seq_rem,0) from bancos where banco_id=vl_ba' +
                'nco_id into vl_tmp;      '
              '   set vl_seq = vl_tmp + 1;      '
              
                '   update bancos set n_seq_rem = vl_seq where banco_id = vl_banc' +
                'o_id;   '
              'end $$  '
              'delimiter ;'#167
              ''
              'drop procedure if exists pega_seq_rem_deb_auto;'#167
              'delimiter $$  '
              
                'create procedure pega_seq_rem_deb_auto (in vl_banco_id integer, ' +
                'out vl_seq integer)'
              'begin'
              '   declare vl_tmp bigint;'
              
                '   select coalesce(n_seq_rem_deb_auto,0) from bancos where banco' +
                '_id=vl_banco_id into vl_tmp;     '
              '   set vl_seq = vl_tmp + 1;      '
              
                '   update bancos set n_seq_rem_deb_auto = vl_seq where banco_id ' +
                '= vl_banco_id;   '
              'end $$  '
              'delimiter ;'#167
              ''
              ''
              ''
              '//Indices...'#167)
            ParentFont = False
            ScrollBars = ssBoth
            TabOrder = 0
          end
        end
        object TabSheet1: TTabSheet
          Caption = 'Comandos'
          ImageIndex = 1
          object Memo2_off: TMemo
            Left = 0
            Top = 0
            Width = 836
            Height = 378
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clSilver
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              '//Dependencias...'#167
              'drop view tcontas_caixa;'#167
              'drop view v_boletos;'#167
              'drop view v_boletos_remessa;'#167
              'drop view v_client_serv;'#167
              'drop table instituicao;'#167
              'drop view v_pagar;'
              ''
              ''
              '//Comandos...'#167
              'alter table pagar drop situacao_pagar;'#167
              'alter table pagar drop valor_pago;'#167
              'alter table pagar drop valor_falta;'#167
              ''
              ''
              ''
              'alter table config drop cidade_nome;'#167
              'alter table retorno drop dias_tolerancia;'#167
              'alter table clientes drop cidade_nome;'#167
              'alter table clientes drop uf_nome;'#167
              'alter table clientes drop n_titulos;'#167
              'alter table boletos drop valor_integral;'#167
              'alter table boletos drop cliente;'#167
              'alter table config add import_bc_fb smallint;'#167
              'alter table config add nfse_seq_num integer;'#167
              
                'update RDB$RELATION_FIELDS set RDB$FIELD_SOURCE = '#39'INTEIRO'#39' wher' +
                'e (RDB$FIELD_NAME = '#39'REMESSA_ID'#39') and (RDB$RELATION_NAME = '#39'BOLE' +
                'TOS'#39');'#167
              
                'update RDB$RELATION_FIELDS set RDB$FIELD_SOURCE = '#39'STRING20'#39' whe' +
                're (RDB$FIELD_NAME = '#39'SITUACAO_BOLETO'#39') and (RDB$RELATION_NAME =' +
                ' '#39'BOLETOS_EMISSAO'#39');'#167
              
                'update RDB$RELATION_FIELDS set RDB$FIELD_SOURCE = '#39'INTEIRO'#39' wher' +
                'e (RDB$FIELD_NAME = '#39'CODIGO_BANCO'#39') and (RDB$RELATION_NAME = '#39'BO' +
                'LETOS_EMISSAO'#39');'#167
              
                'update RDB$RELATION_FIELDS set RDB$FIELD_SOURCE = '#39'DATA'#39' where (' +
                'RDB$FIELD_NAME = '#39'DATA_RECEBIMENTO'#39') and (RDB$RELATION_NAME = '#39'B' +
                'OLETOS_EMISSAO'#39');'#167
              'alter table boletos_emissao add data_recebimento date;'#167
              'alter table boletos_emissao add situacao_boleto string20;'#167
              'alter table boletos_emissao add codigo_banco integer;'#167
              ''
              'alter table boletos add remessa_id integer;'#167
              
                'update boletos set remessa_id=(select distinct remessa from bole' +
                'tos_emissao where emissao_id=boletos.emissao_id) where (boletos.' +
                'emissao_id is null);'#167
              ''
              
                'update boletos_emissao set situacao_boleto=(select distinct situ' +
                'acao_boleto from boletos where boletos.emissao_id=boletos_emissa' +
                'o.emissao_id and boletos.situacao_boleto='#39'RECEBIDO'#39') where bolet' +
                'os_emissao.situacao_boleto is null;'#167
              
                'update boletos_emissao set situacao_boleto=(select distinct situ' +
                'acao_boleto from boletos where boletos.emissao_id=boletos_emissa' +
                'o.emissao_id and boletos.situacao_boleto='#39'A RECEBER'#39') where bole' +
                'tos_emissao.situacao_boleto is null;'#167
              
                'update boletos_emissao set situacao_boleto='#39'a receber'#39' where sit' +
                'uacao_boleto is null;'#167
              'alter table livro_caixa drop saldo;'#167
              'alter table livro_caixa drop pagar_desc;'#167
              ''
              ''
              ''
              
                'update config set nfse_seq_num  = (select max(valor) from seq_nf' +
                ' where empres_id=config.conf_id) where nfse_seq_num is null;'#167
              '//Tabelas...'#167
              ''
              ''
              ''
              ''
              ''
              '//Views...'#167
              ''
              'create view v_pagar('
              'pagar_id,'
              'forne_id,'
              'fornecedor,'
              'cnpj,'
              'valor,'
              'vencimento,'
              'pagamento,'
              'parcela,'
              'situacao_pagar,'
              'valor_pago,'
              'valor_falta'
              ')'
              'as'
              'select'
              
                'p.pagar_id, f.forne_id, f.nome as fornecedor, f.cnpj, p.valor, p' +
                '.vencimento, p.pagamento, p.parcela,'
              
                '(case when coalesce(( select sum(coalesce(l.entrada,0)-coalesce(' +
                'l.saida,0)) * (-1) from livro_caixa l where pagar_id=p.pagar_id)' +
                ',0) >=  coalesce(p.valor_apagar,0)  then'
              ' '#39'PAGO'#39' else '#39'A PAGAR'#39' end) as situacao_pagar,'
              
                '(select sum(coalesce(l.entrada,0)-coalesce(l.saida,0)) * (-1) fr' +
                'om livro_caixa l where pagar_id=p.pagar_id) as valor_pago,'
              
                '(case when coalesce(p.valor_apagar,0)>=(select sum(coalesce(l.en' +
                'trada,0)-coalesce(l.saida,0)) * (-1) from livro_caixa l where pa' +
                'gar_id=p.pagar_id) then'
              
                'coalesce(p.valor_apagar,0) - (select sum(coalesce(l.entrada,0)-c' +
                'oalesce(l.saida,0)) * (-1) from livro_caixa l where pagar_id=p.p' +
                'agar_id) else 0 end) as valor_falta'
              'from pagar p'
              'left outer join livro_caixa l on l.pagar_id = p.pagar_id'
              'left outer join fornecedores f on f.forne_id = p.forne_id;'#167
              ''
              ''
              'create view tcontas_caixa('
              '    caixa_id,'
              '    descricao,'
              '    entrada,'
              '    saida,'
              '    data,'
              '    saldo,'
              '    situacao,'
              '    dt_cancelada,'
              '    boleto_id,'
              '    pagar_id,'
              '    conta_id,'
              '    cheque_id,'
              '    inst_id,'
              '    descricao_pago,'
              '    documento,'
              '    dt_lancado,'
              '    usuario_id,'
              '    conta,'
              '    observacao,'
              '    referencia)'
              'as'
              'select'
              
                '    l.caixa_id, l.descricao, l.entrada, l.saida, l.data, l.saldo' +
                ', l.situacao, l.dt_cancelada,'
              
                '    l.boleto_id, l.pagar_id, l.conta_id, l.cheque_id, l.inst_id,' +
                ' l.descricao_pago,'
              '    l.documento, l.dt_lancado, l.usuario_id, t.conta,'
              '    t.observacao, t.referencia'
              
                'from livro_caixa l left outer join tipo_contas t on l.conta_id =' +
                ' t.conta_id;'#167
              ''
              ''
              'create view v_boletos('
              '    emissao_id,'
              '    banco_id,'
              '    cod_banco,'
              '    dig_banco,'
              '    agencia,'
              '    dig_agencia,'
              '    conta_corrente,'
              '    dig_conta_corrente,'
              '    convenio,'
              '    logomarca,'
              '    local_pagamento,'
              '    nome_cedente,'
              '    carteira,'
              '    cod_cedente,'
              '    dig_cod_cedente,'
              '    dias_tolerancia,'
              '    cob_reg,'
              '    cli_id,'
              '    cli_nome,'
              '    cli_abrev,'
              '    grade_id,'
              '    situacao_boleto,'
              '    emissao,'
              '    vencimento,'
              '    especie,'
              '    aceite,'
              '    moeda,'
              '    qtd_moeda,'
              '    valor_moeda,'
              '    seq_nosso_num,'
              '    nosso_numero,'
              '    cod_mov,'
              '    loja_id,'
              '    dias_baixar_banco,'
              '    valor_doc,'
              '    desconto,'
              '    cod_barras,'
              '    linha_dig,'
              '    data_recebimento,'
              '    valor_recebido,'
              '    parcela,'
              '    retorno_id,'
              '    remessa,'
              '    obs,'
              '    cancelado,'
              '    dt_proces,'
              '    forne_id,'
              '    logradouro,'
              '    bairro,'
              '    cidade,'
              '    estado,'
              '    cep,'
              '    cli_debito_auto,'
              '    cli_cnpj_cpf,'
              '    cli_banco_id,'
              '    cli_banc_agencia,'
              '    cli_banc_conta,'
              '    cli_banc_operacao,'
              '    cli_banc_acatamento)'
              'as'
              'select a.emissao_id,'
              
                'a.banco_id, b.codigo_banco, b.dig_banco, b.agencia, b.dig_agenci' +
                'a, b.conta_corrente, b.dig_conta_corrente, b.convenio,b.logomarc' +
                'a, '
              'b.local_pagamento,'
              
                'b.nome_cedente, b.carteira, b.codigo_cedente, b.dig_cod_cedente,' +
                ' b.dias_tolerancia, b.cob_reg, a.cli_id, c.nome, c.fantasia, a.g' +
                'rade_id,'
              
                'a.situacao_boleto,a.emissao,a.vencimento,a.especie,a.aceite,a.mo' +
                'eda,a.qtd_moeda,a.valor_moeda,a.seq_nosso_num,a.nosso_numero, a.' +
                'cod_mov, '
              'a.loja_id, a.dias_baixar_banco,'
              
                'a.valor_doc,a.desconto,a.cod_barras,a.linha_dig,a.data_recebimen' +
                'to,a.valor_recebido, a.parcela, a.retorno_id, a.remessa, a.obs, ' +
                'a.cancelado, '
              'a.dt_proces, a.forne_id,'
              
                'c.logradouro, c.bairro, c.cidade, c.estado, c.cep, c.debito_auto' +
                ', c.cnpj, c.banco_id, c.banc_agencia, c.banc_conta, c.banc_opera' +
                'cao, '
              'c.banc_acatamento'
              'from boletos_emissao a left outer'
              'join bancos b on (a.banco_id = b.banco_id)'
              'join clientes c on (a.cli_id = c.cli_id);'#167
              ''
              ''
              'create view v_boletos_remessa('
              '    emissao_id,'
              '    banco_id,'
              '    cod_banco,'
              '    dig_banco,'
              '    agencia,'
              '    dig_agencia,'
              '    conta_corrente,'
              '    dig_conta_corrente,'
              '    convenio,'
              '    logomarca,'
              '    local_pagamento,'
              '    nome_cedente,'
              '    carteira,'
              '    cod_cedente,'
              '    dig_cod_cedente,'
              '    dias_tolerancia,'
              '    cob_reg,'
              '    cli_id,'
              '    cli_nome,'
              '    cli_abrev,'
              '    grade_id,'
              '    situacao_boleto,'
              '    emissao,'
              '    vencimento,'
              '    especie,'
              '    aceite,'
              '    moeda,'
              '    qtd_moeda,'
              '    valor_moeda,'
              '    seq_nosso_num,'
              '    nosso_numero,'
              '    cod_mov,'
              '    loja_id,'
              '    dias_baixar_banco,'
              '    valor_doc,'
              '    desconto,'
              '    cod_barras,'
              '    linha_dig,'
              '    data_recebimento,'
              '    valor_recebido,'
              '    parcela,'
              '    retorno_id,'
              '    remessa,'
              '    obs,'
              '    cancelado,'
              '    dt_proces,'
              '    forne_id,'
              '    logradouro,'
              '    bairro,'
              '    cidade,'
              '    estado,'
              '    cep,'
              '    cli_debito_auto,'
              '    cli_cnpj_cpf,'
              '    cli_banco_id,'
              '    cli_banc_agencia,'
              '    cli_banc_conta,'
              '    cli_banc_operacao,'
              '    cli_banc_acatamento,'
              '    cli_cep,'
              '    cod_mov_rem,'
              '    tipo_ocorrencia,'
              '    alt_via_banco)'
              'as'
              'select a.emissao_id,'
              
                'a.banco_id, b.codigo_banco, b.dig_banco, b.agencia, b.dig_agenci' +
                'a, b.conta_corrente, b.dig_conta_corrente, b.convenio,b.logomarc' +
                'a, '
              'b.local_pagamento,'
              
                'b.nome_cedente, b.carteira, b.codigo_cedente, b.dig_cod_cedente,' +
                ' b.dias_tolerancia, b.cob_reg, a.cli_id, c.nome, c.fantasia, a.g' +
                'rade_id,'
              
                'a.situacao_boleto,a.emissao,a.vencimento,a.especie,a.aceite,a.mo' +
                'eda,a.qtd_moeda,a.valor_moeda,a.seq_nosso_num,a.nosso_numero, a.' +
                'cod_mov, '
              'a.loja_id, a.dias_baixar_banco,'
              
                'a.valor_doc,a.desconto,a.cod_barras,a.linha_dig,a.data_recebimen' +
                'to,a.valor_recebido, a.parcela, a.retorno_id, a.remessa, a.obs, ' +
                'a.cancelado, '
              'a.dt_proces, a.forne_id,'
              
                'c.logradouro, c.bairro, c.cidade, c.estado, c.cep, c.debito_auto' +
                ', c.cnpj, c.banco_id, c.banc_agencia, c.banc_conta, c.banc_opera' +
                'cao, '
              'c.banc_acatamento, c.cep,'
              'ro.cod_mov_rem, ro.tipo_ocorrencia, a.alt_via_banco'
              'from boletos_emissao a left outer'
              'join bancos b on (a.banco_id = b.banco_id)'
              'join clientes c on (a.cli_id = c.cli_id)'
              
                'left join remessa_ocorrencia ro on (ro.emissao_id = a.emissao_id' +
                ');'#167
              ''
              ''
              'create view v_client_serv('
              '    cli_id,'
              '    nome,'
              '    fantasia,'
              '    cnpj,'
              '    tipo,'
              '    logradouro,'
              '    bairro,'
              '    cidade,'
              '    estado,'
              '    cep,'
              '    fone1,'
              '    fone2,'
              '    obs,'
              '    dia_venc,'
              '    dias_tol,'
              '    confiavel,'
              '    entregue_bol,'
              '    diretor,'
              '    skype1,'
              '    email_contato1,'
              '    fat_nota,'
              '    sit,'
              '    contato,'
              '    cod_rastreio,'
              '    email_contato2,'
              '    imp_bol,'
              '    c_s_c_id,'
              '    dt_alt_vl,'
              '    forne_id,'
              '    forne_perc,'
              '    vl_mensal,'
              '    vl_instalar,'
              '    venc_dia,'
              '    dt_contrato,'
              '    servic_id,'
              '    doc_id)'
              'as'
              'select'
              
                'c.cli_id, c. nome as nome_cliente, c.fantasia, c.cnpj, c.tipo, c' +
                '.logradouro, c.bairro, c.cidade,  c.estado, c.cep, c.fone1,  c.f' +
                'one2, c.obs, c.dia_venc,'
              
                'c.dias_tol, c.confiavel, c.entregue_bol, c.diretor, c.skype1, c.' +
                'email_contato1, c.fat_nota, c.sit, c.contato, c.cod_rastreio, c.' +
                'email_contato2, c.imp_bol,'
              
                's.c_s_c_id, s.dt_alt_vl, s.forne_id, s.forne_perc, s.vl_mensal, ' +
                's.vl_instalar, s.venc_dia, s.dt_contrato, r.servic_id, r.doc_id'
              ''
              'from clientes c left outer'
              'join cont_serv_clien s on (s.cli_id=c.cli_id)'
              'join servicos r on (s.servic_id=r.servic_id);'#167
              ''
              ''
              ''
              '//Procedure...'#167
              ''
              ''
              'drop procedure if exists pegar_id;'#167
              'delimiter $$'
              
                'create procedure pegar_id(in bnome varchar(255), in tnome varcha' +
                'r(255), out prox_id int)'
              'begin'
              'declare vl_seq int default 0 ;'
              'declare _stmt varchar(1024);'
              ''
              
                #9'select auto_increment into prox_id from information_schema.tabl' +
                'es where table_schema = bnome AND table_name = tnome; '
              #9'set vl_seq=prox_id+1;'
              '  '
              
                #9'set @sql = concat('#39'alter table '#39',tnome,'#39' auto_increment = '#39', vl' +
                '_seq);'
              #9'prepare _stmt from @sql;'
              #9'execute _stmt;'
              #9'deallocate prepare _stmt;  '
              'end $$'
              'delimiter ;'#167
              ''
              ''
              'drop procedure if exists pega_seq_nf;'#167
              'delimiter $$  '
              
                'create procedure pega_seq_nfse (in vl_conf_id integer, out vl_se' +
                'q integer)'
              'begin'
              '   declare vl_tmp bigint;'
              
                '   select coalesce(nfse_seq_num,0) from config where confi_id=vl' +
                '_conf_id into vl_tmp;      '
              '   set vl_seq = vl_tmp + 1;      '
              
                '   update config set nfse_seq_num = vl_seq where conf_id = vl_co' +
                'nf_id;   '
              'end $$  '
              'delimiter ;'#167
              ''
              'drop procedure if exists pega_seq_nosso_numero;'#167
              'delimiter $$  '
              
                'create procedure pega_seq_nosso_numero (in vl_banco_id integer, ' +
                'out vl_seq integer)'
              'begin'
              '   declare vl_tmp bigint;'
              
                '   select coalesce(nosso_numero,0) from bancos where banco_id=vl' +
                '_banco_id into vl_tmp;     '
              '   set vl_seq = vl_tmp + 1;      '
              
                '   update bancos set nosso_numero = vl_seq where banco_id = vl_b' +
                'anco_id;   '
              'end $$  '
              'delimiter ;'#167
              ''
              ''
              'drop procedure if exists pega_seq_rem;'#167
              'delimiter $$  '
              
                'create procedure pega_seq_rem (in vl_banco_id integer, out vl_se' +
                'q integer)'
              'begin'
              '   declare vl_tmp bigint;'
              
                '   select coalesce(n_seq_rem,0) from bancos where banco_id=vl_ba' +
                'nco_id into vl_tmp;      '
              '   set vl_seq = vl_tmp + 1;      '
              
                '   update bancos set n_seq_rem = vl_seq where banco_id = vl_banc' +
                'o_id;   '
              'end $$  '
              'delimiter ;'#167
              ''
              'drop procedure if exists pega_seq_rem_deb_auto;'#167
              'delimiter $$  '
              
                'create procedure pega_seq_rem_deb_auto (in vl_banco_id integer, ' +
                'out vl_seq integer)'
              'begin'
              '   declare vl_tmp bigint;'
              
                '   select coalesce(n_seq_rem_deb_auto,0) from bancos where banco' +
                '_id=vl_banco_id into vl_tmp;     '
              '   set vl_seq = vl_tmp + 1;      '
              
                '   update bancos set n_seq_rem_deb_auto = vl_seq where banco_id ' +
                '= vl_banco_id;   '
              'end $$  '
              'delimiter ;'#167
              ''
              ''
              ''
              '//Indices...'#167)
            ParentFont = False
            ScrollBars = ssBoth
            TabOrder = 0
          end
        end
        object TabSheet5: TTabSheet
          Caption = 'Campos Antigos'
          ImageIndex = 2
        end
      end
    end
    object TabImportar: TTabSheet
      Caption = 'Importar Banco'
      ImageIndex = 3
      object GroupBox2: TGroupBox
        Left = 6
        Top = 3
        Width = 418
        Height = 70
        Caption = 'FireBird'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Label2: TLabel
          Left = 14
          Top = 30
          Width = 34
          Height = 14
          Alignment = taRightJustify
          Caption = 'Banco:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object Image2: TImage
          Left = 384
          Top = 24
          Width = 25
          Height = 25
          Picture.Data = {
            0A544A504547496D616765A7060000FFD8FFE000104A46494600010101004800
            480000FFDB004300010101010101010101010101010101010101010101010101
            0101010101010101010101010101010101010101010101010101010101010101
            0101010101010101FFDB00430101010101010101010101010101010101010101
            0101010101010101010101010101010101010101010101010101010101010101
            01010101010101010101010101FFC00011080019001903012200021101031101
            FFC4001F0000010501010101010100000000000000000102030405060708090A
            0BFFC400B5100002010303020403050504040000017D01020300041105122131
            410613516107227114328191A1082342B1C11552D1F02433627282090A161718
            191A25262728292A3435363738393A434445464748494A535455565758595A63
            6465666768696A737475767778797A838485868788898A92939495969798999A
            A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
            D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
            01010101010101010000000000000102030405060708090A0BFFC400B5110002
            0102040403040705040400010277000102031104052131061241510761711322
            328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
            292A35363738393A434445464748494A535455565758595A636465666768696A
            737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
            A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
            E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FDF0
            82DA4D6BFB5EE66D4A4D13C2BE1E4B87D7758B60C6FAE26B5B73757567A73795
            29812C60DB25F5E2413CCCF22D959C5E72CD245D22F85FE19C3A1EB1AD6B7E1F
            F10F87B4AD225B78B53D6BC5FE0AF8A165ADC9717893491BE9BA76A1A4DA78BB
            C40E8B134F7B1F86EDEEA6B589A048609754D4B40D2759C98A38E3F843A1EAB1
            4EF13E8FE20F0778F2F67594C524B77E11F899A278DB558E7954A96124DA2DD5
            94D1B12B2405AD5D5E26287E23FDA47E2BFC19F8C7A8FC34F107C59F89FE28F0
            EE8DF0DBC61AEF8B346D03C15A9DCE8F71A9C5ABC32E9AFA7EB3AD8BCBC962B1
            D720B4D335B8EEBC29A1E85E35D0A2D5FC61E18D3BC59FF08D78FF00E2259F89
            7F71CBF83F8A31F9566183E05A30FED7C1E2679752A93962E18778A54E296619
            8470185AD8DC65255F9F112C22AB87FDC52784C357C354A94AA2F84AB9C64D4B
            1985C4712622A53C0D65EDEA384694EA428AB4961F0D0C454851A55270FDCFB7
            6AA725492C455A55A3095397DABAAE94FE1CB6B6D6B4ED4FFB63C2B71F62FB51
            7D52CF5C6D2E3D52282E74BD674DD7EC67B8B4D7BC33A95A5E69F7963A841777
            B05EE937FA76BFA55FDFE937D1CE6D60FA1FC8D7CAFF00B34FC5CF07FC66B1F1
            57877E17F857C55E16F847F08B40D634F5D57C43E23F166A72F88EFBC5BFF092
            EB7269DB35EF136B125F59DEEA7E23F1678CF599B5B863D7A3D7AEECAF996DA2
            D62689B5FF00B535CFF9F9BAFF00BF927F8572E75E1B6652C74B059854C0E539
            E6069D159C508AE7A7ED71546188C3C65C8B0EBEB51A33E6C4C9D2A529AAB45D
            5A30C42AD2A939571453FA950C42A7531387C4C14E8FB2AB3A90A7384BD96261
            46B56A54EAD6C22ACA51C2D49D1A2E708BA8A9D384A14A1EC9AE42D71E0FF1E7
            C3FBED5A7D0344F1D689E20D3748F174167FDA27C1BACF88AC6EADA6BABCB3F3
            E0592C62D42E1356B46F32DA05BA33DB5E5CC09325C43F317833FE09A3FB3B5A
            69F6DA978E7C77E3BF8A1E42C6D77713F8B6CFC27E1E3E5EDC25B4DE0D8B4DF1
            3DADA055F2BECF79E37D4418805791D9779FB126FF008F69FF00EB95CFFE8B6A
            F942EBFE42B27FD7D37FE8C35EA786FC43C4B8DC0E6B96E57C4199F0F3853C2D
            5C7D7CAABCF0F3CCE3084E852F6D2A12C3E269D654A2E356A43172A55E52F695
            30FED5D49D4CB89B2ECB686230788C4E5F85CC14A759E1A18BA30AAB09294A94
            AA3A5ED23520E32938CA09D352A5CBCB1A9CBCB18FD0DA4786BE1AF81FC3137C
            30F827E1BD23C37E16BABC7B8F12DF6811CA6D2769ADED6D6F04DAC5C4F3DF78
            93C41A9D85959E9779AADDDFEA3716FA75BC704F76CF05BC11F45FD9F61FF3E5
            6BFF007E22FF00E26A9E85FF00204D3BFEBCE3FF00D06B62BF28E21CEB178FC7
            5584AAD78C30D5F131E6A989A95F1188AF2A918D7C562B112E5956AD5BD8D38D
            B9630A74E9C20A2E7ED6AD5FAECB701470D87849469CA5569D1959528429D3A6
            A0A54E8D2A6B994214F9A4F77294A526DA872421FFD9}
          OnClick = Image2Click
        end
        object EditBancoFB: TComboBox
          Left = 51
          Top = 27
          Width = 328
          Height = 21
          AutoComplete = False
          Color = 15329769
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnExit = EditBancoFBExit
          Items.Strings = (
            'D:\sedsoftdb\clientes\clientes.fdb'
            'D:\sedsoftdb\petronio.fdb'
            'D:\sedsoftdb\panorama.fdb'
            'D:\sedsoftdb\carmelaveloso.fdb')
        end
      end
      object GroupBox1: TGroupBox
        Left = 6
        Top = 74
        Width = 418
        Height = 207
        Caption = 'Selecione a tabela para importa'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object PageControl2: TPageControl
          Left = 1
          Top = 12
          Width = 416
          Height = 194
          ActivePage = TabSheetBancoII
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Style = tsButtons
          TabOrder = 0
          OnChange = PageControl2Change
          object TabSheetBancoII: TTabSheet
            Caption = 'Banco II'
            object SedDBGrid1: TSedDBGrid
              Left = 0
              Top = 0
              Width = 408
              Height = 165
              Align = alClient
              DataSource = dsListaFB2
              FixedColor = clGray
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
              ParentFont = False
              TabOrder = 0
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clWhite
              TitleFont.Height = -11
              TitleFont.Name = 'Arial'
              TitleFont.Style = [fsBold]
              OnCellClick = SedDBGrid1CellClick
              OnDrawColumnCell = SedDBGrid1DrawColumnCell
              Columns = <
                item
                  Expanded = False
                  FieldName = 'ATIVO'
                  Width = 30
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Table'
                  Width = 250
                  Visible = True
                end>
            end
          end
          object TabSheetBancoIII: TTabSheet
            Caption = 'Banco III'
            ImageIndex = 1
            object DBGrid_III: TSedDBGrid
              Left = 0
              Top = 0
              Width = 408
              Height = 165
              Align = alClient
              DataSource = dsListaFB3
              FixedColor = clGray
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
              ParentFont = False
              TabOrder = 0
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clWhite
              TitleFont.Height = -11
              TitleFont.Name = 'Arial'
              TitleFont.Style = [fsBold]
              OnCellClick = DBGrid_IIICellClick
              OnDrawColumnCell = DBGrid_IIIDrawColumnCell
              Columns = <
                item
                  Expanded = False
                  FieldName = 'ATIVO'
                  Width = 30
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Table'
                  Width = 300
                  Visible = True
                end>
            end
          end
        end
      end
      object MemoMySql: TMemo
        Left = 3
        Top = 284
        Width = 346
        Height = 101
        Color = 15329769
        ScrollBars = ssVertical
        TabOrder = 2
      end
      object btExecutar: TButton
        Left = 350
        Top = 338
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Caption = 'Iniciar'
        TabOrder = 3
        OnClick = btExecutarClick
      end
      object btParar: TButton
        Left = 350
        Top = 362
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Caption = 'Fechar'
        TabOrder = 4
        OnClick = btPararClick
      end
      object StatusBar1: TStatusBar
        Left = 0
        Top = 390
        Width = 844
        Height = 19
        Panels = <
          item
            Width = 320
          end
          item
            Width = 200
          end>
      end
    end
  end
  object PanelPrinc: TPanel
    Left = 846
    Top = 8
    Width = 400
    Height = 200
    BevelOuter = bvNone
    Caption = 'Pressione o bot'#227'o '#39'Iniciar'#39' para atualizar o banco...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Gauge1: TGauge
      Left = 112
      Top = 138
      Width = 179
      Height = 19
      Progress = 0
    end
    object Image1: TImage
      Left = -36
      Top = 11
      Width = 113
      Height = 125
      AutoSize = True
      Picture.Data = {
        0A544A504547496D6167652C360000FFD8FFE000104A46494600010101004800
        480000FFE13222687474703A2F2F6E732E61646F62652E636F6D2F7861702F31
        2E302F003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
        4D304D7043656869487A7265537A4E54637A6B633964223F3E0A3C783A786D70
        6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
        786D70746B3D2241646F626520584D5020436F726520352E332D633031312036
        362E3134353636312C20323031322F30322F30362D31343A35363A3237202020
        2020202020223E0A2020203C7264663A52444620786D6C6E733A7264663D2268
        7474703A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D
        73796E7461782D6E7323223E0A2020202020203C7264663A4465736372697074
        696F6E207264663A61626F75743D22220A202020202020202020202020786D6C
        6E733A786D703D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F
        312E302F223E0A2020202020202020203C786D703A43726561746F72546F6F6C
        3E41646F62652046697265776F726B7320435336202857696E646F7773293C2F
        786D703A43726561746F72546F6F6C3E0A2020202020202020203C786D703A43
        7265617465446174653E323032312D30352D33305430323A34383A32385A3C2F
        786D703A437265617465446174653E0A2020202020202020203C786D703A4D6F
        64696679446174653E323032312D30352D33305430323A35343A30335A3C2F78
        6D703A4D6F64696679446174653E0A2020202020203C2F7264663A4465736372
        697074696F6E3E0A2020202020203C7264663A4465736372697074696F6E2072
        64663A61626F75743D22220A202020202020202020202020786D6C6E733A6463
        3D22687474703A2F2F7075726C2E6F72672F64632F656C656D656E74732F312E
        312F223E0A2020202020202020203C64633A666F726D61743E696D6167652F6A
        7065673C2F64633A666F726D61743E0A2020202020203C2F7264663A44657363
        72697074696F6E3E0A2020203C2F7264663A5244463E0A3C2F783A786D706D65
        74613E0A20202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020200A2020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020200A202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020200A20202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020202020202020202020200A2020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020202020202020202020202020202020200A202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        200A202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020200A20202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020200A2020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020202020200A202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020200A20202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020202020202020202020202020200A2020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020202020202020202020202020202020202020200A
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020200A202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020200A20202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020200A2020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020202020202020200A202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020200A20202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020202020202020202020202020202020200A2020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20200A2020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020200A202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020200A20202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020202020200A2020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020202020202020202020200A202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020200A20202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        0A20202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020200A2020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020200A202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020200A20202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020202020202020200A2020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020202020202020202020202020200A202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020200A20
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020200A20202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020200A2020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020200A202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020200A20202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020202020202020202020200A2020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020202020202020202020202020202020200A202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        200A202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020200A20202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020200A2020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020202020200A202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020200A20202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020202020202020202020202020200A2020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020202020202020202020202020202020202020200A
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020200A202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020200A20202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020200A2020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020202020202020200A202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020200A20202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020202020202020202020202020202020200A2020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20200A2020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020200A202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020200A20202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020202020200A2020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020202020202020202020200A202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020200A20202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        0A20202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020200A2020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020200A202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020200A20202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020202020202020200A2020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020202020202020202020202020200A202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020200A20
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020200A20202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020200A2020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020200A202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020200A20202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020202020202020202020200A2020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020202020202020202020202020202020200A202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        200A202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020200A20202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020200A2020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020202020200A202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020200A20202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020202020202020202020202020200A2020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020202020202020202020202020202020202020200A
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020200A202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020200A20202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020200A2020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020202020202020200A202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020200A20202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020202020202020202020202020202020200A2020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20200A2020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020200A202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020200A20202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020202020200A2020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020202020202020202020200A202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020200A20202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        0A20202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020200A2020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020200A202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020200A20202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020202020202020200A2020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020202020202020202020202020200A202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020200A20
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020200A20202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020200A2020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020200A202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020200A20202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020202020202020202020200A2020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020202020202020202020202020202020200A202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        200A202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020200A20202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020200A2020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020202020200A202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020200A20202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020202020202020202020202020200A2020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020202020202020202020202020202020202020200A
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020200A202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020200A20202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020200A2020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020202020202020200A202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020200A20202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020202020202020202020202020202020200A2020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20200A2020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020200A202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020200A20202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020202020200A2020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020202020202020202020200A202020202020202020
        202020202020202020202020202020202020200A3C3F787061636B657420656E
        643D2277223F3EFFDB0043000604040405040605050609060506090B08060608
        0B0C0A0A0B0A0A0C100C0C0C0C0C0C100C0E0F100F0E0C1313141413131C1B1B
        1B1C20202020202020202020FFDB0043010707070D0C0D181010181A1511151A
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020FFC0001108007D0071030111000211
        01031101FFC400190001000301010000000000000000000000000102040306FF
        C4002B1000020102030704030101000000000000000102030411313312131441
        425271213251815361A191D1FFC4001601010101000000000000000000000000
        00000104FFC40014110100000000000000000000000000000000FFDA000C0301
        0002110311003F00F3A68400000000000000000000000000005E346A4B240755
        673E6D220BF051EE02DC25202787B7F8FEB01C3DBFC7F5811C252FD814764B94
        80A3B3A9C9A6073952A91CD14500000006AB4A5171DB7EAF9105AADD6C3C147F
        D0384AEAABE78014756A3EA6511B52F902316031604ED4BE40B2AD5575302F1B
        BAAB3F520EF4AE378F071FF8073BAA518A535E98FA340662800036DA697D9072
        E29E538A900DE5ACB38E00362D1E52C006E283CAA013C3D1FC80470D47F200DC
        DBACEA00D9B459BC406F2D6394310255D372518C7653605EF34D79031940001B
        6D34BEC831CBDCCA2000000000016A54F793D903B57B6508ED45F920E34B523E
        4A355E69AF2418CA0000DB69A5F6418E5EE6510000000000098C9C5E2B3405EA
        579D4583C80AD2D48F90355E69AF2418CA0000DB69A3F641C9D2B79BC633C1FC
        3021DA4F934C0A3B6ACBA408DCD5ED6511BAA9DAC06EAA76B0277157B581656D
        59F220B2B497549202D0A76F092C65B52E405EF34D79031940001B2D744831BC
        CA254A4B2605957AABA98165735973207155BE407155BE40877359F5011BDAD2
        7EE650A90AB1F78114B523E40D579A6BC906328000365AE89063799400000000
        0017A3350A89BC80EF735E1286CC7D7120CF4B523E4A355E69AF2418CA0000DB
        69A2419E76D553CB1F007269ACCA000000000000002D3A939FB9E2054000036D
        A697D906655EAC5BC181D38B7D514C071145E74C06F2D7B006F2D7B006F2D7B0
        06F2D7B0071145654C0E556A6F1A78618145000000000DB69A5F6418E5EE6510
        0000000000BD1829D449E4077B9A14E30DA8FA344194A000000036DA697D9063
        9A6A4F1F42880000000000136B202D3A939FB9E205400000000E946BBA7FB8FC
        106A55A854CFFC6043B6A32CBF8055D9479480AF04FB808E0A7DC80E3529B84B
        659454000000000000000004DAC981755AAAEA60595CD65CC8255DD5FD30394E
        729CB196651000000000000000000000000000000000000000FFD9}
    end
    object btAjustabanc: TButton
      Left = 164
      Top = 111
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Iniciar'
      TabOrder = 0
      OnClick = btAjustabancClick
    end
  end
  object Memo1: TMemo
    Left = 864
    Top = 348
    Width = 355
    Height = 89
    TabOrder = 2
    Visible = False
  end
  object PegarCaminho: TOpenDialog
    Filter = 'Firebird | *.fdb'
    Title = 'Selecione um arquivo Firebird para migra'#231#227'o'
    Left = 1020
    Top = 302
  end
  object ImageList1: TImageList
    Left = 966
    Top = 346
    Bitmap = {
      494C010107004801480A10001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000055555500555555002222
      2200222222002222220044444400444444004444440044444400222222002222
      220022222200555555005555550000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F46DFF00CF35E200C742
      C000C72DC200E25DCB00AD26DA009A2CD800B644B900B3669200B4A09F00E8DF
      DC000000000000000000000000000000000000000000DDDDDD00DDDDDD00DDDD
      DD00DDDDDD00DDDDDD0077777700777777007777770077777700DDDDDD00DDDD
      DD00D5DDDD00DDDDDD00DDDDDD0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFE3F4E5FF8ED295FF8ED295FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E240BD00E92AC700EC4F
      C700FF5AFF00FF75E300F3A0AF00F06EDD00D632D300C629E5008B2CBC00DCB0
      E5000000000000000000000000000000000000000000A4A0A000A4A0A0000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A4A0A000A4A0A00000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF1F9F2FFB8E3BDFF8ED295FF8ED295FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F248B900FF4AF200FF77
      EF00FF84CA00EC95D500FFFFEE00FF92E900FF64D600FF5AD600D051AC00FFC3
      E9000000000000000000000000000000000055555500DDDDDD00DDDDDD00DDDD
      DD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDD
      DD00DDDDDD00DDDDDD00DDDDDD0055555500FFFFFFFFFFFFFFFFFFFFFFFF9CD7
      A2FF8ED295FF8ED295FF8ED295FF8ED295FF8ED295FF8ED295FF8ED295FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF84D600EE59BB00FF91
      E900F9A0E500FFE8FF00EDF2FF00FFA1D300FF89D700FF6DC900F27CBD00FFCC
      DF000000000000000000000000000000000055555500DDDDDD00DDDDDD00DDDD
      DD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDD
      DD00DDDDDD00DDDDDD00DDDDDD0055555500FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF8ED295FF8ED295FF8ED295FF8ED295FF8ED295FF8ED295FF8ED295FF8ED2
      95FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7ACC100FA8F
      DE00E093E400E4BBE100E2D3C300FFB2E100FF95F600F26CEE00D584E3000000
      00000000000000000000000000000000000055555500DDDDDD00DDDDDD00DDDD
      DD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDD
      DD00DDDDDD00DDDDDD00DDDDDD0055555500FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFAADDAFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FCF9FF8ED295FF8ED295FF8ED2
      95FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D2A5FC00A23E
      BB002D1A69001B00900059368000913EE100B65AC300EBAAC400000000000000
      00000000000000000000000000000000000055555500DDDDDD00DDDDDD00DDDD
      DD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDD
      DD00DDDDDD00DDDDDD00DDDDDD0055555500FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA3DAA9FF8ED295FF8ED295FF8ED2
      95FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000086908A00011715001A00
      00000007B000000CF1000B00B800031159005030660000000000000000000000
      0000000000000000000000000000000000005555550077777700777777007777
      7700777777007777770077777700777777007777770077777700777777007777
      770077777700777777007777770055555500FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF8ED295FF8ED295FF8ED295FF8ED295FF8ED295FF8ED2
      95FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5A4A8000000110000000E000004
      3F001336EA00193DDD000038DF001830E00000005C0000000000000000000000
      00000000000000000000000000000000000055555500DDDDDD00DDDDDD00DDDD
      DD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDD
      DD00DDDDDD00DDDDDD00DDDDDD0055555500FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF9CD7A2FF8ED295FF8ED295FF8ED295FF8ED295FF8ED295FF8ED295FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000463310000B0E050000060100001E
      44000056FF000059FF000A5CFF000034E000042F960074758900000000000000
      0000000000000000000000000000000000000000000055555500555555005555
      5500555555005555550055555500DDDDDD00DDDDDD0055555500555555005555
      550055555500555555005555550000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF8ED295FF8ED295FF8ED295FF8ED295FF8ED295FFD5EED7FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000025190F0004000A00070006000025
      460000ACFF000096FE00008DFF000583FF000457BA00506A8800000000000000
      000000000000000000000000000000000000000000000000000044444400C0C0
      C000F0FBFF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00F0FB
      FF0044444400444444000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFAADD
      AFFF8ED295FF8ED295FF8ED295FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005E69670000001200281022000C0A
      270028B2FE002BC7FC0013CAFF0038BAFF00004090008FA4BF00000000000000
      000000000000000000000000000000000000000000000000000044444400C0C0
      C000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0044444400444444000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFDCF1
      DEFF8ED295FF8ED295FF8ED295FFFFFFFFFFFFFFFFFFFFFFFFFF95D49BFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000003160700282919003F31
      35000119650000306F000057AF000860AC00002C5C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004444
      4400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0044444400000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF8ED295FF8ED295FF8ED295FF8ED295FF8ED295FF8ED295FF8ED295FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000070656700202C20004F53
      48009C7FA6008C6B860024285D0000001A006867770000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0044444400000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF8ED295FF8ED295FF8ED295FF8ED295FF8ED295FF8ED295FFB8E3
      BDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007D6E7200433E
      2F00D4CEC300D8BAA1003B2D2F004A443F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0044444400000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF8ED295FF8ED295FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000354A41005B5B4D007C849B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0044444400000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF8ED295FF8ED295FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000005B7000005B7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF5F6B00FF341000FF4A
      0300FF550900FF581A00FF4F2600FF4B0A00FF3D0A00FF302100FF697E000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000000000000005B7000005B7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000005B7000005B700000000000000000000000000000000000000
      0000000000000000000000000000F6FFF2000000000000000000000000000000
      00000000000000000000000000000000000000000000FF350000FF800000FF9B
      0000FFB71000FF890000FF670000FFA60000FF910000FF6A0000FF2C00000000
      0000000000000000000000000000000000000000000099A8AC0000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00FFFFFF000000000000000000000000000005B7000005B7000005
      B700000000000000000000000000000000000000000000000000000000000000
      00000005B7000005B70000000000000000000000000000000000000000000000
      00000000000000000000178F2A0018742500C6C9C70000000000000000000000
      00000000000000000000000000000000000000000000FF580000FFB00000FFB6
      0C00FFBD2F00FFB15800FFC08900FFBA1000FFB60300FFAB0000FF4A00000000
      0000000000000000000000000000000000000000000099A8AC0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D8E9EC00FFFFFF000000000000000000000000000005B7000005B6000005
      B7000005B7000000000000000000000000000000000000000000000000000005
      B7000005B7000000000000000000000000000000000000000000000000000000
      000000000000358F4E00009607000087050058A56B0000000000000000000000
      0000000000000000000000000000000000000000000000000000FF860000FFCB
      3400FFA12D00FFCFE500FFD5F400FFC13100FFC51B00FF7C0000FF7259000000
      0000000000000000000000000000000000000000000099A8AC0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D8E9EC00FFFFFF00000000000000000000000000000000000006D7000005
      BA000005B7000005B700000000000000000000000000000000000005B7000005
      B700000000000000000000000000000000000000000000000000000000000000
      000088B79D001483330000840100008C0700078A230000000000000000000000
      0000000000000000000000000000000000000000000000000000FF792300FFCB
      2400FFBD9400FFD5FF00FFD5E800FFD55200FFB51500FF6B1D00000000000000
      0000000000000000000000000000000000000000000099A8AC0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D8E9EC00FFFFFF0000000000000000000000000000000000000000000000
      00000005B7000005B7000005B600000000000005B6000005B7000005B7000000
      00000000000000000000000000000000000000000000000000000000000088B7
      9D0014833300008401000000000045AD58000074070077AF8400000000000000
      0000000000000000000000000000000000000000000000000000BDCDB300FF64
      0E003B8ECA003E87DB005AA7A400FF8E0900FF7F2100FF9A9A00000000000000
      0000000000000000000000000000000000000000000099A8AC0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D8E9EC00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000005B6000006C7000006C7000006CE000005B400000000000000
      0000000000000000000000000000000000000000000000000000000000002163
      320014712C00000000000000000000000000238B2C002B713C00000000000000
      000000000000000000000000000000000000000000000000000000000000202A
      47000078FA000072F8000066E400FF6487000000000000000000000000000000
      0000000000000000000000000000000000000000000099A8AC0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D8E9EC00FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000006C1000005C1000006DA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000088060040A756000000
      00000000000000000000000000000000000000000000000000005C5C6700014B
      B4000095FF000095FF000095FF000983F400B0B4CD0000000000000000000000
      0000000000000000000000000000000000000000000099A8AC0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D8E9EC00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000005B6000006D7000006CE000006DA000006E900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000148F2F001C7E32008FCD
      9F00000000000000000000000000000000000000000000000000204A8000008E
      FF0000A9FF0000A9FF0000A9FF00049FFF0067A6D90000000000000000000000
      0000000000000000000000000000000000000000000099A8AC0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D8E9EC00FFFFFF0000000000000000000000000000000000000000000000
      00000006E5000006DA000006D30000000000000000000006E5000006EF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000148F2F001C7E
      32008FCD9F00000000000000000000000000000000000000000000448A0002B5
      FF000EBBFF0014C6FF0014C6FF0005B1FF00499ADB0000000000000000000000
      0000000000000000000000000000000000000000000099A8AC0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D8E9EC00FFFFFF0000000000000000000000000000000000000000000006
      F8000006DA000006EF00000000000000000000000000000000000006F8000006
      F600000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000148F
      2F001C7E32008FCD9F00000000000000000000000000000000000058A9000DD3
      FF0023D5FF001FD1FF001FD1FF001FD1FF004EA5DF0000000000000000000000
      0000000000000000000000000000000000000000000099A8AC0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D8E9EC00FFFFFF00000000000000000000000000000000000006F6000006
      F6000006F8000000000000000000000000000000000000000000000000000006
      F6000006F6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000148F2F001C7E32008FCD9F00000000000000000000000000005397000797
      F1000096F3000096E8000089E0001196E0006CB8DF0000000000000000000000
      0000000000000000000000000000000000000000000099A8AC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D8E9EC00FFFFFF000000000000000000000000000006F6000006F6000006
      F600000000000000000000000000000000000000000000000000000000000000
      0000000000000006F60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000166E2C0019802F00000000000000000000000000417099000052
      B40070C7F90031ACF3000D8BE5000065BB009FB4C30000000000000000000000
      0000000000000000000000000000000000000000000099A8AC0099A8AC0099A8
      AC0099A8AC0099A8AC0099A8AC0099A8AC0099A8AC0099A8AC0099A8AC0099A8
      AC0099A8AC000000000000000000000000000006F6000006F6000006F6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000C8A2600000000000000000000000000000000000F75
      B900A3F3FF008EE5FF002CABF200519ECA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000006F6000006F600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000D7B2200000000000000000000000000C5D4
      DE001A98DA003DAAE00059ACD700000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00FFFF800100000000800F800100000000
      800F800100000000800F000000000000800F000000000000C01F000000000000
      C03F000000000000807F000000000000007F000000000000003F800100000000
      003FC00300000000003FC00300000000807FE00700000000807FF00700000000
      C0FFF00700000000F1FFF00700000000FFFFFFFFFFFFFFFFFFFFFFFCFFFF801F
      C0039FF9FEFF801F80038FF3FC7F801F800387E7F87FC01F8003C3CFF07FC03F
      8003F11FE23FC03F8003F83FE73FE0FF8003FC7FFF9FC07F8003F83FFF8FC07F
      8003F19FFFC7C07F8003E3CFFFE3C07F8003C7E7FFF1C07F80038FFBFFF9C07F
      80071FFFFFFDE0FFFFFF3FFFFFFEE1FF00000000000000000000000000000000
      000000000000}
  end
  object FDConnection3: TFDConnection
    Params.Strings = (
      'Protocol=TCPIP'
      'CharacterSet=WIN1252'
      'User_Name=sysdba'
      'Password=masterkey'
      'Server=ERALDODELL2'
      'DriverID=FB')
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtWideString
        TargetDataType = dtAnsiString
      end
      item
        SourceDataType = dtUInt64
        TargetDataType = dtInt32
      end
      item
        SourceDataType = dtUInt32
        TargetDataType = dtInt32
      end
      item
        SourceDataType = dtDateTimeStamp
        TargetDataType = dtDateTimeStamp
      end>
    LoginPrompt = False
    OnError = FDConnection3Error
    Left = 1068
    Top = 20
  end
  object QryListaFB3: TFDQuery
    OnCalcFields = QryListaFB3CalcFields
    Connection = FDConnection3
    SQL.Strings = (
      
        'SELECT RDB$RELATION_NAME as "Table" FROM RDB$RELATIONS WHERE RDB' +
        '$VIEW_BLR IS NULL'
      'and not (UPPER(RDB$RELATION_NAME) starting with '#39'RDB$'#39')'
      'and not (UPPER(RDB$RELATION_NAME) starting with '#39'MON$'#39')'
      'order by  RDB$RELATION_NAME')
    Left = 1070
    Top = 72
    object QryListaFB3ATIVO: TBooleanField
      DisplayLabel = ' '
      FieldKind = fkCalculated
      FieldName = 'ATIVO'
      Calculated = True
    end
    object QryListaFB3Table: TStringField
      DisplayLabel = 'Nome da Tabela'
      FieldName = 'Table'
      Origin = 'RDB$RELATION_NAME'
      FixedChar = True
      Size = 31
    end
  end
  object dsListaFB3: TDataSource
    DataSet = QryListaFB3
    Left = 1068
    Top = 125
  end
  object FDConnection2: TFDConnection
    Params.Strings = (
      'Protocol=TCPIP'
      'CharacterSet=WIN1252'
      'User_Name=sysdba'
      'Password=masterkey'
      'Server=ERALDODELL2'
      'DriverID=FB')
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtWideString
        TargetDataType = dtAnsiString
      end
      item
        SourceDataType = dtUInt64
        TargetDataType = dtInt32
      end
      item
        SourceDataType = dtUInt32
        TargetDataType = dtInt32
      end
      item
        SourceDataType = dtDateTimeStamp
        TargetDataType = dtDateTimeStamp
      end>
    LoginPrompt = False
    OnError = FDConnection2Error
    Left = 942
    Top = 22
  end
  object QryListaFB2: TFDQuery
    OnCalcFields = QryListaFB2CalcFields
    Connection = FDConnection2
    SQL.Strings = (
      
        'SELECT RDB$RELATION_NAME as "Table" FROM RDB$RELATIONS WHERE RDB' +
        '$VIEW_BLR IS NULL'
      'and not (UPPER(RDB$RELATION_NAME) starting with '#39'RDB$'#39')'
      'and not (UPPER(RDB$RELATION_NAME) starting with '#39'MON$'#39')'
      'order by  RDB$RELATION_NAME')
    Left = 946
    Top = 78
    object QryListaFB2ATIVO: TBooleanField
      DisplayLabel = ' '
      FieldKind = fkCalculated
      FieldName = 'ATIVO'
      Calculated = True
    end
    object QryListaFB2Table: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome da Tabela'
      FieldName = 'Table'
      Origin = '"Table"'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 31
    end
  end
  object qrySql2: TFDQuery
    Connection = FDConnection2
    SQL.Strings = (
      'select max(professor_id) as total from professores')
    Left = 978
    Top = 30
  end
  object dsListaFB2: TDataSource
    DataSet = QryListaFB2
    Left = 952
    Top = 122
  end
  object SQLReader3: TFDBatchMoveSQLReader
    Connection = FDConnection3
    Left = 1076
    Top = 184
  end
  object qrySql3: TFDQuery
    Connection = FDConnection3
    SQL.Strings = (
      'select max(professor_id) as total from professores')
    Left = 1122
    Top = 20
  end
  object FDBatchMove_2: TFDBatchMove
    Reader = SQLReader2
    Writer = BancodeDados.SQLWriter2
    Mappings = <>
    LogFileName = 'Data.log'
    Left = 966
    Top = 232
  end
  object SQLReader2: TFDBatchMoveSQLReader
    Connection = FDConnection2
    Left = 956
    Top = 178
  end
  object FBDriver: TFDPhysFBDriverLink
    VendorLib = 'C:\SED Soft\fbclient.dll'
    OnDriverCreated = FBDriverDriverCreated
    Left = 978
    Top = 294
  end
  object WaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 926
    Top = 54
  end
  object FDBatchMove_3: TFDBatchMove
    Reader = SQLReader3
    Writer = BancodeDados.SQLWriter3
    Mappings = <>
    LogFileName = 'Data.log'
    Left = 1090
    Top = 238
  end
end
