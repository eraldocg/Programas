object ImprimirContratoForm: TImprimirContratoForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Imprimir'
  ClientHeight = 259
  ClientWidth = 365
  Color = clSilver
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 14
  object lbCod1: TLabel
    Left = 12
    Top = 40
    Width = 40
    Height = 14
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'C'#243'digo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object LbNome: TLabel
    Left = 143
    Top = 38
    Width = 201
    Height = 33
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    WordWrap = True
  end
  object btF2: TSpeedButton
    Left = 122
    Top = 38
    Width = 18
    Height = 19
    Cursor = crHandPoint
    Caption = 'F2'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -8
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 228
    Width = 365
    Height = 31
    Align = alBottom
    BevelOuter = bvNone
    Color = clGray
    ParentBackground = False
    TabOrder = 0
    object BtImprimir: TButton
      Left = 281
      Top = 2
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = '&Visualizar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BtImprimirClick
    end
    object btCancelar: TButton
      Left = 200
      Top = 2
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Cancel = True
      Caption = 'Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ModalResult = 2
      ParentFont = False
      TabOrder = 1
    end
  end
  object gbOpcao: TGroupBox
    Left = 54
    Top = 70
    Width = 290
    Height = 42
    Caption = 'Filtro'
    ParentShowHint = False
    ShowHint = False
    TabOrder = 1
    object rbCli: TRadioButton
      Left = 10
      Top = 17
      Width = 71
      Height = 17
      Cursor = crHandPoint
      Caption = 'Cliente'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
  end
  object EditCodigo: TSedCurrency
    Left = 54
    Top = 38
    Width = 66
    Height = 19
    DecimalPlaces = 2
    DisplayFormat = '000000'
    AutoSize = False
    ReadOnly = True
    TabOrder = 2
  end
  object GroupBox1: TGroupBox
    Left = 54
    Top = 126
    Width = 290
    Height = 79
    Caption = 'Modelo de Documento'
    ParentShowHint = False
    ShowHint = False
    TabOrder = 3
    object chkContrato: TRadioButton
      Left = 10
      Top = 23
      Width = 113
      Height = 17
      Caption = 'Contrato'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
  end
end