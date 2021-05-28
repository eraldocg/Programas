object RecBolForm: TRecBolForm
  Left = 284
  Top = 328
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'T'#237'tulo(s) a receber'
  ClientHeight = 266
  ClientWidth = 754
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TSedDBGrid
    Left = 0
    Top = 0
    Width = 754
    Height = 205
    Align = alClient
    DataSource = BancodeDados.dsRecBol
    FixedColor = clGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWhite
    TitleFont.Height = -11
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    OnColExit = DBGrid1ColExit
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnKeyDown = DBGrid1KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'BOLETO_ID'
        ReadOnly = True
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        ReadOnly = True
        Width = 159
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PARCELA'
        ReadOnly = True
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VENCIMENTO'
        ReadOnly = True
        Width = 56
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DIAS'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_INTEGRAL'
        ReadOnly = True
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCONTO'
        ReadOnly = True
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ACRESCIMO'
        ReadOnly = True
        Width = 57
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CREDITO'
        ReadOnly = True
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MULTA'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsItalic]
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'JUROS'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsItalic]
        Width = 57
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_APAGAR'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_PAGO'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsItalic]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SITUACAO_BOLETO'
        ReadOnly = True
        Width = 95
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 205
    Width = 754
    Height = 61
    Align = alBottom
    BevelOuter = bvNone
    Color = clSilver
    ParentBackground = False
    TabOrder = 1
    DesignSize = (
      754
      61)
    object lbDtReceb: TLabel
      Left = 6
      Top = 24
      Width = 128
      Height = 13
      Caption = 'Data de Recebimento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbTotalCreditos: TLabel
      Left = 374
      Top = 32
      Width = 26
      Height = 13
      Alignment = taRightJustify
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbTotalAPagar: TLabel
      Left = 578
      Top = 14
      Width = 26
      Height = 13
      Alignment = taRightJustify
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 214
      Top = 32
      Width = 102
      Height = 13
      Caption = 'Total de Cr'#233'ditos:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 418
      Top = 14
      Width = 82
      Height = 13
      Caption = 'Total a Pagar:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbVlTotal: TLabel
      Left = 374
      Top = 14
      Width = 26
      Height = 13
      Alignment = taRightJustify
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 214
      Top = 14
      Width = 67
      Height = 13
      Caption = 'Valor Total:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbTotalPago: TLabel
      Left = 578
      Top = 32
      Width = 26
      Height = 13
      Alignment = taRightJustify
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 418
      Top = 32
      Width = 67
      Height = 13
      Caption = 'Total Pago:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btOk: TButton
      Left = 654
      Top = 35
      Width = 97
      Height = 25
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = '&Ok <F5>'
      TabOrder = 0
      OnClick = btOkClick
    end
    object btOriginal: TButton
      Left = 654
      Top = 5
      Width = 97
      Height = 25
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = '&Valores Originais'
      TabOrder = 1
      OnClick = btOriginalClick
    end
  end
  object MainMenu1: TMainMenu
    Left = 134
    Top = 52
    object F51: TMenuItem
      Caption = 'F5'
      ShortCut = 116
      Visible = False
      OnClick = btOkClick
    end
  end
end
