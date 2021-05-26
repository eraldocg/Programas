object RetornoForm: TRetornoForm
  Left = 446
  Top = 213
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Arquivo de Retorno'
  ClientHeight = 466
  ClientWidth = 332
  Color = clWhite
  Ctl3D = False
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  KeyPreview = True
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 8
    Top = 84
    Width = 79
    Height = 14
    Caption = 'Nome do Banco:'
  end
  object Gauge1: TGauge
    Left = 8
    Top = 398
    Width = 315
    Height = 13
    Progress = 0
  end
  object LbNomeOperacao: TLabel
    Left = 8
    Top = 382
    Width = 315
    Height = 13
    AutoSize = False
    Caption = 'LbNomeOperacao'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 217
    Height = 81
    AutoSize = True
  end
  object LbArquivo: TLabel
    Left = 863
    Top = 49
    Width = 274
    Height = 13
    AutoSize = False
    Caption = 'LbArquivo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object LbNomeNumero: TLabel
    Left = 8
    Top = 414
    Width = 315
    Height = 13
    AutoSize = False
    Caption = 'LbNomeNumero'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object btConta: TSpeedButton
    Left = 843
    Top = 13
    Width = 18
    Height = 19
    Cursor = crHandPoint
    Caption = 'F4'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -8
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
  end
  object Label3: TLabel
    Left = 8
    Top = 332
    Width = 31
    Height = 14
    Caption = 'Conta:'
  end
  object lbConta: TLabel
    Left = 947
    Top = 18
    Width = 42
    Height = 14
    Caption = 'lbConta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Bevel1: TBevel
    Left = 8
    Top = 373
    Width = 315
    Height = 2
  end
  object Panel1: TPanel
    Left = 0
    Top = 437
    Width = 332
    Height = 29
    Align = alBottom
    BevelOuter = bvNone
    Color = clSilver
    ParentBackground = False
    TabOrder = 5
    DesignSize = (
      332
      29)
    object BTIniciar: TButton
      Left = 254
      Top = 3
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = '&Executar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BTIniciarClick
    end
    object BTFechar: TButton
      Left = 177
      Top = 3
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = '&Fechar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ModalResult = 2
      ParentFont = False
      TabOrder = 1
    end
  end
  object RBProcessar: TRadioButton
    Left = 348
    Top = 18
    Width = 270
    Height = 17
    Cursor = crHandPoint
    Caption = 'Processar Retorno'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = RBProcessarClick
  end
  object RBDesfazer: TRadioButton
    Left = 103
    Top = 327
    Width = 145
    Height = 17
    Cursor = crHandPoint
    Caption = 'Desfazer Processamento'
    Checked = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    TabStop = True
    Visible = False
    OnClick = RBDesfazerClick
  end
  object Memo1: TMemo
    Left = 345
    Top = 36
    Width = 516
    Height = 416
    Lines.Strings = (
      'Memo1')
    ScrollBars = ssBoth
    TabOrder = 9
  end
  object EditBanco: TComboBox
    Left = 8
    Top = 98
    Width = 315
    Height = 22
    BevelKind = bkFlat
    Style = csOwnerDrawFixed
    TabOrder = 0
    OnChange = EditBancoChange
    OnClick = EditBancoClick
  end
  object EditConta: TDBLookupComboBox
    Left = 8
    Top = 346
    Width = 315
    Height = 20
    KeyField = 'CONTA_ID'
    ListField = 'CONTA'
    ListSource = BancodeDados.DSContas
    NullValueKey = 46
    TabOrder = 4
  end
  object OFF_EditTipoConta: TSedCurrency
    Left = 871
    Top = 16
    Width = 75
    Height = 20
    TabStop = False
    DecimalPlaces = 2
    DisplayFormat = '000000'
    ReadOnly = True
    TabOrder = 8
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 121
    Width = 315
    Height = 97
    TabOrder = 1
    object rgOpcoes: TRadioGroup
      Left = 7
      Top = 35
      Width = 300
      Height = 55
      Caption = 'Op'#231#245'es do Livro Caixa'
      Enabled = False
      ItemIndex = 0
      Items.Strings = (
        'Lan'#231'amentos individuais por boleto'
        'Lan'#231'amento '#250'nico sintetizado')
      TabOrder = 2
    end
    object chLancCX: TCheckBox
      Left = 9
      Top = 3
      Width = 189
      Height = 17
      Cursor = crHandPoint
      Caption = 'Efetuar lan'#231'amento no livro caixa?'
      Checked = True
      State = cbChecked
      TabOrder = 0
      OnClick = chLancCXClick
    end
    object chLancTaxa: TCheckBox
      Left = 9
      Top = 20
      Width = 279
      Height = 17
      Caption = 'Efetuar lan'#231'amento da Taxa do Boleto no livro caixa?'
      Checked = True
      State = cbChecked
      TabOrder = 1
      OnClick = chLancCXClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 219
    Width = 315
    Height = 51
    Caption = 'Op'#231#227'o para Processar o Retorno'
    TabOrder = 2
    object chConfirma: TCheckBox
      Left = 9
      Top = 21
      Width = 278
      Height = 17
      Cursor = crHandPoint
      Caption = 'Exibir confirma'#231#227'o para quitar o arquivo?'
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 0
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 271
    Width = 315
    Height = 56
    Caption = 'Op'#231#227'o de Impress'#227'o'
    TabOrder = 3
    object cbAnexarRel: TCheckBox
      Left = 9
      Top = 12
      Width = 305
      Height = 43
      Cursor = crHandPoint
      Caption = 
        'Na Consulta de Recebimento Via Banco >> Anexar os relat'#243'rios de ' +
        #8220'Recebimento Via Banco'#8221' e '#8220'Arquivo Retorno'#8221
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 0
      WordWrap = True
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 
      'Arquivo de Retorno|*.RET;*.TXT;*.DAT;*.CRT;*.LID;*.SAI|Todos os ' +
      'Arquivos|*.*'
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofEnableSizing]
    Left = 508
    Top = 52
  end
  object MainMenu1: TMainMenu
    Left = 422
    Top = 36
    object F41: TMenuItem
      Caption = 'F4'
      ShortCut = 115
      Visible = False
    end
    object CtrlF51: TMenuItem
      Caption = 'Ctrl+F5'
      ShortCut = 16500
      Visible = False
      OnClick = CtrlF51Click
    end
  end
  object dsTitQuitado2: TDataSource
    DataSet = TitQuitado2
    Left = 216
    Top = 40
  end
  object TitQuitado2: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 96
    Top = 10
    object TitQuitado2RESP_ID: TIntegerField
      FieldName = 'RESP_ID'
    end
    object TitQuitado2RESP_NOME: TStringField
      FieldName = 'RESP_NOME'
      Size = 60
    end
    object TitQuitado2BOLETO_ID: TIntegerField
      FieldName = 'BOLETO_ID'
      DisplayFormat = '000000'
    end
    object TitQuitado2PARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 10
    end
    object TitQuitado2MATRICULA_ID: TIntegerField
      FieldName = 'MATRICULA_ID'
      DisplayFormat = '000000'
    end
    object TitQuitado2ALUNO: TStringField
      FieldName = 'ALUNO'
      Size = 60
    end
    object TitQuitado2EMISSAO: TDateField
      FieldName = 'EMISSAO'
    end
    object TitQuitado2VENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object TitQuitado2VALOR_INTEGRAL: TCurrencyField
      FieldName = 'VALOR_INTEGRAL'
      DisplayFormat = ',0.00'
    end
    object TitQuitado2VALOR_APAGAR: TCurrencyField
      FieldName = 'VALOR_APAGAR'
      DisplayFormat = ',0.00'
    end
    object TitQuitado2VALOR_PAGO: TCurrencyField
      FieldName = 'VALOR_PAGO'
      DisplayFormat = ',0.00'
    end
    object TitQuitado2SITUACAO_BOLETO: TStringField
      FieldName = 'SITUACAO_BOLETO'
    end
    object TitQuitado2RET1_RETORNO_ID: TIntegerField
      FieldName = 'RET1_RETORNO_ID'
      DisplayFormat = '000000'
    end
    object TitQuitado2RET1_NUMERO_ARQUIVO: TIntegerField
      FieldName = 'RET1_NUMERO_ARQUIVO'
    end
    object TitQuitado2RET1_DATA_ARQUIVO: TDateField
      FieldName = 'RET1_DATA_ARQUIVO'
    end
    object TitQuitado2RET1_NOSSO_NUMERO: TStringField
      FieldName = 'RET1_NOSSO_NUMERO'
      Size = 40
    end
    object TitQuitado2RET1_DATA_CREDITO: TDateField
      FieldName = 'RET1_DATA_CREDITO'
    end
    object TitQuitado2RET1_DATA_VENCIMENTO: TDateField
      FieldName = 'RET1_DATA_VENCIMENTO'
    end
    object TitQuitado2RET1_DATA_RECEBIMENTO: TDateField
      FieldName = 'RET1_DATA_RECEBIMENTO'
    end
    object TitQuitado2RET1_VALOR_DOCUMENTO: TCurrencyField
      FieldName = 'RET1_VALOR_DOCUMENTO'
      DisplayFormat = ',0.00'
    end
    object TitQuitado2RET1_VALOR_ABATIMENTO: TCurrencyField
      FieldName = 'RET1_VALOR_ABATIMENTO'
      DisplayFormat = ',0.00'
    end
    object TitQuitado2RET1_VALOR_MORA: TCurrencyField
      FieldName = 'RET1_VALOR_MORA'
      DisplayFormat = ',0.00'
    end
    object TitQuitado2RET1_VALOR_PAGO: TCurrencyField
      FieldName = 'RET1_VALOR_PAGO'
      DisplayFormat = ',0.00'
    end
    object TitQuitado2RET1_NOME_ARQ: TStringField
      FieldName = 'RET1_NOME_ARQ'
      Size = 60
    end
    object TitQuitado2RET2_RETORNO_ID: TIntegerField
      FieldName = 'RET2_RETORNO_ID'
      DisplayFormat = '000000'
    end
    object TitQuitado2RET2_NUMERO_ARQUIVO: TIntegerField
      FieldName = 'RET2_NUMERO_ARQUIVO'
    end
    object TitQuitado2RET2_DATA_ARQUIVO: TDateField
      FieldName = 'RET2_DATA_ARQUIVO'
    end
    object TitQuitado2RET2_NOSSO_NUMERO: TStringField
      FieldName = 'RET2_NOSSO_NUMERO'
      Size = 40
    end
    object TitQuitado2RET2_DATA_CREDITO: TDateField
      FieldName = 'RET2_DATA_CREDITO'
    end
    object TitQuitado2RET2_DATA_VENCIMENTO: TDateField
      FieldName = 'RET2_DATA_VENCIMENTO'
    end
    object TitQuitado2RET2_DATA_RECEBIMENTO: TDateField
      FieldName = 'RET2_DATA_RECEBIMENTO'
    end
    object TitQuitado2RET2_VALOR_DOCUMENTO: TCurrencyField
      FieldName = 'RET2_VALOR_DOCUMENTO'
      DisplayFormat = ',0.00'
    end
    object TitQuitado2RET2_VALOR_ABATIMENTO: TCurrencyField
      FieldName = 'RET2_VALOR_ABATIMENTO'
      DisplayFormat = ',0.00'
    end
    object TitQuitado2RET2_VALOR_MORA: TCurrencyField
      FieldName = 'RET2_VALOR_MORA'
      DisplayFormat = ',0.00'
    end
    object TitQuitado2RET2_VALOR_PAGO: TCurrencyField
      FieldName = 'RET2_VALOR_PAGO'
      DisplayFormat = ',0.00'
    end
    object TitQuitado2RET2_NOME_ARQ: TStringField
      FieldName = 'RET2_NOME_ARQ'
      Size = 60
    end
  end
  object BoletosDup: TFDQuery
    Connection = BancodeDados.FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    UpdateObject = upBolDup
    SQL.Strings = (
      
        'select b.*, (select nome from clientes where cli_id=b.cli_id) AS' +
        ' CLIENTE from boletos b WHERE 1=1')
    Left = 40
    Top = 2
    object BoletosDupBOLETO_ID: TIntegerField
      FieldName = 'BOLETO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object BoletosDupDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object BoletosDupPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 9
    end
    object BoletosDupVALOR_MENSAL: TFloatField
      FieldName = 'VALOR_MENSAL'
    end
    object BoletosDupVALOR_LIC: TFloatField
      FieldName = 'VALOR_LIC'
    end
    object BoletosDupVALOR_INTEGRAL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'VALOR_INTEGRAL'
      ProviderFlags = []
      ReadOnly = True
    end
    object BoletosDupDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object BoletosDupACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object BoletosDupVALOR_APAGAR: TFloatField
      FieldName = 'VALOR_APAGAR'
    end
    object BoletosDupJUROS: TFloatField
      FieldName = 'JUROS'
    end
    object BoletosDupMULTA: TFloatField
      FieldName = 'MULTA'
    end
    object BoletosDupVALOR_PAGO: TFloatField
      FieldName = 'VALOR_PAGO'
    end
    object BoletosDupSITUACAO_BOLETO: TStringField
      FieldName = 'SITUACAO_BOLETO'
    end
    object BoletosDupVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object BoletosDupEMISSAO: TDateField
      FieldName = 'EMISSAO'
    end
    object BoletosDupRECEBIMENTO: TDateField
      FieldName = 'RECEBIMENTO'
    end
    object BoletosDupCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
    end
    object BoletosDupDESCRICAO_PAGO: TStringField
      FieldName = 'DESCRICAO_PAGO'
    end
    object BoletosDupGRADE_ID: TIntegerField
      FieldName = 'GRADE_ID'
    end
    object BoletosDupBANCO_ID: TIntegerField
      FieldName = 'BANCO_ID'
    end
    object BoletosDupRETORNO_ID: TIntegerField
      FieldName = 'RETORNO_ID'
    end
    object BoletosDupUSR_CAD: TIntegerField
      FieldName = 'USR_CAD'
    end
    object BoletosDupUSR_ID: TIntegerField
      FieldName = 'USR_ID'
    end
    object BoletosDupDT_ALTERADO: TDateField
      FieldName = 'DT_ALTERADO'
    end
    object BoletosDupEMISSAO_ID: TIntegerField
      FieldName = 'EMISSAO_ID'
    end
    object BoletosDupCAIXA_ID: TIntegerField
      FieldName = 'CAIXA_ID'
    end
    object BoletosDupDT_CREDITO: TDateField
      FieldName = 'DT_CREDITO'
    end
    object BoletosDupNFS_ID: TIntegerField
      FieldName = 'NFS_ID'
    end
    object BoletosDupVENCIMENTO_ORIG: TDateField
      FieldName = 'VENCIMENTO_ORIG'
    end
    object BoletosDupVALOR_APAGAR_ORIG: TFloatField
      FieldName = 'VALOR_APAGAR_ORIG'
    end
    object BoletosDupDUPLIC_BOL_ID: TIntegerField
      FieldName = 'DUPLIC_BOL_ID'
    end
    object BoletosDupDUPLIC_RET_ID: TIntegerField
      FieldName = 'DUPLIC_RET_ID'
    end
    object BoletosDupOP_PAG_ID: TIntegerField
      FieldName = 'OP_PAG_ID'
    end
    object BoletosDupRECEB_ID: TIntegerField
      FieldName = 'RECEB_ID'
    end
    object BoletosDupTIPO_CONTAS_ID: TIntegerField
      FieldName = 'TIPO_CONTAS_ID'
    end
    object BoletosDupACRESC_EXTRA: TFloatField
      FieldName = 'ACRESC_EXTRA'
    end
    object BoletosDupRET_OC_ID: TIntegerField
      FieldName = 'RET_OC_ID'
    end
    object BoletosDupREMESSA_ID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'REMESSA_ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object BoletosDupOBS: TMemoField
      FieldName = 'OBS'
      Origin = 'OBS'
      BlobType = ftMemo
    end
    object BoletosDupOBS_BOLETO: TMemoField
      FieldName = 'OBS_BOLETO'
      Origin = 'OBS_BOLETO'
      BlobType = ftMemo
    end
    object BoletosDupCLIENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
  end
  object upBolDup: TFDUpdateSQL
    Connection = BancodeDados.FDConnection1
    InsertSQL.Strings = (
      'insert into BOLETOS'
      
        '  (BOLETO_ID, DESCRICAO, PARCELA, VALOR_MENSAL, VALOR_LIC, DESCO' +
        'NTO, ACRESCIMO, '
      
        '   VALOR_APAGAR, JUROS, MULTA, VALOR_PAGO, SITUACAO_BOLETO, VENC' +
        'IMENTO, '
      
        '   EMISSAO, RECEBIMENTO, CLI_ID, DESCRICAO_PAGO, GRADE_ID, BANCO' +
        '_ID, RETORNO_ID, '
      
        '   OBS, OBS_BOLETO, USR_CAD, USR_ID, DT_ALTERADO, EMISSAO_ID, CA' +
        'IXA_ID, '
      
        '   DT_CREDITO, NFS_ID, VENCIMENTO_ORIG, VALOR_APAGAR_ORIG, DUPLI' +
        'C_BOL_ID, '
      
        '   DUPLIC_RET_ID, OP_PAG_ID, RECEB_ID, TIPO_CONTAS_ID, ACRESC_EX' +
        'TRA, RET_OC_ID)'
      'values'
      
        '  (:BOLETO_ID, :DESCRICAO, :PARCELA, :VALOR_MENSAL, :VALOR_LIC, ' +
        ':DESCONTO, '
      
        '   :ACRESCIMO, :VALOR_APAGAR, :JUROS, :MULTA, :VALOR_PAGO, :SITU' +
        'ACAO_BOLETO, '
      
        '   :VENCIMENTO, :EMISSAO, :RECEBIMENTO, :CLI_ID, :DESCRICAO_PAGO' +
        ', :GRADE_ID, '
      
        '   :BANCO_ID, :RETORNO_ID, :OBS, :OBS_BOLETO, :USR_CAD, :USR_ID,' +
        ' :DT_ALTERADO, '
      
        '   :EMISSAO_ID, :CAIXA_ID, :DT_CREDITO, :NFS_ID, :VENCIMENTO_ORI' +
        'G, :VALOR_APAGAR_ORIG, '
      
        '   :DUPLIC_BOL_ID, :DUPLIC_RET_ID, :OP_PAG_ID, :RECEB_ID, :TIPO_' +
        'CONTAS_ID, '
      '   :ACRESC_EXTRA, :RET_OC_ID)')
    ModifySQL.Strings = (
      'update BOLETOS'
      'set'
      '  BOLETO_ID = :BOLETO_ID,'
      '  DESCRICAO = :DESCRICAO,'
      '  PARCELA = :PARCELA,'
      '  VALOR_MENSAL = :VALOR_MENSAL,'
      '  VALOR_LIC = :VALOR_LIC,'
      '  DESCONTO = :DESCONTO,'
      '  ACRESCIMO = :ACRESCIMO,'
      '  VALOR_APAGAR = :VALOR_APAGAR,'
      '  JUROS = :JUROS,'
      '  MULTA = :MULTA,'
      '  VALOR_PAGO = :VALOR_PAGO,'
      '  SITUACAO_BOLETO = :SITUACAO_BOLETO,'
      '  VENCIMENTO = :VENCIMENTO,'
      '  EMISSAO = :EMISSAO,'
      '  RECEBIMENTO = :RECEBIMENTO,'
      '  CLI_ID = :CLI_ID,'
      '  DESCRICAO_PAGO = :DESCRICAO_PAGO,'
      '  GRADE_ID = :GRADE_ID,'
      '  BANCO_ID = :BANCO_ID,'
      '  RETORNO_ID = :RETORNO_ID,'
      '  OBS = :OBS,'
      '  OBS_BOLETO = :OBS_BOLETO,'
      '  USR_CAD = :USR_CAD,'
      '  USR_ID = :USR_ID,'
      '  DT_ALTERADO = :DT_ALTERADO,'
      '  EMISSAO_ID = :EMISSAO_ID,'
      '  CAIXA_ID = :CAIXA_ID,'
      '  DT_CREDITO = :DT_CREDITO,'
      '  NFS_ID = :NFS_ID,'
      '  VENCIMENTO_ORIG = :VENCIMENTO_ORIG,'
      '  VALOR_APAGAR_ORIG = :VALOR_APAGAR_ORIG,'
      '  DUPLIC_BOL_ID = :DUPLIC_BOL_ID,'
      '  DUPLIC_RET_ID = :DUPLIC_RET_ID,'
      '  OP_PAG_ID = :OP_PAG_ID,'
      '  RECEB_ID = :RECEB_ID,'
      '  TIPO_CONTAS_ID = :TIPO_CONTAS_ID,'
      '  ACRESC_EXTRA = :ACRESC_EXTRA,'
      '  RET_OC_ID = :RET_OC_ID'
      'where'
      '  BOLETO_ID = :OLD_BOLETO_ID')
    DeleteSQL.Strings = (
      'delete from BOLETOS'
      'where'
      '  BOLETO_ID = :OLD_BOLETO_ID')
    Left = 34
    Top = 54
  end
  object qryPegarRetorn: TFDQuery
    Connection = BancodeDados.FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      
        'select r.RETORNO_ID from retorno r, boletos_emissao e where r.no' +
        'sso_numero=e.nosso_numero and e.id_boletos containing '#39'274236'#39' a' +
        'nd e.banco_id = 7')
    Left = 152
    Top = 8
    object qryPegarRetornRETORNO_ID: TIntegerField
      FieldName = 'RETORNO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object qryV_Boletos: TFDQuery
    Connection = BancodeDados.FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      
        'select CLI_ID, CLI_NOME, CLI_CNPJ_CPF, EMISSAO_ID, PARCELA, NOSS' +
        'O_NUMERO from v_boletos where 1=1')
    Left = 250
    Top = 20
    object qryV_BoletosCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
    end
    object qryV_BoletosCLI_NOME: TStringField
      FieldName = 'CLI_NOME'
      Size = 60
    end
    object qryV_BoletosCLI_CNPJ_CPF: TStringField
      FieldName = 'CLI_CNPJ_CPF'
      Size = 19
    end
    object qryV_BoletosEMISSAO_ID: TIntegerField
      FieldName = 'EMISSAO_ID'
    end
    object qryV_BoletosPARCELA: TStringField
      FieldName = 'PARCELA'
      Size = 9
    end
    object qryV_BoletosNOSSO_NUMERO: TStringField
      FieldName = 'NOSSO_NUMERO'
      Size = 40
    end
  end
  object dsRetornoTmp: TDataSource
    DataSet = RetornoTmp
    OnDataChange = dsRetornoTmpDataChange
    Left = 276
    Top = 48
  end
  object RetornoTmp: TClientDataSet
    Aggregates = <>
    Params = <>
    OnCalcFields = RetornoTmpCalcFields
    Left = 214
    Top = 6
    object RetornoTmpNUMERO_ARQUIVO: TIntegerField
      DisplayLabel = 'N'#250'm. Arq.'
      FieldName = 'NUMERO_ARQUIVO'
    end
    object RetornoTmpDATA_ARQUIVO: TDateField
      DisplayLabel = 'Data Arq.'
      FieldName = 'DATA_ARQUIVO'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object RetornoTmpNOSSO_NUMERO: TStringField
      DisplayLabel = 'Nosso N'#250'mero'
      FieldName = 'NOSSO_NUMERO'
      Size = 60
    end
    object RetornoTmpDATA_CREDITO: TDateField
      DisplayLabel = 'Cr'#233'dito'
      FieldName = 'DATA_CREDITO'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object RetornoTmpVALOR_PAGO: TCurrencyField
      DisplayLabel = 'Valor Pago'
      FieldName = 'VALOR_PAGO'
      DisplayFormat = ',0.00'
    end
    object RetornoTmpDATA_RECEBIMENTO: TDateField
      DisplayLabel = 'Recebimento'
      FieldName = 'DATA_RECEBIMENTO'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object RetornoTmpCODIGO_BANCO: TIntegerField
      DisplayLabel = 'N'#250'm. Banco'
      FieldName = 'CODIGO_BANCO'
    end
    object RetornoTmpNOME_ARQ: TStringField
      DisplayLabel = 'Arquivo'
      FieldName = 'NOME_ARQ'
      Size = 60
    end
    object RetornoTmpCODIGO_AGENCIA: TStringField
      FieldName = 'CODIGO_AGENCIA'
      Size = 9
    end
    object RetornoTmpDIGITO_AGENCIA: TStringField
      DisplayLabel = 'D'#237'g. Ag.'
      FieldName = 'DIGITO_AGENCIA'
      Size = 2
    end
    object RetornoTmpNUMERO_CONTA: TStringField
      DisplayLabel = 'N'#250'm. Conta'
      FieldName = 'NUMERO_CONTA'
      Size = 19
    end
    object RetornoTmpNUMERO_REGISTRO: TIntegerField
      FieldName = 'NUMERO_REGISTRO'
    end
    object RetornoTmpDIGITO_CONTA: TIntegerField
      FieldName = 'DIGITO_CONTA'
    end
    object RetornoTmpSEU_NUMERO: TStringField
      DisplayLabel = 'Seu Numero'
      FieldName = 'SEU_NUMERO'
      Size = 60
    end
    object RetornoTmpTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object RetornoTmpBANCO_ID: TIntegerField
      FieldName = 'BANCO_ID'
    end
    object RetornoTmpCOD_OCORRENCIA: TIntegerField
      DisplayLabel = 'C'#243'd. Ocorr'#234'ncia'
      FieldName = 'COD_OCORRENCIA'
    end
    object RetornoTmpOBSERVACAO: TStringField
      FieldKind = fkCalculated
      FieldName = 'OBSERVACAO'
      Size = 250
      Calculated = True
    end
    object RetornoTmpOBS_1: TStringField
      FieldName = 'OBS_1'
      Size = 120
    end
    object RetornoTmpOBS_2: TStringField
      FieldName = 'OBS_2'
      Size = 120
    end
    object RetornoTmpOBS_3: TMemoField
      FieldName = 'OBS_3'
      BlobType = ftMemo
      Size = 500
    end
    object RetornoTmpNOME_SACADO: TStringField
      FieldName = 'NOME_SACADO'
      Size = 120
    end
    object RetornoTmpCOD_SACADO: TIntegerField
      FieldName = 'COD_SACADO'
    end
    object RetornoTmpVALOR_DOCUMENTO: TFloatField
      FieldName = 'VALOR_DOCUMENTO'
    end
    object RetornoTmpVALOR_DESCONTO: TCurrencyField
      FieldName = 'VALOR_DESCONTO'
    end
    object RetornoTmpOCORRENCIA_NOME: TStringField
      DisplayLabel = 'Descri'#231#227'o da Ocorr'#234'ncia'
      FieldName = 'OCORRENCIA_NOME'
      Size = 120
    end
    object RetornoTmpEMISSAO_ID: TIntegerField
      FieldName = 'EMISSAO_ID'
    end
    object RetornoTmpDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object RetornoTmpCODIGO_REJEICAO: TIntegerField
      FieldName = 'CODIGO_REJEICAO'
    end
    object RetornoTmpREJEICAO_NOME: TStringField
      FieldName = 'REJEICAO_NOME'
      Size = 120
    end
    object RetornoTmpTX_BANCO: TCurrencyField
      FieldName = 'TX_BANCO'
    end
    object RetornoTmpCODIGO_CEDENTE: TStringField
      FieldName = 'CODIGO_CEDENTE'
      Size = 40
    end
    object RetornoTmpCOD_DEB: TIntegerField
      FieldName = 'COD_DEB'
    end
  end
end
