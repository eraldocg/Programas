object IndicaRelComparativoForm: TIndicaRelComparativoForm
  Left = 404
  Top = 366
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio comparativo de entradas e sa'#237'das'
  ClientHeight = 143
  ClientWidth = 251
  Color = 7562340
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 73
    Top = 44
    Width = 55
    Height = 13
    Alignment = taRightJustify
    Caption = 'Data inicial:'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label2: TLabel
    Left = 80
    Top = 68
    Width = 48
    Height = 13
    Alignment = taRightJustify
    Caption = 'Data final:'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label3: TLabel
    Left = 28
    Top = 8
    Width = 195
    Height = 21
    Alignment = taRightJustify
    Caption = 'Comparativo de entradas e sa'#237'das'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Franklin Gothic Medium Cond'
    Font.Style = []
    ParentFont = False
  end
  object DtIni: TSedDateEdit
    Left = 134
    Top = 40
    Width = 109
    Height = 19
    MaxLength = 10
    TabOrder = 0
  end
  object DtFim: TSedDateEdit
    Left = 134
    Top = 64
    Width = 109
    Height = 19
    MaxLength = 10
    TabOrder = 1
  end
  object Panel2: TPanel
    Left = 0
    Top = 113
    Width = 251
    Height = 30
    Align = alBottom
    BevelOuter = bvNone
    Color = 7562340
    ParentBackground = False
    TabOrder = 2
    DesignSize = (
      251
      30)
    object BtOK: TButton
      Left = 173
      Top = 3
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = '&Ok'
      TabOrder = 0
      OnClick = BtOKClick
    end
    object BtCancelar: TButton
      Left = 94
      Top = 3
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Cancel = True
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object MainMenu1: TMainMenu
    Left = 24
    Top = 88
  end
end
