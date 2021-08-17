object IndicaClientesServicosForm: TIndicaClientesServicosForm
  Left = 472
  Top = 101
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Rela'#231#227'o de Clientes e Servi'#231'os'
  ClientHeight = 368
  ClientWidth = 298
  Color = 7562340
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  KeyPreview = True
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object lbCod1: TLabel
    Left = 3
    Top = 10
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
  object btF2: TSpeedButton
    Left = 113
    Top = 8
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
    OnClick = btF2Click
  end
  object LbNome: TLabel
    Left = 134
    Top = 6
    Width = 159
    Height = 33
    AutoSize = False
    Color = 7562340
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    WordWrap = True
  end
  object Label1: TLabel
    Left = 157
    Top = 8
    Width = 109
    Height = 21
    Alignment = taRightJustify
    Caption = 'Clientes e Servi'#231'os'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Franklin Gothic Medium Cond'
    Font.Style = []
    ParentFont = False
  end
  object GroupBox2: TGroupBox
    Left = 3
    Top = 279
    Width = 290
    Height = 47
    Caption = 'Modelo'
    ParentShowHint = False
    ShowHint = False
    TabOrder = 5
    object cbxModelo: TComboBox
      Left = 6
      Top = 18
      Width = 278
      Height = 20
      BevelKind = bkFlat
      Style = csOwnerDrawFixed
      ItemHeight = 14
      ItemIndex = 0
      TabOrder = 0
      Text = '01. Rela'#231#227'o de Clientes c/ Servi'#231'os'
      Items.Strings = (
        '01. Rela'#231#227'o de Clientes c/ Servi'#231'os')
    end
  end
  object gbOpcoes: TGroupBox
    Left = 3
    Top = 138
    Width = 290
    Height = 141
    Caption = 'Op'#231#245'es'
    ParentShowHint = False
    ShowHint = False
    TabOrder = 4
    object Label2: TLabel
      Left = 25
      Top = 27
      Width = 45
      Height = 14
      Alignment = taRightJustify
      Caption = 'Situa'#231#227'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object cbSituacao: TComboBox
      Left = 72
      Top = 23
      Width = 96
      Height = 22
      AutoDropDown = True
      BevelInner = bvLowered
      BevelKind = bkFlat
      Style = csOwnerDrawFixed
      ItemIndex = 1
      TabOrder = 0
      Text = 'ATIVO'
      Items.Strings = (
        'TODOS'
        'ATIVO'
        'INATIVO')
    end
    object chkConfiavel: TCheckBox
      Left = 72
      Top = 51
      Width = 147
      Height = 17
      Cursor = crHandPoint
      BiDiMode = bdLeftToRight
      Caption = 'Confi'#225'vel?'
      ParentBiDiMode = False
      TabOrder = 1
    end
    object chkFaturaNotas: TCheckBox
      Left = 72
      Top = 68
      Width = 147
      Height = 17
      Cursor = crHandPoint
      Caption = 'Fatura nota?'
      TabOrder = 2
    end
    object chkEntrBoletos: TCheckBox
      Left = 72
      Top = 86
      Width = 147
      Height = 17
      Cursor = crHandPoint
      Caption = 'Entregou boletos?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object chkQuebrar: TCheckBox
      Left = 72
      Top = 104
      Width = 147
      Height = 17
      Cursor = crHandPoint
      Caption = 'Quebrar p'#225'gina?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
  end
  object gbAgrupar: TGroupBox
    Left = 190
    Top = 82
    Width = 103
    Height = 54
    Caption = 'Agrupar'
    ParentShowHint = False
    ShowHint = False
    TabOrder = 3
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
      Caption = 'Cidade'
      TabOrder = 0
    end
  end
  object gbOrdenar: TGroupBox
    Left = 3
    Top = 82
    Width = 183
    Height = 54
    Caption = 'Ordenar'
    ParentShowHint = False
    ShowHint = False
    TabOrder = 2
    object rb1: TRadioButton
      Left = 10
      Top = 13
      Width = 64
      Height = 17
      Cursor = crHandPoint
      Caption = 'C'#243'digo'
      TabOrder = 0
    end
    object rb2: TRadioButton
      Left = 10
      Top = 30
      Width = 64
      Height = 17
      Cursor = crHandPoint
      Caption = 'Nome'
      Checked = True
      TabOrder = 1
      TabStop = True
    end
  end
  object gbOpcao: TGroupBox
    Left = 3
    Top = 30
    Width = 290
    Height = 50
    Caption = 'Filtro'
    ParentShowHint = False
    ShowHint = False
    TabOrder = 1
    object rbServ: TRadioButton
      Left = 10
      Top = 21
      Width = 71
      Height = 17
      Cursor = crHandPoint
      Caption = 'Servi'#231'o'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = rbTurmaClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 337
    Width = 298
    Height = 31
    Align = alBottom
    BevelOuter = bvNone
    Color = 7562340
    ParentBackground = False
    TabOrder = 6
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
  object EditCodigo: TEdit
    Left = 45
    Top = 8
    Width = 66
    Height = 19
    AutoSize = False
    ReadOnly = True
    TabOrder = 0
  end
  object MainMenu1: TMainMenu
    Left = 220
    Top = 194
    object F21: TMenuItem
      Caption = 'F2'
      ShortCut = 113
      Visible = False
      OnClick = btF2Click
    end
  end
end
