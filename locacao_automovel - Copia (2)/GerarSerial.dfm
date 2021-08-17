object GerarSerialForm: TGerarSerialForm
  Left = 382
  Top = 182
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Gera'#231#227'o de Serial'
  ClientHeight = 518
  ClientWidth = 326
  Color = clSilver
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
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel
    Left = 0
    Top = 487
    Width = 326
    Height = 31
    Align = alBottom
    BevelOuter = bvNone
    Color = clGray
    ParentBackground = False
    TabOrder = 3
    DesignSize = (
      326
      31)
    object btFechar: TSedButton
      Left = 168
      Top = 4
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = '&Fechar'
      TabOrder = 1
      OnClick = btFecharClick
    end
    object btGerar: TSedButton
      Left = 247
      Top = 4
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = '&Gerar <F11>'
      TabOrder = 0
      OnClick = btGerarClick
    end
  end
  object GroupBox1: TGroupBox
    Left = 5
    Top = 171
    Width = 318
    Height = 245
    Caption = 'Op'#231#245'es'
    TabOrder = 1
    object Label5: TLabel
      Left = 8
      Top = 21
      Width = 301
      Height = 15
      AutoSize = False
      Caption = 'Recursos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel2: TBevel
      Left = 8
      Top = 37
      Width = 301
      Height = 2
    end
    object ChkLimitarLicenca: TCheckBox
      Left = 14
      Top = 196
      Width = 91
      Height = 17
      Cursor = crHandPoint
      Caption = 'Limitar licen'#231'a.'
      Checked = True
      Enabled = False
      State = cbChecked
      TabOrder = 9
      OnClick = ChkLimitarLicencaClick
    end
    object ChkCursosRegular: TCheckBox
      Left = 14
      Top = 48
      Width = 291
      Height = 17
      Cursor = crHandPoint
      Caption = 'Incluir cursos regulares (Infantil, Fundamental e M'#233'dio).'
      Checked = True
      State = cbChecked
      TabOrder = 0
    end
    object ChkOutrosCursos: TCheckBox
      Left = 14
      Top = 69
      Width = 291
      Height = 17
      Cursor = crHandPoint
      Caption = 'Incluir outros cursos (Cursinho, idiomas, etc).'
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
    object ChkLimitarBanco: TCheckBox
      Left = 14
      Top = 153
      Width = 200
      Height = 17
      Cursor = crHandPoint
      Caption = 'Limitar apenas um banco financeiro.'
      TabOrder = 5
    end
    object ChkLimitarUnid: TCheckBox
      Left = 14
      Top = 132
      Width = 291
      Height = 17
      Cursor = crHandPoint
      Caption = 'Limitar apenas uma unidade escolar.'
      TabOrder = 4
    end
    object ChkLimitarNumComp: TCheckBox
      Left = 14
      Top = 174
      Width = 200
      Height = 17
      Cursor = crHandPoint
      Caption = 'Limitar por n'#250'mero de computadores.'
      TabOrder = 6
      OnClick = ChkLimitarNumCompClick
    end
    object EditDataLicenca: TSedDateEdit
      Left = 105
      Top = 193
      Width = 88
      Height = 20
      Enabled = False
      MaxLength = 10
      TabOrder = 10
      Visible = False
      OnExit = EditDataLicencaExit
    end
    object EditQtdComput: TSedCurrency
      Left = 213
      Top = 171
      Width = 36
      Height = 20
      DecimalPlaces = 2
      DisplayFormat = '0'
      Value = 20.000000000000000000
      Enabled = False
      ReadOnly = True
      TabOrder = 7
      Visible = False
    end
    object btLimiteComput: TSpinButton
      Left = 251
      Top = 171
      Width = 15
      Height = 20
      Cursor = crHandPoint
      Ctl3D = False
      DownGlyph.Data = {
        0E010000424D0E01000000000000360000002800000009000000060000000100
        200000000000D800000000000000000000000000000000000000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000008080000080800000808000000000000080800000808000008080000080
        8000008080000080800000808000000000000000000000000000008080000080
        8000008080000080800000808000000000000000000000000000000000000000
        0000008080000080800000808000000000000000000000000000000000000000
        0000000000000000000000808000008080000080800000808000008080000080
        800000808000008080000080800000808000}
      Enabled = False
      ParentCtl3D = False
      TabOrder = 8
      UpGlyph.Data = {
        0E010000424D0E01000000000000360000002800000009000000060000000100
        200000000000D800000000000000000000000000000000000000008080000080
        8000008080000080800000808000008080000080800000808000008080000080
        8000000000000000000000000000000000000000000000000000000000000080
        8000008080000080800000000000000000000000000000000000000000000080
        8000008080000080800000808000008080000000000000000000000000000080
        8000008080000080800000808000008080000080800000808000000000000080
        8000008080000080800000808000008080000080800000808000008080000080
        800000808000008080000080800000808000}
      Visible = False
      OnDownClick = btLimiteComputDownClick
      OnUpClick = btLimiteComputUpClick
    end
    object ChkGerarCenso: TCheckBox
      Left = 14
      Top = 111
      Width = 291
      Height = 17
      Cursor = crHandPoint
      Caption = 'Incluir o Censo Escolar.'
      Checked = True
      State = cbChecked
      TabOrder = 3
    end
    object ChkReservas: TCheckBox
      Left = 14
      Top = 90
      Width = 291
      Height = 17
      Cursor = crHandPoint
      Caption = 'Incluir Reservas.'
      Checked = True
      State = cbChecked
      TabOrder = 2
    end
  end
  object GroupBox2: TGroupBox
    Left = 5
    Top = 416
    Width = 318
    Height = 66
    Caption = 'Serial'
    TabOrder = 2
    object EditCodSerial: TDBMemo
      Left = 6
      Top = 12
      Width = 307
      Height = 49
      BorderStyle = bsNone
      Color = clSilver
      DataField = 'SERIAL'
      DataSource = BancodeDados.DsSerial
      ReadOnly = True
      TabOrder = 0
    end
  end
  object GroupBox3: TGroupBox
    Left = 5
    Top = 1
    Width = 318
    Height = 170
    Caption = 'Composi'#231#227'o'
    TabOrder = 0
    object Bevel1: TBevel
      Left = 8
      Top = 32
      Width = 301
      Height = 2
    end
    object Label4: TLabel
      Left = 8
      Top = 16
      Width = 301
      Height = 15
      AutoSize = False
      Caption = 'M'#243'dulos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel3: TBevel
      Left = 9
      Top = 121
      Width = 301
      Height = 2
    end
    object chkAlmoxarifado: TCheckBox
      Left = 14
      Top = 41
      Width = 101
      Height = 17
      Cursor = crHandPoint
      Caption = 'Almoxarifado'
      Checked = True
      State = cbChecked
      TabOrder = 0
    end
    object chkBiblioteca: TCheckBox
      Left = 14
      Top = 60
      Width = 101
      Height = 17
      Cursor = crHandPoint
      Caption = 'Biblioteca'
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
    object chkPagar: TCheckBox
      Left = 14
      Top = 79
      Width = 101
      Height = 17
      Cursor = crHandPoint
      Caption = 'Contas a Pagar'
      Checked = True
      State = cbChecked
      TabOrder = 2
    end
    object chkMatriculas: TCheckBox
      Left = 14
      Top = 99
      Width = 101
      Height = 17
      Cursor = crHandPoint
      Caption = 'Matr'#237'culas'
      Checked = True
      Enabled = False
      State = cbChecked
      TabOrder = 3
    end
    object chkNotas: TCheckBox
      Left = 158
      Top = 41
      Width = 101
      Height = 17
      Cursor = crHandPoint
      Caption = 'Notas'
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
    object chkHistoricos: TCheckBox
      Left = 158
      Top = 60
      Width = 101
      Height = 17
      Cursor = crHandPoint
      Caption = 'Hist'#243'ricos'
      Checked = True
      State = cbChecked
      TabOrder = 5
    end
    object chkTesouraria: TCheckBox
      Left = 158
      Top = 79
      Width = 101
      Height = 17
      Cursor = crHandPoint
      Caption = 'Tesouraria'
      Checked = True
      State = cbChecked
      TabOrder = 6
    end
    object chkRecepcao: TCheckBox
      Left = 158
      Top = 99
      Width = 101
      Height = 17
      Cursor = crHandPoint
      Caption = 'Recep'#231#227'o'
      Checked = True
      State = cbChecked
      TabOrder = 7
    end
    object chkAcesso: TCheckBox
      Left = 14
      Top = 126
      Width = 101
      Height = 17
      Cursor = crHandPoint
      Caption = 'Acesso'
      TabOrder = 8
    end
    object chkLoja: TCheckBox
      Left = 158
      Top = 126
      Width = 139
      Height = 17
      Cursor = crHandPoint
      Caption = 'Loja de Conveni'#234'ncia'
      TabOrder = 10
    end
    object chkGabarito: TCheckBox
      Left = 14
      Top = 145
      Width = 101
      Height = 17
      Cursor = crHandPoint
      Caption = 'Gabarito'
      TabOrder = 9
    end
    object ChkHorario: TCheckBox
      Left = 158
      Top = 145
      Width = 139
      Height = 17
      Cursor = crHandPoint
      Caption = 'Hor'#225'rio de Aulas'
      Enabled = False
      TabOrder = 11
    end
  end
  object MainMenu1: TMainMenu
    Left = 264
    Top = 9
    object F111: TMenuItem
      Caption = 'F11'
      ShortCut = 122
      Visible = False
      OnClick = btGerarClick
    end
  end
end
