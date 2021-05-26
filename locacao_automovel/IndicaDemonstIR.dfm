object IndicaDemonstIRForm: TIndicaDemonstIRForm
  Left = 624
  Top = 270
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Demonstra'#231#227'o de Redimentos'
  ClientHeight = 271
  ClientWidth = 388
  Color = clWhite
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
    Left = 74
    Top = 30
    Width = 56
    Height = 13
    Alignment = taRightJustify
    Caption = 'Data Inicial:'
  end
  object Label2: TLabel
    Left = 79
    Top = 52
    Width = 51
    Height = 13
    Alignment = taRightJustify
    Caption = 'Data Final:'
  end
  object Label3: TLabel
    Left = 99
    Top = 74
    Width = 31
    Height = 13
    Alignment = taRightJustify
    Caption = 'Conta:'
  end
  object Label4: TLabel
    Left = 104
    Top = 100
    Width = 26
    Height = 13
    Alignment = taRightJustify
    Caption = 'Data:'
  end
  object dtIni: TSedDateEdit
    Left = 134
    Top = 28
    Width = 101
    Height = 19
    MaxLength = 10
    TabOrder = 0
  end
  object dtFim: TSedDateEdit
    Left = 134
    Top = 50
    Width = 101
    Height = 19
    MaxLength = 10
    TabOrder = 1
  end
  object EditConta: TDBLookupComboBox
    Left = 134
    Top = 72
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
    Color = clSilver
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
    Left = 134
    Top = 122
    Width = 159
    Height = 17
    Cursor = crHandPoint
    Caption = 'Apenas boletos de cobran'#231'a'
    TabOrder = 4
  end
  object rgOrdenar: TRadioGroup
    Left = 134
    Top = 172
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
    Left = 134
    Top = 144
    Width = 135
    Height = 17
    Cursor = crHandPoint
    Caption = 'Incluir entradas avulsas'
    TabOrder = 5
  end
  object cbData: TComboBox
    Left = 134
    Top = 96
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
