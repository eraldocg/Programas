object IndicaDemonstIRForm: TIndicaDemonstIRForm
  Left = 624
  Top = 270
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Demonstra'#231#227'o de Redimentos'
  ClientHeight = 271
  ClientWidth = 388
  Color = 7562340
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 70
    Top = 44
    Width = 56
    Height = 13
    Alignment = taRightJustify
    Caption = 'Data Inicial:'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label2: TLabel
    Left = 75
    Top = 66
    Width = 51
    Height = 13
    Alignment = taRightJustify
    Caption = 'Data Final:'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label3: TLabel
    Left = 95
    Top = 88
    Width = 31
    Height = 13
    Alignment = taRightJustify
    Caption = 'Conta:'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label4: TLabel
    Left = 100
    Top = 114
    Width = 26
    Height = 13
    Alignment = taRightJustify
    Caption = 'Data:'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label5: TLabel
    Left = 17
    Top = 12
    Width = 180
    Height = 21
    Alignment = taRightJustify
    Caption = 'Demonstra'#231#227'o de Rendimentos'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Franklin Gothic Medium Cond'
    Font.Style = []
    ParentFont = False
  end
  object dtIni: TSedDateEdit
    Left = 130
    Top = 42
    Width = 101
    Height = 19
    MaxLength = 10
    TabOrder = 0
  end
  object dtFim: TSedDateEdit
    Left = 130
    Top = 64
    Width = 101
    Height = 19
    MaxLength = 10
    TabOrder = 1
  end
  object EditConta: TDBLookupComboBox
    Left = 130
    Top = 86
    Width = 245
    Height = 19
    KeyField = 'CONTA_ID'
    ListField = 'CONTA'
    ListSource = DTTipoContas
    TabOrder = 2
  end
  object Panel2: TPanel
    Left = 0
    Top = 241
    Width = 388
    Height = 30
    Align = alBottom
    BevelOuter = bvNone
    Color = 7562340
    ParentBackground = False
    TabOrder = 7
    object BtOK: TButton
      Left = 310
      Top = 3
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = '&Ok'
      TabOrder = 0
      OnClick = BtOKClick
    end
    object BtCancelar: TButton
      Left = 231
      Top = 3
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object chkBol: TCheckBox
    Left = 130
    Top = 136
    Width = 159
    Height = 17
    Cursor = crHandPoint
    Caption = 'Apenas boletos de cobran'#231'a'
    TabOrder = 4
  end
  object rgOrdenar: TRadioGroup
    Left = 131
    Top = 186
    Width = 245
    Height = 51
    Caption = 'Ordenar'
    Columns = 3
    ItemIndex = 2
    Items.Strings = (
      'Nome'
      '1'#170' Data'
      #218'lt. Data')
    TabOrder = 6
  end
  object chkAvulso: TCheckBox
    Left = 130
    Top = 158
    Width = 135
    Height = 17
    Cursor = crHandPoint
    Caption = 'Incluir entradas avulsas'
    TabOrder = 5
  end
  object cbData: TComboBox
    Left = 130
    Top = 110
    Width = 139
    Height = 22
    BevelKind = bkFlat
    Style = csOwnerDrawFixed
    ItemIndex = 1
    TabOrder = 3
    Text = 'Cr'#233'dito'
    Items.Strings = (
      'Recebimento'
      'Cr'#233'dito')
  end
  object DTTipoContas: TDataSource
    DataSet = TipoContas
    Left = 266
    Top = 20
  end
  object TipoContas: TFDQuery
    Connection = BancodeDados.FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      'select * from TIPO_CONTAS order by CONTA')
    Left = 334
    Top = 20
    object TipoContasCONTA_ID: TIntegerField
      FieldName = 'CONTA_ID'
      Origin = 'CONTA_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TipoContasCONTA: TStringField
      FieldName = 'CONTA'
      Origin = 'CONTA'
      Size = 60
    end
    object TipoContasABREV: TStringField
      FieldName = 'ABREV'
      Origin = 'ABREV'
      Size = 9
    end
    object TipoContasOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      BlobType = ftMemo
    end
    object TipoContasREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
      Size = 13
    end
    object TipoContasUSR_CAD: TIntegerField
      FieldName = 'USR_CAD'
      Origin = 'USR_CAD'
    end
    object TipoContasUSUARIO_ID: TIntegerField
      FieldName = 'USUARIO_ID'
      Origin = 'USUARIO_ID'
    end
    object TipoContasDT_ALTERADO: TDateField
      FieldName = 'DT_ALTERADO'
      Origin = 'DT_ALTERADO'
    end
  end
end
