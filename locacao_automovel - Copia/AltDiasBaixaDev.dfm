object AltDiasBaixaDevForm: TAltDiasBaixaDevForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Altera os Dias para Baixa/Devolu'#231#227'o'
  ClientHeight = 169
  ClientWidth = 303
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 9
    Top = 34
    Width = 112
    Height = 14
    Alignment = taRightJustify
    Caption = 'N.'#186' de Dias para Baixa:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object cbDiasBaixa: TComboBox
    Left = 124
    Top = 30
    Width = 80
    Height = 22
    AutoDropDown = True
    BevelInner = bvLowered
    BevelKind = bkFlat
    Style = csOwnerDrawFixed
    ItemIndex = 0
    TabOrder = 0
    Text = '1'
    Items.Strings = (
      '1'
      '2'
      '3'
      '4'
      '5'
      '6'
      '7'
      '8'
      '9'
      '10'
      '11'
      '12'
      '13'
      '14'
      '15'
      '16'
      '17'
      '18'
      '19'
      '20'
      '21'
      '22'
      '23'
      '24'
      '25'
      '26'
      '27'
      '28'
      '29'
      '30'
      '31'
      '32'
      '33'
      '34'
      '35'
      '36'
      '37'
      '38'
      '39'
      '40'
      '41'
      '42'
      '43'
      '44'
      '45'
      '46'
      '47'
      '48'
      '49'
      '50'
      '51'
      '52'
      '53'
      '54'
      '55'
      '56'
      '57'
      '58'
      '59'
      '60'
      '61'
      '62'
      '63'
      '64'
      '65'
      '66'
      '67'
      '68'
      '69'
      '70'
      '71'
      '72'
      '73'
      '74'
      '75'
      '76'
      '77'
      '78'
      '79'
      '80'
      '81'
      '82'
      '83'
      '84'
      '85'
      '86'
      '87'
      '88'
      '89'
      '90')
  end
  object Panel1: TPanel
    Left = 0
    Top = 140
    Width = 303
    Height = 29
    Align = alBottom
    BevelOuter = bvNone
    Color = clGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    object BtOk: TButton
      Left = 217
      Top = 1
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = '&Executar'
      ModalResult = 1
      TabOrder = 0
    end
    object BtCancelar: TButton
      Left = 138
      Top = 1
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Cancel = True
      Caption = '&Fechar'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 75
    Width = 285
    Height = 56
    Caption = 'Op'#231#245'es'
    TabOrder = 2
    object chkAplicarSemDias: TCheckBox
      Left = 17
      Top = 22
      Width = 265
      Height = 19
      Cursor = crHandPoint
      Caption = 'Aplicar apenas aos boletos SEM DIAS P/ BAIXAR?'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
end
