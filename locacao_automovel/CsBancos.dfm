object CsBancosForm: TCsBancosForm
  Left = 350
  Top = 156
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta de Bancos'
  ClientHeight = 419
  ClientWidth = 502
  Color = 7562340
  Ctl3D = False
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Label2: TLabel
    Left = 312
    Top = 9
    Width = 26
    Height = 14
    Alignment = taRightJustify
    Caption = 'Filtro:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 290
    Top = 40
    Width = 48
    Height = 14
    Alignment = taRightJustify
    Caption = 'Condi'#231#227'o:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lbVisualizar: TLabel
    Left = 4
    Top = 83
    Width = 51
    Height = 14
    Alignment = taRightJustify
    Caption = 'Visualizar:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object BtExecutar: TSpeedButton
    Left = 206
    Top = 81
    Width = 18
    Height = 19
    Cursor = crHandPoint
    Caption = 'F3'
    Font.Charset = BALTIC_CHARSET
    Font.Color = clBlack
    Font.Height = -8
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
    OnClick = BtExecutarClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 389
    Width = 502
    Height = 30
    Align = alBottom
    BevelOuter = bvNone
    Color = 7562340
    ParentBackground = False
    TabOrder = 5
    object BtOk: TButton
      Left = 423
      Top = 3
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = '&Ok'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ModalResult = 1
      ParentFont = False
      TabOrder = 0
    end
    object BtCancelar: TButton
      Left = 344
      Top = 3
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Cancel = True
      Caption = '&Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ModalResult = 2
      ParentFont = False
      TabOrder = 1
    end
    object BtNovo: TButton
      Left = 265
      Top = 3
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = '&Novo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BtNovoClick
    end
  end
  object DBGrid1: TSedDBGrid
    Left = 0
    Top = 107
    Width = 505
    Height = 279
    DataSource = BancodeDados.DSBancos
    FixedColor = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick]
    ParentFont = False
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnDblClick = DBGrid1DblClick
    OnEditButtonClick = DBGrid1DblClick
    OnTitleClick = DBGrid1TitleClick
    Columns = <
      item
        ButtonStyle = cbsEllipsis
        Expanded = False
        FieldName = 'BANCO_ID'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BANCO_NOME'
        Width = 294
        Visible = True
      end>
  end
  object CBOpcao: TComboBox
    Left = 345
    Top = 5
    Width = 145
    Height = 21
    Style = csOwnerDrawFixed
    Ctl3D = False
    ItemHeight = 15
    ItemIndex = 1
    ParentCtl3D = False
    TabOrder = 1
    Text = 'Nome'
    Items.Strings = (
      'C'#243'digo'
      'Nome')
  end
  object EditConsulta: TEdit
    Left = 282
    Top = 70
    Width = 208
    Height = 20
    TabOrder = 3
    OnKeyDown = EditConsultaKeyDown
  end
  object CBTipo: TComboBox
    Left = 345
    Top = 37
    Width = 147
    Height = 21
    Style = csOwnerDrawFixed
    ItemHeight = 15
    ItemIndex = 0
    TabOrder = 2
    Text = 'Come'#231'ando por...'
    Items.Strings = (
      'Come'#231'ando por...'
      'Contendo...'
      'Igual '#224'...')
  end
  object cbVisualizar: TComboBox
    Left = 56
    Top = 80
    Width = 149
    Height = 21
    BevelKind = bkFlat
    Style = csOwnerDrawFixed
    ItemHeight = 15
    ItemIndex = 1
    TabOrder = 0
    Text = 'CONTAS ATIVAS'
    OnChange = cbVisualizarChange
    Items.Strings = (
      'TODAS AS CONTAS'
      'CONTAS ATIVAS'
      'CONTAS ENCERRADAS')
  end
  object PopupMenu1: TPopupMenu
    Left = 236
    Top = 166
    object DuplicarRegistro1: TMenuItem
      Caption = 'Duplicar Registro'
      OnClick = DuplicarRegistro1Click
    end
  end
  object qryBancos: TFDQuery
    Connection = BancodeDados.FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      'select * from BANCOS where banco_id=:ID')
    Left = 180
    Top = 204
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryBancosBANCO_ID: TIntegerField
      FieldName = 'BANCO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryBancosBANCO_NOME: TStringField
      FieldName = 'BANCO_NOME'
      Size = 60
    end
    object qryBancosCODIGO_BANCO: TIntegerField
      FieldName = 'CODIGO_BANCO'
    end
    object qryBancosDIG_BANCO: TIntegerField
      FieldName = 'DIG_BANCO'
    end
    object qryBancosAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 60
    end
    object qryBancosDIG_AGENCIA: TStringField
      FieldName = 'DIG_AGENCIA'
      Size = 1
    end
    object qryBancosCONTA_CORRENTE: TStringField
      FieldName = 'CONTA_CORRENTE'
      Size = 60
    end
    object qryBancosDIG_CONTA_CORRENTE: TStringField
      FieldName = 'DIG_CONTA_CORRENTE'
      Size = 1
    end
    object qryBancosCODIGO_CEDENTE: TStringField
      FieldName = 'CODIGO_CEDENTE'
      Size = 60
    end
    object qryBancosDIG_COD_CEDENTE: TStringField
      FieldName = 'DIG_COD_CEDENTE'
      Size = 1
    end
    object qryBancosNOME_CEDENTE: TStringField
      FieldName = 'NOME_CEDENTE'
      Size = 120
    end
    object qryBancosLOGOMARCA: TBlobField
      FieldName = 'LOGOMARCA'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object qryBancosCONVENIO: TIntegerField
      FieldName = 'CONVENIO'
    end
    object qryBancosMENS_CABECALHO: TStringField
      FieldName = 'MENS_CABECALHO'
      Size = 60
    end
    object qryBancosLOCAL_PAGAMENTO: TStringField
      FieldName = 'LOCAL_PAGAMENTO'
      Size = 240
    end
    object qryBancosNOSSO_NUMERO: TIntegerField
      FieldName = 'NOSSO_NUMERO'
    end
    object qryBancosCARTEIRA: TIntegerField
      FieldName = 'CARTEIRA'
    end
    object qryBancosDIAS_TOLERANCIA: TIntegerField
      FieldName = 'DIAS_TOLERANCIA'
    end
    object qryBancosABREV: TStringField
      FieldName = 'ABREV'
      Size = 9
    end
    object qryBancosUSR_CAD: TIntegerField
      FieldName = 'USR_CAD'
    end
    object qryBancosUSUARIO_ID: TIntegerField
      FieldName = 'USUARIO_ID'
    end
    object qryBancosDT_ALTERADO: TDateField
      FieldName = 'DT_ALTERADO'
    end
    object qryBancosLAYOUT: TSmallintField
      FieldName = 'LAYOUT'
    end
    object qryBancosCAMINHO_RETORNO: TStringField
      FieldName = 'CAMINHO_RETORNO'
      Size = 240
    end
    object qryBancosOCULTO: TSmallintField
      FieldName = 'OCULTO'
    end
    object qryBancosCOB_REG: TSmallintField
      FieldName = 'COB_REG'
    end
    object qryBancosFOL_CONTRAT_REM: TStringField
      FieldName = 'FOL_CONTRAT_REM'
      Size = 60
    end
    object qryBancosVAR_CARTEIRA: TIntegerField
      FieldName = 'VAR_CARTEIRA'
    end
    object qryBancosDIAS_PROTESTO: TIntegerField
      FieldName = 'DIAS_PROTESTO'
    end
    object qryBancosDESC_TOL: TSmallintField
      FieldName = 'DESC_TOL'
    end
    object qryBancosCONTRATO: TIntegerField
      FieldName = 'CONTRATO'
    end
    object qryBancosTIPO_CONTA_CORRENTE: TIntegerField
      FieldName = 'TIPO_CONTA_CORRENTE'
    end
    object qryBancosCODIGO_BANCO2: TIntegerField
      FieldName = 'CODIGO_BANCO2'
    end
    object qryBancosN_SEQ_REM: TLargeintField
      FieldName = 'N_SEQ_REM'
    end
    object qryBancosCAMINHO_REMESSA: TStringField
      FieldName = 'CAMINHO_REMESSA'
      Size = 240
    end
    object qryBancosESPECIE_DOC: TStringField
      FieldName = 'ESPECIE_DOC'
      FixedChar = True
      Size = 3
    end
    object qryBancosSAC_AVALISTA: TSmallintField
      FieldName = 'SAC_AVALISTA'
    end
    object qryBancosACEITA_DEB_AUT: TSmallintField
      FieldName = 'ACEITA_DEB_AUT'
    end
    object qryBancosINF_JUROS: TSmallintField
      FieldName = 'INF_JUROS'
    end
    object qryBancosINF_DESC: TSmallintField
      FieldName = 'INF_DESC'
    end
    object qryBancosCONT_ENCERRADA: TSmallintField
      FieldName = 'CONT_ENCERRADA'
    end
    object qryBancosN_SEQ_REM_DEB_AUTO: TLargeintField
      FieldName = 'N_SEQ_REM_DEB_AUTO'
    end
    object qryBancosMENSAGEM_1: TMemoField
      FieldName = 'MENSAGEM_1'
      Origin = 'MENSAGEM_1'
      BlobType = ftMemo
    end
    object qryBancosMENSAGEM_2: TMemoField
      FieldName = 'MENSAGEM_2'
      Origin = 'MENSAGEM_2'
      BlobType = ftMemo
    end
    object qryBancosMENSAGEM_3: TMemoField
      FieldName = 'MENSAGEM_3'
      Origin = 'MENSAGEM_3'
      BlobType = ftMemo
    end
    object qryBancosOBSERVACAO_1: TMemoField
      FieldName = 'OBSERVACAO_1'
      Origin = 'OBSERVACAO_1'
      BlobType = ftMemo
    end
  end
end
