object CadLigacoesForm: TCadLigacoesForm
  Left = 357
  Top = 356
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Controle de Liga'#231#245'es'
  ClientHeight = 364
  ClientWidth = 364
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
  object Label4: TLabel
    Left = 17
    Top = 173
    Width = 63
    Height = 14
    Alignment = taRightJustify
    Caption = 'Observa'#231#227'o:'
  end
  object Label12: TLabel
    Left = 12
    Top = 29
    Width = 68
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Data:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 40
    Top = 111
    Width = 40
    Height = 14
    Alignment = taRightJustify
    Caption = 'Contato:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label29: TLabel
    Left = 45
    Top = 69
    Width = 35
    Height = 14
    Alignment = taRightJustify
    Caption = 'Cliente:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 35
    Top = 133
    Width = 45
    Height = 14
    Alignment = taRightJustify
    Caption = 'Situa'#231#227'o:'
  end
  object Label1: TLabel
    Left = 57
    Top = 49
    Width = 23
    Height = 14
    Alignment = taRightJustify
    Caption = 'Tipo:'
  end
  object Label3: TLabel
    Left = 27
    Top = 90
    Width = 53
    Height = 14
    Alignment = taRightJustify
    Caption = 'Telefone 1:'
  end
  object Label6: TLabel
    Left = 196
    Top = 90
    Width = 53
    Height = 14
    Alignment = taRightJustify
    Caption = 'Telefone 2:'
  end
  object Label7: TLabel
    Left = 36
    Top = 153
    Width = 44
    Height = 14
    Alignment = taRightJustify
    Caption = 'Assunto:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 21
    Top = 312
    Width = 59
    Height = 14
    Alignment = taRightJustify
    Caption = 'Cadastrado:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object DBText1: TDBText
    Left = 83
    Top = 312
    Width = 273
    Height = 13
    DataField = 'UsuarioCad'
    DataSource = BancodeDados.dsLigacoes
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 332
    Width = 364
    Height = 32
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
    TabOrder = 9
    ExplicitWidth = 372
    DesignSize = (
      364
      32)
    object Label13: TLabel
      Left = 5
      Top = 7
      Width = 44
      Height = 13
      Caption = 'C'#243'digo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText5: TDBText
      Left = 53
      Top = 7
      Width = 63
      Height = 13
      DataField = 'LIGACAO_ID'
      DataSource = BancodeDados.dsLigacoes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BtOk: TButton
      Left = 286
      Top = 5
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = 'Gravar'
      TabOrder = 0
      OnClick = BtOkClick
      ExplicitLeft = 294
    end
    object BtFechar: TButton
      Left = 207
      Top = 5
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = '&Fechar'
      ModalResult = 2
      TabOrder = 1
      ExplicitLeft = 215
    end
    object DBNavigator1: TDBNavigator
      Left = 129
      Top = 6
      Width = 80
      Height = 18
      Cursor = crHandPoint
      DataSource = BancodeDados.dsLigacoes
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Flat = True
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
    end
  end
  object EditObservacao: TDBMemo
    Left = 83
    Top = 171
    Width = 273
    Height = 135
    DataField = 'OBS'
    DataSource = BancodeDados.dsLigacoes
    ScrollBars = ssVertical
    TabOrder = 8
    WantReturns = False
  end
  object EditData: TSedDbDateEdit
    Left = 83
    Top = 24
    Width = 109
    Height = 20
    DataField = 'DT_LIGAR'
    DataSource = BancodeDados.dsLigacoes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    MaxLength = 10
    ParentFont = False
    TabOrder = 0
  end
  object EditContato: TDBEdit
    Left = 83
    Top = 108
    Width = 272
    Height = 20
    AutoSelect = False
    Color = clWhite
    DataField = 'CONTATO'
    DataSource = BancodeDados.dsLigacoes
    TabOrder = 5
  end
  object EditTipo: TSedDBComboBox
    Left = 83
    Top = 45
    Width = 160
    Height = 20
    Style = csOwnerDrawFixed
    BevelKind = bkFlat
    Ctl3D = False
    DataField = 'TIPO'
    DataSource = BancodeDados.dsLigacoes
    ItemHeight = 14
    Items.Strings = (
      'SUPORTE LIGOU'
      'CLIENTE LIGOU'
      'WHATSAPP'
      'SMS'
      'VISITA'
      'COBRAN'#199'A'
      'OUTRO')
    ParentCtl3D = False
    Values.Strings = (
      '1'
      '2'
      '3'
      '4'
      '5'
      '6'
      '7')
    TabOrder = 1
  end
  object EditClienteID: TDBLookupComboBox
    Left = 83
    Top = 66
    Width = 272
    Height = 20
    DataField = 'CLI_ID'
    DataSource = BancodeDados.dsLigacoes
    KeyField = 'CLI_ID'
    ListField = 'FANTASIA'
    ListSource = BancodeDados.DsCsClientes
    TabOrder = 2
  end
  object EditSituacao: TSedDBComboBox
    Left = 83
    Top = 129
    Width = 151
    Height = 20
    Style = csOwnerDrawFixed
    BevelKind = bkFlat
    Ctl3D = False
    DataField = 'SIT'
    DataSource = BancodeDados.dsLigacoes
    ItemHeight = 14
    Items.Strings = (
      'PENDENTE'
      'RESOLVIDO'
      'PARCIAL'
      'N'#195'O ATENDIDO')
    ParentCtl3D = False
    Values.Strings = (
      '1'
      '2'
      '3'
      '4')
    TabOrder = 6
  end
  object EditFone1: TDBEdit
    Left = 83
    Top = 87
    Width = 104
    Height = 20
    TabStop = False
    AutoSelect = False
    Color = clWhite
    DataField = 'fone1'
    DataSource = BancodeDados.dsLigacoes
    Enabled = False
    TabOrder = 3
  end
  object EditFone2: TDBEdit
    Left = 251
    Top = 87
    Width = 104
    Height = 20
    TabStop = False
    AutoSelect = False
    Color = clWhite
    DataField = 'Fone2'
    DataSource = BancodeDados.dsLigacoes
    Enabled = False
    TabOrder = 4
  end
  object EditAssunto: TDBEdit
    Left = 83
    Top = 150
    Width = 272
    Height = 20
    AutoSelect = False
    Color = clWhite
    DataField = 'ASSUNTO'
    DataSource = BancodeDados.dsLigacoes
    TabOrder = 7
  end
  object MainMenu1: TMainMenu
    Left = 240
    Top = 8
  end
end
