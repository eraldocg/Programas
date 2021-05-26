object CadLoginForm: TCadLoginForm
  Left = 355
  Top = 156
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Usu'#225'rio'
  ClientHeight = 182
  ClientWidth = 365
  Color = clWhite
  Ctl3D = False
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Label8: TLabel
    Left = 12
    Top = 99
    Width = 66
    Height = 14
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Senha:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 12
    Top = 77
    Width = 66
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Descri'#231#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label1: TLabel
    Left = 8
    Top = 121
    Width = 66
    Height = 14
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'N'#237'vel:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 151
    Width = 365
    Height = 31
    Align = alBottom
    BevelOuter = bvNone
    Color = clSilver
    ParentBackground = False
    TabOrder = 4
    object DBText5: TDBText
      Left = 52
      Top = 9
      Width = 43
      Height = 14
      AutoSize = True
      DataField = 'LOGIN_ID'
      DataSource = BancodeDados.dsLogin
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 6
      Top = 9
      Width = 42
      Height = 14
      Caption = 'C'#243'digo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BtInserir: TButton
      Left = 283
      Top = 4
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = '&Gravar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BtInserirClick
    end
    object btCancelar: TButton
      Left = 202
      Top = 4
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Cancel = True
      Caption = '&Cancelar'
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
  object EditDescricao: TDBEdit
    Left = 79
    Top = 75
    Width = 278
    Height = 20
    AutoSelect = False
    DataField = 'LOGIN'
    DataSource = BancodeDados.dsLogin
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object DBCheckBox1: TDBCheckBox
    Left = 46
    Top = 57
    Width = 46
    Height = 17
    Alignment = taLeftJustify
    Caption = 'Ativo?'
    DataField = 'ATIVO'
    DataSource = BancodeDados.dsLogin
    TabOrder = 0
    ValueChecked = '1'
    ValueUnchecked = '0'
  end
  object EditNivel: TSedDBComboBox
    Left = 79
    Top = 118
    Width = 190
    Height = 22
    Style = csOwnerDrawFixed
    BevelKind = bkFlat
    DataField = 'NIVEL'
    DataSource = BancodeDados.dsLogin
    Items.Strings = (
      'Usu'#225'rio'
      'Supervisor'
      'Administrador')
    Values.Strings = (
      '0'
      '1'
      '2')
    TabOrder = 3
  end
  object EditSenha: TEdit
    Left = 79
    Top = 96
    Width = 278
    Height = 20
    PasswordChar = '*'
    TabOrder = 2
    Text = 'EditSenha'
    OnChange = EditSenhaChange
  end
end
