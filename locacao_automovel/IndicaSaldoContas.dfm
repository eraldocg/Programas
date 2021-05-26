object IndicaSaldoContasForm: TIndicaSaldoContasForm
  Left = 318
  Top = 305
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Saldo de Contas'
  ClientHeight = 168
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
    Left = 80
    Top = 66
    Width = 56
    Height = 13
    Alignment = taRightJustify
    Caption = 'Data Inicial:'
  end
  object Label2: TLabel
    Left = 85
    Top = 90
    Width = 51
    Height = 13
    Alignment = taRightJustify
    Caption = 'Data Final:'
  end
  object Label3: TLabel
    Left = 105
    Top = 110
    Width = 31
    Height = 13
    Alignment = taRightJustify
    Caption = 'Conta:'
  end
  object dtIni: TSedDateEdit
    Left = 140
    Top = 64
    Width = 101
    Height = 19
    MaxLength = 10
    TabOrder = 0
  end
  object dtFim: TSedDateEdit
    Left = 140
    Top = 86
    Width = 101
    Height = 19
    MaxLength = 10
    TabOrder = 1
  end
  object EditConta: TDBLookupComboBox
    Left = 140
    Top = 108
    Width = 245
    Height = 19
    KeyField = 'CONTA_ID'
    ListField = 'CONTA'
    ListSource = DTTipoContas
    TabOrder = 2
  end
  object Panel2: TPanel
    Left = 0
    Top = 138
    Width = 388
    Height = 30
    Align = alBottom
    BevelOuter = bvNone
    Color = clSilver
    ParentBackground = False
    TabOrder = 3
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
  object DTTipoContas: TDataSource
    DataSet = TipoContas
    Left = 306
    Top = 30
  end
  object TipoContas: TFDQuery
    Connection = BancodeDados.FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      'SELECT * FROM tipo_contas ORDER BY conta')
    Left = 336
    Top = 20
    object TipoContasCONTA_ID: TIntegerField
      FieldName = 'CONTA_ID'
      Required = True
    end
    object TipoContasOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftMemo
    end
    object TipoContasUSR_CAD: TIntegerField
      FieldName = 'USR_CAD'
    end
    object TipoContasUSUARIO_ID: TIntegerField
      FieldName = 'USUARIO_ID'
    end
    object TipoContasDT_ALTERADO: TDateField
      FieldName = 'DT_ALTERADO'
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
    object TipoContasREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
      Size = 13
    end
  end
end
