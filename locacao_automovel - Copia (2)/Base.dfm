object BancodeDados: TBancodeDados
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 1138
  Width = 1331
  object Clientes: TFDQuery
    BeforeOpen = ClientesBeforeOpen
    AfterOpen = ClientesAfterOpen
    BeforeClose = ClientesBeforeClose
    AfterInsert = ClientesAfterInsert
    BeforePost = ClientesBeforePost
    OnCalcFields = ClientesCalcFields
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    UpdateObject = upClientes
    SQL.Strings = (
      'select'
      '    c.*, m.nome as cidade_nome, e.nome as uf_nome,'
      
        '    (select count(boleto_id) from boletos where cli_id = c.cli_i' +
        'd and boletos.situacao_boleto=('#39'A RECEBER'#39') and c.sit=1) as n_ti' +
        'tulos'
      '    from clientes c'
      '    left join municipios m on (m.codmun=c.cidade)'
      '    left join estados e on (e.uf_cod=c.estado)'
      'where 1=1')
    Left = 54
    Top = 126
    object ClientesCLI_ID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CLI_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      DisplayFormat = '000000'
    end
    object ClientesNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 60
    end
    object ClientesCNPJ: TStringField
      DisplayLabel = 'C.P.F/C.N.P.J'
      FieldName = 'CNPJ'
      Size = 19
    end
    object ClientesTIPO: TStringField
      FieldName = 'TIPO'
    end
    object ClientesCLIENTE_DESDE: TDateField
      FieldName = 'CLIENTE_DESDE'
    end
    object ClientesLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 60
    end
    object ClientesBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object ClientesESTADO: TStringField
      FieldName = 'ESTADO'
      OnChange = ClientesESTADOChange
      Size = 2
    end
    object ClientesCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object ClientesFONE1: TStringField
      FieldName = 'FONE1'
      EditMask = '!\(99\)99999-9999;1;_'
      Size = 16
    end
    object ClientesFONE2: TStringField
      FieldName = 'FONE2'
      EditMask = '!\(99\)99999-9999;1;_'
      Size = 16
    end
    object ClientesFAX: TStringField
      FieldName = 'FAX'
      EditMask = '!\(99\)99999-9999;1;_'
      Size = 16
    end
    object ClientesOBS: TMemoField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object ClientesCONFIAVEL: TSmallintField
      FieldName = 'CONFIAVEL'
    end
    object ClientesSKYPE1: TStringField
      DisplayLabel = 'Skype'
      FieldName = 'SKYPE1'
      Size = 60
    end
    object ClientesFAT_NOTA: TSmallintField
      DisplayLabel = 'NFEs?'
      FieldName = 'FAT_NOTA'
    end
    object ClientesSIT: TSmallintField
      FieldName = 'SIT'
    end
    object ClientesEMAIL_CONTATO1: TStringField
      FieldName = 'EMAIL_CONTATO1'
      Size = 240
    end
    object ClientesLOGIN: TStringField
      FieldName = 'LOGIN'
    end
    object ClientesSENHA: TStringField
      FieldName = 'SENHA'
    end
    object ClientesSituac_Nome: TStringField
      FieldKind = fkCalculated
      FieldName = 'Situac_Nome'
      Calculated = True
    end
    object ClientesCOD_RASTREIO: TStringField
      FieldName = 'COD_RASTREIO'
    end
    object ClientesEMAIL_CONTATO2: TStringField
      FieldName = 'EMAIL_CONTATO2'
      Size = 240
    end
    object ClientesListaServ: TStringField
      FieldKind = fkCalculated
      FieldName = 'ListaServ'
      Size = 1000
      Calculated = True
    end
    object ClientesIMP_BOL: TSmallintField
      DisplayLabel = 'Imp. Bol?'
      FieldName = 'IMP_BOL'
    end
    object ClientesENTREGUE_BOL: TSmallintField
      DisplayLabel = 'Ent. Bol?'
      FieldName = 'ENTREGUE_BOL'
    end
    object ClientesATIVO: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'ATIVO'
      Calculated = True
    end
    object ClientesConfiavelNome: TStringField
      DisplayLabel = 'Confi'#225'vel?'
      FieldKind = fkCalculated
      FieldName = 'ConfiavelNome'
      Calculated = True
    end
    object ClientesLOGO: TBlobField
      FieldName = 'LOGO'
      ProviderFlags = [pfInUpdate]
    end
    object ClientesOPER_CEL1_ID: TIntegerField
      FieldName = 'OPER_CEL1_ID'
    end
    object ClientesOPER_CEL2_ID: TIntegerField
      FieldName = 'OPER_CEL2_ID'
    end
    object ClientesOPER_FAX_ID: TIntegerField
      FieldName = 'OPER_FAX_ID'
    end
    object ClientesCelula_Novo_2: TStringField
      DisplayLabel = 'Celular-2'
      FieldKind = fkCalculated
      FieldName = 'Celula_Novo_2'
      Size = 90
      Calculated = True
    end
    object ClientesCelula_Novo_1: TStringField
      DisplayLabel = 'Telefone/Celular-1'
      FieldKind = fkCalculated
      FieldName = 'Celula_Novo_1'
      Size = 90
      Calculated = True
    end
    object ClientesDEBITO_AUTO: TSmallintField
      FieldName = 'DEBITO_AUTO'
    end
    object ClientesCONTRATO: TSmallintField
      DisplayLabel = 'Contrato?'
      FieldName = 'CONTRATO'
    end
    object ClientesNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 16
    end
    object ClientesBANCO_ID: TIntegerField
      FieldName = 'BANCO_ID'
    end
    object ClientesBANC_AGENCIA: TStringField
      FieldName = 'BANC_AGENCIA'
      Size = 9
    end
    object ClientesBANC_CONTA: TStringField
      FieldName = 'BANC_CONTA'
      Size = 60
    end
    object ClientesBANC_OPERACAO: TIntegerField
      FieldName = 'BANC_OPERACAO'
    end
    object ClientesCIDADE: TStringField
      FieldName = 'CIDADE'
      OnChange = ClientesCIDADEChange
      Size = 60
    end
    object ClientesINSC_MUNICIPAL: TStringField
      FieldName = 'INSC_MUNICIPAL'
      Size = 13
    end
    object ClientesBANC_ACATAMENTO: TMemoField
      FieldName = 'BANC_ACATAMENTO'
      Origin = 'BANC_ACATAMENTO'
      BlobType = ftMemo
    end
    object ClientesCIDADE_NOME: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE_NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object ClientesUF_NOME: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'U.F'
      FieldName = 'UF_NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
    end
    object ClientesN_TITULOS: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Folhas/Bol'
      FieldName = 'N_TITULOS'
      Origin = 'N_TITULOS'
      ProviderFlags = []
    end
    object ClientesFANTASIA_RED: TStringField
      FieldName = 'FANTASIA_RED'
      Origin = 'FANTASIA_RED'
    end
    object ClientesNASCIMENTO: TDateField
      FieldName = 'NASCIMENTO'
      Origin = 'NASCIMENTO'
    end
    object ClientesSEXO: TStringField
      FieldName = 'SEXO'
      Origin = 'SEXO'
      Size = 1
    end
    object ClientesNACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
      Origin = 'NACIONALIDADE'
      OnChange = ClientesNACIONALIDADEChange
    end
    object ClientesUF_NATURAL: TStringField
      FieldName = 'UF_NATURAL'
      Origin = 'UF_NATURAL'
      OnChange = ClientesUF_NATURALChange
    end
    object ClientesNATURALIDADE: TStringField
      FieldName = 'NATURALIDADE'
      Origin = 'NATURALIDADE'
      OnChange = ClientesNATURALIDADEChange
      Size = 60
    end
    object ClientesEST_CIVIL: TStringField
      FieldName = 'EST_CIVIL'
      Origin = 'EST_CIVIL'
    end
    object ClientesPROFISSAO: TStringField
      FieldName = 'PROFISSAO'
      Origin = 'PROFISSAO'
      Size = 60
    end
    object ClientesCONTATO: TStringField
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
      Size = 60
    end
    object ClientesRG: TStringField
      FieldName = 'RG'
      Origin = 'RG'
      Size = 16
    end
    object ClientesRG_DATA: TDateField
      FieldName = 'RG_DATA'
      Origin = 'RG_DATA'
    end
    object ClientesRG_ORG_ID: TIntegerField
      FieldName = 'RG_ORG_ID'
      Origin = 'RG_ORG_ID'
    end
    object ClientesRG_UF: TStringField
      FieldName = 'RG_UF'
      Origin = 'RG_UF'
    end
    object ClientesPASSAPORTE: TStringField
      FieldName = 'PASSAPORTE'
      Origin = 'PASSAPORTE'
    end
    object ClientesCNH_N_REG: TStringField
      FieldName = 'CNH_N_REG'
      Origin = 'CNH_N_REG'
    end
    object ClientesCNH_DT_1_HAB: TDateField
      FieldName = 'CNH_DT_1_HAB'
      Origin = 'CNH_DT_1_HAB'
    end
    object ClientesCNH_RENACH: TStringField
      FieldName = 'CNH_RENACH'
      Origin = 'CNH_RENACH'
      Size = 11
    end
    object ClientesCNH_DT_VALIDADE: TDateField
      FieldName = 'CNH_DT_VALIDADE'
      Origin = 'CNH_DT_VALIDADE'
    end
  end
  object DsClientes: TDataSource
    DataSet = Clientes
    Left = 52
    Top = 168
  end
  object QryID: TFDQuery
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    Left = 294
    Top = 38
  end
  object GradeFin: TFDQuery
    AfterInsert = GradeFinAfterInsert
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      'select * from grade_financeira')
    Left = 202
    Top = 118
    object GradeFinGRADE_ID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'GRADE_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      DisplayFormat = '000000'
    end
    object GradeFinDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object GradeFinMULTA: TFloatField
      FieldName = 'MULTA'
      DisplayFormat = ',0.00'
    end
    object GradeFinJUROS: TFloatField
      FieldName = 'JUROS'
      DisplayFormat = ',0.00'
    end
    object GradeFinJUROS_MES_OPCAO: TSmallintField
      FieldName = 'JUROS_MES_OPCAO'
    end
    object GradeFinJUROS_MES: TFloatField
      FieldName = 'JUROS_MES'
    end
    object GradeFinPADRAO: TIntegerField
      FieldName = 'PADRAO'
    end
  end
  object DSGrade: TDataSource
    DataSet = GradeFin
    Left = 200
    Top = 162
  end
  object Boletos: TFDQuery
    BeforeOpen = BoletosBeforeOpen
    AfterOpen = BoletosAfterOpen
    BeforeClose = BoletosBeforeClose
    AfterClose = BoletosAfterClose
    AfterInsert = BoletosAfterInsert
    BeforePost = BoletosBeforePost
    BeforeDelete = BoletosBeforeDelete
    OnCalcFields = BoletosCalcFields
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    UpdateObject = upBoletos
    SQL.Strings = (
      
        'select b.*, c.nome as cliente, c.cnpj, coalesce(b.valor_mensal, ' +
        '0) + coalesce(b.valor_lic, 0) as valor_integral'
      'from boletos b'
      'left join clientes c on (c.cli_id = b.cli_id)'
      'left join livro_caixa l on (l.caixa_id = b.caixa_id)'
      'where b.boleto_id=0')
    Left = 359
    Top = 124
    object BoletosBOLETO_ID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'BOLETO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      DisplayFormat = '000000'
    end
    object BoletosDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object BoletosPARCELA: TStringField
      DisplayLabel = 'Parcela'
      FieldName = 'PARCELA'
      Size = 9
    end
    object BoletosDESCONTO: TFloatField
      DisplayLabel = 'Desc(R$)'
      FieldName = 'DESCONTO'
      DisplayFormat = ',0.00'
    end
    object BoletosACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
      DisplayFormat = ',0.00'
    end
    object BoletosVALOR_APAGAR: TFloatField
      DisplayLabel = 'Vl. a Pagar'
      FieldName = 'VALOR_APAGAR'
      DisplayFormat = ',0.00'
    end
    object BoletosJUROS: TFloatField
      FieldName = 'JUROS'
      DisplayFormat = ',0.00'
    end
    object BoletosMULTA: TFloatField
      FieldName = 'MULTA'
    end
    object BoletosVALOR_PAGO: TFloatField
      DisplayLabel = 'Vl. Pago'
      FieldName = 'VALOR_PAGO'
      DisplayFormat = ',0.00'
    end
    object BoletosSITUACAO_BOLETO: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'SITUACAO_BOLETO'
    end
    object BoletosVENCIMENTO: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'VENCIMENTO'
    end
    object BoletosEMISSAO: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'EMISSAO'
    end
    object BoletosRECEBIMENTO: TDateField
      DisplayLabel = 'Recebimento'
      FieldName = 'RECEBIMENTO'
    end
    object BoletosCLI_ID: TIntegerField
      DisplayLabel = 'C'#243'd. Cli.'
      FieldName = 'CLI_ID'
      DisplayFormat = '000000'
    end
    object BoletosDESCRICAO_PAGO: TStringField
      DisplayLabel = 'Pago em'
      FieldName = 'DESCRICAO_PAGO'
    end
    object BoletosGRADE_ID: TIntegerField
      FieldName = 'GRADE_ID'
    end
    object BoletosBANCO_ID: TIntegerField
      FieldName = 'BANCO_ID'
    end
    object BoletosRETORNO_ID: TIntegerField
      FieldName = 'RETORNO_ID'
    end
    object BoletosOBS: TMemoField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object BoletosOBS_BOLETO: TMemoField
      FieldName = 'OBS_BOLETO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object BoletosUSR_CAD: TIntegerField
      FieldName = 'USR_CAD'
    end
    object BoletosUSR_ID: TIntegerField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USR_ID'
    end
    object BoletosDT_ALTERADO: TDateField
      DisplayLabel = 'Dt. Alterado'
      FieldName = 'DT_ALTERADO'
    end
    object BoletosBancoNome: TStringField
      FieldKind = fkLookup
      FieldName = 'BancoNome'
      LookupDataSet = Bancos
      LookupKeyFields = 'BANCO_ID'
      LookupResultField = 'BANCO_NOME'
      KeyFields = 'BANCO_ID'
      Size = 60
      Lookup = True
    end
    object BoletosATIVO: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'ATIVO'
      Calculated = True
    end
    object BoletosQtdDias: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'QtdDias'
      Calculated = True
    end
    object BoletosVALOR_MENSAL: TFloatField
      DisplayLabel = 'Valor Mensal'
      FieldName = 'VALOR_MENSAL'
      DisplayFormat = ',0.00'
    end
    object BoletosVALOR_LIC: TFloatField
      DisplayLabel = 'Valor Licen'#231'a'
      FieldName = 'VALOR_LIC'
      DisplayFormat = ',0.00'
    end
    object BoletosGradeNome: TStringField
      FieldKind = fkLookup
      FieldName = 'GradeNome'
      LookupDataSet = GradeFin
      LookupKeyFields = 'GRADE_ID'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'GRADE_ID'
      Size = 60
      Lookup = True
    end
    object BoletosEMISSAO_ID: TIntegerField
      FieldName = 'EMISSAO_ID'
    end
    object BoletosDiasTolCalc: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'DiasTolCalc'
      Calculated = True
    end
    object BoletosCliFone: TStringField
      FieldKind = fkCalculated
      FieldName = 'CliFone'
      Size = 16
      Calculated = True
    end
    object BoletosGradeJuros: TCurrencyField
      FieldKind = fkLookup
      FieldName = 'GradeJuros'
      LookupDataSet = GradeFin
      LookupKeyFields = 'GRADE_ID'
      LookupResultField = 'JUROS'
      KeyFields = 'GRADE_ID'
      Lookup = True
    end
    object BoletosGradeMulta: TCurrencyField
      FieldKind = fkLookup
      FieldName = 'GradeMulta'
      LookupDataSet = GradeFin
      LookupKeyFields = 'GRADE_ID'
      LookupResultField = 'MULTA'
      KeyFields = 'GRADE_ID'
      Lookup = True
    end
    object BoletosImpBoleto: TStringField
      DisplayLabel = 'Impresso?'
      FieldKind = fkCalculated
      FieldName = 'ImpBoleto'
      Size = 3
      Calculated = True
    end
    object BoletosCAIXA_ID: TIntegerField
      FieldName = 'CAIXA_ID'
    end
    object BoletosDT_CREDITO: TDateField
      FieldName = 'DT_CREDITO'
    end
    object BoletosConfiavel: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Confiavel'
      Calculated = True
    end
    object BoletosNFS_ID: TIntegerField
      FieldName = 'NFS_ID'
    end
    object BoletosFantasia: TStringField
      FieldKind = fkCalculated
      FieldName = 'Fantasia'
      Size = 40
      Calculated = True
    end
    object BoletosFaturado: TStringField
      DisplayLabel = 'Faturado?'
      FieldKind = fkCalculated
      FieldName = 'Faturado'
      Size = 3
      Calculated = True
    end
    object BoletosJurosCalc: TFloatField
      DisplayLabel = 'Juros(Calculado)'
      FieldKind = fkCalculated
      FieldName = 'JurosCalc'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object BoletosvlAPagarCalc: TFloatField
      DisplayLabel = 'A Receber(Calculado)'
      FieldKind = fkCalculated
      FieldName = 'vlAPagarCalc'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object BoletosvlFaltando: TFloatField
      FieldKind = fkCalculated
      FieldName = 'vlFaltando'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object BoletosVENCIMENTO_ORIG: TDateField
      DisplayLabel = 'Venc. Original'
      FieldName = 'VENCIMENTO_ORIG'
    end
    object BoletosVALOR_APAGAR_ORIG: TFloatField
      FieldName = 'VALOR_APAGAR_ORIG'
      DisplayFormat = ',0.00'
    end
    object BoletosTIPO_CONTAS_ID: TIntegerField
      FieldName = 'TIPO_CONTAS_ID'
    end
    object BoletosDUPLIC_BOL_ID: TIntegerField
      FieldName = 'DUPLIC_BOL_ID'
    end
    object BoletosDUPLIC_RET_ID: TIntegerField
      FieldName = 'DUPLIC_RET_ID'
    end
    object BoletosOP_PAG_ID: TIntegerField
      FieldName = 'OP_PAG_ID'
    end
    object BoletosRECEB_ID: TIntegerField
      FieldName = 'RECEB_ID'
    end
    object BoletosACRESC_EXTRA: TFloatField
      FieldName = 'ACRESC_EXTRA'
    end
    object BoletosProtestado: TStringField
      DisplayLabel = 'Protesto?'
      FieldKind = fkCalculated
      FieldName = 'Protestado'
      Size = 15
      Calculated = True
    end
    object BoletosRemessaGerada: TStringField
      DisplayLabel = 'Remessa?'
      FieldKind = fkCalculated
      FieldName = 'RemessaGerada'
      Size = 3
      Calculated = True
    end
    object BoletosRemessaSit: TStringField
      DisplayLabel = 'Remessa'
      FieldKind = fkCalculated
      FieldName = 'RemessaSit'
      Size = 30
      Calculated = True
    end
    object BoletosRET_OC_ID: TIntegerField
      FieldName = 'RET_OC_ID'
    end
    object BoletosREMESSA_ID: TIntegerField
      DisplayLabel = 'C'#243'd. Rem.'
      FieldName = 'REMESSA_ID'
      Origin = 'REMESSA_ID'
    end
    object BoletosCLIENTE: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cliente'
      FieldName = 'CLIENTE'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object BoletosCNPJ: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C.N.P.J'
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      ProviderFlags = []
      ReadOnly = True
      Size = 19
    end
    object BoletosVALOR_INTEGRAL: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Valor Integral'
      FieldName = 'VALOR_INTEGRAL'
      Origin = 'VALOR_INTEGRAL'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
  end
  object DSBoletos: TDataSource
    DataSet = Boletos
    Left = 359
    Top = 168
  end
  object Emissoes: TFDQuery
    AfterInsert = EmissoesAfterInsert
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      'select * from boletos_emissao where emissao_id=0')
    Left = 437
    Top = 118
    object EmissoesEMISSAO_ID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'EMISSAO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '000000'
    end
    object EmissoesBANCO_ID: TIntegerField
      FieldName = 'BANCO_ID'
    end
    object EmissoesCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
    end
    object EmissoesEMISSAO: TDateField
      FieldName = 'EMISSAO'
    end
    object EmissoesVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object EmissoesPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 9
    end
    object EmissoesESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 9
    end
    object EmissoesACEITE: TStringField
      FieldName = 'ACEITE'
      Size = 9
    end
    object EmissoesMOEDA: TStringField
      FieldName = 'MOEDA'
      Size = 3
    end
    object EmissoesQTD_MOEDA: TIntegerField
      FieldName = 'QTD_MOEDA'
    end
    object EmissoesVALOR_MOEDA: TFloatField
      FieldName = 'VALOR_MOEDA'
    end
    object EmissoesSEQ_NOSSO_NUM: TIntegerField
      FieldName = 'SEQ_NOSSO_NUM'
    end
    object EmissoesNOSSO_NUMERO: TStringField
      FieldName = 'NOSSO_NUMERO'
      Size = 40
    end
    object EmissoesVALOR_DOC: TFloatField
      FieldName = 'VALOR_DOC'
    end
    object EmissoesCOD_BARRAS: TStringField
      FieldName = 'COD_BARRAS'
      Size = 120
    end
    object EmissoesLINHA_DIG: TStringField
      FieldName = 'LINHA_DIG'
      Size = 120
    end
    object EmissoesVALOR_RECEBIDO: TFloatField
      FieldName = 'VALOR_RECEBIDO'
    end
    object EmissoesGRADE_ID: TIntegerField
      FieldName = 'GRADE_ID'
    end
    object EmissoesDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object EmissoesRETORNO_ID: TIntegerField
      FieldName = 'RETORNO_ID'
    end
    object EmissoesID_BOLETOS: TStringField
      FieldName = 'ID_BOLETOS'
      Size = 120
    end
    object EmissoesUSR_CAD: TIntegerField
      FieldName = 'USR_CAD'
    end
    object EmissoesOBS: TMemoField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object EmissoesDIAS_TOLERANCIA: TIntegerField
      FieldName = 'DIAS_TOLERANCIA'
    end
    object EmissoesSITUACAO_BOLETO: TStringField
      FieldName = 'SITUACAO_BOLETO'
      ProviderFlags = []
      Size = 9
    end
    object EmissoesDATA_RECEBIMENTO: TDateField
      FieldName = 'DATA_RECEBIMENTO'
      ProviderFlags = []
    end
    object EmissoesCANCELADO: TSmallintField
      FieldName = 'CANCELADO'
    end
    object EmissoesDT_PROCES: TDateField
      FieldName = 'DT_PROCES'
    end
    object EmissoesFORNE_ID: TIntegerField
      FieldName = 'FORNE_ID'
    end
    object EmissoesREMESSA: TIntegerField
      FieldName = 'REMESSA'
    end
    object EmissoesDIAS_BAIXAR_BANCO: TSmallintField
      FieldName = 'DIAS_BAIXAR_BANCO'
    end
    object EmissoesCOD_MOV: TIntegerField
      FieldName = 'COD_MOV'
    end
    object EmissoesREMESSA_ID_ANT: TIntegerField
      FieldName = 'REMESSA_ID_ANT'
    end
    object EmissoesCODIGO_BANCO: TIntegerField
      DisplayLabel = 'C'#243'd. Banc'#225'rio'
      FieldName = 'CODIGO_BANCO'
      Origin = 'CODIGO_BANCO'
    end
  end
  object Retorno: TFDQuery
    AfterInsert = RetornoAfterInsert
    OnCalcFields = RetornoCalcFields
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      'select * from retorno')
    Left = 518
    Top = 118
    object RetornoRETORNO_ID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'RETORNO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '000000'
    end
    object RetornoNUMERO_ARQUIVO: TIntegerField
      DisplayLabel = 'N.'#186' Arq.'
      FieldName = 'NUMERO_ARQUIVO'
    end
    object RetornoDATA_ARQUIVO: TDateField
      DisplayLabel = 'Dt. Arq.'
      FieldName = 'DATA_ARQUIVO'
    end
    object RetornoNUMERO_REGISTRO: TIntegerField
      FieldName = 'NUMERO_REGISTRO'
    end
    object RetornoBANCO_ID: TIntegerField
      FieldName = 'BANCO_ID'
    end
    object RetornoCODIGO_BANCO: TIntegerField
      DisplayLabel = 'C'#243'd. Banco'
      FieldName = 'CODIGO_BANCO'
      DisplayFormat = '000'
    end
    object RetornoCODIGO_AGENCIA: TIntegerField
      FieldName = 'CODIGO_AGENCIA'
    end
    object RetornoDIGITO_AGENCIA: TStringField
      FieldName = 'DIGITO_AGENCIA'
      Size = 1
    end
    object RetornoNUMERO_CONTA: TStringField
      FieldName = 'NUMERO_CONTA'
      Size = 19
    end
    object RetornoDIGITO_CONTA: TIntegerField
      FieldName = 'DIGITO_CONTA'
    end
    object RetornoCODIGO_CEDENTE: TStringField
      FieldName = 'CODIGO_CEDENTE'
      Size = 40
    end
    object RetornoNOME_CEDENTE: TStringField
      FieldName = 'NOME_CEDENTE'
      Size = 60
    end
    object RetornoCOD_SACADO: TIntegerField
      FieldName = 'COD_SACADO'
    end
    object RetornoNOME_SACADO: TStringField
      FieldName = 'NOME_SACADO'
      Size = 60
    end
    object RetornoSEU_NUMERO: TStringField
      FieldName = 'SEU_NUMERO'
      Size = 40
    end
    object RetornoNOSSO_NUMERO: TStringField
      DisplayLabel = 'Nosso N'#250'mero'
      FieldName = 'NOSSO_NUMERO'
      Size = 40
    end
    object RetornoCARTEIRA: TIntegerField
      FieldName = 'CARTEIRA'
    end
    object RetornoDATA_CREDITO: TDateField
      DisplayLabel = 'Dt. Cr'#233'dito'
      FieldName = 'DATA_CREDITO'
    end
    object RetornoDATA_RECEBIMENTO: TDateField
      DisplayLabel = 'Dt. Recebimento'
      FieldName = 'DATA_RECEBIMENTO'
    end
    object RetornoVALOR_DOCUMENTO: TFloatField
      DisplayLabel = 'Valor Documento'
      FieldName = 'VALOR_DOCUMENTO'
      DisplayFormat = ',0.00'
    end
    object RetornoVALOR_IOF: TFloatField
      DisplayLabel = 'Valor IOF'
      FieldName = 'VALOR_IOF'
      DisplayFormat = ',0.00'
    end
    object RetornoVALOR_ABATIMENTO: TFloatField
      DisplayLabel = 'Vl. Abatimento'
      FieldName = 'VALOR_ABATIMENTO'
      DisplayFormat = ',0.00'
    end
    object RetornoVALOR_DESCONTO: TFloatField
      DisplayLabel = 'Vl. Desc.'
      FieldName = 'VALOR_DESCONTO'
      DisplayFormat = ',0.00'
    end
    object RetornoVALOR_MORA: TFloatField
      DisplayLabel = 'Valor Mora'
      FieldName = 'VALOR_MORA'
      DisplayFormat = ',0.00'
    end
    object RetornoVALOR_OUTROS_CREDITOS: TFloatField
      FieldName = 'VALOR_OUTROS_CREDITOS'
      DisplayFormat = ',0.00'
    end
    object RetornoVALOR_DESP_COBRANCA: TFloatField
      FieldName = 'VALOR_DESP_COBRANCA'
      DisplayFormat = ',0.00'
    end
    object RetornoVALOR_OUTRAS_DESP: TFloatField
      FieldName = 'VALOR_OUTRAS_DESP'
      DisplayFormat = ',0.00'
    end
    object RetornoBAIXOU: TIntegerField
      FieldName = 'BAIXOU'
    end
    object RetornoVALOR_MULTA: TFloatField
      FieldName = 'VALOR_MULTA'
    end
    object RetornoTX_BANCO: TFloatField
      DisplayLabel = 'Tx. Banco'
      FieldName = 'TX_BANCO'
      DisplayFormat = ',0.00'
    end
    object RetornoVALOR_PAGO: TFloatField
      DisplayLabel = 'Valor Pago'
      FieldName = 'VALOR_PAGO'
      DisplayFormat = ',0.00'
    end
    object RetornoUSR_CAD: TIntegerField
      FieldName = 'USR_CAD'
    end
    object RetornoUSUARIO_ID: TIntegerField
      FieldName = 'USUARIO_ID'
    end
    object RetornoDT_ALTERADO: TDateField
      FieldName = 'DT_ALTERADO'
    end
    object RetornoDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object RetornoDescAbat: TCurrencyField
      DisplayLabel = 'Desc./Abatim.'
      FieldKind = fkCalculated
      FieldName = 'DescAbat'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object RetornoDataVencCalc: TDateField
      FieldKind = fkCalculated
      FieldName = 'DataVencCalc'
      Calculated = True
    end
    object RetornoCONVENIO: TStringField
      FieldName = 'CONVENIO'
    end
    object RetornoTIPO: TSmallintField
      FieldName = 'TIPO'
    end
    object RetornoRetornoDebAuto: TStringField
      DisplayLabel = 'Informa'#231#245'es D'#233'b. Autom'#225'tico'
      FieldKind = fkCalculated
      FieldName = 'RetornoDebAuto'
      Size = 120
      Calculated = True
    end
    object RetornoTipoQuitacao: TStringField
      DisplayLabel = 'Tipo Quita'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'TipoQuitacao'
      Size = 40
      Calculated = True
    end
    object RetornoNOME_ARQ: TStringField
      FieldName = 'NOME_ARQ'
      Size = 240
    end
    object RetornoCOD_OCORRENCIA: TIntegerField
      FieldName = 'COD_OCORRENCIA'
    end
    object RetornoCOB_DEB: TIntegerField
      FieldName = 'COB_DEB'
    end
  end
  object DSEmissoes: TDataSource
    DataSet = Emissoes
    Left = 439
    Top = 162
  end
  object DSRetorno: TDataSource
    DataSet = Retorno
    Left = 518
    Top = 162
  end
  object Contas: TFDQuery
    AfterInsert = ContasAfterInsert
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    UpdateObject = upContas
    SQL.Strings = (
      'select * from tipo_contas where conta_id > 0')
    Left = 42
    Top = 286
    object ContasCONTA_ID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CONTA_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '000000'
    end
    object ContasCONTA: TStringField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Size = 60
    end
    object ContasABREV: TStringField
      DisplayLabel = 'Abrev.'
      FieldName = 'ABREV'
      Size = 9
    end
    object ContasOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object ContasREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 13
    end
    object ContasUSR_CAD: TIntegerField
      FieldName = 'USR_CAD'
    end
    object ContasUSUARIO_ID: TIntegerField
      FieldName = 'USUARIO_ID'
    end
    object ContasDT_ALTERADO: TDateField
      FieldName = 'DT_ALTERADO'
    end
  end
  object DSContas: TDataSource
    DataSet = Contas
    Left = 42
    Top = 336
  end
  object DSLivroCaixa: TDataSource
    DataSet = Livro_Caixa
    Left = 123
    Top = 336
  end
  object QryLivro_Caixa: TFDQuery
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      
        'select sum(saida) as TSaida, sum(entrada) as TEntrada, sum(Entra' +
        'da-Saida) as Diferenca  from livro_caixa')
    Left = 760
    Top = 286
    object QryLivro_CaixaTSAIDA: TFloatField
      FieldName = 'TSAIDA'
      ReadOnly = True
    end
    object QryLivro_CaixaTENTRADA: TFloatField
      FieldName = 'TENTRADA'
      ReadOnly = True
    end
    object QryLivro_CaixaDIFERENCA: TFloatField
      FieldName = 'DIFERENCA'
      ReadOnly = True
    end
  end
  object qryGradeFin: TFDQuery
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      'select grade_id, multa, juros from grade_financeira')
    Left = 760
    Top = 336
    object qryGradeFinGRADE_ID: TIntegerField
      FieldName = 'GRADE_ID'
    end
    object qryGradeFinMULTA: TFloatField
      FieldName = 'MULTA'
    end
    object qryGradeFinJUROS: TFloatField
      FieldName = 'JUROS'
    end
  end
  object V_Boletos: TFDQuery
    BeforeOpen = V_BoletosBeforeOpen
    OnCalcFields = V_BoletosCalcFields
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      'select * from v_boletos')
    Left = 520
    Top = 286
    object V_BoletosEMISSAO_ID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'EMISSAO_ID'
      LookupDataSet = Bancos
      DisplayFormat = '000000'
    end
    object V_BoletosBANCO_ID: TIntegerField
      DisplayLabel = 'C'#243'd. Banco'
      FieldName = 'BANCO_ID'
      DisplayFormat = '000000'
    end
    object V_BoletosCOD_BANCO: TIntegerField
      DisplayLabel = 'Banco'
      FieldName = 'COD_BANCO'
      DisplayFormat = '000000'
    end
    object V_BoletosDIG_BANCO: TIntegerField
      FieldName = 'DIG_BANCO'
      DisplayFormat = '000000'
    end
    object V_BoletosAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 60
    end
    object V_BoletosDIG_AGENCIA: TStringField
      FieldName = 'DIG_AGENCIA'
      Size = 1
    end
    object V_BoletosCONTA_CORRENTE: TStringField
      FieldName = 'CONTA_CORRENTE'
      Size = 60
    end
    object V_BoletosDIG_CONTA_CORRENTE: TStringField
      FieldName = 'DIG_CONTA_CORRENTE'
      Size = 1
    end
    object V_BoletosCONVENIO: TIntegerField
      FieldName = 'CONVENIO'
    end
    object V_BoletosLOGOMARCA: TBlobField
      FieldName = 'LOGOMARCA'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object V_BoletosLOCAL_PAGAMENTO: TStringField
      FieldName = 'LOCAL_PAGAMENTO'
      Size = 240
    end
    object V_BoletosNOME_CEDENTE: TStringField
      FieldName = 'NOME_CEDENTE'
      Size = 120
    end
    object V_BoletosCARTEIRA: TIntegerField
      DisplayLabel = 'Carteira'
      FieldName = 'CARTEIRA'
    end
    object V_BoletosCOD_CEDENTE: TStringField
      FieldName = 'COD_CEDENTE'
      Size = 60
    end
    object V_BoletosDIG_COD_CEDENTE: TStringField
      FieldName = 'DIG_COD_CEDENTE'
      Size = 1
    end
    object V_BoletosDIAS_TOLERANCIA: TIntegerField
      DisplayLabel = 'Toler'#226'ncia'
      FieldName = 'DIAS_TOLERANCIA'
    end
    object V_BoletosCLI_ID: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente'
      FieldName = 'CLI_ID'
      DisplayFormat = '000000'
    end
    object V_BoletosGRADE_ID: TIntegerField
      FieldName = 'GRADE_ID'
    end
    object V_BoletosSITUACAO_BOLETO: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'SITUACAO_BOLETO'
      ProviderFlags = []
      Size = 9
    end
    object V_BoletosEMISSAO: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'EMISSAO'
    end
    object V_BoletosVENCIMENTO: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'VENCIMENTO'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object V_BoletosESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 9
    end
    object V_BoletosACEITE: TStringField
      FieldName = 'ACEITE'
      Size = 9
    end
    object V_BoletosMOEDA: TStringField
      FieldName = 'MOEDA'
      Size = 3
    end
    object V_BoletosQTD_MOEDA: TIntegerField
      FieldName = 'QTD_MOEDA'
    end
    object V_BoletosVALOR_MOEDA: TFloatField
      FieldName = 'VALOR_MOEDA'
    end
    object V_BoletosSEQ_NOSSO_NUM: TIntegerField
      FieldName = 'SEQ_NOSSO_NUM'
    end
    object V_BoletosNOSSO_NUMERO: TStringField
      DisplayLabel = 'Nosso N'#250'mero'
      FieldName = 'NOSSO_NUMERO'
      Size = 40
    end
    object V_BoletosVALOR_DOC: TFloatField
      DisplayLabel = 'Valor Doc.'
      FieldName = 'VALOR_DOC'
      DisplayFormat = ',0.00'
    end
    object V_BoletosDESCONTO: TFloatField
      DisplayLabel = 'Desconto'
      FieldName = 'DESCONTO'
      DisplayFormat = ',0.00'
    end
    object V_BoletosCOD_BARRAS: TStringField
      FieldName = 'COD_BARRAS'
      Size = 120
    end
    object V_BoletosLINHA_DIG: TStringField
      FieldName = 'LINHA_DIG'
      Size = 120
    end
    object V_BoletosDATA_RECEBIMENTO: TDateField
      DisplayLabel = 'Dt. Recebido'
      FieldName = 'DATA_RECEBIMENTO'
      ProviderFlags = []
    end
    object V_BoletosVALOR_RECEBIDO: TFloatField
      DisplayLabel = 'Valor Recebido'
      FieldName = 'VALOR_RECEBIDO'
      DisplayFormat = ',0.00'
    end
    object V_BoletosPARCELA: TStringField
      DisplayLabel = 'Parcela'
      FieldName = 'PARCELA'
      Size = 9
    end
    object V_BoletosOBS: TMemoField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object V_BoletosLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 60
    end
    object V_BoletosBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object V_BoletosCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object V_BoletosESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object V_BoletosCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object V_BoletosAgCodCedente: TStringField
      FieldKind = fkCalculated
      FieldName = 'AgCodCedente'
      Size = 30
      Calculated = True
    end
    object V_BoletosCodIdentBanco: TStringField
      FieldKind = fkCalculated
      FieldName = 'CodIdentBanco'
      Size = 10
      Calculated = True
    end
    object V_BoletosSacado: TStringField
      FieldKind = fkCalculated
      FieldName = 'Sacado'
      Size = 120
      Calculated = True
    end
    object V_BoletosEndereco: TStringField
      FieldKind = fkCalculated
      FieldName = 'Endereco'
      Size = 150
      Calculated = True
    end
    object V_BoletosSacado2: TStringField
      FieldKind = fkCalculated
      FieldName = 'Sacado2'
      Size = 120
      Calculated = True
    end
    object V_BoletosValor_Rec_Boleto: TCurrencyField
      DisplayLabel = 'Valor Recebido'
      FieldKind = fkCalculated
      FieldName = 'Valor_Rec_Boleto'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object V_BoletosATIVO: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'ATIVO'
      Calculated = True
    end
    object V_BoletosCLI_NOME: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CLI_NOME'
      Size = 60
    end
    object V_BoletosCLI_ABREV: TStringField
      FieldName = 'CLI_ABREV'
      Size = 40
    end
    object V_BoletosCLI_CNPJ_CPF: TStringField
      DisplayLabel = 'C.N.P.J'
      FieldName = 'CLI_CNPJ_CPF'
      Size = 19
    end
    object V_BoletosCarteiraTmp: TStringField
      FieldKind = fkCalculated
      FieldName = 'CarteiraTmp'
      Size = 3
      Calculated = True
    end
    object V_BoletosCOB_REG: TSmallintField
      FieldName = 'COB_REG'
    end
    object V_BoletosCOD_MOV: TIntegerField
      FieldName = 'COD_MOV'
    end
    object V_BoletosLOJA_ID: TIntegerField
      FieldName = 'LOJA_ID'
    end
    object V_BoletosDIAS_BAIXAR_BANCO: TSmallintField
      DisplayLabel = 'Dias P/ Baixar'
      FieldName = 'DIAS_BAIXAR_BANCO'
    end
    object V_BoletosRETORNO_ID: TIntegerField
      FieldName = 'RETORNO_ID'
    end
    object V_BoletosREMESSA: TIntegerField
      FieldName = 'REMESSA'
    end
    object V_BoletosCANCELADO: TSmallintField
      FieldName = 'CANCELADO'
    end
    object V_BoletosDT_PROCES: TDateField
      DisplayLabel = 'Processado'
      FieldName = 'DT_PROCES'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object V_BoletosFORNE_ID: TIntegerField
      FieldName = 'FORNE_ID'
    end
    object V_BoletosCLI_DEBITO_AUTO: TSmallintField
      FieldName = 'CLI_DEBITO_AUTO'
    end
    object V_BoletosCLI_BANCO_ID: TIntegerField
      FieldName = 'CLI_BANCO_ID'
    end
    object V_BoletosCLI_BANC_AGENCIA: TStringField
      FieldName = 'CLI_BANC_AGENCIA'
      Size = 9
    end
    object V_BoletosCLI_BANC_CONTA: TStringField
      FieldName = 'CLI_BANC_CONTA'
      Size = 60
    end
    object V_BoletosCLI_BANC_OPERACAO: TIntegerField
      FieldName = 'CLI_BANC_OPERACAO'
    end
    object V_BoletosRemessaSit: TStringField
      DisplayLabel = 'Remessa'
      FieldKind = fkCalculated
      FieldName = 'RemessaSit'
      Size = 30
      Calculated = True
    end
    object V_BoletosRemessaGerada: TStringField
      DisplayLabel = 'Remessa?'
      FieldKind = fkCalculated
      FieldName = 'RemessaGerada'
      Size = 3
      Calculated = True
    end
    object V_BoletosCLI_BANC_ACATAMENTO: TMemoField
      FieldName = 'CLI_BANC_ACATAMENTO'
      Origin = 'CLI_BANC_ACATAMENTO'
      BlobType = ftMemo
    end
  end
  object dsV_Boletos: TDataSource
    DataSet = V_Boletos
    Left = 520
    Top = 336
  end
  object Pagar: TFDQuery
    BeforeOpen = PagarBeforeOpen
    AfterInsert = PagarAfterInsert
    AfterPost = PagarAfterPost
    BeforeDelete = PagarBeforeDelete
    AfterDelete = PagarAfterDelete
    OnCalcFields = PagarCalcFields
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      
        'select p.*, f.nome as fornecedor, f.fantasia, f.cnpj, (select su' +
        'm(coalesce(l.entrada,0)-coalesce(l.saida,0)) * (-1) from livro_c' +
        'aixa l where pagar_id=p.pagar_id) as valor_pago, (case when coal' +
        'esce(( select sum(coalesce(l.entrada,0)-coalesce(l.saida,0)) * (' +
        '-1) from livro_caixa l where pagar_id=p.pagar_id),0) >=  coalesc' +
        'e(p.valor_apagar,0)  then '#39'PAGO'#39' else '#39'A PAGAR'#39' end) as situacao' +
        '_pagar, (case when coalesce(p.valor_apagar,0)>=(select sum(coale' +
        'sce(l.entrada,0)-coalesce(l.saida,0)) * (-1) from livro_caixa l ' +
        'where pagar_id=p.pagar_id) then coalesce(p.valor_apagar,0) - (se' +
        'lect sum(coalesce(l.entrada,0)-coalesce(l.saida,0)) * (-1) from ' +
        'livro_caixa l where pagar_id=p.pagar_id) else 0 end) as valor_fa' +
        'lta from pagar p left join fornecedores f on (f.forne_id=p.forne' +
        '_id)where p.pagar_id=0'
      '')
    Left = 598
    Top = 118
    object PagarPAGAR_ID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PAGAR_ID'
      Required = True
      DisplayFormat = '000000'
    end
    object PagarDESCRICAO: TStringField
      DisplayLabel = 'Decri'#231#227'o'
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object PagarPARCELA: TStringField
      DisplayLabel = 'Parcela'
      FieldName = 'PARCELA'
      Size = 9
    end
    object PagarFORNE_ID: TIntegerField
      DisplayLabel = 'C'#243'd. Forne'
      FieldName = 'FORNE_ID'
      DisplayFormat = '000000'
    end
    object PagarCONTA_ID: TIntegerField
      DisplayLabel = 'C'#243'd. Conta'
      FieldName = 'CONTA_ID'
      DisplayFormat = '000000'
    end
    object PagarGRADE_ID: TIntegerField
      FieldName = 'GRADE_ID'
      DisplayFormat = '000000'
    end
    object PagarEMISSAO: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'EMISSAO'
    end
    object PagarVENCIMENTO: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'VENCIMENTO'
    end
    object PagarPAGAMENTO: TDateField
      DisplayLabel = 'Pagamento'
      FieldName = 'PAGAMENTO'
    end
    object PagarVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      DisplayFormat = ',0.00'
    end
    object PagarDESCONTO: TFloatField
      DisplayLabel = 'Desc.'
      FieldName = 'DESCONTO'
      DisplayFormat = ',0.00'
    end
    object PagarACRESCIMO: TFloatField
      DisplayLabel = 'Acr'#233'c.'
      FieldName = 'ACRESCIMO'
      DisplayFormat = ',0.00'
    end
    object PagarACRESCIMO_EXTRA: TFloatField
      FieldName = 'ACRESCIMO_EXTRA'
      DisplayFormat = ',0.00'
    end
    object PagarVALOR_APAGAR: TFloatField
      DisplayLabel = 'Vl A Pagar'
      FieldName = 'VALOR_APAGAR'
      DisplayFormat = ',0.00'
    end
    object PagarMULTA: TFloatField
      DisplayLabel = 'Multa'
      FieldName = 'MULTA'
      DisplayFormat = ',0.00'
    end
    object PagarJUROS_DIA: TFloatField
      FieldName = 'JUROS_DIA'
      DisplayFormat = ',0.00'
    end
    object PagarJUROS_MES: TFloatField
      FieldName = 'JUROS_MES'
      DisplayFormat = ',0.00'
    end
    object PagarFIXA: TSmallintField
      DisplayLabel = 'Fixa?'
      FieldName = 'FIXA'
    end
    object PagarBANCO_ID: TIntegerField
      FieldName = 'BANCO_ID'
      DisplayFormat = '000000'
    end
    object PagarDESCRICAO_PAGO: TStringField
      DisplayLabel = 'Pago em'
      FieldName = 'DESCRICAO_PAGO'
    end
    object PagarOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftMemo
    end
    object PagarUSR_CAD: TIntegerField
      FieldName = 'USR_CAD'
    end
    object PagarUSUARIO_ID: TIntegerField
      FieldName = 'USUARIO_ID'
    end
    object PagarDT_ALTERADO: TDateField
      FieldName = 'DT_ALTERADO'
    end
    object PagarForneNome: TStringField
      DisplayLabel = 'Fornecedor'
      FieldKind = fkLookup
      FieldName = 'ForneNome'
      LookupDataSet = Fornecedores
      LookupKeyFields = 'FORNE_ID'
      LookupResultField = 'NOME'
      KeyFields = 'FORNE_ID'
      Size = 60
      Lookup = True
    end
    object PagarContaNome: TStringField
      DisplayLabel = 'Conta'
      FieldKind = fkLookup
      FieldName = 'ContaNome'
      LookupDataSet = Contas
      LookupKeyFields = 'CONTA_ID'
      LookupResultField = 'CONTA'
      KeyFields = 'CONTA_ID'
      Size = 60
      Lookup = True
    end
    object PagarQtdDias: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'QtdDias'
      Calculated = True
    end
    object PagarVALOR_PAGO: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Valor Pago'
      FieldName = 'VALOR_PAGO'
      Origin = 'VALOR_PAGO'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object PagarVALOR_FALTA: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Valor Faltando'
      FieldName = 'VALOR_FALTA'
      Origin = 'VALOR_FALTA'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object PagarSITUACAO_PAGAR: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'SITUACAO_PAGAR'
      Origin = 'SITUACAO_PAGAR'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 7
    end
    object PagarATIVO: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'ATIVO'
      Calculated = True
    end
    object PagarFORNECEDOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FORNECEDOR'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object PagarFANTASIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object PagarCNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object DSPagar: TDataSource
    DataSet = Pagar
    Left = 598
    Top = 162
  end
  object Fornecedores: TFDQuery
    AfterInsert = FornecedoresAfterInsert
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    UpdateObject = upForne
    SQL.Strings = (
      'select * from fornecedores')
    Left = 679
    Top = 112
    object FornecedoresFORNE_ID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'FORNE_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '000000'
    end
    object FornecedoresNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 60
    end
    object FornecedoresFANTASIA: TStringField
      DisplayLabel = 'Fantasia'
      FieldName = 'FANTASIA'
      Size = 40
    end
    object FornecedoresRESPONSAVEL: TStringField
      DisplayLabel = 'Respons'#225'vel'
      FieldName = 'RESPONSAVEL'
      Size = 40
    end
    object FornecedoresIE: TStringField
      FieldName = 'IE'
    end
    object FornecedoresCNPJ: TStringField
      FieldName = 'CNPJ'
    end
    object FornecedoresEND_ID: TIntegerField
      FieldName = 'END_ID'
    end
    object FornecedoresNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 9
    end
    object FornecedoresTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 16
    end
    object FornecedoresCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 16
    end
    object FornecedoresFAX: TStringField
      FieldName = 'FAX'
      Size = 16
    end
    object FornecedoresEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 60
    end
    object FornecedoresSITE: TStringField
      FieldName = 'SITE'
      Size = 60
    end
    object FornecedoresOBS: TMemoField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object FornecedoresBANCO_ID: TIntegerField
      FieldName = 'BANCO_ID'
    end
    object FornecedoresAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 9
    end
    object FornecedoresCONTA_CORRENTE: TStringField
      FieldName = 'CONTA_CORRENTE'
      Size = 60
    end
    object FornecedoresCONTA_POUPANCA: TStringField
      FieldName = 'CONTA_POUPANCA'
      Size = 60
    end
    object FornecedoresUSUARIO_ID: TIntegerField
      FieldName = 'USUARIO_ID'
    end
    object FornecedoresUSR_CAD: TIntegerField
      FieldName = 'USR_CAD'
    end
    object FornecedoresDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object FornecedoresDT_ALTERADO: TDateField
      FieldName = 'DT_ALTERADO'
    end
    object FornecedoresFORNE_PERC: TFloatField
      FieldName = 'FORNE_PERC'
      DisplayFormat = ',0.00'
    end
    object FornecedoresATIVO: TSmallintField
      FieldName = 'ATIVO'
    end
  end
  object DSForne: TDataSource
    DataSet = Fornecedores
    Left = 677
    Top = 162
  end
  object CaixaPagar: TFDQuery
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      
        'select caixa_id, descricao, data, hora, coalesce(entrada,0)-coal' +
        'esce(saida,0) as saldo from livro_caixa'
      'where pagar_id = :pagid order by caixa_id')
    Left = 600
    Top = 286
    ParamData = <
      item
        Name = 'pagID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object CaixaPagarCAIXA_ID: TIntegerField
      DisplayLabel = 'Caixa ID'
      FieldName = 'CAIXA_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '000000'
    end
    object CaixaPagarDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object CaixaPagarDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
    end
    object CaixaPagarHORA: TTimeField
      DisplayLabel = 'Hora'
      FieldName = 'HORA'
    end
    object CaixaPagarSALDO: TFloatField
      DisplayLabel = 'Saldo'
      FieldKind = fkInternalCalc
      FieldName = 'SALDO'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
  end
  object DSCaixaPagar: TDataSource
    DataSet = CaixaPagar
    Left = 600
    Top = 336
  end
  object qryCli: TFDQuery
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      'select cli_id, fone1, nome from clientes')
    Left = 680
    Top = 286
    object qryCliCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
    end
    object qryCliFONE1: TStringField
      FieldName = 'FONE1'
      Size = 16
    end
    object qryCliNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 60
    end
  end
  object qryBancos: TFDQuery
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      'select banco_id, dias_tolerancia from bancos')
    Left = 760
    Top = 388
    object qryBancosBANCO_ID: TIntegerField
      FieldName = 'BANCO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryBancosDIAS_TOLERANCIA: TIntegerField
      FieldName = 'DIAS_TOLERANCIA'
    end
  end
  object qryPagar: TFDQuery
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      'select * from pagar')
    Left = 520
    Top = 388
    object qryPagarPAGAR_ID: TIntegerField
      FieldName = 'PAGAR_ID'
      Required = True
    end
    object qryPagarDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object qryPagarPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 9
    end
    object qryPagarFORNE_ID: TIntegerField
      FieldName = 'FORNE_ID'
    end
    object qryPagarCONTA_ID: TIntegerField
      FieldName = 'CONTA_ID'
    end
    object qryPagarGRADE_ID: TIntegerField
      FieldName = 'GRADE_ID'
    end
    object qryPagarEMISSAO: TDateField
      FieldName = 'EMISSAO'
    end
    object qryPagarVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object qryPagarPAGAMENTO: TDateField
      FieldName = 'PAGAMENTO'
    end
    object qryPagarVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object qryPagarDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qryPagarACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object qryPagarACRESCIMO_EXTRA: TFloatField
      FieldName = 'ACRESCIMO_EXTRA'
    end
    object qryPagarVALOR_APAGAR: TFloatField
      FieldName = 'VALOR_APAGAR'
    end
    object qryPagarMULTA: TFloatField
      FieldName = 'MULTA'
    end
    object qryPagarJUROS_DIA: TFloatField
      FieldName = 'JUROS_DIA'
    end
    object qryPagarJUROS_MES: TFloatField
      FieldName = 'JUROS_MES'
    end
    object qryPagarFIXA: TSmallintField
      FieldName = 'FIXA'
    end
    object qryPagarBANCO_ID: TIntegerField
      FieldName = 'BANCO_ID'
    end
    object qryPagarDESCRICAO_PAGO: TStringField
      FieldName = 'DESCRICAO_PAGO'
    end
    object qryPagarOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftMemo
    end
    object qryPagarUSR_CAD: TIntegerField
      FieldName = 'USR_CAD'
    end
    object qryPagarUSUARIO_ID: TIntegerField
      FieldName = 'USUARIO_ID'
    end
    object qryPagarDT_ALTERADO: TDateField
      FieldName = 'DT_ALTERADO'
    end
    object qryPagarVALOR_PAGO: TFloatField
      FieldName = 'VALOR_PAGO'
    end
    object qryPagarVALOR_FALTA: TFloatField
      FieldName = 'VALOR_FALTA'
    end
    object qryPagarSITUACAO_PAGAR: TStringField
      FieldName = 'SITUACAO_PAGAR'
      Size = 7
    end
  end
  object DsContatos: TDataSource
    DataSet = Contatos
    Left = 201
    Top = 336
  end
  object Contatos: TFDQuery
    BeforeOpen = ContatosBeforeOpen
    AfterInsert = ContatosAfterInsert
    OnCalcFields = ContatosCalcFields
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      'select * from contatos where contato_id=0;')
    Left = 201
    Top = 288
    object ContatosCONTATO_ID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CONTATO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '000000'
    end
    object ContatosEMPRESA: TStringField
      DisplayLabel = 'Empresa'
      FieldName = 'EMPRESA'
      Size = 60
    end
    object ContatosCONTATO: TStringField
      DisplayLabel = 'Contato'
      FieldName = 'CONTATO'
      Size = 60
    end
    object ContatosSITUACAO: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'SITUACAO'
      Size = 19
    end
    object ContatosCONT_EMAIL: TStringField
      DisplayLabel = 'E-mail (Contato)'
      FieldName = 'CONT_EMAIL'
      Size = 60
    end
    object ContatosCONT_FUNCA: TStringField
      DisplayLabel = 'Fun'#231#227'o (Contato)'
      FieldName = 'CONT_FUNCA'
      Size = 40
    end
    object ContatosLOGRADOURO: TStringField
      DisplayLabel = 'Logradouro'
      FieldName = 'LOGRADOURO'
      Size = 120
    end
    object ContatosNUMERO: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NUMERO'
      Size = 13
    end
    object ContatosCEP: TStringField
      DisplayLabel = 'Cep'
      FieldName = 'CEP'
      Size = 13
    end
    object ContatosBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Size = 60
    end
    object ContatosCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Size = 60
    end
    object ContatosUF: TStringField
      DisplayLabel = 'U.F'
      FieldName = 'UF'
      Size = 2
    end
    object ContatosFONE1: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'FONE1'
      Size = 16
    end
    object ContatosFONE2: TStringField
      DisplayLabel = 'Tel. p/ Contato'
      FieldName = 'FONE2'
      Size = 16
    end
    object ContatosCELULAR: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'CELULAR'
      Size = 16
    end
    object ContatosFAX: TStringField
      DisplayLabel = 'Fax'
      FieldName = 'FAX'
      Size = 16
    end
    object ContatosEMAIL: TStringField
      DisplayLabel = 'E-mail'
      FieldName = 'EMAIL'
      Size = 60
    end
    object ContatosSITE: TStringField
      DisplayLabel = 'Site'
      FieldName = 'SITE'
      Size = 60
    end
    object ContatosPAIS: TStringField
      DisplayLabel = 'Pa'#237's'
      FieldName = 'PAIS'
      Size = 9
    end
    object ContatosOBS: TMemoField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object ContatosN_ALUNOS: TIntegerField
      DisplayLabel = 'N.'#186' Alunos'
      FieldName = 'N_ALUNOS'
    end
    object ContatosE_INF: TIntegerField
      DisplayLabel = 'Infantil'
      FieldName = 'E_INF'
    end
    object ContatosE_FUN: TIntegerField
      DisplayLabel = 'Fundamental'
      FieldName = 'E_FUN'
    end
    object ContatosE_MED: TIntegerField
      DisplayLabel = 'M'#233'dio'
      FieldName = 'E_MED'
    end
    object ContatosCURSOS: TIntegerField
      DisplayLabel = 'Cursos'
      FieldName = 'CURSOS'
    end
    object ContatosDT_CADASTRO: TDateField
      DisplayLabel = 'Cadastro'
      FieldName = 'DT_CADASTRO'
    end
    object ContatosATIVO: TBooleanField
      DisplayLabel = 'Ativo'
      FieldKind = fkCalculated
      FieldName = 'ATIVO'
      Calculated = True
    end
    object ContatosDIRETOR: TStringField
      DisplayLabel = 'Diretor'
      FieldName = 'DIRETOR'
      Size = 60
    end
    object ContatosTIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Size = 40
    end
    object ContatosPROCEDENTE: TStringField
      DisplayLabel = 'Procedente'
      FieldName = 'PROCEDENTE'
      Size = 13
    end
  end
  object RecBol: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 42
    Top = 454
    object RecBolBOLETO_ID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'BOLETO_ID'
      DisplayFormat = '000000'
    end
    object RecBolDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object RecBolVALOR_INTEGRAL: TCurrencyField
      DisplayLabel = 'Vl. Integral'
      FieldName = 'VALOR_INTEGRAL'
      DisplayFormat = ',0.00'
    end
    object RecBolDESCONTO: TCurrencyField
      DisplayLabel = 'Desconto'
      FieldName = 'DESCONTO'
      DisplayFormat = ',0.00'
    end
    object RecBolACRESCIMO: TCurrencyField
      DisplayLabel = 'Acr'#233'sc.'
      FieldName = 'ACRESCIMO'
      DisplayFormat = ',0.00'
    end
    object RecBolMULTA: TCurrencyField
      DisplayLabel = 'Multa'
      FieldName = 'MULTA'
      DisplayFormat = ',0.00'
    end
    object RecBolJUROS: TCurrencyField
      DisplayLabel = 'Juros'
      FieldName = 'JUROS'
      DisplayFormat = ',0.00'
    end
    object RecBolVALOR_APAGAR_ANT: TCurrencyField
      FieldName = 'VALOR_APAGAR_ANT'
    end
    object RecBolVALOR_APAGAR: TCurrencyField
      DisplayLabel = 'Vl. A Pagar'
      FieldName = 'VALOR_APAGAR'
      DisplayFormat = ',0.00'
    end
    object RecBolVALOR_PAGO: TCurrencyField
      DisplayLabel = 'Vl. Pago'
      FieldName = 'VALOR_PAGO'
      DisplayFormat = ',0.00'
    end
    object RecBolCREDITO: TCurrencyField
      DisplayLabel = 'Cr'#233'ditos'
      FieldName = 'CREDITO'
      DisplayFormat = ',0.00'
    end
    object RecBolOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object RecBolPARCELA: TStringField
      DisplayLabel = 'Parcela'
      FieldName = 'PARCELA'
      Size = 9
    end
    object RecBolGRADE_ID: TIntegerField
      FieldName = 'GRADE_ID'
    end
    object RecBolSITUACAO_BOLETO: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'SITUACAO_BOLETO'
    end
    object RecBolVENCIMENTO: TDateField
      DisplayLabel = 'Venc.'
      FieldName = 'VENCIMENTO'
    end
    object RecBolDIAS: TIntegerField
      DisplayLabel = 'Dias Atraso'
      FieldName = 'DIAS'
    end
    object RecBolvlAntAlterado: TIntegerField
      FieldName = 'vlAntAlterado'
    end
    object RecBolCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
    end
  end
  object dsRecBol: TDataSource
    DataSet = RecBol
    Left = 42
    Top = 508
  end
  object Bancos: TFDQuery
    AfterInsert = BancosAfterInsert
    BeforePost = BancosBeforePost
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    UpdateObject = upBancos
    SQL.Strings = (
      
        'select * from bancos where coalesce(oculto, 0)=0 order by banco_' +
        'nome')
    Left = 290
    Top = 114
    object BancosBANCO_ID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'BANCO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      DisplayFormat = '000000'
    end
    object BancosBANCO_NOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'BANCO_NOME'
      Size = 60
    end
    object BancosCODIGO_BANCO: TIntegerField
      FieldName = 'CODIGO_BANCO'
    end
    object BancosDIG_BANCO: TIntegerField
      FieldName = 'DIG_BANCO'
    end
    object BancosAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 60
    end
    object BancosDIG_AGENCIA: TStringField
      FieldName = 'DIG_AGENCIA'
      Size = 1
    end
    object BancosCONTA_CORRENTE: TStringField
      FieldName = 'CONTA_CORRENTE'
      Size = 60
    end
    object BancosDIG_CONTA_CORRENTE: TStringField
      FieldName = 'DIG_CONTA_CORRENTE'
      Size = 1
    end
    object BancosCODIGO_CEDENTE: TStringField
      FieldName = 'CODIGO_CEDENTE'
      Size = 60
    end
    object BancosDIG_COD_CEDENTE: TStringField
      FieldName = 'DIG_COD_CEDENTE'
      Size = 1
    end
    object BancosNOME_CEDENTE: TStringField
      FieldName = 'NOME_CEDENTE'
      Size = 120
    end
    object BancosLOGOMARCA: TBlobField
      FieldName = 'LOGOMARCA'
      ProviderFlags = [pfInUpdate]
    end
    object BancosCONVENIO: TIntegerField
      FieldName = 'CONVENIO'
    end
    object BancosMENS_CABECALHO: TStringField
      FieldName = 'MENS_CABECALHO'
      Size = 60
    end
    object BancosLOCAL_PAGAMENTO: TStringField
      FieldName = 'LOCAL_PAGAMENTO'
      Size = 240
    end
    object BancosNOSSO_NUMERO: TIntegerField
      FieldName = 'NOSSO_NUMERO'
    end
    object BancosCARTEIRA: TIntegerField
      FieldName = 'CARTEIRA'
    end
    object BancosDIAS_TOLERANCIA: TIntegerField
      FieldName = 'DIAS_TOLERANCIA'
    end
    object BancosABREV: TStringField
      FieldName = 'ABREV'
      Size = 60
    end
    object BancosUSR_CAD: TIntegerField
      FieldName = 'USR_CAD'
    end
    object BancosUSUARIO_ID: TIntegerField
      FieldName = 'USUARIO_ID'
    end
    object BancosDT_ALTERADO: TDateField
      FieldName = 'DT_ALTERADO'
    end
    object BancosMENSAGEM_1: TMemoField
      FieldName = 'MENSAGEM_1'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object BancosMENSAGEM_2: TMemoField
      FieldName = 'MENSAGEM_2'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object BancosMENSAGEM_3: TMemoField
      FieldName = 'MENSAGEM_3'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object BancosOBSERVACAO_1: TMemoField
      FieldName = 'OBSERVACAO_1'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object BancosLAYOUT: TSmallintField
      FieldName = 'LAYOUT'
    end
    object BancosCAMINHO_RETORNO: TStringField
      FieldName = 'CAMINHO_RETORNO'
      Size = 240
    end
    object BancosCOB_REG: TSmallintField
      FieldName = 'COB_REG'
    end
    object BancosFOL_CONTRAT_REM: TStringField
      FieldName = 'FOL_CONTRAT_REM'
      Size = 60
    end
    object BancosVAR_CARTEIRA: TIntegerField
      FieldName = 'VAR_CARTEIRA'
    end
    object BancosDIAS_PROTESTO: TIntegerField
      FieldName = 'DIAS_PROTESTO'
    end
    object BancosDESC_TOL: TSmallintField
      FieldName = 'DESC_TOL'
    end
    object BancosCONTRATO: TIntegerField
      FieldName = 'CONTRATO'
    end
    object BancosTIPO_CONTA_CORRENTE: TIntegerField
      FieldName = 'TIPO_CONTA_CORRENTE'
    end
    object BancosCODIGO_BANCO2: TIntegerField
      FieldName = 'CODIGO_BANCO2'
    end
    object BancosN_SEQ_REM: TLargeintField
      FieldName = 'N_SEQ_REM'
    end
    object BancosCAMINHO_REMESSA: TStringField
      FieldName = 'CAMINHO_REMESSA'
      Size = 240
    end
    object BancosESPECIE_DOC: TStringField
      FieldName = 'ESPECIE_DOC'
      FixedChar = True
      Size = 3
    end
    object BancosSAC_AVALISTA: TSmallintField
      FieldName = 'SAC_AVALISTA'
    end
    object BancosACEITA_DEB_AUT: TSmallintField
      FieldName = 'ACEITA_DEB_AUT'
    end
    object BancosINF_JUROS: TSmallintField
      FieldName = 'INF_JUROS'
    end
    object BancosINF_DESC: TSmallintField
      FieldName = 'INF_DESC'
    end
    object BancosCONT_ENCERRADA: TSmallintField
      FieldName = 'CONT_ENCERRADA'
    end
    object BancosN_SEQ_REM_DEB_AUTO: TLargeintField
      FieldName = 'N_SEQ_REM_DEB_AUTO'
    end
    object BancosHOMOLOGACAO: TSmallintField
      FieldName = 'HOMOLOGACAO'
    end
    object BancosDIAS_BAIXAR_BANCO: TSmallintField
      FieldName = 'DIAS_BAIXAR_BANCO'
    end
    object BancosBAIX_BOL_PARAM: TSmallintField
      FieldName = 'BAIX_BOL_PARAM'
    end
    object BancosNOME_ARQ_RET: TSmallintField
      FieldName = 'NOME_ARQ_RET'
    end
    object BancosCHAVE_PIX: TStringField
      FieldName = 'CHAVE_PIX'
      Origin = 'CHAVE_PIX'
      Size = 60
    end
  end
  object DSBancos: TDataSource
    DataSet = Bancos
    Left = 280
    Top = 162
  end
  object DsSerial: TDataSource
    DataSet = Serial
    Left = 441
    Top = 336
  end
  object Serial: TFDQuery
    AfterInsert = SerialAfterInsert
    BeforePost = SerialBeforePost
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    UpdateObject = upSerial
    SQL.Strings = (
      'select * from serial')
    Left = 441
    Top = 286
    object SerialSERIAL_ID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'SERIAL_ID'
      Required = True
      DisplayFormat = '000000'
    end
    object SerialDT_EMISSAO: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'DT_EMISSAO'
    end
    object SerialHR_EMISSAO: TTimeField
      DisplayLabel = 'Hora'
      FieldName = 'HR_EMISSAO'
    end
    object SerialDT_VALIDADE: TDateField
      DisplayLabel = 'Validade'
      FieldName = 'DT_VALIDADE'
    end
    object SerialCLIENTE_ID: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'CLIENTE_ID'
      DisplayFormat = '000000'
    end
    object SerialSERIAL: TMemoField
      FieldName = 'SERIAL'
      BlobType = ftMemo
    end
  end
  object SomBoletos: TFDQuery
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      
        'select sum(VALOR_APAGAR) as TT_ARECEBER from boletos where SITUA' +
        'CAO_BOLETO ='#39'A RECEBER'#39' and VENCIMENTO < '#39'5/7/2009'#39)
    Left = 840
    Top = 336
    object SomBoletosTT_ARECEBER: TFloatField
      FieldName = 'TT_ARECEBER'
      ReadOnly = True
    end
  end
  object SomPagar: TFDQuery
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      
        'select sum(VALOR_FALTA) as tt_pagar from pagar where SITUACAO_PA' +
        'GAR='#39'A PAGAR'#39' and VENCIMENTO <= '#39'5/7/2009'#39)
    Left = 840
    Top = 286
    object SomPagarTT_PAGAR: TFloatField
      FieldName = 'TT_PAGAR'
      ReadOnly = True
    end
  end
  object qryPesqRet: TFDQuery
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      
        'select nosso_numero from retorno where banco_id=:banco and nosso' +
        '_numero=:n_numero and not numero_arquivo=:n_arq')
    Left = 600
    Top = 388
    ParamData = <
      item
        Name = 'banco'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'n_numero'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'n_arq'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryPesqRetNOSSO_NUMERO: TStringField
      FieldName = 'NOSSO_NUMERO'
      Size = 40
    end
  end
  object QryRetorno: TFDQuery
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      'select * from RETORNO')
    Left = 680
    Top = 388
    object QryRetornoRETORNO_ID: TIntegerField
      FieldName = 'RETORNO_ID'
      Required = True
    end
    object QryRetornoNUMERO_ARQUIVO: TIntegerField
      FieldName = 'NUMERO_ARQUIVO'
    end
    object QryRetornoDATA_ARQUIVO: TDateField
      FieldName = 'DATA_ARQUIVO'
    end
    object QryRetornoNUMERO_REGISTRO: TIntegerField
      FieldName = 'NUMERO_REGISTRO'
    end
    object QryRetornoBANCO_ID: TIntegerField
      FieldName = 'BANCO_ID'
    end
    object QryRetornoCODIGO_BANCO: TIntegerField
      FieldName = 'CODIGO_BANCO'
    end
    object QryRetornoCODIGO_AGENCIA: TIntegerField
      FieldName = 'CODIGO_AGENCIA'
    end
    object QryRetornoDIGITO_AGENCIA: TStringField
      FieldName = 'DIGITO_AGENCIA'
      Size = 1
    end
    object QryRetornoNUMERO_CONTA: TStringField
      FieldName = 'NUMERO_CONTA'
      Size = 19
    end
    object QryRetornoDIGITO_CONTA: TIntegerField
      FieldName = 'DIGITO_CONTA'
    end
    object QryRetornoCODIGO_CEDENTE: TStringField
      FieldName = 'CODIGO_CEDENTE'
      Size = 40
    end
    object QryRetornoNOME_CEDENTE: TStringField
      FieldName = 'NOME_CEDENTE'
      Size = 60
    end
    object QryRetornoCOD_SACADO: TIntegerField
      FieldName = 'COD_SACADO'
    end
    object QryRetornoNOME_SACADO: TStringField
      FieldName = 'NOME_SACADO'
      Size = 60
    end
    object QryRetornoSEU_NUMERO: TStringField
      FieldName = 'SEU_NUMERO'
      Size = 40
    end
    object QryRetornoNOSSO_NUMERO: TStringField
      FieldName = 'NOSSO_NUMERO'
      Size = 40
    end
    object QryRetornoCARTEIRA: TIntegerField
      FieldName = 'CARTEIRA'
    end
    object QryRetornoDATA_CREDITO: TDateField
      FieldName = 'DATA_CREDITO'
    end
    object QryRetornoDATA_RECEBIMENTO: TDateField
      FieldName = 'DATA_RECEBIMENTO'
    end
    object QryRetornoVALOR_DOCUMENTO: TFloatField
      FieldName = 'VALOR_DOCUMENTO'
    end
    object QryRetornoVALOR_IOF: TFloatField
      FieldName = 'VALOR_IOF'
    end
    object QryRetornoVALOR_ABATIMENTO: TFloatField
      FieldName = 'VALOR_ABATIMENTO'
    end
    object QryRetornoVALOR_DESCONTO: TFloatField
      FieldName = 'VALOR_DESCONTO'
    end
    object QryRetornoVALOR_MORA: TFloatField
      FieldName = 'VALOR_MORA'
    end
    object QryRetornoVALOR_OUTROS_CREDITOS: TFloatField
      FieldName = 'VALOR_OUTROS_CREDITOS'
    end
    object QryRetornoVALOR_DESP_COBRANCA: TFloatField
      FieldName = 'VALOR_DESP_COBRANCA'
    end
    object QryRetornoVALOR_OUTRAS_DESP: TFloatField
      FieldName = 'VALOR_OUTRAS_DESP'
    end
    object QryRetornoBAIXOU: TIntegerField
      FieldName = 'BAIXOU'
    end
    object QryRetornoVALOR_MULTA: TFloatField
      FieldName = 'VALOR_MULTA'
    end
    object QryRetornoTX_BANCO: TFloatField
      FieldName = 'TX_BANCO'
    end
    object QryRetornoVALOR_PAGO: TFloatField
      FieldName = 'VALOR_PAGO'
    end
    object QryRetornoUSR_CAD: TIntegerField
      FieldName = 'USR_CAD'
    end
    object QryRetornoUSUARIO_ID: TIntegerField
      FieldName = 'USUARIO_ID'
    end
    object QryRetornoDT_ALTERADO: TDateField
      FieldName = 'DT_ALTERADO'
    end
    object QryRetornoDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object QryRetornoCONVENIO: TStringField
      FieldName = 'CONVENIO'
    end
    object QryRetornoDIAS_TOLERANCIA: TIntegerField
      FieldName = 'DIAS_TOLERANCIA'
    end
    object QryRetornoNOME_ARQ: TStringField
      FieldName = 'NOME_ARQ'
      Size = 240
    end
  end
  object Nfs: TFDQuery
    AfterOpen = NfsAfterOpen
    BeforeClose = NfsBeforeClose
    AfterInsert = NfsAfterInsert
    BeforePost = NfsBeforePost
    BeforeCancel = NfsBeforeCancel
    OnCalcFields = NfsCalcFields
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    UpdateObject = upNfs
    SQL.Strings = (
      
        'select n.*, c.nome, c.fantasia, c.cnpj, c.logradouro, c.bairro, ' +
        'c.cidade, c.estado, c.email_contato2,'
      'm.nome as cidade_nome, m.uf as uf_nome'
      'from nfs n'
      'left join clientes c on (c.cli_id = n.cli_id)'
      'left join municipios m on (m.codmun=c.cidade)'
      
        'where ( cast(n.DT_RPS as date) between '#39'09/01/2019'#39' and '#39'09/12/2' +
        '019'#39')'
      ' order by n.nfse_numero, n.dt_rps, n.nfs_id')
    Left = 755
    Top = 114
    object NfsNFS_ID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'NFS_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '000000'
    end
    object NfsSERIE: TStringField
      FieldName = 'SERIE'
      Required = True
      Size = 3
    end
    object NfsRPS_PROTOCOLO: TStringField
      DisplayLabel = 'N.'#186' Protocolo'
      FieldName = 'RPS_PROTOCOLO'
    end
    object NfsNFSE_AMBIENTE: TSmallintField
      FieldName = 'NFSE_AMBIENTE'
    end
    object NfsNFSE_NUMERO: TIntegerField
      DisplayLabel = 'NFSe N'#186
      FieldName = 'NFSE_NUMERO'
    end
    object NfsNFSE_COD_VERIF: TStringField
      FieldName = 'NFSE_COD_VERIF'
      Size = 60
    end
    object NfsNFSE_DT_EMISSAO: TDateTimeField
      DisplayLabel = 'NFSe Dt. Emiss'#227'o'
      FieldName = 'NFSE_DT_EMISSAO'
      DisplayFormat = 'dd/mm/yyyy hh:nn'
    end
    object NfsCLI_ID: TIntegerField
      DisplayLabel = 'C'#243'd. Cli'
      FieldName = 'CLI_ID'
      DisplayFormat = '000000'
    end
    object NfsSIT: TSmallintField
      FieldName = 'SIT'
    end
    object NfsDT_RPS: TDateField
      DisplayLabel = 'Data RPS'
      FieldName = 'DT_RPS'
      Required = True
    end
    object NfsDT_FECHADA: TDateTimeField
      FieldName = 'DT_FECHADA'
    end
    object NfsDT_ENVIADA: TDateTimeField
      FieldName = 'DT_ENVIADA'
    end
    object NfsVL_TOTAL: TFloatField
      DisplayLabel = 'Vl. Total'
      FieldName = 'VL_TOTAL'
      DisplayFormat = ',0.00'
    end
    object NfsVL_DEDUCOES: TFloatField
      FieldName = 'VL_DEDUCOES'
      DisplayFormat = ',0.00'
    end
    object NfsVL_BS_CALC: TFloatField
      FieldName = 'VL_BS_CALC'
      DisplayFormat = ',0.00'
    end
    object NfsPERC_ISS: TFloatField
      FieldName = 'PERC_ISS'
      DisplayFormat = ',0.00%'
    end
    object NfsVL_ISS: TFloatField
      FieldName = 'VL_ISS'
      DisplayFormat = ',0.00'
    end
    object NfsIDS_BOLETOS: TStringField
      FieldName = 'IDS_BOLETOS'
      Size = 240
    end
    object NfsOBS: TMemoField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object NfsUS_CAD: TIntegerField
      FieldName = 'US_CAD'
    end
    object NfsDT_CAD: TDateTimeField
      DisplayLabel = 'Cadastrado em'
      FieldName = 'DT_CAD'
    end
    object NfsUS_ALT: TIntegerField
      FieldName = 'US_ALT'
    end
    object NfsDT_ALT: TDateTimeField
      DisplayLabel = 'Alterado em'
      FieldName = 'DT_ALT'
    end
    object NfsOBS2: TMemoField
      DisplayLabel = 'Observa'#231#227'o de Envio'
      FieldName = 'OBS2'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object NfsXML_RPS: TMemoField
      FieldName = 'XML_RPS'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object NfsXML_NFSE: TMemoField
      FieldName = 'XML_NFSE'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object NfsNOME: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'NOME'
      Size = 60
    end
    object NfsCNPJ: TStringField
      DisplayLabel = 'CPF/CNPJ'
      FieldName = 'CNPJ'
      Size = 19
    end
    object NfsFANTASIA: TStringField
      DisplayLabel = 'Fantasia'
      FieldName = 'FANTASIA'
      Size = 40
    end
    object NfsLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 60
    end
    object NfsBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object NfsCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object NfsESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object NfsSitCalc: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'SitCalc'
      Calculated = True
    end
    object NfsTIPO: TSmallintField
      FieldName = 'TIPO'
    end
    object NfsEMAIL_CONTATO2: TStringField
      FieldName = 'EMAIL_CONTATO2'
      Size = 240
    end
    object NfsCOMPETENCIA: TDateField
      FieldName = 'COMPETENCIA'
    end
    object NfsCIDADE_NOME: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE_NOME'
      Size = 60
    end
    object NfsUF_NOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'UF_NOME'
      FixedChar = True
      Size = 2
    end
  end
  object NfsServ: TFDQuery
    AfterInsert = NfsServAfterInsert
    BeforePost = NfsServBeforePost
    AfterPost = NfsServAfterPost
    AfterDelete = NfsServAfterDelete
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    UpdateObject = upNfsServ
    SQL.Strings = (
      'select * from nfs_serv')
    Left = 836
    Top = 114
    object NfsServNFS_IT_ID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'NFS_IT_ID'
      Required = True
      DisplayFormat = '000000'
    end
    object NfsServNFS_ID: TIntegerField
      FieldName = 'NFS_ID'
    end
    object NfsServDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object NfsServQUANT: TFloatField
      DisplayLabel = 'Quant.'
      FieldName = 'QUANT'
      DisplayFormat = ',0.####'
    end
    object NfsServVL_UNIT: TFloatField
      DisplayLabel = 'Vl. Unit.'
      FieldName = 'VL_UNIT'
      DisplayFormat = ',0.00'
    end
    object NfsServVL_TOTAL: TFloatField
      DisplayLabel = 'Vl. Total'
      FieldName = 'VL_TOTAL'
      DisplayFormat = ',0.00'
    end
    object NfsServUS_CAD: TIntegerField
      FieldName = 'US_CAD'
    end
    object NfsServDT_CAD: TDateTimeField
      FieldName = 'DT_CAD'
    end
    object NfsServUS_ALT: TIntegerField
      FieldName = 'US_ALT'
    end
    object NfsServDT_ALT: TDateTimeField
      FieldName = 'DT_ALT'
    end
  end
  object dsNfs: TDataSource
    DataSet = Nfs
    Left = 757
    Top = 162
  end
  object dsNfsServ: TDataSource
    DataSet = NfsServ
    Left = 836
    Top = 162
  end
  object qryNF: TFDQuery
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    Left = 840
    Top = 388
  end
  object Livro_Caixa: TFDQuery
    BeforeOpen = Livro_CaixaBeforeOpen
    AfterOpen = Livro_CaixaAfterOpen
    BeforeClose = Livro_CaixaBeforeClose
    AfterInsert = Livro_CaixaAfterInsert
    BeforeEdit = Livro_CaixaBeforeEdit
    BeforePost = Livro_CaixaBeforePost
    BeforeDelete = Livro_CaixaBeforeDelete
    OnCalcFields = Livro_CaixaCalcFields
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      'select'
      
        '    l.*, c.conta as conta_nome, coalesce(l.entrada,0)-coalesce(l' +
        '.saida,0) as saldo,'
      
        '    (select descricao from pagar where pagar_id=l.pagar_id) as p' +
        'agar_desc'
      '    from livro_caixa l'
      'left join tipo_contas c on (c.conta_id = l.conta_id)'
      'where l.caixa_id=0')
    Left = 125
    Top = 286
    object Livro_CaixaCAIXA_ID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CAIXA_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '000000'
    end
    object Livro_CaixaDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Size = 120
    end
    object Livro_CaixaABREV: TStringField
      FieldName = 'ABREV'
      Size = 9
    end
    object Livro_CaixaENTRADA: TFloatField
      DisplayLabel = 'Entrada'
      FieldName = 'ENTRADA'
      Required = True
      DisplayFormat = ',0.00'
    end
    object Livro_CaixaDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
    end
    object Livro_CaixaHORA: TTimeField
      DisplayLabel = 'Hora'
      FieldName = 'HORA'
    end
    object Livro_CaixaSAIDA: TFloatField
      DisplayLabel = 'Sa'#237'da'
      FieldName = 'SAIDA'
      Required = True
      DisplayFormat = ',0.00'
    end
    object Livro_CaixaSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object Livro_CaixaDT_CANCELADA: TDateField
      FieldName = 'DT_CANCELADA'
    end
    object Livro_CaixaCAN_MOTIVO: TMemoField
      FieldName = 'CAN_MOTIVO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object Livro_CaixaOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object Livro_CaixaUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object Livro_CaixaUSUARIO_ID: TIntegerField
      FieldName = 'USUARIO_ID'
    end
    object Livro_CaixaBOLETO_ID: TIntegerField
      FieldName = 'BOLETO_ID'
    end
    object Livro_CaixaPAGAR_ID: TIntegerField
      FieldName = 'PAGAR_ID'
    end
    object Livro_CaixaCHEQUE_ID: TIntegerField
      FieldName = 'CHEQUE_ID'
    end
    object Livro_CaixaCONTA_ID: TIntegerField
      DisplayLabel = 'C'#243'd. Conta'
      FieldName = 'CONTA_ID'
      DisplayFormat = '000000'
    end
    object Livro_CaixaCONTA_ID_DEST: TIntegerField
      FieldName = 'CONTA_ID_DEST'
    end
    object Livro_CaixaDESCRICAO_PAGO: TStringField
      FieldName = 'DESCRICAO_PAGO'
    end
    object Livro_CaixaDOCUMENTO: TStringField
      DisplayLabel = 'Documento'
      FieldName = 'DOCUMENTO'
    end
    object Livro_CaixaRETORNO_ID: TIntegerField
      FieldName = 'RETORNO_ID'
    end
    object Livro_CaixaNUMERO_ARQUIVO: TIntegerField
      FieldName = 'NUMERO_ARQUIVO'
    end
    object Livro_CaixaUSR_CAD: TIntegerField
      FieldName = 'USR_CAD'
    end
    object Livro_CaixaORIGEM_ID: TIntegerField
      FieldName = 'ORIGEM_ID'
    end
    object Livro_CaixaATIVO: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'ATIVO'
      Calculated = True
    end
    object Livro_CaixaDT_LANCADO: TDateTimeField
      FieldName = 'DT_LANCADO'
    end
    object Livro_CaixaDT_ALTERADO: TDateTimeField
      FieldName = 'DT_ALTERADO'
    end
    object Livro_CaixaEXTRATO: TSmallintField
      FieldName = 'EXTRATO'
    end
    object Livro_CaixaCANCELADO: TSmallintField
      FieldName = 'CANCELADO'
    end
    object Livro_CaixaTIPO_CONTAS_ID: TIntegerField
      FieldName = 'TIPO_CONTAS_ID'
    end
    object Livro_CaixaCONTA_NOME: TStringField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA_NOME'
      Size = 60
    end
    object Livro_CaixaOP_PAG_ID: TIntegerField
      FieldName = 'OP_PAG_ID'
    end
    object Livro_CaixaSALDO: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Saldo'
      FieldName = 'SALDO'
      Origin = 'SALDO'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object Livro_CaixaPAGAR_DESC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PAGAR_DESC'
      Origin = 'PAGAR_DESC'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
  end
  object Veiculos: TFDQuery
    AfterInsert = VeiculosAfterInsert
    BeforePost = VeiculosBeforePost
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      'select * from veiculos where placa=0')
    Left = 281
    Top = 288
    object VeiculosVEICULO_ID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'VEICULO_ID'
      Origin = 'VEICULO_ID'
      Required = True
      DisplayFormat = '000000'
    end
    object VeiculosPLACA: TStringField
      DisplayLabel = 'Placa'
      FieldName = 'PLACA'
      Origin = 'PLACA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object VeiculosMARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'MARCA'
      Origin = 'MARCA'
      Size = 60
    end
    object VeiculosMODELO: TStringField
      DisplayLabel = 'Modelo'
      FieldName = 'MODELO'
      Origin = 'MODELO'
      Size = 60
    end
    object VeiculosCOR: TStringField
      DisplayLabel = 'Cor'
      FieldName = 'COR'
      Origin = 'COR'
      Size = 60
    end
    object VeiculosRENAVAM: TStringField
      FieldName = 'RENAVAM'
      Origin = 'RENAVAM'
      Size = 60
    end
    object VeiculosSIT: TIntegerField
      FieldName = 'SIT'
      Origin = 'SIT'
    end
    object VeiculosCONF_ID: TIntegerField
      FieldName = 'CONF_ID'
      Origin = 'CONF_ID'
    end
    object VeiculosDOC_ID: TIntegerField
      FieldName = 'DOC_ID'
      Origin = 'DOC_ID'
    end
    object VeiculosDT_CAD: TDateField
      FieldName = 'DT_CAD'
      Origin = 'DT_CAD'
      DisplayFormat = 'Cadastro'
    end
    object VeiculosOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 240
    end
    object VeiculosVL_FRANQ_SEGURO: TFloatField
      DisplayLabel = 'Valor Seguro'
      FieldName = 'VL_FRANQ_SEGURO'
      Origin = 'VL_FRANQ_SEGURO'
      DisplayFormat = ',0.00'
    end
    object VeiculosANO_FAB: TIntegerField
      DisplayLabel = 'Ano(Fab.)'
      FieldName = 'ANO_FAB'
      Origin = 'ANO_FAB'
    end
    object VeiculosANO_MODELO: TIntegerField
      DisplayLabel = 'Ano(Mod.)'
      FieldName = 'ANO_MODELO'
      Origin = 'ANO_MODELO'
    end
    object VeiculosPLACA_ANTERIOR: TStringField
      DisplayLabel = 'Placa(Anterior)'
      FieldName = 'PLACA_ANTERIOR'
      Origin = 'PLACA_ANTERIOR'
    end
    object VeiculosC_S_C_ID: TIntegerField
      FieldName = 'C_S_C_ID'
      Origin = 'C_S_C_ID'
    end
  end
  object dsVeiculos: TDataSource
    DataSet = Veiculos
    Left = 281
    Top = 336
  end
  object dsContServClien: TDataSource
    DataSet = Cont_Serv_Clien
    Left = 361
    Top = 336
  end
  object Cont_Serv_Clien: TFDQuery
    BeforeOpen = Cont_Serv_ClienBeforeOpen
    AfterInsert = Cont_Serv_ClienAfterInsert
    BeforePost = Cont_Serv_ClienBeforePost
    AfterPost = Cont_Serv_ClienAfterPost
    BeforeDelete = Cont_Serv_ClienBeforeDelete
    OnCalcFields = Cont_Serv_ClienCalcFields
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    UpdateObject = upContServCli
    SQL.Strings = (
      'select * from cont_serv_clien')
    Left = 361
    Top = 288
    object Cont_Serv_ClienC_S_C_ID: TIntegerField
      DisplayLabel = 'N.'#186' Contrato'
      FieldName = 'C_S_C_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '000000'
    end
    object Cont_Serv_ClienCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
      DisplayFormat = '000000'
    end
    object Cont_Serv_ClienDT_ALT_VL: TDateField
      DisplayLabel = 'Dt. Alterado'
      FieldName = 'DT_ALT_VL'
    end
    object Cont_Serv_ClienOBS: TStringField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'OBS'
      Size = 240
    end
    object Cont_Serv_ClienFORNE_ID: TIntegerField
      DisplayLabel = 'C'#243'd. Repr.'
      FieldName = 'FORNE_ID'
      DisplayFormat = '000000'
    end
    object Cont_Serv_ClienFornecedor_nome: TStringField
      DisplayLabel = 'Representante'
      FieldKind = fkCalculated
      FieldName = 'Fornecedor_nome'
      Size = 60
      Calculated = True
    end
    object Cont_Serv_ClienDT_CONTRATO: TDateField
      DisplayLabel = 'Dt. Contrato'
      FieldName = 'DT_CONTRATO'
    end
    object Cont_Serv_ClienVENC_DIA: TIntegerField
      DisplayLabel = 'Venc. Dia'
      FieldName = 'VENC_DIA'
    end
    object Cont_Serv_ClienSIT: TIntegerField
      FieldName = 'SIT'
      Origin = 'SIT'
    end
    object Cont_Serv_ClienVEICULO_ID: TIntegerField
      FieldName = 'VEICULO_ID'
      Origin = 'VEICULO_ID'
    end
    object Cont_Serv_ClienPlaca: TStringField
      FieldKind = fkCalculated
      FieldName = 'Placa'
      Calculated = True
    end
    object Cont_Serv_ClienModelo: TStringField
      FieldKind = fkCalculated
      FieldName = 'Modelo'
      Size = 60
      Calculated = True
    end
    object Cont_Serv_ClienMarca: TStringField
      FieldKind = fkCalculated
      FieldName = 'Marca'
      Size = 60
      Calculated = True
    end
    object Cont_Serv_ClienGRADE_ID: TIntegerField
      FieldName = 'GRADE_ID'
      Origin = 'GRADE_ID'
    end
    object Cont_Serv_ClienVALOR: TFloatField
      DisplayLabel = 'Valor Semanal'
      FieldName = 'VALOR'
      Origin = 'VALOR'
      DisplayFormat = ',0.00'
    end
    object Cont_Serv_ClienDT_CAD: TDateTimeField
      DisplayLabel = 'Cadastro'
      FieldName = 'DT_CAD'
      Origin = 'DT_CAD'
    end
    object Cont_Serv_ClienBANCO_ID: TIntegerField
      FieldName = 'BANCO_ID'
      Origin = 'BANCO_ID'
    end
    object Cont_Serv_ClienDT_SIT: TDateField
      FieldName = 'DT_SIT'
      Origin = 'DT_SIT'
    end
    object Cont_Serv_ClienDIAS_TOL: TIntegerField
      FieldName = 'DIAS_TOL'
      Origin = 'DIAS_TOL'
    end
    object Cont_Serv_ClienSituacao_Nome: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'Situacao_Nome'
      Calculated = True
    end
    object Cont_Serv_ClienDT_CONTRATO_FIM: TDateField
      DisplayLabel = 'Dt. Final de Contrato'
      FieldName = 'DT_CONTRATO_FIM'
      Origin = 'DT_CONTRATO_FIM'
    end
    object Cont_Serv_ClienDias_locacao: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Dias_locacao'
      Calculated = True
    end
  end
  object QryFornec: TFDQuery
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      'select nome from fornecedores where forne_id=:ifForne')
    Left = 680
    Top = 336
    ParamData = <
      item
        Name = 'ifForne'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QryFornecNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'User_Name=sysdba'
      'Password=masterkey'
      'Port=3050'
      'CharacterSet=win1252'
      'DriverID=FB')
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtDateTimeStamp
        TargetDataType = dtDateTime
      end
      item
        SourceDataType = dtWideString
        TargetDataType = dtAnsiString
      end
      item
        SourceDataType = dtHMemo
        TargetDataType = dtBlob
      end>
    LoginPrompt = False
    OnError = FDConnection1Error
    Left = 60
    Top = 48
  end
  object Adiciona: TFDQuery
    Connection = FDConnection1
    Left = 500
    Top = 28
  end
  object upBancos: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO BANCOS'
      '(BANCO_ID, BANCO_NOME, CODIGO_BANCO, DIG_BANCO, '
      '  AGENCIA, DIG_AGENCIA, CONTA_CORRENTE, DIG_CONTA_CORRENTE, '
      '  CODIGO_CEDENTE, DIG_COD_CEDENTE, NOME_CEDENTE, '
      '  LOGOMARCA, CONVENIO, MENS_CABECALHO, LOCAL_PAGAMENTO, '
      '  INST_ID, NOSSO_NUMERO, CARTEIRA, DIAS_TOLERANCIA, '
      '  ABREV, USR_CAD, USUARIO_ID, DT_ALTERADO, '
      '  MENSAGEM_1, MENSAGEM_2, MENSAGEM_3, OBSERVACAO_1, '
      '  LAYOUT, CAMINHO_RETORNO, OCULTO, COB_REG, '
      '  FOL_CONTRAT_REM, VAR_CARTEIRA, DIAS_PROTESTO, '
      '  DESC_TOL, CONTRATO, TIPO_CONTA_CORRENTE, '
      '  CODIGO_BANCO2, N_SEQ_REM, CAMINHO_REMESSA, '
      '  ESPECIE_DOC, SAC_AVALISTA, ACEITA_DEB_AUT, '
      '  INF_JUROS, INF_DESC, CONT_ENCERRADA, N_SEQ_REM_DEB_AUTO, '
      '  HOMOLOGACAO, DIAS_BAIXAR_BANCO, BAIX_BOL_PARAM, '
      '  NOME_ARQ_RET, CHAVE_PIX)'
      
        'VALUES (:NEW_BANCO_ID, :NEW_BANCO_NOME, :NEW_CODIGO_BANCO, :NEW_' +
        'DIG_BANCO, '
      
        '  :NEW_AGENCIA, :NEW_DIG_AGENCIA, :NEW_CONTA_CORRENTE, :NEW_DIG_' +
        'CONTA_CORRENTE, '
      '  :NEW_CODIGO_CEDENTE, :NEW_DIG_COD_CEDENTE, :NEW_NOME_CEDENTE, '
      
        '  :NEW_LOGOMARCA, :NEW_CONVENIO, :NEW_MENS_CABECALHO, :NEW_LOCAL' +
        '_PAGAMENTO, '
      
        '  :NEW_INST_ID, :NEW_NOSSO_NUMERO, :NEW_CARTEIRA, :NEW_DIAS_TOLE' +
        'RANCIA, '
      '  :NEW_ABREV, :NEW_USR_CAD, :NEW_USUARIO_ID, :NEW_DT_ALTERADO, '
      
        '  :NEW_MENSAGEM_1, :NEW_MENSAGEM_2, :NEW_MENSAGEM_3, :NEW_OBSERV' +
        'ACAO_1, '
      '  :NEW_LAYOUT, :NEW_CAMINHO_RETORNO, :NEW_OCULTO, :NEW_COB_REG, '
      '  :NEW_FOL_CONTRAT_REM, :NEW_VAR_CARTEIRA, :NEW_DIAS_PROTESTO, '
      '  :NEW_DESC_TOL, :NEW_CONTRATO, :NEW_TIPO_CONTA_CORRENTE, '
      '  :NEW_CODIGO_BANCO2, :NEW_N_SEQ_REM, :NEW_CAMINHO_REMESSA, '
      '  :NEW_ESPECIE_DOC, :NEW_SAC_AVALISTA, :NEW_ACEITA_DEB_AUT, '
      
        '  :NEW_INF_JUROS, :NEW_INF_DESC, :NEW_CONT_ENCERRADA, :NEW_N_SEQ' +
        '_REM_DEB_AUTO, '
      
        '  :NEW_HOMOLOGACAO, :NEW_DIAS_BAIXAR_BANCO, :NEW_BAIX_BOL_PARAM,' +
        ' '
      '  :NEW_NOME_ARQ_RET, :NEW_CHAVE_PIX)')
    ModifySQL.Strings = (
      'UPDATE BANCOS'
      
        'SET BANCO_ID = :NEW_BANCO_ID, BANCO_NOME = :NEW_BANCO_NOME, CODI' +
        'GO_BANCO = :NEW_CODIGO_BANCO, '
      
        '  DIG_BANCO = :NEW_DIG_BANCO, AGENCIA = :NEW_AGENCIA, DIG_AGENCI' +
        'A = :NEW_DIG_AGENCIA, '
      
        '  CONTA_CORRENTE = :NEW_CONTA_CORRENTE, DIG_CONTA_CORRENTE = :NE' +
        'W_DIG_CONTA_CORRENTE, '
      
        '  CODIGO_CEDENTE = :NEW_CODIGO_CEDENTE, DIG_COD_CEDENTE = :NEW_D' +
        'IG_COD_CEDENTE, '
      '  NOME_CEDENTE = :NEW_NOME_CEDENTE, LOGOMARCA = :NEW_LOGOMARCA, '
      
        '  CONVENIO = :NEW_CONVENIO, MENS_CABECALHO = :NEW_MENS_CABECALHO' +
        ', '
      
        '  LOCAL_PAGAMENTO = :NEW_LOCAL_PAGAMENTO, INST_ID = :NEW_INST_ID' +
        ', '
      '  NOSSO_NUMERO = :NEW_NOSSO_NUMERO, CARTEIRA = :NEW_CARTEIRA, '
      '  DIAS_TOLERANCIA = :NEW_DIAS_TOLERANCIA, ABREV = :NEW_ABREV, '
      
        '  USR_CAD = :NEW_USR_CAD, USUARIO_ID = :NEW_USUARIO_ID, DT_ALTER' +
        'ADO = :NEW_DT_ALTERADO, '
      '  MENSAGEM_1 = :NEW_MENSAGEM_1, MENSAGEM_2 = :NEW_MENSAGEM_2, '
      
        '  MENSAGEM_3 = :NEW_MENSAGEM_3, OBSERVACAO_1 = :NEW_OBSERVACAO_1' +
        ', '
      '  LAYOUT = :NEW_LAYOUT, CAMINHO_RETORNO = :NEW_CAMINHO_RETORNO, '
      
        '  OCULTO = :NEW_OCULTO, COB_REG = :NEW_COB_REG, FOL_CONTRAT_REM ' +
        '= :NEW_FOL_CONTRAT_REM, '
      
        '  VAR_CARTEIRA = :NEW_VAR_CARTEIRA, DIAS_PROTESTO = :NEW_DIAS_PR' +
        'OTESTO, '
      
        '  DESC_TOL = :NEW_DESC_TOL, CONTRATO = :NEW_CONTRATO, TIPO_CONTA' +
        '_CORRENTE = :NEW_TIPO_CONTA_CORRENTE, '
      
        '  CODIGO_BANCO2 = :NEW_CODIGO_BANCO2, N_SEQ_REM = :NEW_N_SEQ_REM' +
        ', '
      
        '  CAMINHO_REMESSA = :NEW_CAMINHO_REMESSA, ESPECIE_DOC = :NEW_ESP' +
        'ECIE_DOC, '
      
        '  SAC_AVALISTA = :NEW_SAC_AVALISTA, ACEITA_DEB_AUT = :NEW_ACEITA' +
        '_DEB_AUT, '
      
        '  INF_JUROS = :NEW_INF_JUROS, INF_DESC = :NEW_INF_DESC, CONT_ENC' +
        'ERRADA = :NEW_CONT_ENCERRADA, '
      
        '  N_SEQ_REM_DEB_AUTO = :NEW_N_SEQ_REM_DEB_AUTO, HOMOLOGACAO = :N' +
        'EW_HOMOLOGACAO, '
      
        '  DIAS_BAIXAR_BANCO = :NEW_DIAS_BAIXAR_BANCO, BAIX_BOL_PARAM = :' +
        'NEW_BAIX_BOL_PARAM, '
      '  NOME_ARQ_RET = :NEW_NOME_ARQ_RET, CHAVE_PIX = :NEW_CHAVE_PIX'
      'WHERE BANCO_ID = :OLD_BANCO_ID')
    DeleteSQL.Strings = (
      'DELETE FROM BANCOS'
      'WHERE BANCO_ID = :OLD_BANCO_ID')
    FetchRowSQL.Strings = (
      
        'SELECT BANCO_ID, BANCO_NOME, CODIGO_BANCO, DIG_BANCO, AGENCIA, D' +
        'IG_AGENCIA, '
      
        '  CONTA_CORRENTE, DIG_CONTA_CORRENTE, CODIGO_CEDENTE, DIG_COD_CE' +
        'DENTE, '
      
        '  NOME_CEDENTE, LOGOMARCA, CONVENIO, MENS_CABECALHO, LOCAL_PAGAM' +
        'ENTO, '
      '  INST_ID, NOSSO_NUMERO, CARTEIRA, DIAS_TOLERANCIA, ABREV, '
      '  USR_CAD, USUARIO_ID, DT_ALTERADO, MENSAGEM_1, MENSAGEM_2, '
      '  MENSAGEM_3, OBSERVACAO_1, LAYOUT, CAMINHO_RETORNO, OCULTO, '
      
        '  COB_REG, FOL_CONTRAT_REM, VAR_CARTEIRA, DIAS_PROTESTO, DESC_TO' +
        'L, '
      '  CONTRATO, TIPO_CONTA_CORRENTE, CODIGO_BANCO2, N_SEQ_REM, '
      '  CAMINHO_REMESSA, ESPECIE_DOC, SAC_AVALISTA, ACEITA_DEB_AUT, '
      '  INF_JUROS, INF_DESC, CONT_ENCERRADA, N_SEQ_REM_DEB_AUTO, '
      '  HOMOLOGACAO, DIAS_BAIXAR_BANCO, BAIX_BOL_PARAM, NOME_ARQ_RET, '
      '  CHAVE_PIX'
      'FROM BANCOS'
      'WHERE BANCO_ID = :BANCO_ID')
    Left = 282
    Top = 220
  end
  object upForne: TFDUpdateSQL
    InsertSQL.Strings = (
      'insert into fornecedores'
      
        '  (AGENCIA, ATIVO, BANCO_ID, CELULAR, CNPJ, CONTA_CORRENTE, CONT' +
        'A_POUPANCA, '
      
        '   DATA_CADASTRO, DT_ALTERADO, EMAIL, END_ID, FANTASIA, FAX, FOR' +
        'NE_ID, '
      
        '   FORNE_PERC, IE, NOME, NUMERO, OBS, RESPONSAVEL, SITE, TELEFON' +
        'E, USR_CAD, '
      '   USUARIO_ID)'
      'values'
      
        '  (:AGENCIA, :ATIVO, :BANCO_ID, :CELULAR, :CNPJ, :CONTA_CORRENTE' +
        ', :CONTA_POUPANCA, '
      
        '   :DATA_CADASTRO, :DT_ALTERADO, :EMAIL, :END_ID, :FANTASIA, :FA' +
        'X, :FORNE_ID, '
      
        '   :FORNE_PERC, :IE, :NOME, :NUMERO, :OBS, :RESPONSAVEL, :SITE, ' +
        ':TELEFONE, '
      '   :USR_CAD, :USUARIO_ID)')
    ModifySQL.Strings = (
      'update fornecedores'
      'set'
      '  AGENCIA = :AGENCIA,'
      '  ATIVO = :ATIVO,'
      '  BANCO_ID = :BANCO_ID,'
      '  CELULAR = :CELULAR,'
      '  CNPJ = :CNPJ,'
      '  CONTA_CORRENTE = :CONTA_CORRENTE,'
      '  CONTA_POUPANCA = :CONTA_POUPANCA,'
      '  DATA_CADASTRO = :DATA_CADASTRO,'
      '  DT_ALTERADO = :DT_ALTERADO,'
      '  EMAIL = :EMAIL,'
      '  END_ID = :END_ID,'
      '  FANTASIA = :FANTASIA,'
      '  FAX = :FAX,'
      '  FORNE_ID = :FORNE_ID,'
      '  FORNE_PERC = :FORNE_PERC,'
      '  IE = :IE,'
      '  NOME = :NOME,'
      '  NUMERO = :NUMERO,'
      '  OBS = :OBS,'
      '  RESPONSAVEL = :RESPONSAVEL,'
      '  SITE = :SITE,'
      '  TELEFONE = :TELEFONE,'
      '  USR_CAD = :USR_CAD,'
      '  USUARIO_ID = :USUARIO_ID'
      'where'
      '  FORNE_ID = :OLD_FORNE_ID')
    DeleteSQL.Strings = (
      'delete from fornecedores'
      'where'
      '  FORNE_ID = :OLD_FORNE_ID')
    Left = 677
    Top = 216
  end
  object upContas: TFDUpdateSQL
    InsertSQL.Strings = (
      'insert into tipo_contas'
      
        '  (ABREV, CONTA, CONTA_ID, DT_ALTERADO, OBSERVACAO, OCULTO, REFE' +
        'RENCIA, '
      '   USR_CAD, USUARIO_ID)'
      'values'
      
        '  (:ABREV, :CONTA, :CONTA_ID, :DT_ALTERADO, :OBSERVACAO, :OCULTO' +
        ', :REFERENCIA, '
      '   :USR_CAD, :USUARIO_ID)')
    ModifySQL.Strings = (
      'update tipo_contas'
      'set'
      '  ABREV = :ABREV,'
      '  CONTA = :CONTA,'
      '  CONTA_ID = :CONTA_ID,'
      '  DT_ALTERADO = :DT_ALTERADO,'
      '  OBSERVACAO = :OBSERVACAO,'
      '  OCULTO = :OCULTO,'
      '  REFERENCIA = :REFERENCIA,'
      '  USR_CAD = :USR_CAD,'
      '  USUARIO_ID = :USUARIO_ID'
      'where'
      '  CONTA_ID = :OLD_CONTA_ID')
    DeleteSQL.Strings = (
      'delete from tipo_contas'
      'where'
      '  CONTA_ID = :OLD_CONTA_ID')
    Left = 42
    Top = 390
  end
  object upContServCli: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO CONT_SERV_CLIEN'
      '(C_S_C_ID, CLI_ID, DT_ALT_VL, OBS, FORNE_ID, '
      '  VENC_DIA, DT_CONTRATO, SIT, VEICULO_ID, '
      '  GRADE_ID, VALOR, DT_CAD, BANCO_ID, DT_SIT, '
      '  DIAS_TOL, DT_CONTRATO_FIM)'
      
        'VALUES (:NEW_C_S_C_ID, :NEW_CLI_ID, :NEW_DT_ALT_VL, :NEW_OBS, :N' +
        'EW_FORNE_ID, '
      '  :NEW_VENC_DIA, :NEW_DT_CONTRATO, :NEW_SIT, :NEW_VEICULO_ID, '
      
        '  :NEW_GRADE_ID, :NEW_VALOR, :NEW_DT_CAD, :NEW_BANCO_ID, :NEW_DT' +
        '_SIT, '
      '  :NEW_DIAS_TOL, :NEW_DT_CONTRATO_FIM)')
    ModifySQL.Strings = (
      'UPDATE CONT_SERV_CLIEN'
      
        'SET C_S_C_ID = :NEW_C_S_C_ID, CLI_ID = :NEW_CLI_ID, DT_ALT_VL = ' +
        ':NEW_DT_ALT_VL, '
      
        '  OBS = :NEW_OBS, FORNE_ID = :NEW_FORNE_ID, VENC_DIA = :NEW_VENC' +
        '_DIA, '
      
        '  DT_CONTRATO = :NEW_DT_CONTRATO, SIT = :NEW_SIT, VEICULO_ID = :' +
        'NEW_VEICULO_ID, '
      
        '  GRADE_ID = :NEW_GRADE_ID, VALOR = :NEW_VALOR, DT_CAD = :NEW_DT' +
        '_CAD, '
      
        '  BANCO_ID = :NEW_BANCO_ID, DT_SIT = :NEW_DT_SIT, DIAS_TOL = :NE' +
        'W_DIAS_TOL, '
      '  DT_CONTRATO_FIM = :NEW_DT_CONTRATO_FIM'
      'WHERE C_S_C_ID = :OLD_C_S_C_ID')
    DeleteSQL.Strings = (
      'DELETE FROM CONT_SERV_CLIEN'
      'WHERE C_S_C_ID = :OLD_C_S_C_ID')
    FetchRowSQL.Strings = (
      
        'SELECT C_S_C_ID, CLI_ID, DT_ALT_VL, OBS, FORNE_ID, VENC_DIA, DT_' +
        'CONTRATO, '
      '  SIT, VEICULO_ID, GRADE_ID, VALOR, DT_CAD, BANCO_ID, DT_SIT, '
      '  DIAS_TOL, DT_CONTRATO_FIM'
      'FROM CONT_SERV_CLIEN'
      'WHERE C_S_C_ID = :C_S_C_ID')
    Left = 361
    Top = 390
  end
  object upNfsServ: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'insert into nfs_serv'
      
        '  (descricao, dt_alt, dt_cad, nfs_id, nfs_it_id, quant, us_alt, ' +
        'us_cad, '
      '   vl_total, vl_unit)'
      'values'
      
        '  (:descricao, :dt_alt, :dt_cad, :nfs_id, :nfs_it_id, :quant, :u' +
        's_alt, '
      '   :us_cad, :vl_total, :vl_unit)')
    ModifySQL.Strings = (
      'update nfs_serv'
      'set'
      '  descricao = :descricao,'
      '  dt_alt = :dt_alt,'
      '  dt_cad = :dt_cad,'
      '  nfs_id = :nfs_id,'
      '  nfs_it_id = :nfs_it_id,'
      '  quant = :quant,'
      '  us_alt = :us_alt,'
      '  us_cad = :us_cad,'
      '  vl_total = :vl_total,'
      '  vl_unit = :vl_unit'
      'where'
      '  nfs_it_id = :old_nfs_it_id')
    DeleteSQL.Strings = (
      'delete from nfs_serv'
      'where'
      '  nfs_it_id = :old_nfs_it_id')
    Left = 836
    Top = 216
  end
  object upSerial: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'insert into serial'
      
        '  (CLIENTE_ID, DT_EMISSAO, DT_VALIDADE, HR_EMISSAO, SERIAL, SERI' +
        'AL_ID)'
      'values'
      
        '  (:CLIENTE_ID, :DT_EMISSAO, :DT_VALIDADE, :HR_EMISSAO, :SERIAL,' +
        ' :SERIAL_ID)')
    ModifySQL.Strings = (
      'update serial'
      'set'
      '  CLIENTE_ID = :CLIENTE_ID,'
      '  DT_EMISSAO = :DT_EMISSAO,'
      '  DT_VALIDADE = :DT_VALIDADE,'
      '  HR_EMISSAO = :HR_EMISSAO,'
      '  SERIAL = :SERIAL,'
      '  SERIAL_ID = :SERIAL_ID'
      'where'
      '  SERIAL_ID = :OLD_SERIAL_ID')
    DeleteSQL.Strings = (
      'delete from serial'
      'where'
      '  SERIAL_ID = :OLD_SERIAL_ID')
    Left = 441
    Top = 388
  end
  object upBoletos: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO BOLETOS'
      '(BOLETO_ID, DESCRICAO, PARCELA, VALOR_MENSAL, '
      '  VALOR_LIC, DESCONTO, ACRESCIMO, VALOR_APAGAR, '
      '  JUROS, MULTA, VALOR_PAGO, SITUACAO_BOLETO, '
      '  VENCIMENTO, EMISSAO, RECEBIMENTO, CLI_ID, '
      '  DESCRICAO_PAGO, GRADE_ID, BANCO_ID, RETORNO_ID, '
      '  OBS, OBS_BOLETO, USR_CAD, USR_ID, DT_ALTERADO, '
      '  EMISSAO_ID, CAIXA_ID, DT_CREDITO, NFS_ID, '
      '  VENCIMENTO_ORIG, VALOR_APAGAR_ORIG, DUPLIC_BOL_ID, '
      '  DUPLIC_RET_ID, OP_PAG_ID, RECEB_ID, TIPO_CONTAS_ID, '
      '  ACRESC_EXTRA, RET_OC_ID, REMESSA_ID)'
      
        'VALUES (:NEW_BOLETO_ID, :NEW_DESCRICAO, :NEW_PARCELA, :NEW_VALOR' +
        '_MENSAL, '
      
        '  :NEW_VALOR_LIC, :NEW_DESCONTO, :NEW_ACRESCIMO, :NEW_VALOR_APAG' +
        'AR, '
      
        '  :NEW_JUROS, :NEW_MULTA, :NEW_VALOR_PAGO, :NEW_SITUACAO_BOLETO,' +
        ' '
      '  :NEW_VENCIMENTO, :NEW_EMISSAO, :NEW_RECEBIMENTO, :NEW_CLI_ID, '
      
        '  :NEW_DESCRICAO_PAGO, :NEW_GRADE_ID, :NEW_BANCO_ID, :NEW_RETORN' +
        'O_ID, '
      
        '  :NEW_OBS, :NEW_OBS_BOLETO, :NEW_USR_CAD, :NEW_USR_ID, :NEW_DT_' +
        'ALTERADO, '
      '  :NEW_EMISSAO_ID, :NEW_CAIXA_ID, :NEW_DT_CREDITO, :NEW_NFS_ID, '
      
        '  :NEW_VENCIMENTO_ORIG, :NEW_VALOR_APAGAR_ORIG, :NEW_DUPLIC_BOL_' +
        'ID, '
      
        '  :NEW_DUPLIC_RET_ID, :NEW_OP_PAG_ID, :NEW_RECEB_ID, :NEW_TIPO_C' +
        'ONTAS_ID, '
      '  :NEW_ACRESC_EXTRA, :NEW_RET_OC_ID, :NEW_REMESSA_ID)')
    ModifySQL.Strings = (
      'UPDATE BOLETOS'
      
        'SET BOLETO_ID = :NEW_BOLETO_ID, DESCRICAO = :NEW_DESCRICAO, PARC' +
        'ELA = :NEW_PARCELA, '
      '  VALOR_MENSAL = :NEW_VALOR_MENSAL, VALOR_LIC = :NEW_VALOR_LIC, '
      
        '  DESCONTO = :NEW_DESCONTO, ACRESCIMO = :NEW_ACRESCIMO, VALOR_AP' +
        'AGAR = :NEW_VALOR_APAGAR, '
      
        '  JUROS = :NEW_JUROS, MULTA = :NEW_MULTA, VALOR_PAGO = :NEW_VALO' +
        'R_PAGO, '
      
        '  SITUACAO_BOLETO = :NEW_SITUACAO_BOLETO, VENCIMENTO = :NEW_VENC' +
        'IMENTO, '
      '  EMISSAO = :NEW_EMISSAO, RECEBIMENTO = :NEW_RECEBIMENTO, '
      '  CLI_ID = :NEW_CLI_ID, DESCRICAO_PAGO = :NEW_DESCRICAO_PAGO, '
      
        '  GRADE_ID = :NEW_GRADE_ID, BANCO_ID = :NEW_BANCO_ID, RETORNO_ID' +
        ' = :NEW_RETORNO_ID, '
      
        '  OBS = :NEW_OBS, OBS_BOLETO = :NEW_OBS_BOLETO, USR_CAD = :NEW_U' +
        'SR_CAD, '
      
        '  USR_ID = :NEW_USR_ID, DT_ALTERADO = :NEW_DT_ALTERADO, EMISSAO_' +
        'ID = :NEW_EMISSAO_ID, '
      '  CAIXA_ID = :NEW_CAIXA_ID, DT_CREDITO = :NEW_DT_CREDITO, '
      '  NFS_ID = :NEW_NFS_ID, VENCIMENTO_ORIG = :NEW_VENCIMENTO_ORIG, '
      
        '  VALOR_APAGAR_ORIG = :NEW_VALOR_APAGAR_ORIG, DUPLIC_BOL_ID = :N' +
        'EW_DUPLIC_BOL_ID, '
      
        '  DUPLIC_RET_ID = :NEW_DUPLIC_RET_ID, OP_PAG_ID = :NEW_OP_PAG_ID' +
        ', '
      
        '  RECEB_ID = :NEW_RECEB_ID, TIPO_CONTAS_ID = :NEW_TIPO_CONTAS_ID' +
        ', '
      '  ACRESC_EXTRA = :NEW_ACRESC_EXTRA, RET_OC_ID = :NEW_RET_OC_ID, '
      '  REMESSA_ID = :NEW_REMESSA_ID'
      'WHERE BOLETO_ID = :OLD_BOLETO_ID')
    DeleteSQL.Strings = (
      'DELETE FROM BOLETOS'
      'WHERE BOLETO_ID = :OLD_BOLETO_ID')
    FetchRowSQL.Strings = (
      
        'SELECT BOLETO_ID, DESCRICAO, PARCELA, VALOR_MENSAL, VALOR_LIC, V' +
        'ALOR_INTEGRAL, '
      '  DESCONTO, ACRESCIMO, VALOR_APAGAR, JUROS, MULTA, VALOR_PAGO, '
      '  SITUACAO_BOLETO, VENCIMENTO, EMISSAO, RECEBIMENTO, CLI_ID, '
      
        '  DESCRICAO_PAGO, GRADE_ID, BANCO_ID, RETORNO_ID, OBS, OBS_BOLET' +
        'O, '
      '  USR_CAD, USR_ID, DT_ALTERADO, EMISSAO_ID, CLIENTE, CAIXA_ID, '
      '  DT_CREDITO, NFS_ID, VENCIMENTO_ORIG, VALOR_APAGAR_ORIG, '
      
        '  DUPLIC_BOL_ID, DUPLIC_RET_ID, OP_PAG_ID, RECEB_ID, TIPO_CONTAS' +
        '_ID, '
      '  ACRESC_EXTRA, RET_OC_ID, REMESSA_ID'
      'FROM BOLETOS'
      'WHERE BOLETO_ID = :BOLETO_ID')
    Left = 359
    Top = 218
  end
  object IdSMTP1: TIdSMTP
    IOHandler = IdSSLIOHandlerSocketOpenSSL1
    OnWork = IdSMTP1Work
    OnWorkBegin = IdSMTP1WorkBegin
    OnWorkEnd = IdSMTP1WorkEnd
    SASLMechanisms = <>
    Left = 846
    Top = 598
  end
  object IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL
    Destination = ':25'
    MaxLineAction = maException
    Port = 25
    DefaultPort = 0
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 960
    Top = 598
  end
  object Config: TFDQuery
    AfterInsert = ConfigAfterInsert
    BeforePost = ConfigBeforePost
    OnCalcFields = ConfigCalcFields
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    UpdateObject = upConfig
    SQL.Strings = (
      
        'select c.*, (select m.nome from municipios m where m.codmun=c.ci' +
        'dade) as cidade_nome from config c where 1=1')
    Left = 127
    Top = 122
    object ConfigLOGO: TBlobField
      FieldName = 'LOGO'
      ProviderFlags = [pfInUpdate]
    end
    object ConfigEMAIL_REMET: TStringField
      FieldName = 'EMAIL_REMET'
      Size = 60
    end
    object ConfigEMAIL_SERV_SMTP: TStringField
      FieldName = 'EMAIL_SERV_SMTP'
      Size = 60
    end
    object ConfigEMAIL_PORTA_SMTP: TIntegerField
      FieldName = 'EMAIL_PORTA_SMTP'
    end
    object ConfigEMAIL_USER: TStringField
      FieldName = 'EMAIL_USER'
      Size = 40
    end
    object ConfigEMAIL_SSL_NIVEL: TIntegerField
      FieldName = 'EMAIL_SSL_NIVEL'
    end
    object ConfigEMAIL_SSL_METODO: TIntegerField
      FieldName = 'EMAIL_SSL_METODO'
    end
    object ConfigEMAIL_SSL_MODO: TIntegerField
      FieldName = 'EMAIL_SSL_MODO'
    end
    object ConfigEMAIL_COMPACTAR_ANEXO: TIntegerField
      FieldName = 'EMAIL_COMPACTAR_ANEXO'
    end
    object ConfigLOGO_PREFEITURA: TBlobField
      FieldName = 'LOGO_PREFEITURA'
      ProviderFlags = [pfInUpdate]
    end
    object ConfigNFSE_CERT_DIG_NUM_SERIE: TStringField
      FieldName = 'NFSE_CERT_DIG_NUM_SERIE'
      Size = 60
    end
    object ConfigNFSE_AMBIENTE: TSmallintField
      FieldName = 'NFSE_AMBIENTE'
    end
    object ConfigCNAE: TIntegerField
      FieldName = 'CNAE'
    end
    object ConfigPERC_ISS: TFloatField
      FieldName = 'PERC_ISS'
      DisplayFormat = ',0.00%'
    end
    object ConfigCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object ConfigCIDADE: TStringField
      FieldName = 'CIDADE'
      OnChange = ConfigCIDADEChange
      Size = 60
    end
    object ConfigUF: TStringField
      FieldName = 'UF'
      OnChange = ConfigUFChange
      Size = 60
    end
    object ConfigPAIS: TStringField
      FieldName = 'PAIS'
      OnChange = ConfigPAISChange
      Size = 60
    end
    object ConfigCOMPL_END: TStringField
      FieldName = 'COMPL_END'
      Size = 240
    end
    object ConfigFONE1: TStringField
      FieldName = 'FONE1'
      EditMask = '!\(99\)9999-9999;1;_'
      Size = 16
    end
    object ConfigFONE2: TStringField
      FieldName = 'FONE2'
      EditMask = '!\(99\)9999-9999;1;_'
      Size = 16
    end
    object ConfigFONE3: TStringField
      FieldName = 'FONE3'
      EditMask = '!\(99\)9999-9999;1;_'
      Size = 16
    end
    object ConfigEMAIL_SUPORT: TStringField
      FieldName = 'EMAIL_SUPORT'
      Size = 60
    end
    object ConfigEMAIL_COMERC: TStringField
      FieldName = 'EMAIL_COMERC'
      Size = 60
    end
    object ConfigSITE: TStringField
      FieldName = 'SITE'
      Size = 60
    end
    object ConfigCOD_SPC: TStringField
      FieldName = 'COD_SPC'
    end
    object ConfigNOME: TStringField
      DisplayLabel = 'Nome/Raz'#227'o Social'
      FieldName = 'NOME'
      Size = 60
    end
    object ConfigFANTASIA: TStringField
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'FANTASIA'
      Size = 60
    end
    object ConfigSLOGAN: TStringField
      FieldName = 'SLOGAN'
      Size = 60
    end
    object ConfigCNPJ: TStringField
      DisplayLabel = 'C.P.F/C.N.P.J'
      FieldName = 'CNPJ'
    end
    object ConfigLOGO1: TBlobField
      FieldName = 'LOGO1'
      ProviderFlags = [pfInUpdate]
    end
    object ConfigLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 60
    end
    object ConfigBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 60
    end
    object ConfigLOGO3: TBlobField
      FieldName = 'LOGO3'
      ProviderFlags = [pfInUpdate]
    end
    object ConfigTIPO_BOLETO: TIntegerField
      FieldName = 'TIPO_BOLETO'
    end
    object ConfigNFSE_N_RPS: TIntegerField
      FieldName = 'NFSE_N_RPS'
    end
    object ConfigNFSE_TIPO_RPS: TSmallintField
      FieldName = 'NFSE_TIPO_RPS'
    end
    object ConfigNFSE_RETER_ISS: TSmallintField
      FieldName = 'NFSE_RETER_ISS'
    end
    object ConfigINSC_MUNIC: TStringField
      FieldName = 'INSC_MUNIC'
    end
    object ConfigNFSE_COD_TRIB_SERV: TIntegerField
      FieldName = 'NFSE_COD_TRIB_SERV'
    end
    object ConfigNFSE_SEQ_NUM: TIntegerField
      FieldName = 'NFSE_SEQ_NUM'
    end
    object ConfigNFSE_USA_ACBR: TSmallintField
      FieldName = 'NFSE_USA_ACBR'
    end
    object ConfigOPT_SIMP_NAC: TSmallintField
      FieldName = 'OPT_SIMP_NAC'
    end
    object ConfigNFSERIE: TIntegerField
      FieldName = 'NFSERIE'
    end
    object ConfigNFSE_COD_ATV_MUN: TIntegerField
      FieldName = 'NFSE_COD_ATV_MUN'
    end
    object ConfigTIPO_CLIENT: TSmallintField
      FieldName = 'TIPO_CLIENT'
    end
    object ConfigMSG: TMemoField
      FieldName = 'MSG'
      Origin = 'MSG'
      BlobType = ftMemo
    end
    object ConfigEMAIL_PASS: TMemoField
      FieldName = 'EMAIL_PASS'
      Origin = 'EMAIL_PASS'
      BlobType = ftMemo
    end
    object ConfigOBSERVACAO: TMemoField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      BlobType = ftMemo
    end
    object ConfigCidade_Nome: TStringField
      FieldKind = fkCalculated
      FieldName = 'Cidade_Nome'
      Size = 60
      Calculated = True
    end
    object ConfigNASCIMENTO: TDateField
      FieldName = 'NASCIMENTO'
      Origin = 'NASCIMENTO'
    end
    object ConfigSEXO: TStringField
      FieldName = 'SEXO'
      Origin = 'SEXO'
      Size = 1
    end
    object ConfigNACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
      Origin = 'NACIONALIDADE'
      OnChange = ConfigNACIONALIDADEChange
    end
    object ConfigUF_NATURAL: TStringField
      FieldName = 'UF_NATURAL'
      Origin = 'UF_NATURAL'
      OnChange = ConfigUF_NATURALChange
    end
    object ConfigNATURALIDADE: TStringField
      FieldName = 'NATURALIDADE'
      Origin = 'NATURALIDADE'
      Size = 60
    end
    object ConfigEST_CIVIL: TStringField
      FieldName = 'EST_CIVIL'
      Origin = 'EST_CIVIL'
    end
    object ConfigPROFISSAO: TStringField
      FieldName = 'PROFISSAO'
      Origin = 'PROFISSAO'
      Size = 60
    end
    object ConfigCONTATO: TStringField
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
      Size = 60
    end
    object ConfigRG: TStringField
      FieldName = 'RG'
      Origin = 'RG'
      Size = 16
    end
    object ConfigRG_DATA: TDateField
      FieldName = 'RG_DATA'
      Origin = 'RG_DATA'
    end
    object ConfigRG_ORG_ID: TIntegerField
      FieldName = 'RG_ORG_ID'
      Origin = 'RG_ORG_ID'
    end
    object ConfigRG_UF: TStringField
      FieldName = 'RG_UF'
      Origin = 'RG_UF'
    end
    object ConfigPASSAPORTE: TStringField
      FieldName = 'PASSAPORTE'
      Origin = 'PASSAPORTE'
    end
    object ConfigIMPORT_BC_FB: TSmallintField
      FieldName = 'IMPORT_BC_FB'
      Origin = 'IMPORT_BC_FB'
    end
    object ConfigCONF_ID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CONF_ID'
      Origin = 'CONF_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '000000'
    end
    object ConfigCELULAR_1: TStringField
      FieldName = 'CELULAR_1'
      Origin = 'CELULAR_1'
      EditMask = '!\(99\)99999-9999;1;_'
      Size = 16
    end
    object ConfigCHAVE_PIX: TStringField
      FieldName = 'CHAVE_PIX'
      Origin = 'CHAVE_PIX'
      Size = 60
    end
    object ConfigVL_MULT_CONTRATUAL: TFloatField
      FieldName = 'VL_MULT_CONTRATUAL'
      Origin = 'VL_MULT_CONTRATUAL'
      DisplayFormat = ',0.00'
    end
    object ConfigVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      DisplayFormat = ',0.00'
    end
    object ConfigCNH_N_REG: TStringField
      FieldName = 'CNH_N_REG'
      Origin = 'CNH_N_REG'
    end
    object ConfigCNH_DT_1_HAB: TDateField
      FieldName = 'CNH_DT_1_HAB'
      Origin = 'CNH_DT_1_HAB'
    end
    object ConfigCNH_RENACH: TStringField
      FieldName = 'CNH_RENACH'
      Origin = 'CNH_RENACH'
      Size = 11
    end
    object ConfigCNH_DT_VALIDADE: TDateField
      FieldName = 'CNH_DT_VALIDADE'
      Origin = 'CNH_DT_VALIDADE'
    end
  end
  object upConfig: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO CONFIG'
      '(CONF_ID, LOGO, EMAIL_REMET, EMAIL_SERV_SMTP, '
      '  EMAIL_PORTA_SMTP, EMAIL_USER, EMAIL_PASS, '
      '  EMAIL_SSL_NIVEL, EMAIL_SSL_METODO, EMAIL_SSL_MODO, '
      '  EMAIL_COMPACTAR_ANEXO, MSG, LOGO_PREFEITURA, '
      '  NFSE_CERT_DIG_NUM_SERIE, NFSE_AMBIENTE, CNAE, '
      '  PERC_ISS, FANTASIA, SLOGAN, CNPJ, LOGO1, '
      '  PAIS, LOGRADOURO, BAIRRO, CEP, CIDADE, '
      '  UF, COMPL_END, FONE1, FONE2, FONE3, '
      '  EMAIL_SUPORT, EMAIL_COMERC, SITE, COD_SPC, '
      '  OBSERVACAO, NOME, LOGO3, TIPO_BOLETO, '
      '  NFSE_N_RPS, NFSE_TIPO_RPS, NFSE_RETER_ISS, '
      '  INSC_MUNIC, NFSE_COD_TRIB_SERV, NFSE_SEQ_NUM, '
      '  NFSE_USA_ACBR, OPT_SIMP_NAC, NFSERIE, NFSE_COD_ATV_MUN, '
      '  TIPO_CLIENT, IMPORT_BC_FB, NASCIMENTO, SEXO, '
      '  NACIONALIDADE, UF_NATURAL, NATURALIDADE, '
      '  EST_CIVIL, PROFISSAO, CONTATO, RG, RG_DATA, '
      '  RG_ORG_ID, RG_UF, PASSAPORTE, CELULAR_1, '
      '  CHAVE_PIX, VL_MULT_CONTRATUAL, VALOR, CNH_N_REG, '
      '  CNH_DT_1_HAB, CNH_RENACH, CNH_DT_VALIDADE)'
      
        'VALUES (:NEW_CONF_ID, :NEW_LOGO, :NEW_EMAIL_REMET, :NEW_EMAIL_SE' +
        'RV_SMTP, '
      '  :NEW_EMAIL_PORTA_SMTP, :NEW_EMAIL_USER, :NEW_EMAIL_PASS, '
      
        '  :NEW_EMAIL_SSL_NIVEL, :NEW_EMAIL_SSL_METODO, :NEW_EMAIL_SSL_MO' +
        'DO, '
      '  :NEW_EMAIL_COMPACTAR_ANEXO, :NEW_MSG, :NEW_LOGO_PREFEITURA, '
      '  :NEW_NFSE_CERT_DIG_NUM_SERIE, :NEW_NFSE_AMBIENTE, :NEW_CNAE, '
      
        '  :NEW_PERC_ISS, :NEW_FANTASIA, :NEW_SLOGAN, :NEW_CNPJ, :NEW_LOG' +
        'O1, '
      
        '  :NEW_PAIS, :NEW_LOGRADOURO, :NEW_BAIRRO, :NEW_CEP, :NEW_CIDADE' +
        ', '
      '  :NEW_UF, :NEW_COMPL_END, :NEW_FONE1, :NEW_FONE2, :NEW_FONE3, '
      
        '  :NEW_EMAIL_SUPORT, :NEW_EMAIL_COMERC, :NEW_SITE, :NEW_COD_SPC,' +
        ' '
      '  :NEW_OBSERVACAO, :NEW_NOME, :NEW_LOGO3, :NEW_TIPO_BOLETO, '
      '  :NEW_NFSE_N_RPS, :NEW_NFSE_TIPO_RPS, :NEW_NFSE_RETER_ISS, '
      '  :NEW_INSC_MUNIC, :NEW_NFSE_COD_TRIB_SERV, :NEW_NFSE_SEQ_NUM, '
      
        '  :NEW_NFSE_USA_ACBR, :NEW_OPT_SIMP_NAC, :NEW_NFSERIE, :NEW_NFSE' +
        '_COD_ATV_MUN, '
      
        '  :NEW_TIPO_CLIENT, :NEW_IMPORT_BC_FB, :NEW_NASCIMENTO, :NEW_SEX' +
        'O, '
      '  :NEW_NACIONALIDADE, :NEW_UF_NATURAL, :NEW_NATURALIDADE, '
      
        '  :NEW_EST_CIVIL, :NEW_PROFISSAO, :NEW_CONTATO, :NEW_RG, :NEW_RG' +
        '_DATA, '
      '  :NEW_RG_ORG_ID, :NEW_RG_UF, :NEW_PASSAPORTE, :NEW_CELULAR_1, '
      
        '  :NEW_CHAVE_PIX, :NEW_VL_MULT_CONTRATUAL, :NEW_VALOR, :NEW_CNH_' +
        'N_REG, '
      '  :NEW_CNH_DT_1_HAB, :NEW_CNH_RENACH, :NEW_CNH_DT_VALIDADE)')
    ModifySQL.Strings = (
      'UPDATE CONFIG'
      
        'SET CONF_ID = :NEW_CONF_ID, LOGO = :NEW_LOGO, EMAIL_REMET = :NEW' +
        '_EMAIL_REMET, '
      
        '  EMAIL_SERV_SMTP = :NEW_EMAIL_SERV_SMTP, EMAIL_PORTA_SMTP = :NE' +
        'W_EMAIL_PORTA_SMTP, '
      '  EMAIL_USER = :NEW_EMAIL_USER, EMAIL_PASS = :NEW_EMAIL_PASS, '
      
        '  EMAIL_SSL_NIVEL = :NEW_EMAIL_SSL_NIVEL, EMAIL_SSL_METODO = :NE' +
        'W_EMAIL_SSL_METODO, '
      
        '  EMAIL_SSL_MODO = :NEW_EMAIL_SSL_MODO, EMAIL_COMPACTAR_ANEXO = ' +
        ':NEW_EMAIL_COMPACTAR_ANEXO, '
      '  MSG = :NEW_MSG, LOGO_PREFEITURA = :NEW_LOGO_PREFEITURA, '
      '  NFSE_CERT_DIG_NUM_SERIE = :NEW_NFSE_CERT_DIG_NUM_SERIE, '
      
        '  NFSE_AMBIENTE = :NEW_NFSE_AMBIENTE, CNAE = :NEW_CNAE, PERC_ISS' +
        ' = :NEW_PERC_ISS, '
      
        '  FANTASIA = :NEW_FANTASIA, SLOGAN = :NEW_SLOGAN, CNPJ = :NEW_CN' +
        'PJ, '
      
        '  LOGO1 = :NEW_LOGO1, PAIS = :NEW_PAIS, LOGRADOURO = :NEW_LOGRAD' +
        'OURO, '
      '  BAIRRO = :NEW_BAIRRO, CEP = :NEW_CEP, CIDADE = :NEW_CIDADE, '
      '  UF = :NEW_UF, COMPL_END = :NEW_COMPL_END, FONE1 = :NEW_FONE1, '
      
        '  FONE2 = :NEW_FONE2, FONE3 = :NEW_FONE3, EMAIL_SUPORT = :NEW_EM' +
        'AIL_SUPORT, '
      
        '  EMAIL_COMERC = :NEW_EMAIL_COMERC, SITE = :NEW_SITE, COD_SPC = ' +
        ':NEW_COD_SPC, '
      
        '  OBSERVACAO = :NEW_OBSERVACAO, NOME = :NEW_NOME, LOGO3 = :NEW_L' +
        'OGO3, '
      '  TIPO_BOLETO = :NEW_TIPO_BOLETO, NFSE_N_RPS = :NEW_NFSE_N_RPS, '
      
        '  NFSE_TIPO_RPS = :NEW_NFSE_TIPO_RPS, NFSE_RETER_ISS = :NEW_NFSE' +
        '_RETER_ISS, '
      
        '  INSC_MUNIC = :NEW_INSC_MUNIC, NFSE_COD_TRIB_SERV = :NEW_NFSE_C' +
        'OD_TRIB_SERV, '
      
        '  NFSE_SEQ_NUM = :NEW_NFSE_SEQ_NUM, NFSE_USA_ACBR = :NEW_NFSE_US' +
        'A_ACBR, '
      '  OPT_SIMP_NAC = :NEW_OPT_SIMP_NAC, NFSERIE = :NEW_NFSERIE, '
      
        '  NFSE_COD_ATV_MUN = :NEW_NFSE_COD_ATV_MUN, TIPO_CLIENT = :NEW_T' +
        'IPO_CLIENT, '
      
        '  IMPORT_BC_FB = :NEW_IMPORT_BC_FB, NASCIMENTO = :NEW_NASCIMENTO' +
        ', '
      
        '  SEXO = :NEW_SEXO, NACIONALIDADE = :NEW_NACIONALIDADE, UF_NATUR' +
        'AL = :NEW_UF_NATURAL, '
      '  NATURALIDADE = :NEW_NATURALIDADE, EST_CIVIL = :NEW_EST_CIVIL, '
      
        '  PROFISSAO = :NEW_PROFISSAO, CONTATO = :NEW_CONTATO, RG = :NEW_' +
        'RG, '
      
        '  RG_DATA = :NEW_RG_DATA, RG_ORG_ID = :NEW_RG_ORG_ID, RG_UF = :N' +
        'EW_RG_UF, '
      '  PASSAPORTE = :NEW_PASSAPORTE, CELULAR_1 = :NEW_CELULAR_1, '
      
        '  CHAVE_PIX = :NEW_CHAVE_PIX, VL_MULT_CONTRATUAL = :NEW_VL_MULT_' +
        'CONTRATUAL, '
      
        '  VALOR = :NEW_VALOR, CNH_N_REG = :NEW_CNH_N_REG, CNH_DT_1_HAB =' +
        ' :NEW_CNH_DT_1_HAB, '
      
        '  CNH_RENACH = :NEW_CNH_RENACH, CNH_DT_VALIDADE = :NEW_CNH_DT_VA' +
        'LIDADE'
      'WHERE CONF_ID = :OLD_CONF_ID')
    DeleteSQL.Strings = (
      'DELETE FROM CONFIG'
      'WHERE CONF_ID = :OLD_CONF_ID')
    FetchRowSQL.Strings = (
      
        'SELECT CONF_ID, LOGO, EMAIL_REMET, EMAIL_SERV_SMTP, EMAIL_PORTA_' +
        'SMTP, '
      '  EMAIL_USER, EMAIL_PASS, EMAIL_SSL_NIVEL, EMAIL_SSL_METODO, '
      '  EMAIL_SSL_MODO, EMAIL_COMPACTAR_ANEXO, MSG, LOGO_PREFEITURA, '
      '  NFSE_CERT_DIG_NUM_SERIE, NFSE_AMBIENTE, CNAE, PERC_ISS, '
      '  FANTASIA, SLOGAN, CNPJ, LOGO1, PAIS, LOGRADOURO, BAIRRO, '
      
        '  CEP, CIDADE, UF, COMPL_END, FONE1, FONE2, FONE3, EMAIL_SUPORT,' +
        ' '
      
        '  EMAIL_COMERC, SITE, COD_SPC, OBSERVACAO, NOME, LOGO3, TIPO_BOL' +
        'ETO, '
      
        '  NFSE_N_RPS, NFSE_TIPO_RPS, NFSE_RETER_ISS, INSC_MUNIC, NFSE_CO' +
        'D_TRIB_SERV, '
      
        '  NFSE_SEQ_NUM, NFSE_USA_ACBR, OPT_SIMP_NAC, NFSERIE, NFSE_COD_A' +
        'TV_MUN, '
      '  TIPO_CLIENT, IMPORT_BC_FB, NASCIMENTO, SEXO, NACIONALIDADE, '
      '  UF_NATURAL, NATURALIDADE, EST_CIVIL, PROFISSAO, CONTATO, '
      
        '  RG, RG_DATA, RG_ORG_ID, RG_UF, PASSAPORTE, CELULAR_1, CHAVE_PI' +
        'X, '
      
        '  VL_MULT_CONTRATUAL, VALOR, CNH_N_REG, CNH_DT_1_HAB, CNH_RENACH' +
        ', '
      '  CNH_DT_VALIDADE'
      'FROM CONFIG'
      'WHERE CONF_ID = :CONF_ID')
    Left = 123
    Top = 218
  end
  object dsConfig: TDataSource
    DataSet = Config
    Left = 129
    Top = 176
  end
  object qryNFSServ: TFDQuery
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      
        'select nfs_it_id, descricao, quant, vl_unit, vl_total from nfs_s' +
        'erv where nfs_id=:idnfs')
    Left = 774
    Top = 454
    ParamData = <
      item
        Name = 'idNFS'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryNFSServNFS_IT_ID: TIntegerField
      FieldName = 'NFS_IT_ID'
      Required = True
    end
    object qryNFSServDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 240
    end
    object qryNFSServQUANT: TFloatField
      FieldName = 'QUANT'
    end
    object qryNFSServVL_UNIT: TFloatField
      FieldName = 'VL_UNIT'
    end
    object qryNFSServVL_TOTAL: TFloatField
      FieldName = 'VL_TOTAL'
    end
  end
  object qryServ: TFDQuery
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      'select veiculo_id, cli_id from cont_serv_clien  where cli_id = 1')
    Left = 121
    Top = 456
    object qryServCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
      Required = True
    end
    object qryServServico: TStringField
      FieldKind = fkCalculated
      FieldName = 'Servico'
      Size = 120
      Calculated = True
    end
    object qryServVEICULO_ID: TIntegerField
      FieldName = 'VEICULO_ID'
      Origin = 'VEICULO_ID'
    end
  end
  object Login: TFDQuery
    AfterInsert = LoginAfterInsert
    BeforePost = LoginBeforePost
    OnCalcFields = LoginCalcFields
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      'select * from login')
    Left = 1048
    Top = 104
    object LoginLOGIN_ID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'LOGIN_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '000'
    end
    object LoginNIVEL: TIntegerField
      FieldName = 'NIVEL'
      Required = True
    end
    object LoginLOGIN: TStringField
      DisplayLabel = 'Login'
      FieldName = 'LOGIN'
      Size = 40
    end
    object LoginATIVO: TIntegerField
      FieldName = 'ATIVO'
      Required = True
    end
    object LoginGERA_NFSE: TSmallintField
      FieldName = 'GERA_NFSE'
    end
    object LoginNfseGerar: TStringField
      DisplayLabel = 'NFSe (Aut.)?'
      FieldKind = fkCalculated
      FieldName = 'NfseGerar'
      Size = 3
      Calculated = True
    end
    object LoginSENHA: TMemoField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      BlobType = ftMemo
    end
  end
  object dsLogin: TDataSource
    DataSet = Login
    Left = 1050
    Top = 156
  end
  object dsDocumentos: TDataSource
    DataSet = Documentos
    Left = 1144
    Top = 160
  end
  object Documentos: TFDQuery
    AfterInsert = DocumentosAfterInsert
    BeforePost = DocumentosBeforePost
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    UpdateObject = upDocumentos
    SQL.Strings = (
      'select * from documentos')
    Left = 1144
    Top = 110
    object DocumentosDOC_ID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'DOC_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '000000'
    end
    object DocumentosDOC_NOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'DOC_NOME'
      Size = 60
    end
    object DocumentosIMG: TBlobField
      FieldName = 'IMG'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object DocumentosOCULTAR_CAB: TSmallintField
      FieldName = 'OCULTAR_CAB'
    end
    object DocumentosATIVO: TSmallintField
      FieldName = 'ATIVO'
    end
    object DocumentosESP_LINHA: TSmallintField
      FieldName = 'ESP_LINHA'
    end
    object DocumentosMARGENS: TSmallintField
      FieldName = 'MARGENS'
    end
    object DocumentosFORCAR_RODAPE_IE: TSmallintField
      FieldName = 'FORCAR_RODAPE_IE'
    end
    object DocumentosTIPO_IMG_CAB: TSmallintField
      FieldName = 'TIPO_IMG_CAB'
    end
    object DocumentosTAM_FONTE_CAB: TSmallintField
      FieldName = 'TAM_FONTE_CAB'
    end
    object DocumentosCABEC_TODAS: TSmallintField
      FieldName = 'CABEC_TODAS'
    end
    object DocumentosADIMPLENT: TSmallintField
      FieldName = 'ADIMPLENT'
    end
    object DocumentosADIMP_DOC_MAT: TSmallintField
      FieldName = 'ADIMP_DOC_MAT'
    end
    object DocumentosOCULTAR_CEP: TSmallintField
      FieldName = 'OCULTAR_CEP'
    end
    object DocumentosOCULTAR_RESOLUCAO: TSmallintField
      FieldName = 'OCULTAR_RESOLUCAO'
    end
    object DocumentosOCULTAR_PARC_ABERTO: TSmallintField
      FieldName = 'OCULTAR_PARC_ABERTO'
    end
    object DocumentosCABEC_PRIM_PAG: TSmallintField
      FieldName = 'CABEC_PRIM_PAG'
    end
    object DocumentosPAG1: TMemoField
      FieldName = 'PAG1'
      Origin = 'PAG1'
      BlobType = ftMemo
    end
    object DocumentosDOC_HTML: TMemoField
      FieldName = 'DOC_HTML'
      Origin = 'DOC_HTML'
      BlobType = ftMemo
    end
  end
  object upDocumentos: TFDUpdateSQL
    InsertSQL.Strings = (
      'insert into DOCUMENTOS'
      
        '  (ADIMP_DOC_MAT, ADIMPLENT, ATIVO, CABEC_PRIM_PAG, CABEC_TODAS,' +
        ' DOC_HTML, '
      
        '   DOC_ID, DOC_NOME, ESP_LINHA, FORCAR_RODAPE_IE, IMG, MARGENS, ' +
        'OCULTAR_CAB, '
      
        '   OCULTAR_CEP, OCULTAR_PARC_ABERTO, OCULTAR_RESOLUCAO, PAG1, TA' +
        'M_FONTE_CAB, '
      '   TIPO_IMG_CAB)'
      'values'
      
        '  (:ADIMP_DOC_MAT, :ADIMPLENT, :ATIVO, :CABEC_PRIM_PAG, :CABEC_T' +
        'ODAS, :DOC_HTML, '
      
        '   :DOC_ID, :DOC_NOME, :ESP_LINHA, :FORCAR_RODAPE_IE, :IMG, :MAR' +
        'GENS, :OCULTAR_CAB, '
      
        '   :OCULTAR_CEP, :OCULTAR_PARC_ABERTO, :OCULTAR_RESOLUCAO, :PAG1' +
        ', :TAM_FONTE_CAB, '
      '   :TIPO_IMG_CAB)')
    ModifySQL.Strings = (
      'update DOCUMENTOS'
      'set'
      '  ADIMP_DOC_MAT = :ADIMP_DOC_MAT,'
      '  ADIMPLENT = :ADIMPLENT,'
      '  ATIVO = :ATIVO,'
      '  CABEC_PRIM_PAG = :CABEC_PRIM_PAG,'
      '  CABEC_TODAS = :CABEC_TODAS,'
      '  DOC_HTML = :DOC_HTML,'
      '  DOC_ID = :DOC_ID,'
      '  DOC_NOME = :DOC_NOME,'
      '  ESP_LINHA = :ESP_LINHA,'
      '  FORCAR_RODAPE_IE = :FORCAR_RODAPE_IE,'
      '  IMG = :IMG,'
      '  MARGENS = :MARGENS,'
      '  OCULTAR_CAB = :OCULTAR_CAB,'
      '  OCULTAR_CEP = :OCULTAR_CEP,'
      '  OCULTAR_PARC_ABERTO = :OCULTAR_PARC_ABERTO,'
      '  OCULTAR_RESOLUCAO = :OCULTAR_RESOLUCAO,'
      '  PAG1 = :PAG1,'
      '  TAM_FONTE_CAB = :TAM_FONTE_CAB,'
      '  TIPO_IMG_CAB = :TIPO_IMG_CAB'
      'where'
      '  DOC_ID = :OLD_DOC_ID')
    DeleteSQL.Strings = (
      'delete from DOCUMENTOS'
      'where'
      '  DOC_ID = :OLD_DOC_ID')
    Left = 1148
    Top = 216
  end
  object qryBol: TFDQuery
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      
        'select count(boleto_id) as n_titulos from boletos where cli_id=1' +
        ' and SITUACAO_BOLETO='#39'A RECEBER'#39)
    Left = 1110
    Top = 298
    object qryBolN_TITULOS: TIntegerField
      FieldName = 'N_TITULOS'
      ProviderFlags = []
    end
  end
  object dsCelul_Emails: TDataSource
    DataSet = Celul_Emails
    Left = 1112
    Top = 424
  end
  object Celul_Emails: TFDQuery
    BeforeOpen = Celul_EmailsBeforeOpen
    AfterInsert = Celul_EmailsAfterInsert
    BeforePost = Celul_EmailsBeforePost
    OnCalcFields = Celul_EmailsCalcFields
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    UpdateObject = upCelul_Emails
    SQL.Strings = (
      
        'select ce.*, cl.fantasia from celul_emails ce left join clientes' +
        ' cl on (cl.cli_id=ce.cli_id)'
      'where cel_em_id=0')
    Left = 1114
    Top = 364
    object Celul_EmailsCEL_EM_ID: TIntegerField
      FieldName = 'CEL_EM_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '000000'
    end
    object Celul_EmailsCELULAR_1: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'CELULAR_1'
      EditMask = '(99) #9999-9999'
      Size = 16
    end
    object Celul_EmailsOPER_CEL_ID: TIntegerField
      FieldName = 'OPER_CEL_ID'
      DisplayFormat = '000000'
    end
    object Celul_EmailsNOME_ABREV: TStringField
      DisplayLabel = 'Contato(Abrev.)'
      FieldName = 'NOME_ABREV'
    end
    object Celul_EmailsFUNCAO: TStringField
      DisplayLabel = 'Fun'#231#227'o'
      FieldName = 'FUNCAO'
      Size = 40
    end
    object Celul_EmailsEMAIL: TStringField
      DisplayLabel = 'E-mail'
      FieldName = 'EMAIL'
      Size = 60
    end
    object Celul_EmailsCLI_ID: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'CLI_ID'
      DisplayFormat = '000000'
    end
    object Celul_EmailsFANTASIA: TStringField
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'FANTASIA'
      Size = 40
    end
    object Celul_EmailsNASCIMENTO: TDateField
      DisplayLabel = 'Nasc.'
      FieldName = 'NASCIMENTO'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object Celul_EmailsSIT: TIntegerField
      FieldName = 'SIT'
    end
    object Celul_EmailsUS_CAD: TIntegerField
      FieldName = 'US_CAD'
    end
    object Celul_EmailsDT_CAD: TDateTimeField
      FieldName = 'DT_CAD'
    end
    object Celul_EmailsUS_ALT: TIntegerField
      FieldName = 'US_ALT'
    end
    object Celul_EmailsDT_ALT: TDateTimeField
      FieldName = 'DT_ALT'
    end
    object Celul_EmailsOperadoraNome: TStringField
      DisplayLabel = 'Operadora'
      FieldKind = fkLookup
      FieldName = 'OperadoraNome'
      LookupDataSet = qryOperadora
      LookupKeyFields = 'OPER_CEL_ID'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'OPER_CEL_ID'
      Size = 60
      Lookup = True
    end
    object Celul_EmailsOBS: TMemoField
      FieldName = 'OBS'
      Origin = 'OBS'
      BlobType = ftMemo
    end
  end
  object upCelul_Emails: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'insert into CELUL_EMAILS'
      
        '  (CEL_EM_ID, CELULAR_1, CLI_ID, DT_ALT, DT_CAD, EMAIL, FUNCAO, ' +
        'NASCIMENTO, '
      '   NOME_ABREV, OPER_CEL_ID, SIT, US_ALT, US_CAD, OBS)'
      'values'
      
        '  (:CEL_EM_ID, :CELULAR_1, :CLI_ID, :DT_ALT, :DT_CAD, :EMAIL, :F' +
        'UNCAO, '
      
        '   :NASCIMENTO, :NOME_ABREV, :OPER_CEL_ID, :SIT, :US_ALT, :US_CA' +
        'D, :OBS)')
    ModifySQL.Strings = (
      'update CELUL_EMAILS'
      'set'
      '  CEL_EM_ID = :CEL_EM_ID,'
      '  CELULAR_1 = :CELULAR_1,'
      '  CLI_ID = :CLI_ID,'
      '  DT_ALT = :DT_ALT,'
      '  DT_CAD = :DT_CAD,'
      '  EMAIL = :EMAIL,'
      '  FUNCAO = :FUNCAO,'
      '  NASCIMENTO = :NASCIMENTO,'
      '  NOME_ABREV = :NOME_ABREV,'
      '  OPER_CEL_ID = :OPER_CEL_ID,'
      '  SIT = :SIT,'
      '  US_ALT = :US_ALT,'
      '  US_CAD = :US_CAD,'
      '  OBS = :OBS'
      'where'
      '  CEL_EM_ID = :OLD_CEL_EM_ID')
    DeleteSQL.Strings = (
      'delete from CELUL_EMAILS'
      'where'
      '  CEL_EM_ID = :OLD_CEL_EM_ID')
    Left = 1112
    Top = 480
  end
  object Observacoes: TFDQuery
    AfterInsert = ObservacoesAfterInsert
    BeforePost = ObservacoesBeforePost
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      'select * from observacoes where obs_id=0')
    Left = 1022
    Top = 374
    object ObservacoesOBS_ID: TIntegerField
      FieldName = 'OBS_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ObservacoesCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
    end
    object ObservacoesOBS: TMemoField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'OBS'
      Origin = 'OBS'
      BlobType = ftMemo
    end
  end
  object dsObservac: TDataSource
    DataSet = Observacoes
    Left = 1020
    Top = 430
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 980
    Top = 14
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 1064
    Top = 16
  end
  object Ligacoes: TFDQuery
    AfterInsert = LigacoesAfterInsert
    BeforePost = LigacoesBeforePost
    OnCalcFields = LigacoesCalcFields
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      'select * from ligacoes')
    Left = 904
    Top = 120
    object LigacoesATIVO: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'ATIVO'
      Calculated = True
    end
    object LigacoesLIGACAO_ID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'LIGACAO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '000000'
    end
    object LigacoesASSUNTO: TStringField
      DisplayLabel = 'Assunto'
      FieldName = 'ASSUNTO'
      Size = 60
    end
    object LigacoesCONTATO: TStringField
      DisplayLabel = 'Contato'
      FieldName = 'CONTATO'
      Size = 60
    end
    object LigacoesDT_LIGAR: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DT_LIGAR'
    end
    object LigacoesDT_SIT: TDateTimeField
      DisplayLabel = 'Dt. Alterou a Situa'#231#227'o'
      FieldName = 'DT_SIT'
    end
    object LigacoesUSR_CAD: TIntegerField
      DisplayLabel = 'C'#243'd. Usu'#225'rio'
      FieldName = 'USR_CAD'
    end
    object LigacoesCLI_ID: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente'
      FieldName = 'CLI_ID'
      DisplayFormat = '000000'
    end
    object LigacoesTIPO: TSmallintField
      FieldName = 'TIPO'
    end
    object LigacoesSIT: TSmallintField
      FieldName = 'SIT'
    end
    object LigacoesCliente_Nome: TStringField
      DisplayLabel = 'Cliente'
      FieldKind = fkCalculated
      FieldName = 'Cliente_Nome'
      Size = 60
      Calculated = True
    end
    object LigacoesFone2: TStringField
      FieldKind = fkCalculated
      FieldName = 'Fone2'
      Size = 2
      Calculated = True
    end
    object Ligacoesfone1: TStringField
      DisplayLabel = 'Fone1'
      FieldKind = fkCalculated
      FieldName = 'fone1'
      Size = 16
      Calculated = True
    end
    object LigacoesSituacao_Nome: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'Situacao_Nome'
      Size = 60
      Calculated = True
    end
    object LigacoesTipo_Nome: TStringField
      DisplayLabel = 'Tipo'
      FieldKind = fkCalculated
      FieldName = 'Tipo_Nome'
      Size = 60
      Calculated = True
    end
    object LigacoesUsuarioCad: TStringField
      DisplayLabel = 'Cadastrado Por'
      FieldKind = fkCalculated
      FieldName = 'UsuarioCad'
      Size = 60
      Calculated = True
    end
    object LigacoesOBS: TMemoField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'OBS'
      Origin = 'OBS'
      BlobType = ftMemo
    end
  end
  object dsLigacoes: TDataSource
    DataSet = Ligacoes
    Left = 906
    Top = 172
  end
  object qryClientes: TFDQuery
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      'select nome, fone1, fone2 from clientes where cli_id=:ID')
    Left = 908
    Top = 226
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryClientesFONE1: TStringField
      FieldName = 'FONE1'
      Size = 16
    end
    object qryClientesFONE2: TStringField
      FieldName = 'FONE2'
      Size = 16
    end
    object qryClientesNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 60
    end
  end
  object DsCsClientes: TDataSource
    DataSet = CsClientes
    Left = 848
    Top = 504
  end
  object CsClientes: TFDQuery
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      'select * from clientes')
    Left = 846
    Top = 454
    object CsClientesCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CsClientesNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object CsClientesFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 40
    end
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0 \251 Copyright '#169' 1999-2015 F' +
      'ortes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 1024
    Top = 16
  end
  object QryUsuario: TFDQuery
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      'select login  from login where login_id=:ID')
    Left = 774
    Top = 26
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QryUsuarioLOGIN: TStringField
      FieldName = 'LOGIN'
      Size = 40
    end
  end
  object Oper_Celular: TFDQuery
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      'select * from oper_cel order by descricao')
    Left = 1202
    Top = 270
    object Oper_CelularOPER_CEL_ID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'OPER_CEL_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '000000'
    end
    object Oper_CelularDESCRICAO: TStringField
      DisplayLabel = 'Operadora'
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object Oper_CelularCOD_OPER: TIntegerField
      DisplayLabel = 'C'#243'd. Op.'
      FieldName = 'COD_OPER'
    end
  end
  object dsOperCelular: TDataSource
    DataSet = Oper_Celular
    Left = 1202
    Top = 326
  end
  object qryOper_Celular: TFDQuery
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      'select descricao from oper_cel where oper_cel_id=:IDOpec')
    Left = 1202
    Top = 382
    ParamData = <
      item
        Name = 'IDOpec'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryOper_CelularDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
  end
  object qryOperadora: TFDQuery
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      'select descricao, oper_cel_id from oper_cel order by descricao')
    Left = 1204
    Top = 450
    object qryOperadoraDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object qryOperadoraOPER_CEL_ID: TIntegerField
      FieldName = 'OPER_CEL_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dsS_Doc: TDataSource
    DataSet = SDoc
    Left = 376
    Top = 684
  end
  object SDoc: TFDQuery
    AfterInsert = SDocAfterInsert
    OnCalcFields = SDocCalcFields
    Connection = FDConnection1
    SQL.Strings = (
      'select * from s_doc where s_doc_id>0')
    Left = 382
    Top = 638
    object SDocS_DOC_ID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'S_DOC_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '000000'
    end
    object SDocTIPO: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Required = True
    end
    object SDocID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object SDocDOCUMENTO: TBlobField
      DisplayLabel = 'Documento'
      FieldName = 'DOCUMENTO'
    end
    object SDocNOME_ARQ: TStringField
      DisplayLabel = 'Nome do Arquivo'
      FieldName = 'NOME_ARQ'
      Size = 120
    end
    object SDocTAMANHO: TFloatField
      FieldName = 'TAMANHO'
    end
    object SDocUS_CAD: TIntegerField
      FieldName = 'US_CAD'
      DisplayFormat = '000000'
    end
    object SDocUsCad: TStringField
      DisplayLabel = 'Cadastrado por'
      FieldKind = fkCalculated
      FieldName = 'UsCad'
      Calculated = True
    end
    object SDocORIGEM: TStringField
      FieldName = 'ORIGEM'
      Size = 60
    end
    object SDocDT_CAD: TDateTimeField
      DisplayLabel = 'Cadastro em'
      FieldName = 'DT_CAD'
      Origin = 'DT_CAD'
    end
  end
  object DataHora: TFDQuery
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      
        'select current_timestamp, current_date, current_time from rdb$da' +
        'tabase')
    Left = 546
    Top = 26
    object DataHoraCURRENT_TIMESTAMP: TDateTimeField
      FieldName = 'CURRENT_TIMESTAMP'
      Required = True
    end
    object DataHoraCURRENT_DATE: TDateField
      FieldName = 'CURRENT_DATE'
      Required = True
    end
    object DataHoraCURRENT_TIME: TTimeField
      FieldName = 'CURRENT_TIME'
      Required = True
    end
  end
  object PegaSeqRem: TFDStoredProc
    Connection = FDConnection1
    StoredProcName = 'PEGA_SEQ_REM'
    Left = 984
    Top = 116
    ParamData = <
      item
        Name = 'VL_BANCO_ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object Remessa: TFDQuery
    AfterInsert = RemessaAfterInsert
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      'select * from remessa')
    Left = 256
    Top = 468
    object RemessaREM_ID: TIntegerField
      FieldName = 'REM_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object RemessaBANCO_ID: TIntegerField
      FieldName = 'BANCO_ID'
      Required = True
    end
    object RemessaDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object RemessaTIPO_REM: TSmallintField
      FieldName = 'TIPO_REM'
    end
    object RemessaN_SEQ_REM: TLargeintField
      FieldName = 'N_SEQ_REM'
    end
  end
  object SmsServ: TFDQuery
    AfterInsert = SmsServAfterInsert
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      'select * from sms_serv')
    Left = 286
    Top = 634
    object SmsServSMS_SERV_ID: TIntegerField
      FieldName = 'SMS_SERV_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SmsServNUMERO_DEST: TStringField
      FieldName = 'NUMERO_DEST'
      Size = 240
    end
    object SmsServDESTINAT_ID: TIntegerField
      FieldName = 'DESTINAT_ID'
    end
    object SmsServDESTINATARIO: TStringField
      FieldName = 'DESTINATARIO'
      Size = 60
    end
    object SmsServMATRIC_ID: TIntegerField
      FieldName = 'MATRIC_ID'
    end
    object SmsServTURMA_ID: TIntegerField
      FieldName = 'TURMA_ID'
    end
    object SmsServTURMA_ABREV: TStringField
      FieldName = 'TURMA_ABREV'
      Size = 9
    end
    object SmsServDOC_SMS_ID: TIntegerField
      FieldName = 'DOC_SMS_ID'
    end
    object SmsServDT_HT_PREV_ENV: TDateTimeField
      FieldName = 'DT_HT_PREV_ENV'
    end
    object SmsServTIPO_EMAIL: TIntegerField
      FieldName = 'TIPO_EMAIL'
    end
    object SmsServENVIO: TSmallintField
      FieldName = 'ENVIO'
    end
    object SmsServDT_CAD: TDateTimeField
      FieldName = 'DT_CAD'
    end
    object SmsServDT_ENVIO: TDateTimeField
      FieldName = 'DT_ENVIO'
    end
    object SmsServSMS_ID: TIntegerField
      FieldName = 'SMS_ID'
    end
    object SmsServTEXTO: TMemoField
      FieldName = 'TEXTO'
      Origin = 'TEXTO'
      BlobType = ftMemo
    end
    object SmsServOBS: TMemoField
      FieldName = 'OBS'
      Origin = 'OBS'
      BlobType = ftMemo
    end
  end
  object QrySql: TFDQuery
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    Left = 708
    Top = 26
  end
  object RLDraftFilter1: TRLDraftFilter
    Left = 1100
    Top = 12
  end
  object Retorno_Ocor: TFDQuery
    AfterInsert = Retorno_OcorAfterInsert
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      'select * from retorno_ocorrencia where ret_oc_id=0')
    Left = 180
    Top = 468
    object Retorno_OcorATIVO: TBooleanField
      DisplayLabel = ' '
      FieldKind = fkCalculated
      FieldName = 'ATIVO'
      Calculated = True
    end
    object Retorno_OcorRET_OC_ID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'RET_OC_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '000000'
    end
    object Retorno_OcorNUMERO_ARQUIVO: TIntegerField
      DisplayLabel = 'N.'#186' Arq.'
      FieldName = 'NUMERO_ARQUIVO'
    end
    object Retorno_OcorDATA_ARQUIVO: TDateField
      DisplayLabel = 'Data Arq.'
      FieldName = 'DATA_ARQUIVO'
    end
    object Retorno_OcorNOSSO_NUMERO: TStringField
      DisplayLabel = 'Nosso N'#250'mero'
      FieldName = 'NOSSO_NUMERO'
      Size = 40
    end
    object Retorno_OcorDATA_CREDITO: TDateField
      DisplayLabel = 'Dt. Cr'#233'd.'
      FieldName = 'DATA_CREDITO'
    end
    object Retorno_OcorVALOR_DOCUMENTO: TFloatField
      DisplayLabel = 'Valor Doc.'
      FieldName = 'VALOR_DOCUMENTO'
      DisplayFormat = ',0.00'
    end
    object Retorno_OcorDATA_RECEBIMENTO: TDateField
      DisplayLabel = 'Recebimento'
      FieldName = 'DATA_RECEBIMENTO'
    end
    object Retorno_OcorCODIGO_BANCO: TIntegerField
      DisplayLabel = 'Banco'
      FieldName = 'CODIGO_BANCO'
    end
    object Retorno_OcorNOME_ARQ: TStringField
      DisplayLabel = 'Arquivo'
      FieldName = 'NOME_ARQ'
      Size = 60
    end
    object Retorno_OcorCODIGO_AGENCIA: TStringField
      FieldName = 'CODIGO_AGENCIA'
      Size = 9
    end
    object Retorno_OcorDIGITO_AGENCIA: TStringField
      FieldName = 'DIGITO_AGENCIA'
      Size = 1
    end
    object Retorno_OcorNUMERO_CONTA: TStringField
      DisplayLabel = 'Conta'
      FieldName = 'NUMERO_CONTA'
      Size = 19
    end
    object Retorno_OcorDIGITO_CONTA: TIntegerField
      FieldName = 'DIGITO_CONTA'
    end
    object Retorno_OcorNUMERO_REGISTRO: TIntegerField
      FieldName = 'NUMERO_REGISTRO'
    end
    object Retorno_OcorSEU_NUMERO: TStringField
      DisplayLabel = 'Seu N'#250'mero'
      FieldName = 'SEU_NUMERO'
      Size = 40
    end
    object Retorno_OcorTIPO: TSmallintField
      FieldName = 'TIPO'
    end
    object Retorno_OcorBANCO_ID: TIntegerField
      DisplayLabel = 'C'#243'd. Banco'
      FieldName = 'BANCO_ID'
      DisplayFormat = '000000'
    end
    object Retorno_OcorCOD_OCORRENCIA: TIntegerField
      DisplayLabel = 'Ocorr'#234'ncia'
      FieldName = 'COD_OCORRENCIA'
    end
    object Retorno_OcorOCORRENCIA_NOME: TStringField
      DisplayLabel = 'Descri'#231#227'o da Ocorr'#234'ncia'
      FieldName = 'OCORRENCIA_NOME'
      Size = 120
    end
    object Retorno_OcorCOD_SACADO: TIntegerField
      DisplayLabel = 'C'#243'd. Resp.'
      FieldName = 'COD_SACADO'
    end
    object Retorno_OcorNOME_SACADO: TStringField
      DisplayLabel = 'Respons'#225'vel'
      FieldName = 'NOME_SACADO'
      Size = 120
    end
    object Retorno_OcorCODIGO_CEDENTE: TStringField
      FieldName = 'CODIGO_CEDENTE'
      Size = 40
    end
    object Retorno_OcorTX_BANCO: TFloatField
      FieldName = 'TX_BANCO'
      DisplayFormat = ',0.00'
    end
    object Retorno_OcorVALOR_PAGO: TFloatField
      DisplayLabel = 'Valor Pago'
      FieldName = 'VALOR_PAGO'
      DisplayFormat = ',0.00'
    end
    object Retorno_OcorUSR_CAD: TIntegerField
      FieldName = 'USR_CAD'
    end
    object Retorno_OcorUSUARIO_ID: TIntegerField
      FieldName = 'USUARIO_ID'
      DisplayFormat = '000000'
    end
    object Retorno_OcorDT_ALTERADO: TDateField
      FieldName = 'DT_ALTERADO'
    end
    object Retorno_OcorDATA_VENCIMENTO: TDateField
      DisplayLabel = 'Dt. Receb.'
      FieldName = 'DATA_VENCIMENTO'
    end
    object Retorno_OcorCOD_DEB: TIntegerField
      FieldName = 'COD_DEB'
    end
    object Retorno_OcorOBS_1: TStringField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'OBS_1'
      Size = 120
    end
    object Retorno_OcorOBS_2: TStringField
      FieldName = 'OBS_2'
      Size = 120
    end
    object Retorno_OcorOBS_3: TMemoField
      FieldName = 'OBS_3'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object Retorno_OcorObservacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'Observacao'
      Size = 255
      Calculated = True
    end
  end
  object dsRetorno_Oc: TDataSource
    DataSet = Retorno_Ocor
    Left = 178
    Top = 522
  end
  object Remessa_Ocorrencia: TFDQuery
    AfterInsert = Remessa_OcorrenciaAfterInsert
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      'select * from remessa_ocorrencia where rem_ocorr_id=0')
    Left = 338
    Top = 462
    object Remessa_OcorrenciaREM_OCORR_ID: TIntegerField
      FieldName = 'REM_OCORR_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Remessa_OcorrenciaEMISSAO_ID: TIntegerField
      FieldName = 'EMISSAO_ID'
    end
    object Remessa_OcorrenciaCOD_MOV_REM: TIntegerField
      FieldName = 'COD_MOV_REM'
    end
    object Remessa_OcorrenciaTIPO_OCORRENCIA: TStringField
      FieldName = 'TIPO_OCORRENCIA'
      Size = 60
    end
    object Remessa_OcorrenciaBANCO_ID: TIntegerField
      FieldName = 'BANCO_ID'
    end
    object Remessa_OcorrenciaUS_CAD: TIntegerField
      FieldName = 'US_CAD'
    end
    object Remessa_OcorrenciaDT_CAD: TDateTimeField
      FieldName = 'DT_CAD'
    end
  end
  object dsRemessaOcorrencia: TDataSource
    DataSet = Remessa_Ocorrencia
    Left = 336
    Top = 522
  end
  object qryRetorn1: TFDQuery
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      
        'select sum(valor_pago) as valor_pago from retorno where banco_id' +
        ' =:IdBanc AND NOSSO_NUMERO =:IdNosNum')
    Left = 806
    Top = 448
    ParamData = <
      item
        Name = 'IdBanc'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'IdNosNum'
        DataType = ftString
        ParamType = ptInput
      end>
    object qryRetorn1VALOR_PAGO: TFloatField
      FieldName = 'VALOR_PAGO'
      ProviderFlags = []
    end
  end
  object qryBanco: TFDQuery
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      
        'select banco_id, banco_nome, codigo_banco, baix_bol_param, layou' +
        't from bancos where banco_id=:id')
    Left = 418
    Top = 222
    ParamData = <
      item
        Name = 'ID'
      end>
    object qryBancoBANCO_NOME: TStringField
      FieldName = 'BANCO_NOME'
      Size = 60
    end
    object qryBancoBANCO_ID: TIntegerField
      FieldName = 'BANCO_ID'
      Required = True
    end
    object qryBancoCODIGO_BANCO: TIntegerField
      FieldName = 'CODIGO_BANCO'
    end
    object qryBancoBAIX_BOL_PARAM: TSmallintField
      FieldName = 'BAIX_BOL_PARAM'
    end
    object qryBancoLAYOUT: TSmallintField
      FieldName = 'LAYOUT'
    end
  end
  object dsContPrtBoleto: TDataSource
    DataSet = Cont_Prt_Boleto
    Left = 882
    Top = 731
  end
  object upContPrtBoleto: TFDUpdateSQL
    InsertSQL.Strings = (
      'insert into CONT_PRT_BOLETO'
      
        '  (BOLETO_ID, CONT_PRT_BLT_ID, DT_ALT, DT_CAD, DT_PRT, DT_SIT, D' +
        'T_SIT_ANT, '
      '   PROT_SIT, PRT_BLT_ID, PRT_SIT_ANT, US_ALT, US_CAD)'
      'values'
      
        '  (:BOLETO_ID, :CONT_PRT_BLT_ID, :DT_ALT, :DT_CAD, :DT_PRT, :DT_' +
        'SIT, :DT_SIT_ANT, '
      '   :PROT_SIT, :PRT_BLT_ID, :PRT_SIT_ANT, :US_ALT, :US_CAD)')
    ModifySQL.Strings = (
      'update CONT_PRT_BOLETO'
      'set'
      '  BOLETO_ID = :BOLETO_ID,'
      '  CONT_PRT_BLT_ID = :CONT_PRT_BLT_ID,'
      '  DT_ALT = :DT_ALT,'
      '  DT_CAD = :DT_CAD,'
      '  DT_PRT = :DT_PRT,'
      '  DT_SIT = :DT_SIT,'
      '  DT_SIT_ANT = :DT_SIT_ANT,'
      '  PROT_SIT = :PROT_SIT,'
      '  PRT_BLT_ID = :PRT_BLT_ID,'
      '  PRT_SIT_ANT = :PRT_SIT_ANT,'
      '  US_ALT = :US_ALT,'
      '  US_CAD = :US_CAD'
      'where'
      '  CONT_PRT_BLT_ID = :OLD_CONT_PRT_BLT_ID')
    DeleteSQL.Strings = (
      'delete from CONT_PRT_BOLETO'
      'where'
      '  CONT_PRT_BLT_ID = :OLD_CONT_PRT_BLT_ID')
    Left = 882
    Top = 791
  end
  object qryPrt_Boleto: TFDQuery
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      'select protestar from prt_boleto where prt_blt_id=:idprotest')
    Left = 956
    Top = 692
    ParamData = <
      item
        Name = 'IDProtest'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryPrt_BoletoPROTESTAR: TStringField
      FieldName = 'PROTESTAR'
      Size = 60
    end
  end
  object TempEtiqueta: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 758
    Top = 518
    object TempEtiquetaRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      Size = 60
    end
    object TempEtiquetaLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 60
    end
    object TempEtiquetaNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 16
    end
    object TempEtiquetaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 60
    end
    object TempEtiquetaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 60
    end
    object TempEtiquetaUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object TempEtiquetaCEP: TStringField
      FieldName = 'CEP'
    end
    object TempEtiquetaCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 240
    end
    object TempEtiquetaTURMA_NOME: TStringField
      FieldName = 'TURMA_NOME'
      Size = 60
    end
    object TempEtiquetaALUNO: TStringField
      FieldName = 'ALUNO'
      Size = 60
    end
    object TempEtiquetaALUNOS: TMemoField
      FieldName = 'ALUNOS'
      BlobType = ftMemo
    end
  end
  object dsTempEtiqueta: TDataSource
    DataSet = TempEtiqueta
    Left = 784
    Top = 568
  end
  object dtPrt_Boleto: TDataSource
    DataSet = Prt_Boleto
    Left = 1026
    Top = 737
  end
  object Prt_Boleto: TFDQuery
    AfterInsert = Prt_BoletoAfterInsert
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    UpdateObject = upPrt_Boleto
    SQL.Strings = (
      'select * from prt_boleto')
    Left = 1020
    Top = 684
    object Prt_BoletoPRT_BLT_ID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PRT_BLT_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '000000'
    end
    object Prt_BoletoPROTESTAR: TStringField
      DisplayLabel = 'Tipo de Protesto'
      FieldName = 'PROTESTAR'
      Size = 60
    end
    object Prt_BoletoSIT: TSmallintField
      FieldName = 'SIT'
    end
    object Prt_BoletoDT_CAD: TDateTimeField
      DisplayLabel = 'Cadastro'
      FieldName = 'DT_CAD'
    end
    object Prt_BoletoUS_CAD: TIntegerField
      FieldName = 'US_CAD'
    end
    object Prt_BoletoDT_ALT: TDateTimeField
      DisplayLabel = 'Alterado'
      FieldName = 'DT_ALT'
    end
    object Prt_BoletoUS_ALT: TIntegerField
      FieldName = 'US_ALT'
    end
  end
  object upPrt_Boleto: TFDUpdateSQL
    InsertSQL.Strings = (
      'insert into PRT_BOLETO'
      '  (DT_ALT, DT_CAD, PROTESTAR, PRT_BLT_ID, SIT, US_ALT, US_CAD)'
      'values'
      
        '  (:DT_ALT, :DT_CAD, :PROTESTAR, :PRT_BLT_ID, :SIT, :US_ALT, :US' +
        '_CAD)')
    ModifySQL.Strings = (
      'update PRT_BOLETO'
      'set'
      '  DT_ALT = :DT_ALT,'
      '  DT_CAD = :DT_CAD,'
      '  PROTESTAR = :PROTESTAR,'
      '  PRT_BLT_ID = :PRT_BLT_ID,'
      '  SIT = :SIT,'
      '  US_ALT = :US_ALT,'
      '  US_CAD = :US_CAD'
      'where'
      '  PRT_BLT_ID = :OLD_PRT_BLT_ID')
    DeleteSQL.Strings = (
      'delete from PRT_BOLETO'
      'where'
      '  PRT_BLT_ID = :OLD_PRT_BLT_ID')
    Left = 1028
    Top = 781
  end
  object Qry: TFDQuery
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    Left = 654
    Top = 28
  end
  object Cont_Prt_Boleto: TFDQuery
    AfterInsert = Cont_Prt_BoletoAfterInsert
    OnCalcFields = Cont_Prt_BoletoCalcFields
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    UpdateObject = upContPrtBoleto
    SQL.Strings = (
      'select * from cont_prt_boleto where cont_prt_blt_id >0')
    Left = 874
    Top = 670
    object Cont_Prt_BoletoCONT_PRT_BLT_ID: TIntegerField
      FieldName = 'CONT_PRT_BLT_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '00000'
    end
    object Cont_Prt_BoletoTipo_Protesto: TStringField
      DisplayLabel = 'Tipo Protesto'
      FieldKind = fkCalculated
      FieldName = 'Tipo_Protesto'
      Size = 60
      Calculated = True
    end
    object Cont_Prt_BoletoPRT_BLT_ID: TIntegerField
      FieldName = 'PRT_BLT_ID'
    end
    object Cont_Prt_BoletoBOLETO_ID: TIntegerField
      DisplayLabel = 'T'#237'tulo'
      FieldName = 'BOLETO_ID'
      DisplayFormat = '000000'
    end
    object Cont_Prt_BoletoPROT_SIT: TSmallintField
      DisplayLabel = 'Sit'
      FieldName = 'PROT_SIT'
    end
    object Cont_Prt_BoletoSituacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'Situacao'
      Size = 15
      Calculated = True
    end
    object Cont_Prt_BoletoDT_SIT: TDateField
      DisplayLabel = 'Retirado/Cancelado'
      FieldName = 'DT_SIT'
    end
    object Cont_Prt_BoletoDT_PRT: TDateField
      DisplayLabel = 'Dt. Protesto'
      FieldName = 'DT_PRT'
    end
    object Cont_Prt_BoletoDT_CAD: TDateTimeField
      DisplayLabel = 'Cadastro'
      FieldName = 'DT_CAD'
    end
    object Cont_Prt_BoletoDT_SIT_ANT: TDateField
      FieldName = 'DT_SIT_ANT'
    end
    object Cont_Prt_BoletoPRT_SIT_ANT: TSmallintField
      FieldName = 'PRT_SIT_ANT'
    end
    object Cont_Prt_BoletoUS_CAD: TIntegerField
      FieldName = 'US_CAD'
    end
    object Cont_Prt_BoletoUsuarioAlt: TStringField
      DisplayLabel = 'Alterado Por'
      FieldKind = fkCalculated
      FieldName = 'UsuarioAlt'
      Size = 60
      Calculated = True
    end
    object Cont_Prt_BoletoUS_ALT: TIntegerField
      FieldName = 'US_ALT'
    end
    object Cont_Prt_BoletoDT_ALT: TDateTimeField
      DisplayLabel = 'Alterado'
      FieldName = 'DT_ALT'
    end
    object Cont_Prt_BoletoUsuarioCad: TStringField
      DisplayLabel = 'Cadastrado Por'
      FieldKind = fkCalculated
      FieldName = 'UsuarioCad'
      Size = 60
      Calculated = True
    end
  end
  object Municipios: TFDQuery
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      'select * from municipios where uf_cod=:uf_cod order by uf, nome')
    Left = 204
    Top = 632
    ParamData = <
      item
        Name = 'uf_cod'
        DataType = ftString
        ParamType = ptInput
      end>
    object MunicipiosCODMUN: TIntegerField
      FieldName = 'CODMUN'
      Required = True
    end
    object MunicipiosUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object MunicipiosUF_COD: TStringField
      FieldName = 'UF_COD'
    end
    object MunicipiosNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 60
    end
  end
  object DSMunicipios: TDataSource
    DataSet = Municipios
    Left = 198
    Top = 680
  end
  object qryEstados2: TFDQuery
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      
        'select uf_cod, uf, nome from estados where nacional = :nacionali' +
        'dade order by nome')
    Left = 414
    Top = 456
    ParamData = <
      item
        Name = 'nacionalidade'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryEstados2UF_COD: TStringField
      FieldName = 'UF_COD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryEstados2UF: TStringField
      FieldName = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object qryEstados2NOME: TStringField
      FieldName = 'NOME'
    end
  end
  object DsEstados2: TDataSource
    DataSet = qryEstados2
    Left = 412
    Top = 511
  end
  object Municipios2: TFDQuery
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      'select * from municipios where uf_cod=:uf_cod order by UF, nome')
    Left = 640
    Top = 452
    ParamData = <
      item
        Name = 'uf_cod'
      end>
    object Municipios2CODMUN: TIntegerField
      FieldName = 'CODMUN'
      Required = True
    end
    object Municipios2UF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object Municipios2UF_COD: TStringField
      FieldName = 'UF_COD'
    end
    object Municipios2NOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object DSMunicopios2: TDataSource
    DataSet = Municipios2
    Left = 636
    Top = 500
  end
  object Nacionalidade: TFDQuery
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      'select * from nacionalidade order by nome')
    Left = 552
    Top = 456
    object NacionalidadeCODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object NacionalidadeNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Required = True
      Size = 40
    end
  end
  object dsNacional: TDataSource
    DataSet = Nacionalidade
    Left = 558
    Top = 510
  end
  object RLPreviewSetup1: TRLPreviewSetup
    FormStyle = fsMDIForm
    ShowModal = True
    BorderIcons = [biSystemMenu, biMaximize]
    Caption = 'Visualiza'#231#227'o de Impress'#227'o'
    ZoomFactor = 95.000000000000000000
    OnSend = RLPreviewSetup1Send
    Left = 930
    Top = 14
  end
  object upNfs: TFDUpdateSQL
    InsertSQL.Strings = (
      'insert into nfs'
      
        '  (NFS_ID, SERIE, RPS_PROTOCOLO, NFSE_AMBIENTE, NFSE_NUMERO, NFS' +
        'E_COD_VERIF, '
      
        '   NFSE_DT_EMISSAO, CLI_ID, SIT, DT_RPS, DT_FECHADA, DT_ENVIADA,' +
        ' VL_TOTAL, '
      
        '   VL_DEDUCOES, VL_BS_CALC, PERC_ISS, VL_ISS, IDS_BOLETOS, OBS, ' +
        'US_CAD, '
      
        '   DT_CAD, US_ALT, DT_ALT, OBS2, XML_RPS, XML_NFSE, TIPO, COMPET' +
        'ENCIA)'
      'values'
      
        '  (:NFS_ID, :SERIE, :RPS_PROTOCOLO, :NFSE_AMBIENTE, :NFSE_NUMERO' +
        ', :NFSE_COD_VERIF, '
      
        '   :NFSE_DT_EMISSAO, :CLI_ID, :SIT, :DT_RPS, :DT_FECHADA, :DT_EN' +
        'VIADA, '
      
        '   :VL_TOTAL, :VL_DEDUCOES, :VL_BS_CALC, :PERC_ISS, :VL_ISS, :ID' +
        'S_BOLETOS, '
      
        '   :OBS, :US_CAD, :DT_CAD, :US_ALT, :DT_ALT, :OBS2, :XML_RPS, :X' +
        'ML_NFSE, '
      '   :TIPO, :COMPETENCIA)')
    ModifySQL.Strings = (
      'update nfs'
      'set'
      '  NFS_ID = :NFS_ID,'
      '  SERIE = :SERIE,'
      '  RPS_PROTOCOLO = :RPS_PROTOCOLO,'
      '  NFSE_AMBIENTE = :NFSE_AMBIENTE,'
      '  NFSE_NUMERO = :NFSE_NUMERO,'
      '  NFSE_COD_VERIF = :NFSE_COD_VERIF,'
      '  NFSE_DT_EMISSAO = :NFSE_DT_EMISSAO,'
      '  CLI_ID = :CLI_ID,'
      '  SIT = :SIT,'
      '  DT_RPS = :DT_RPS,'
      '  DT_FECHADA = :DT_FECHADA,'
      '  DT_ENVIADA = :DT_ENVIADA,'
      '  VL_TOTAL = :VL_TOTAL,'
      '  VL_DEDUCOES = :VL_DEDUCOES,'
      '  VL_BS_CALC = :VL_BS_CALC,'
      '  PERC_ISS = :PERC_ISS,'
      '  VL_ISS = :VL_ISS,'
      '  IDS_BOLETOS = :IDS_BOLETOS,'
      '  OBS = :OBS,'
      '  US_CAD = :US_CAD,'
      '  DT_CAD = :DT_CAD,'
      '  US_ALT = :US_ALT,'
      '  DT_ALT = :DT_ALT,'
      '  OBS2 = :OBS2,'
      '  XML_RPS = :XML_RPS,'
      '  XML_NFSE = :XML_NFSE,'
      '  TIPO = :TIPO,'
      '  COMPETENCIA = :COMPETENCIA'
      'where'
      '  NFS_ID = :OLD_NFS_ID')
    DeleteSQL.Strings = (
      'delete from nfs'
      'where'
      '  NFS_ID = :OLD_NFS_ID')
    Left = 756
    Top = 210
  end
  object ServidorWeb: TFDConnection
    Params.Strings = (
      'Database=db3044'
      'Server=db3044.mysql51.laniway.com.br'
      'Password=XHkka8S6'
      'User_Name=db3044a1'
      'CharacterSet=utf8'
      'DriverID=MySQL')
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtWideString
        TargetDataType = dtAnsiString
      end
      item
        SourceDataType = dtDateTimeStamp
        TargetDataType = dtDateTime
      end
      item
        SourceDataType = dtInt64
        TargetDataType = dtInt32
      end
      item
        SourceDataType = dtMemo
        TargetDataType = dtBlob
      end>
    LoginPrompt = False
    Transaction = TransServidorWeb
    OnRecover = ServidorWebRecover
    Left = 558
    Top = 682
  end
  object ClientesSite: TFDQuery
    Connection = ServidorWeb
    SQL.Strings = (
      
        'select cli_id, cnpj, dt_exp, sit_exp, fantasia from clientes WHE' +
        'RE cnpj = '#39'24.105.199/0001-80'#39)
    Left = 628
    Top = 726
  end
  object dsClientesSite: TDataSource
    DataSet = ClientesSite
    Left = 628
    Top = 793
  end
  object TransServidorWeb: TFDTransaction
    Connection = ServidorWeb
    Left = 562
    Top = 740
  end
  object MySQLDriver: TFDPhysMySQLDriverLink
    VendorLib = 'C:\SED Soft\libmysql.dll'
    OnDriverCreated = MySQLDriverDriverCreated
    Left = 190
    Top = 40
  end
  object QrySqlServWeb: TFDQuery
    Connection = ServidorWeb
    Left = 622
    Top = 680
  end
  object FBDriver: TFDPhysFBDriverLink
    VendorLib = 'C:\SED Soft\fbclient.dll'
    OnDriverCreated = FBDriverDriverCreated
    Left = 134
    Top = 40
  end
  object WaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 230
    Top = 44
  end
  object Proc1PegarID: TFDStoredProc
    Connection = FDConnection1
    StoredProcName = 'pegar_id'
    Left = 994
    Top = 224
    ParamData = <
      item
        Position = 1
        Name = 'bnome'
        DataType = ftString
        ParamType = ptInput
        Size = 255
      end
      item
        Position = 2
        Name = 'tnome'
        DataType = ftString
        ParamType = ptInput
        Size = 255
      end
      item
        Position = 3
        Name = 'prox_id'
        DataType = ftInteger
        ParamType = ptOutput
      end>
  end
  object Emails_Serv: TFDQuery
    AfterInsert = Emails_ServAfterInsert
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      'select * from EMAILS_SERV')
    Left = 916
    Top = 296
    object Emails_ServEM_SERV_ID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'EM_SERV_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '000000'
    end
    object Emails_ServEMAIL_DEST: TStringField
      DisplayLabel = 'E-mail / Destinat'#225'rio'
      FieldName = 'EMAIL_DEST'
      Size = 240
    end
    object Emails_ServDESTINAT_ID: TIntegerField
      DisplayLabel = 'C'#243'd. Dest.'
      FieldName = 'DESTINAT_ID'
      DisplayFormat = '000000'
    end
    object Emails_ServASSUNTO: TStringField
      DisplayLabel = 'Assunto'
      FieldName = 'ASSUNTO'
      Size = 60
    end
    object Emails_ServDestinatario_Nome: TStringField
      DisplayLabel = 'Destinat'#225'rio'
      FieldKind = fkCalculated
      FieldName = 'Destinatario_Nome'
      Size = 60
      Calculated = True
    end
    object Emails_ServTURMA_ID: TIntegerField
      DisplayLabel = 'C'#243'd. Turma'
      FieldName = 'TURMA_ID'
      DisplayFormat = '000000'
    end
    object Emails_ServTIPO_EMAIL: TSmallintField
      DisplayLabel = 'Tipo E-mail'
      FieldName = 'TIPO_EMAIL'
    end
    object Emails_ServTipo_Email_Nome: TStringField
      DisplayLabel = 'Tipo'
      FieldKind = fkCalculated
      FieldName = 'Tipo_Email_Nome'
      Size = 30
      Calculated = True
    end
    object Emails_ServDOC_MODELO: TMemoField
      FieldName = 'DOC_MODELO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object Emails_ServDOC_ID: TIntegerField
      FieldName = 'DOC_ID'
      DisplayFormat = '000000'
    end
    object Emails_ServENVIO: TSmallintField
      DisplayLabel = 'Enviado?'
      FieldName = 'ENVIO'
    end
    object Emails_ServDT_ENVIO: TDateTimeField
      DisplayLabel = 'Dt. Enviado'
      FieldName = 'DT_ENVIO'
    end
    object Emails_ServSituacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'Situacao'
      Size = 30
      Calculated = True
    end
    object Emails_ServDESTINATARIO: TStringField
      DisplayLabel = 'Destinat'#225'rio'
      FieldName = 'DESTINATARIO'
      Size = 60
    end
    object Emails_ServTURMA_ABREV: TStringField
      DisplayLabel = 'Turma Abrev.'
      FieldName = 'TURMA_ABREV'
      Size = 9
    end
    object Emails_ServMATRIC_ID: TIntegerField
      FieldName = 'MATRIC_ID'
    end
    object Emails_ServATIVO: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'ATIVO'
      Calculated = True
    end
    object Emails_ServOBS: TMemoField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object Emails_ServEMAIL_ID: TIntegerField
      FieldName = 'EMAIL_ID'
    end
    object Emails_ServRemetente: TStringField
      FieldKind = fkCalculated
      FieldName = 'Remetente'
      Size = 60
      Calculated = True
    end
    object Emails_ServDT_HT_PREV_ENV: TDateTimeField
      DisplayLabel = 'Previs'#227'o de envio'
      FieldName = 'DT_HT_PREV_ENV'
    end
    object Emails_ServANEXO_S_DOC_ID: TIntegerField
      FieldName = 'ANEXO_S_DOC_ID'
    end
    object Emails_ServArqAnexo: TStringField
      DisplayLabel = 'Arq. Anexo'
      FieldKind = fkCalculated
      FieldName = 'ArqAnexo'
      Size = 120
      Calculated = True
    end
  end
  object dsEmailsServ: TDataSource
    DataSet = Emails_Serv
    Left = 916
    Top = 350
  end
  object Script1: TFDScript
    SQLScripts = <>
    Connection = FDConnection1
    Params = <>
    Macros = <>
    Left = 340
    Top = 32
  end
  object SQLWriter2: TFDBatchMoveSQLWriter
    Connection = FDConnection1
    TableName = 'ALUNOS'
    Left = 1258
    Top = 140
  end
  object csTabExiste: TFDQuery
    AutoCalcFields = False
    Connection = FDConnection1
    SQL.Strings = (
      
        'SELECT COUNT(*) QTDE FROM RDB$RELATIONS WHERE RDB$FLAGS=1 and RD' +
        'B$RELATION_NAME='#39'CLIENTES'#39)
    Left = 1254
    Top = 24
    object csTabExisteQTDE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'QTDE'
      Origin = 'QTDE'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object SQLWriter3: TFDBatchMoveSQLWriter
    Connection = FDConnection1
    TableName = 'ALUNOS'
    Left = 1258
    Top = 76
  end
  object ACBrBoleto1: TACBrBoleto
    Banco.TamanhoMaximoNossoNum = 10
    Banco.TipoCobranca = cobNenhum
    Banco.LayoutVersaoArquivo = 0
    Banco.LayoutVersaoLote = 0
    Banco.CasasDecimaisMoraJuros = 2
    Cedente.TipoCarteira = tctRegistrada
    Cedente.TipoInscricao = pJuridica
    Cedente.IdentDistribuicao = tbBancoDistribui
    NumeroArquivo = 0
    LayoutRemessa = c240
    ACBrBoletoFC = ACBrBoletoFCFortes1
    Configuracoes.Arquivos.LogRegistro = False
    Configuracoes.WebService.SSLHttpLib = httpOpenSSL
    Configuracoes.WebService.StoreName = 'My'
    Configuracoes.WebService.Ambiente = taHomologacao
    Configuracoes.WebService.Operacao = tpInclui
    Configuracoes.WebService.VersaoDF = '1.2'
    Left = 426
    Top = 20
  end
  object ACBrBoletoFCFortes1: TACBrBoletoFCFortes
    SoftwareHouse = 'SED Soft Ltda'
    PrinterName = 'ACBRBoletoPrinter'
    Left = 426
    Top = 64
  end
  object PegaNossoNum: TFDStoredProc
    Connection = FDConnection1
    StoredProcName = 'PEGA_SEQ_NOSSO_NUMERO'
    Left = 984
    Top = 166
    ParamData = <
      item
        Name = 'VL_SEQ'
        DataType = ftLargeint
        ParamType = ptOutput
      end
      item
        Name = 'VL_BANCO_ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object Pega_Seq_Nfse: TFDStoredProc
    Connection = FDConnection1
    StoredProcName = 'PEGA_SEQ_NFSE'
    Left = 992
    Top = 278
    ParamData = <
      item
        Name = 'VL_CONF_ID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'vl_seq'
        DataType = ftInteger
        ParamType = ptOutput
      end>
  end
  object upClientes: TFDUpdateSQL
    Connection = FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO CLIENTES'
      '(CLI_ID, NOME, CNPJ, TIPO, CLIENTE_DESDE, '
      '  LOGRADOURO, BAIRRO, ESTADO, CEP, FONE1, '
      '  FONE2, FAX, OBS, CONFIAVEL, ENTREGUE_BOL, '
      '  SKYPE1, EMAIL_CONTATO1, FAT_NOTA, SIT, '
      '  LOGIN, SENHA, FANTASIA_RED, COD_RASTREIO, '
      '  EMAIL_CONTATO2, IMP_BOL, LOGO, OPER_CEL1_ID, '
      '  OPER_CEL2_ID, OPER_FAX_ID, BANCO_ID, BANC_AGENCIA, '
      '  BANC_CONTA, BANC_OPERACAO, BANC_ACATAMENTO, '
      '  DEBITO_AUTO, CONTRATO, NUMERO, CIDADE, '
      '  INSC_MUNICIPAL, NASCIMENTO, SEXO, NACIONALIDADE, '
      '  UF_NATURAL, NATURALIDADE, EST_CIVIL, PROFISSAO, '
      '  CONTATO, RG, RG_DATA, RG_ORG_ID, RG_UF, '
      '  PASSAPORTE, CNH_N_REG, CNH_DT_1_HAB, CNH_RENACH, '
      '  CNH_DT_VALIDADE)'
      
        'VALUES (:NEW_CLI_ID, :NEW_NOME, :NEW_CNPJ, :NEW_TIPO, :NEW_CLIEN' +
        'TE_DESDE, '
      
        '  :NEW_LOGRADOURO, :NEW_BAIRRO, :NEW_ESTADO, :NEW_CEP, :NEW_FONE' +
        '1, '
      
        '  :NEW_FONE2, :NEW_FAX, :NEW_OBS, :NEW_CONFIAVEL, :NEW_ENTREGUE_' +
        'BOL, '
      '  :NEW_SKYPE1, :NEW_EMAIL_CONTATO1, :NEW_FAT_NOTA, :NEW_SIT, '
      '  :NEW_LOGIN, :NEW_SENHA, :NEW_FANTASIA_RED, :NEW_COD_RASTREIO, '
      
        '  :NEW_EMAIL_CONTATO2, :NEW_IMP_BOL, :NEW_LOGO, :NEW_OPER_CEL1_I' +
        'D, '
      
        '  :NEW_OPER_CEL2_ID, :NEW_OPER_FAX_ID, :NEW_BANCO_ID, :NEW_BANC_' +
        'AGENCIA, '
      '  :NEW_BANC_CONTA, :NEW_BANC_OPERACAO, :NEW_BANC_ACATAMENTO, '
      '  :NEW_DEBITO_AUTO, :NEW_CONTRATO, :NEW_NUMERO, :NEW_CIDADE, '
      
        '  :NEW_INSC_MUNICIPAL, :NEW_NASCIMENTO, :NEW_SEXO, :NEW_NACIONAL' +
        'IDADE, '
      
        '  :NEW_UF_NATURAL, :NEW_NATURALIDADE, :NEW_EST_CIVIL, :NEW_PROFI' +
        'SSAO, '
      
        '  :NEW_CONTATO, :NEW_RG, :NEW_RG_DATA, :NEW_RG_ORG_ID, :NEW_RG_U' +
        'F, '
      
        '  :NEW_PASSAPORTE, :NEW_CNH_N_REG, :NEW_CNH_DT_1_HAB, :NEW_CNH_R' +
        'ENACH, '
      '  :NEW_CNH_DT_VALIDADE)')
    ModifySQL.Strings = (
      'UPDATE CLIENTES'
      
        'SET CLI_ID = :NEW_CLI_ID, NOME = :NEW_NOME, CNPJ = :NEW_CNPJ, TI' +
        'PO = :NEW_TIPO, '
      
        '  CLIENTE_DESDE = :NEW_CLIENTE_DESDE, LOGRADOURO = :NEW_LOGRADOU' +
        'RO, '
      '  BAIRRO = :NEW_BAIRRO, ESTADO = :NEW_ESTADO, CEP = :NEW_CEP, '
      '  FONE1 = :NEW_FONE1, FONE2 = :NEW_FONE2, FAX = :NEW_FAX, '
      
        '  OBS = :NEW_OBS, CONFIAVEL = :NEW_CONFIAVEL, ENTREGUE_BOL = :NE' +
        'W_ENTREGUE_BOL, '
      '  SKYPE1 = :NEW_SKYPE1, EMAIL_CONTATO1 = :NEW_EMAIL_CONTATO1, '
      '  FAT_NOTA = :NEW_FAT_NOTA, SIT = :NEW_SIT, LOGIN = :NEW_LOGIN, '
      
        '  SENHA = :NEW_SENHA, FANTASIA_RED = :NEW_FANTASIA_RED, COD_RAST' +
        'REIO = :NEW_COD_RASTREIO, '
      '  EMAIL_CONTATO2 = :NEW_EMAIL_CONTATO2, IMP_BOL = :NEW_IMP_BOL, '
      
        '  LOGO = :NEW_LOGO, OPER_CEL1_ID = :NEW_OPER_CEL1_ID, OPER_CEL2_' +
        'ID = :NEW_OPER_CEL2_ID, '
      '  OPER_FAX_ID = :NEW_OPER_FAX_ID, BANCO_ID = :NEW_BANCO_ID, '
      
        '  BANC_AGENCIA = :NEW_BANC_AGENCIA, BANC_CONTA = :NEW_BANC_CONTA' +
        ', '
      
        '  BANC_OPERACAO = :NEW_BANC_OPERACAO, BANC_ACATAMENTO = :NEW_BAN' +
        'C_ACATAMENTO, '
      '  DEBITO_AUTO = :NEW_DEBITO_AUTO, CONTRATO = :NEW_CONTRATO, '
      
        '  NUMERO = :NEW_NUMERO, CIDADE = :NEW_CIDADE, INSC_MUNICIPAL = :' +
        'NEW_INSC_MUNICIPAL, '
      
        '  NASCIMENTO = :NEW_NASCIMENTO, SEXO = :NEW_SEXO, NACIONALIDADE ' +
        '= :NEW_NACIONALIDADE, '
      
        '  UF_NATURAL = :NEW_UF_NATURAL, NATURALIDADE = :NEW_NATURALIDADE' +
        ', '
      '  EST_CIVIL = :NEW_EST_CIVIL, PROFISSAO = :NEW_PROFISSAO, '
      '  CONTATO = :NEW_CONTATO, RG = :NEW_RG, RG_DATA = :NEW_RG_DATA, '
      
        '  RG_ORG_ID = :NEW_RG_ORG_ID, RG_UF = :NEW_RG_UF, PASSAPORTE = :' +
        'NEW_PASSAPORTE, '
      '  CNH_N_REG = :NEW_CNH_N_REG, CNH_DT_1_HAB = :NEW_CNH_DT_1_HAB, '
      
        '  CNH_RENACH = :NEW_CNH_RENACH, CNH_DT_VALIDADE = :NEW_CNH_DT_VA' +
        'LIDADE'
      'WHERE CLI_ID = :OLD_CLI_ID')
    DeleteSQL.Strings = (
      'DELETE FROM CLIENTES'
      'WHERE CLI_ID = :OLD_CLI_ID')
    FetchRowSQL.Strings = (
      
        'SELECT CLI_ID, NOME, CNPJ, TIPO, CLIENTE_DESDE, LOGRADOURO, BAIR' +
        'RO, '
      '  ESTADO, CEP, FONE1, FONE2, FAX, OBS, VL_MENSAL, CONFIAVEL, '
      '  ENTREGUE_BOL, SKYPE1, EMAIL_CONTATO1, FAT_NOTA, SIT, LOGIN, '
      '  SENHA, FANTASIA_RED, COD_RASTREIO, EMAIL_CONTATO2, IMP_BOL, '
      '  LOGO, OPER_CEL1_ID, OPER_CEL2_ID, OPER_FAX_ID, BANCO_ID, '
      '  BANC_AGENCIA, BANC_CONTA, BANC_OPERACAO, BANC_ACATAMENTO, '
      
        '  DEBITO_AUTO, CONTRATO, NUMERO, CIDADE, INSC_MUNICIPAL, NASCIME' +
        'NTO, '
      '  SEXO, NACIONALIDADE, UF_NATURAL, NATURALIDADE, EST_CIVIL, '
      
        '  PROFISSAO, CONTATO, RG, RG_DATA, RG_ORG_ID, RG_UF, PASSAPORTE,' +
        ' '
      '  CNH_N_REG, CNH_DT_1_HAB, CNH_RENACH, CNH_DT_VALIDADE'
      'FROM CLIENTES'
      'WHERE CLI_ID = :CLI_ID')
    Left = 52
    Top = 230
  end
  object qryMunicipiosClient: TFDQuery
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      'select * from municipios where uf_cod=:uf_cod order by nome')
    Left = 670
    Top = 889
    ParamData = <
      item
        Name = 'uf_cod'
        DataType = ftString
        ParamType = ptInput
      end>
    object qryMunicipiosClientCODMUN: TIntegerField
      FieldName = 'CODMUN'
      Required = True
    end
    object qryMunicipiosClientUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object qryMunicipiosClientUF_COD: TStringField
      FieldName = 'UF_COD'
    end
    object qryMunicipiosClientNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object DsMunicipiosClient: TDataSource
    DataSet = qryMunicipiosClient
    Left = 666
    Top = 945
  end
  object qryEstadosClient: TFDQuery
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      
        'select uf_cod, uf, nome from estados where nacional=:nacionalida' +
        'de')
    Left = 770
    Top = 883
    ParamData = <
      item
        Name = 'nacionalidade'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryEstadosClientUF_COD: TStringField
      FieldName = 'UF_COD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryEstadosClientUF: TStringField
      FieldName = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object qryEstadosClientNOME: TStringField
      FieldName = 'NOME'
    end
  end
  object dsEstadosClient: TDataSource
    DataSet = qryEstadosClient
    Left = 768
    Top = 943
  end
  object OrgExped: TFDQuery
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      'select * from orgao_exped order by org_id')
    Left = 568
    Top = 896
    object OrgExpedORG_ID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ORG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '000000'
    end
    object OrgExpedORG_INEP_ID: TIntegerField
      FieldName = 'ORG_INEP_ID'
      Required = True
    end
    object OrgExpedORG_EXPED: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'ORG_EXPED'
      Size = 60
    end
  end
  object dsOrgExped: TDataSource
    DataSet = OrgExped
    Left = 564
    Top = 950
  end
  object qryMunicipio: TFDQuery
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      'select nome, uf from municipios where codmun=:codmun')
    Left = 164
    Top = 816
    ParamData = <
      item
        Name = 'codMun'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryMunicipioNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object qryMunicipioUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
  end
  object Municipios3: TFDQuery
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      'select * from municipios where uf_cod=:uf_cod order by UF, nome')
    Left = 716
    Top = 452
    ParamData = <
      item
        Name = 'uf_cod'
        ParamType = ptInput
      end>
    object IntegerField1: TIntegerField
      FieldName = 'CODMUN'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object StringField2: TStringField
      FieldName = 'UF_COD'
    end
    object StringField3: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object DSMunicopios3: TDataSource
    DataSet = Municipios3
    Left = 712
    Top = 500
  end
  object qryEstados3: TFDQuery
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      
        'select uf_cod, uf, nome from estados where nacional = :nacionali' +
        'dade order by nome')
    Left = 476
    Top = 454
    ParamData = <
      item
        Name = 'nacionalidade'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object StringField4: TStringField
      FieldName = 'UF_COD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField5: TStringField
      FieldName = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object StringField6: TStringField
      FieldName = 'NOME'
    end
  end
  object DsEstados3: TDataSource
    DataSet = qryEstados3
    Left = 474
    Top = 509
  end
  object qryVeic: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select v.placa, v.modelo, v.marca from veiculos v where v.veicul' +
        'o_id=:ID')
    Left = 286
    Top = 404
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        FDDataType = dtInt32
        ParamType = ptInput
      end>
    object qryVeicPLACA: TStringField
      FieldName = 'PLACA'
      Origin = 'PLACA'
    end
    object qryVeicMODELO: TStringField
      FieldName = 'MODELO'
      Origin = 'MODELO'
      Size = 60
    end
    object qryVeicMARCA: TStringField
      FieldName = 'MARCA'
      Origin = 'MARCA'
      Size = 60
    end
  end
end
