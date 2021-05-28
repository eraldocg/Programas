object GeraBoletoVeicForm: TGeraBoletoVeicForm
  Left = 411
  Top = 192
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Gerar T'#237'tulos de Loca'#231#227'o'
  ClientHeight = 487
  ClientWidth = 368
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
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Label5: TLabel
    Left = 1
    Top = 68
    Width = 101
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Emiss'#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object BTSimular: TSpeedButton
    Left = 321
    Top = 295
    Width = 19
    Height = 18
    Cursor = crHandPoint
    Caption = '+'
    Font.Charset = BALTIC_CHARSET
    Font.Color = clBlack
    Font.Height = -9
    Font.Name = 'Arial Black'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = BTSimularClick
  end
  object BTApagar: TSpeedButton
    Left = 342
    Top = 295
    Width = 19
    Height = 18
    Cursor = crHandPoint
    Caption = '-'
    Font.Charset = BALTIC_CHARSET
    Font.Color = clBlack
    Font.Height = -9
    Font.Name = 'Arial Black'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = BTApagarClick
  end
  object Label6: TLabel
    Left = 8
    Top = 293
    Width = 285
    Height = 14
    AutoSize = False
    Caption = 'Descri'#231#227'o de Parcela(s):'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel
    Left = 1
    Top = 90
    Width = 101
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Primeiro Venc.:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label11: TLabel
    Left = 8
    Top = 210
    Width = 181
    Height = 14
    Alignment = taRightJustify
    Caption = 'Observa'#231#227'o boleto: (3 linhas no m'#225'x)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 458
    Width = 368
    Height = 29
    Align = alBottom
    BevelOuter = bvNone
    Color = clSilver
    ParentBackground = False
    TabOrder = 5
    ExplicitTop = 608
    object BtOK: TButton
      Left = 291
      Top = 2
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Gravar'
      TabOrder = 0
      OnClick = BtOKClick
    end
    object BtFechar: TButton
      Left = 211
      Top = 2
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Cancel = True
      Caption = '&Fechar'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object EditEmissao: TSedDateEdit
    Left = 103
    Top = 65
    Width = 93
    Height = 20
    MaxLength = 10
    TabOrder = 0
  end
  object DBGrid1: TSedDBGrid
    Left = 0
    Top = 321
    Width = 368
    Height = 137
    Align = alBottom
    DataSource = DTTemp
    FixedColor = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick]
    ParentFont = False
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'PARCELA'
        ReadOnly = True
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VENCIMENTO'
        Width = 73
        Visible = True
      end
      item
        Alignment = taLeftJustify
        Expanded = False
        FieldName = 'VALOR_MENSAL'
        ReadOnly = True
        Width = 80
        Visible = True
      end>
  end
  object EditVencimento: TSedDateEdit
    Left = 103
    Top = 86
    Width = 93
    Height = 20
    MaxLength = 10
    TabOrder = 1
  end
  object GroupBox1: TGroupBox
    Left = 186
    Top = 115
    Width = 173
    Height = 89
    Caption = 'Licen'#231'a'
    TabOrder = 3
    object Label7: TLabel
      Left = 19
      Top = 20
      Width = 51
      Height = 14
      Alignment = taRightJustify
      Caption = 'Valor total:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label8: TLabel
      Left = 12
      Top = 40
      Width = 58
      Height = 14
      Alignment = taRightJustify
      Caption = 'Quantidade:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object EditVlLicenca: TSedCurrency
      Left = 71
      Top = 16
      Width = 78
      Height = 21
      DecimalPlaces = 2
      DisplayFormat = ',0.00'
      AutoSize = False
      TabOrder = 0
    end
    object EditQtdLicenca: TSedCurrency
      Left = 71
      Top = 38
      Width = 78
      Height = 21
      DecimalPlaces = 0
      DisplayFormat = '0'
      Value = 1.000000000000000000
      AutoSize = False
      TabOrder = 1
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 115
    Width = 173
    Height = 89
    Caption = 'Mensalidade'
    TabOrder = 2
    object Label9: TLabel
      Left = 25
      Top = 20
      Width = 55
      Height = 14
      Alignment = taRightJustify
      Caption = 'Parcela R$:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label10: TLabel
      Left = 20
      Top = 65
      Width = 57
      Height = 14
      Caption = 'Parcelas de'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label13: TLabel
      Left = 111
      Top = 65
      Width = 17
      Height = 14
      Alignment = taRightJustify
      Caption = 'At'#233
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label12: TLabel
      Left = 15
      Top = 43
      Width = 65
      Height = 14
      Alignment = taRightJustify
      Caption = 'Desconto R$:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object EditVlMensal: TSedCurrency
      Left = 81
      Top = 16
      Width = 78
      Height = 21
      DecimalPlaces = 2
      DisplayFormat = ',0.00'
      AutoSize = False
      TabOrder = 0
    end
    object EditQtdMensal: TSedCurrency
      Left = 135
      Top = 62
      Width = 24
      Height = 21
      DecimalPlaces = 0
      DisplayFormat = '0'
      Value = 4.000000000000000000
      AutoSize = False
      TabOrder = 3
    end
    object EditQtdMenor: TSedCurrency
      Left = 81
      Top = 62
      Width = 24
      Height = 21
      DecimalPlaces = 0
      DisplayFormat = '0'
      Value = 1.000000000000000000
      AutoSize = False
      TabOrder = 2
    end
    object EditVlDesct: TSedCurrency
      Left = 81
      Top = 39
      Width = 78
      Height = 21
      DecimalPlaces = 2
      DisplayFormat = ',0.00'
      AutoSize = False
      TabOrder = 1
    end
  end
  object memoObs: TMemo
    Left = 8
    Top = 225
    Width = 351
    Height = 67
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 6
  end
  object MainMenu1: TMainMenu
    Left = 114
    Top = 232
    object F21: TMenuItem
      Caption = 'F2'
      ShortCut = 113
      Visible = False
    end
    object F31: TMenuItem
      Caption = 'F3'
      ShortCut = 114
      Visible = False
    end
  end
  object Temp: TClientDataSet
    Aggregates = <>
    Params = <>
    BeforeInsert = TempBeforeInsert
    BeforeDelete = TempBeforeDelete
    AfterDelete = TempAfterDelete
    Left = 30
    Top = 230
    object TempVENCIMENTO: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'VENCIMENTO'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/9999;1;_'
    end
    object TempVALOR_MENSAL: TCurrencyField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR_MENSAL'
      DisplayFormat = ',0.00'
    end
    object TempOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object TempDESCONTO: TCurrencyField
      DisplayLabel = 'Desc(R$)'
      FieldName = 'DESCONTO'
      DisplayFormat = ',0.00'
    end
    object TempPARCELA: TStringField
      DisplayLabel = 'Parcela'
      FieldName = 'PARCELA'
      Size = 7
    end
  end
  object DTTemp: TDataSource
    DataSet = Temp
    Left = 73
    Top = 231
  end
end
