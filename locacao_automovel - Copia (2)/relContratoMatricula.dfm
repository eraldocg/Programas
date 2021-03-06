object relContratoMatriculaForm: TrelContratoMatriculaForm
  Left = 411
  Top = 162
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Visualiza'#231#227'o de Impress'#227'o '
  ClientHeight = 532
  ClientWidth = 723
  Color = 7562340
  Ctl3D = False
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 14
  object DBPagina1: TDBRichEdit
    Left = 115
    Top = 57
    Width = 1127
    Height = 489
    Ctl3D = False
    DataField = 'CONTRATO_HTML'
    DataSource = dsDocTemp
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentCtl3D = False
    ScrollBars = ssVertical
    TabOrder = 0
    Visible = False
    Zoom = 100
  end
  object DBImage2: TSedDBImage
    Left = 818
    Top = 8
    Width = 96
    Height = 100
    DataField = 'LOGO1'
    DataSource = BancodeDados.dsConfig
    Stretch = True
    TabOrder = 1
    Visible = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 723
    Height = 27
    Align = alTop
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Color = 7562340
    ParentBackground = False
    TabOrder = 2
    object btImprimir: TSpeedButton
      Left = 4
      Top = 2
      Width = 53
      Height = 20
      Caption = '&Imprimir'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      OnClick = btImprimirClick
    end
    object btSalvar: TSpeedButton
      Left = 58
      Top = 2
      Width = 53
      Height = 20
      Caption = 'Salvar'
      Enabled = False
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object btEnviar: TSpeedButton
      Left = 113
      Top = 2
      Width = 53
      Height = 20
      Caption = 'Enviar'
      Enabled = False
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object btFechar: TSpeedButton
      Left = 168
      Top = 2
      Width = 53
      Height = 20
      Caption = '&Fechar'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      OnClick = btFecharClick
    end
    object Label1: TLabel
      Left = 229
      Top = 5
      Width = 32
      Height = 14
      Caption = 'P'#225'gina'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 301
      Top = 6
      Width = 12
      Height = 14
      Caption = 'de'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object EditPag1: TEdit
      Left = 263
      Top = 3
      Width = 35
      Height = 20
      Color = 15066597
      Enabled = False
      TabOrder = 0
      Text = '1'
    end
    object EditPag2: TEdit
      Left = 318
      Top = 3
      Width = 35
      Height = 20
      Color = 15066597
      Enabled = False
      TabOrder = 1
      Text = '1'
    end
    object EditVisual: TComboBox
      Left = 356
      Top = 2
      Width = 76
      Height = 22
      Color = 15066597
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 2
      Text = '100%'
    end
  end
  object backImg: TSedDBImage
    Left = 808
    Top = 626
    Width = 342
    Height = 261
    DataField = 'IMG'
    DataSource = dsDocTemp
    Stretch = True
    TabOrder = 3
    Visible = False
  end
  object Memo1: TMemo
    Left = 338
    Top = 330
    Width = 559
    Height = 127
    Lines.Strings = (
      'Memo1')
    ScrollBars = ssBoth
    TabOrder = 4
    Visible = False
  end
  object Panel2: TPanel
    Left = 0
    Top = 27
    Width = 723
    Height = 505
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 5
    object WebBrowser1: TWebBrowser
      Left = 1
      Top = 1
      Width = 721
      Height = 503
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 782
      ExplicitHeight = 505
      ControlData = {
        4C000000844A0000FD3300000000000000000000000000000000000000000000
        000000004C000000000000000000000001000000E0D057007335CF11AE690800
        2B2E126208000000000000004C0000000114020000000000C000000000000046
        8000000000000000000000000000000000000000000000000000000000000000
        00000000000000000100000000000000000000000000000000000000}
    end
  end
  object DTmat: TDataSource
    Left = 226
    Top = 83
  end
  object DocTemp: TClientDataSet
    Aggregates = <>
    FileName = 'doctmp.xml'
    Params = <>
    BeforePost = DocTempBeforePost
    Left = 300
    Top = 130
    object DocTempCONTRATO: TMemoField
      FieldName = 'CONTRATO'
      BlobType = ftMemo
    end
    object DocTempCONTRATO_HTML: TMemoField
      FieldName = 'CONTRATO_HTML'
      BlobType = ftMemo
    end
    object DocTempOCULTAR_CAB: TSmallintField
      FieldName = 'OCULTAR_CAB'
    end
    object DocTempIMG: TBlobField
      FieldName = 'IMG'
      Size = 8
    end
    object DocTempESP_LINHA: TSmallintField
      FieldName = 'ESP_LINHA'
    end
    object DocTempMARGENS: TSmallintField
      FieldName = 'MARGENS'
    end
    object DocTempFORCAR_RODAPE_IE: TSmallintField
      FieldName = 'FORCAR_RODAPE_IE'
    end
    object DocTempCABEC_TODAS: TSmallintField
      FieldName = 'CABEC_TODAS'
    end
    object DocTempOCULTAR_CEP: TSmallintField
      FieldName = 'OCULTAR_CEP'
    end
    object DocTempOCULTAR_RESOLUCAO: TSmallintField
      FieldName = 'OCULTAR_RESOLUCAO'
    end
    object DocTempOCULTAR_PARC_ABERTO: TSmallintField
      FieldName = 'OCULTAR_PARC_ABERTO'
    end
    object DocTempCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
    end
    object DocTempCONF_ID: TIntegerField
      FieldName = 'CONF_ID'
    end
    object DocTempTIPO_SERVICO: TStringField
      FieldName = 'TIPO_SERVICO'
      Size = 60
    end
    object DocTempCABEC_PRIM_PAG: TSmallintField
      FieldName = 'CABEC_PRIM_PAG'
    end
  end
  object dsDocTemp: TDataSource
    DataSet = DocTemp
    Left = 304
    Top = 186
  end
  object ApplicationEvents1: TApplicationEvents
    OnMessage = ApplicationEvents1Message
    Left = 618
    Top = 62
  end
  object dsDoc: TDataSource
    Left = 128
    Top = 66
  end
  object qryDocumentos: TFDQuery
    Connection = BancodeDados.FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      'select * from DOCUMENTOS')
    Left = 55
    Top = 100
    object qryDocumentosDOC_ID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'DOC_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '000000'
    end
    object qryDocumentosDOC_NOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'DOC_NOME'
      Size = 60
    end
    object qryDocumentosIMG: TBlobField
      FieldName = 'IMG'
      ProviderFlags = [pfInUpdate]
    end
    object qryDocumentosOCULTAR_CAB: TSmallintField
      FieldName = 'OCULTAR_CAB'
    end
    object qryDocumentosATIVO: TSmallintField
      FieldName = 'ATIVO'
    end
    object qryDocumentosESP_LINHA: TSmallintField
      FieldName = 'ESP_LINHA'
    end
    object qryDocumentosMARGENS: TSmallintField
      FieldName = 'MARGENS'
    end
    object qryDocumentosFORCAR_RODAPE_IE: TSmallintField
      FieldName = 'FORCAR_RODAPE_IE'
    end
    object qryDocumentosTIPO_IMG_CAB: TSmallintField
      FieldName = 'TIPO_IMG_CAB'
    end
    object qryDocumentosTAM_FONTE_CAB: TSmallintField
      FieldName = 'TAM_FONTE_CAB'
    end
    object qryDocumentosCABEC_TODAS: TSmallintField
      FieldName = 'CABEC_TODAS'
    end
    object qryDocumentosADIMPLENT: TSmallintField
      FieldName = 'ADIMPLENT'
    end
    object qryDocumentosADIMP_DOC_MAT: TSmallintField
      FieldName = 'ADIMP_DOC_MAT'
    end
    object qryDocumentosOCULTAR_CEP: TSmallintField
      FieldName = 'OCULTAR_CEP'
    end
    object qryDocumentosOCULTAR_RESOLUCAO: TSmallintField
      FieldName = 'OCULTAR_RESOLUCAO'
    end
    object qryDocumentosOCULTAR_PARC_ABERTO: TSmallintField
      FieldName = 'OCULTAR_PARC_ABERTO'
    end
    object qryDocumentosCABEC_PRIM_PAG: TSmallintField
      FieldName = 'CABEC_PRIM_PAG'
    end
    object qryDocumentosPAG1: TMemoField
      FieldName = 'PAG1'
      Origin = 'PAG1'
      BlobType = ftMemo
    end
    object qryDocumentosDOC_HTML: TMemoField
      FieldName = 'DOC_HTML'
      Origin = 'DOC_HTML'
      BlobType = ftMemo
    end
  end
  object qryV_ClientServ: TFDQuery
    OnCalcFields = qryV_ClientServCalcFields
    Connection = BancodeDados.FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      'select * from v_client_serv where cli_id>0')
    Left = 82
    Top = 156
    object qryV_ClientServCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
    end
    object qryV_ClientServNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object qryV_ClientServCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 19
    end
    object qryV_ClientServTIPO: TStringField
      FieldName = 'TIPO'
    end
    object qryV_ClientServLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 60
    end
    object qryV_ClientServBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object qryV_ClientServCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object qryV_ClientServESTADO: TStringField
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 2
    end
    object qryV_ClientServCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object qryV_ClientServFONE1: TStringField
      FieldName = 'FONE1'
      Size = 16
    end
    object qryV_ClientServFONE2: TStringField
      FieldName = 'FONE2'
      Size = 16
    end
    object qryV_ClientServDIA_VENC: TIntegerField
      FieldName = 'DIA_VENC'
    end
    object qryV_ClientServDIAS_TOL: TIntegerField
      FieldName = 'DIAS_TOL'
    end
    object qryV_ClientServCONFIAVEL: TSmallintField
      FieldName = 'CONFIAVEL'
    end
    object qryV_ClientServENTREGUE_BOL: TSmallintField
      FieldName = 'ENTREGUE_BOL'
    end
    object qryV_ClientServSKYPE1: TStringField
      FieldName = 'SKYPE1'
      Size = 60
    end
    object qryV_ClientServEMAIL_CONTATO1: TStringField
      FieldName = 'EMAIL_CONTATO1'
      Size = 240
    end
    object qryV_ClientServFAT_NOTA: TSmallintField
      FieldName = 'FAT_NOTA'
    end
    object qryV_ClientServSIT: TSmallintField
      FieldName = 'SIT'
    end
    object qryV_ClientServCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 60
    end
    object qryV_ClientServCOD_RASTREIO: TStringField
      FieldName = 'COD_RASTREIO'
    end
    object qryV_ClientServEMAIL_CONTATO2: TStringField
      FieldName = 'EMAIL_CONTATO2'
      Size = 240
    end
    object qryV_ClientServIMP_BOL: TSmallintField
      FieldName = 'IMP_BOL'
    end
    object qryV_ClientServC_S_C_ID: TIntegerField
      FieldName = 'C_S_C_ID'
    end
    object qryV_ClientServFORNE_ID: TIntegerField
      FieldName = 'FORNE_ID'
    end
    object qryV_ClientServDT_CONTRATO: TDateField
      FieldName = 'DT_CONTRATO'
    end
    object qryV_ClientServVENC_DIA: TIntegerField
      FieldName = 'VENC_DIA'
    end
    object qryV_ClientServOBS: TMemoField
      FieldName = 'OBS'
      Origin = 'OBS'
      BlobType = ftMemo
    end
    object qryV_ClientServDT_ALT_VL: TDateField
      FieldName = 'DT_ALT_VL'
      Origin = 'DT_ALT_VL'
    end
    object qryV_ClientServVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'VALOR'
    end
    object qryV_ClientServGRADE_ID: TIntegerField
      FieldName = 'GRADE_ID'
      Origin = 'GRADE_ID'
    end
    object qryV_ClientServVEICULO_ID: TIntegerField
      FieldName = 'VEICULO_ID'
      Origin = 'VEICULO_ID'
    end
    object qryV_ClientServPLACA: TStringField
      FieldName = 'PLACA'
      Origin = 'PLACA'
    end
    object qryV_ClientServMARCA: TStringField
      FieldName = 'MARCA'
      Origin = 'MARCA'
      Size = 60
    end
    object qryV_ClientServMODELO: TStringField
      FieldName = 'MODELO'
      Origin = 'MODELO'
      Size = 60
    end
    object qryV_ClientServCOR: TStringField
      FieldName = 'COR'
      Origin = 'COR'
      Size = 60
    end
    object qryV_ClientServRENAVAM: TStringField
      FieldName = 'RENAVAM'
      Origin = 'RENAVAM'
      Size = 60
    end
    object qryV_ClientServCONF_ID: TIntegerField
      FieldName = 'CONF_ID'
      Origin = 'CONF_ID'
    end
    object qryV_ClientServVL_FRANQ_SEGURO: TFloatField
      FieldName = 'VL_FRANQ_SEGURO'
      Origin = 'VL_FRANQ_SEGURO'
      DisplayFormat = ',0.00'
    end
    object qryV_ClientServBANCO_ID: TIntegerField
      FieldName = 'BANCO_ID'
      Origin = 'BANCO_ID'
    end
    object qryV_ClientServCONTRATO_ID: TIntegerField
      FieldName = 'CONTRATO_ID'
      Origin = 'CONTRATO_ID'
    end
    object qryV_ClientServOBS_CONTRATO: TStringField
      FieldName = 'OBS_CONTRATO'
      Origin = 'OBS_CONTRATO'
      Size = 240
    end
    object qryV_ClientServOBS_VEICULO: TStringField
      FieldName = 'OBS_VEICULO'
      Origin = 'OBS_VEICULO'
      Size = 240
    end
    object qryV_ClientServNASCIMENTO: TDateField
      FieldName = 'NASCIMENTO'
      Origin = 'NASCIMENTO'
    end
    object qryV_ClientServSEXO: TStringField
      FieldName = 'SEXO'
      Origin = 'SEXO'
      Size = 1
    end
    object qryV_ClientServNACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
      Origin = 'NACIONALIDADE'
    end
    object qryV_ClientServUF_NATURAL: TStringField
      FieldName = 'UF_NATURAL'
      Origin = 'UF_NATURAL'
    end
    object qryV_ClientServNATURALIDADE: TStringField
      FieldName = 'NATURALIDADE'
      Origin = 'NATURALIDADE'
      Size = 60
    end
    object qryV_ClientServEST_CIVIL: TStringField
      FieldName = 'EST_CIVIL'
      Origin = 'EST_CIVIL'
    end
    object qryV_ClientServPROFISSAO: TStringField
      FieldName = 'PROFISSAO'
      Origin = 'PROFISSAO'
      Size = 60
    end
    object qryV_ClientServRG: TStringField
      FieldName = 'RG'
      Origin = 'RG'
      Size = 16
    end
    object qryV_ClientServRG_DATA: TDateField
      FieldName = 'RG_DATA'
      Origin = 'RG_DATA'
    end
    object qryV_ClientServRG_ORG_ID: TIntegerField
      FieldName = 'RG_ORG_ID'
      Origin = 'RG_ORG_ID'
    end
    object qryV_ClientServRG_UF: TStringField
      FieldName = 'RG_UF'
      Origin = 'RG_UF'
    end
    object qryV_ClientServPASSAPORTE: TStringField
      FieldName = 'PASSAPORTE'
      Origin = 'PASSAPORTE'
    end
    object qryV_ClientServDT_CONTRATO_FIM: TDateField
      FieldName = 'DT_CONTRATO_FIM'
      Origin = 'DT_CONTRATO_FIM'
    end
    object qryV_ClientServANO_FAB: TIntegerField
      FieldName = 'ANO_FAB'
      Origin = 'ANO_FAB'
    end
    object qryV_ClientServDias_locacao: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Dias_locacao'
      Calculated = True
    end
    object qryV_ClientServANO_MODELO: TIntegerField
      FieldName = 'ANO_MODELO'
      Origin = 'ANO_MODELO'
    end
    object qryV_ClientServNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 16
    end
    object qryV_ClientServCNH_N_REG: TStringField
      FieldName = 'CNH_N_REG'
      Origin = 'CNH_N_REG'
    end
    object qryV_ClientServCNH_DT_1_HAB: TDateField
      FieldName = 'CNH_DT_1_HAB'
      Origin = 'CNH_DT_1_HAB'
    end
    object qryV_ClientServCNH_RENACH: TStringField
      FieldName = 'CNH_RENACH'
      Origin = 'CNH_RENACH'
      Size = 11
    end
  end
  object dsV_ClientServ: TDataSource
    Left = 128
    Top = 234
  end
  object qryMunicipios: TFDQuery
    Connection = BancodeDados.FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      'select * from municipios where codmun=:ID')
    Left = 222
    Top = 196
    ParamData = <
      item
        Name = 'ID'
        ParamType = ptInput
      end>
    object qryMunicipiosCODMUN: TIntegerField
      FieldName = 'CODMUN'
      Required = True
    end
    object qryMunicipiosUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object qryMunicipiosUF_COD: TStringField
      FieldName = 'UF_COD'
    end
    object qryMunicipiosNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
end
