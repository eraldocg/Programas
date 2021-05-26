object RelatoriosForm: TRelatoriosForm
  Left = 240
  Top = 195
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rios'
  ClientHeight = 276
  ClientWidth = 390
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image2: TImage
    Left = -2
    Top = 0
    Width = 195
    Height = 250
    AutoSize = True
  end
  object Panel2: TPanel
    Left = 0
    Top = 246
    Width = 390
    Height = 30
    Align = alBottom
    BevelOuter = bvNone
    Color = clSilver
    ParentBackground = False
    TabOrder = 1
    DesignSize = (
      390
      30)
    object BtOK: TButton
      Left = 310
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
      Left = 231
      Top = 3
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object PageControl1: TPageControl
    Left = 126
    Top = 50
    Width = 262
    Height = 193
    ActivePage = TabSheet1
    Style = tsButtons
    TabOrder = 0
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'Geral'
      object chkLigacoes: TRadioButton
        Left = 12
        Top = 14
        Width = 153
        Height = 17
        Cursor = crHandPoint
        Caption = 'Relat'#243'rio de Liga'#231#245'es'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = BtOKClick
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Caixa'
      ImageIndex = 2
      object lbComparativo: TRadioButton
        Left = 10
        Top = 67
        Width = 187
        Height = 17
        Cursor = crHandPoint
        Caption = 'Comparativo de Entradas e Saidas'
        TabOrder = 0
        OnClick = BtOKClick
      end
      object lbSaldoContas: TRadioButton
        Left = 10
        Top = 12
        Width = 109
        Height = 17
        Cursor = crHandPoint
        Caption = 'Saldo de Contas'
        TabOrder = 1
        OnClick = BtOKClick
      end
      object lbDemonstIR: TRadioButton
        Left = 10
        Top = 39
        Width = 175
        Height = 17
        Cursor = crHandPoint
        Caption = 'Demonstrativo de Rendimentos'
        TabOrder = 2
        OnClick = BtOKClick
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Pagar'
      ImageIndex = 1
    end
  end
  object MainMenu1: TMainMenu
    Left = 60
    Top = 58
  end
end
