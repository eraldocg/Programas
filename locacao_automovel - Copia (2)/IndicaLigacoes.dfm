object IndicaLigacoesForm: TIndicaLigacoesForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio de Liga'#231#245'es'
  ClientHeight = 316
  ClientWidth = 296
  Color = 7562340
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label19: TLabel
    Left = 7
    Top = 187
    Width = 67
    Height = 14
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Data Inicial:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label20: TLabel
    Left = 19
    Top = 209
    Width = 56
    Height = 14
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Data Final:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lbCod1: TLabel
    Left = 3
    Top = 10
    Width = 40
    Height = 14
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'C'#243'digo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object btF2: TSpeedButton
    Left = 113
    Top = 8
    Width = 18
    Height = 19
    Cursor = crHandPoint
    Caption = 'F2'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -8
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 144
    Width = 67
    Height = 14
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Situa'#231#227'o:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label1: TLabel
    Left = 18
    Top = 165
    Width = 56
    Height = 14
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Tipo:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel
    Left = 84
    Top = 52
    Width = 125
    Height = 21
    Alignment = taRightJustify
    Caption = 'Relat'#243'rio de Liga'#231#245'es'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Franklin Gothic Medium Cond'
    Font.Style = []
    ParentFont = False
  end
  object cbSituacao: TComboBox
    Left = 76
    Top = 138
    Width = 160
    Height = 21
    AutoDropDown = True
    BevelKind = bkFlat
    Style = csOwnerDrawFixed
    Ctl3D = False
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ItemHeight = 15
    ItemIndex = 0
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    Text = 'TODAS'
    Items.Strings = (
      'TODAS'
      'PENDENTE'
      'RESOLVIDO'
      'PARCIAL'
      'N'#195'O ATENDIDO')
  end
  object cbTipo: TComboBox
    Left = 76
    Top = 161
    Width = 160
    Height = 21
    AutoDropDown = True
    BevelKind = bkFlat
    Style = csOwnerDrawFixed
    Ctl3D = False
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ItemHeight = 15
    ItemIndex = 0
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    Text = 'TODOS'
    Items.Strings = (
      'TODOS'
      'SUPORTE LIGOU'
      'CLIENTE LIGOU'
      'WHATSAPP'
      'SMS'
      'VISITA'
      'OUTRO')
  end
  object Dt_Inicial: TSedDateEdit
    Left = 76
    Top = 184
    Width = 93
    Height = 19
    MaxLength = 10
    TabOrder = 2
  end
  object Dt_Final: TSedDateEdit
    Left = 76
    Top = 206
    Width = 93
    Height = 19
    MaxLength = 10
    TabOrder = 3
  end
  object Panel1: TPanel
    Left = 0
    Top = 285
    Width = 296
    Height = 31
    Align = alBottom
    BevelOuter = bvNone
    Color = 7562340
    ParentBackground = False
    TabOrder = 4
    object BtOK: TButton
      Left = 217
      Top = 4
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = '&Visualizar'
      TabOrder = 0
      OnClick = BtOKClick
    end
    object btCancelar: TButton
      Left = 138
      Top = 4
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Cancel = True
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object gbAgrupar: TGroupBox
    Left = 189
    Top = 82
    Width = 103
    Height = 54
    Caption = 'Agrupar'
    ParentShowHint = False
    ShowHint = False
    TabOrder = 5
    object chkAgrup3: TRadioButton
      Left = 10
      Top = 30
      Width = 88
      Height = 17
      Cursor = crHandPoint
      Caption = 'N'#227'o Agrupar'
      Checked = True
      TabOrder = 1
      TabStop = True
    end
    object chkAgrup1: TRadioButton
      Left = 10
      Top = 13
      Width = 66
      Height = 17
      Cursor = crHandPoint
      Caption = 'Situa'#231#227'o'
      Enabled = False
      TabOrder = 0
    end
  end
  object GroupBox2: TGroupBox
    Left = 3
    Top = 232
    Width = 290
    Height = 47
    Caption = 'Modelo'
    ParentShowHint = False
    ShowHint = False
    TabOrder = 6
    object cbxModelo: TComboBox
      Left = 6
      Top = 18
      Width = 278
      Height = 20
      BevelKind = bkFlat
      Style = csOwnerDrawFixed
      Enabled = False
      ItemHeight = 14
      ItemIndex = 0
      TabOrder = 0
      Text = '01. Rela'#231#227'o de Clientes'
      Items.Strings = (
        '01. Rela'#231#227'o de Clientes')
    end
  end
  object EditCodigo: TEdit
    Left = 45
    Top = 8
    Width = 66
    Height = 19
    AutoSize = False
    ReadOnly = True
    TabOrder = 7
  end
  object gbOrdenar: TGroupBox
    Left = 3
    Top = 82
    Width = 183
    Height = 54
    Caption = 'Ordenar'
    ParentShowHint = False
    ShowHint = False
    TabOrder = 8
    object rb1: TRadioButton
      Left = 10
      Top = 13
      Width = 79
      Height = 17
      Cursor = crHandPoint
      Caption = 'Cliente'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 0
    end
    object rb2: TRadioButton
      Left = 10
      Top = 30
      Width = 77
      Height = 17
      Cursor = crHandPoint
      Caption = 'Data cresc'
      Checked = True
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 1
      TabStop = True
    end
  end
  object CsClientes: TFDQuery
    OnCalcFields = CsClientesCalcFields
    Connection = BancodeDados.FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      'select * from CLIENTES')
    Left = 192
    Top = 126
    object CsClientesCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CsClientesNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object CsClientesTOTALIZADO: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'TOTALIZADO'
      Calculated = True
    end
    object CsClientesSUPORTE: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'SUPORTE'
      Calculated = True
    end
    object CsClientesCLIENTE: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'CLIENTE'
      Calculated = True
    end
    object CsClientesWHATSAPP: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'WHATSAPP'
      Calculated = True
    end
    object CsClientesSMS: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'SMS'
      Calculated = True
    end
    object CsClientesFANTASIA2: TStringField
      FieldKind = fkCalculated
      FieldName = 'FANTASIA2'
      Size = 120
      Calculated = True
    end
    object CsClientesVISITA: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'VISITA'
      Calculated = True
    end
    object CsClientesOUTRO: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'OUTRO'
      Calculated = True
    end
    object CsClientesCOBRANCA: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'COBRANCA'
      Calculated = True
    end
  end
  object DsCsClientes: TDataSource
    DataSet = CsClientes
    Left = 258
    Top = 162
  end
  object qryContador: TFDQuery
    Connection = BancodeDados.FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      'select count(LIGACAO_ID) as total from ligacoes')
    Left = 187
    Top = 197
    object qryContadorTOTAL: TIntegerField
      FieldName = 'TOTAL'
      ProviderFlags = []
    end
  end
  object qryC2: TFDQuery
    Connection = BancodeDados.FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      'select count(LIGACAO_ID) as total from ligacoes')
    Left = 250
    Top = 204
    object qryC2TOTAL: TIntegerField
      FieldName = 'TOTAL'
      ProviderFlags = []
    end
  end
end
