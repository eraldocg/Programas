object CadLivroCaixaForm: TCadLivroCaixaForm
  Left = 432
  Top = 187
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Livro Caixa'
  ClientHeight = 345
  ClientWidth = 388
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
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 7
    Top = 98
    Width = 89
    Height = 14
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Documento:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 7
    Top = 118
    Width = 89
    Height = 14
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Descri'#231#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 7
    Top = 257
    Width = 89
    Height = 14
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Observa'#231#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Image3: TImage
    Left = 2
    Top = 1
    Width = 195
    Height = 81
    AutoSize = True
  end
  object Label3: TLabel
    Left = 7
    Top = 79
    Width = 89
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Data:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 7
    Top = 138
    Width = 89
    Height = 14
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Entrada:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 7
    Top = 158
    Width = 89
    Height = 14
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Sa'#237'da:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 7
    Top = 177
    Width = 89
    Height = 14
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Desc. Pagamento:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 7
    Top = 198
    Width = 89
    Height = 14
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Conta de Origem:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 248
    Top = 79
    Width = 53
    Height = 14
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Hora:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 7
    Top = 218
    Width = 89
    Height = 14
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Conta de Destino:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel
    Left = 7
    Top = 238
    Width = 89
    Height = 14
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Pagar:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object btPagar: TSpeedButton
    Left = 160
    Top = 237
    Width = 18
    Height = 19
    Cursor = crHandPoint
    Caption = 'F2'
    Font.Charset = BALTIC_CHARSET
    Font.Color = clBlack
    Font.Height = -8
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = btPagarClick
  end
  object EditPagarDesc: TDBText
    Left = 179
    Top = 239
    Width = 70
    Height = 14
    AutoSize = True
    DataField = 'PAGAR_DESC'
    DataSource = BancodeDados.DSLivroCaixa
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 315
    Width = 388
    Height = 30
    Align = alBottom
    BevelOuter = bvNone
    Color = 7562340
    ParentBackground = False
    TabOrder = 11
    object Label13: TLabel
      Left = 6
      Top = 8
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
      Left = 52
      Top = 8
      Width = 43
      Height = 14
      AutoSize = True
      DataField = 'CAIXA_ID'
      DataSource = BancodeDados.DSLivroCaixa
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BtInserir: TButton
      Left = 305
      Top = 3
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = '&Gravar'
      TabOrder = 0
      OnClick = BtInserirClick
    end
    object Button1: TButton
      Left = 227
      Top = 3
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Cancel = True
      Caption = '&Fechar'
      ModalResult = 2
      TabOrder = 1
    end
    object DBNavigator2: TDBNavigator
      Left = 129
      Top = 2
      Width = 92
      Height = 25
      DataSource = BancodeDados.DSLivroCaixa
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 2
      OnClick = DBNavigator2Click
    end
  end
  object EditDocumento: TDBEdit
    Left = 99
    Top = 96
    Width = 281
    Height = 20
    AutoSelect = False
    DataField = 'DOCUMENTO'
    DataSource = BancodeDados.DSLivroCaixa
    TabOrder = 2
  end
  object EditAbrev: TDBEdit
    Left = 99
    Top = 116
    Width = 281
    Height = 20
    AutoSelect = False
    DataField = 'DESCRICAO'
    DataSource = BancodeDados.DSLivroCaixa
    TabOrder = 3
  end
  object EditObs: TDBMemo
    Left = 99
    Top = 256
    Width = 281
    Height = 53
    DataField = 'OBSERVACAO'
    DataSource = BancodeDados.DSLivroCaixa
    TabOrder = 10
  end
  object Dt_Pagar: TSedDbDateEdit
    Left = 99
    Top = 76
    Width = 111
    Height = 20
    DataField = 'DATA'
    DataSource = BancodeDados.DSLivroCaixa
    AutoSelect = False
    Color = clWhite
    MaxLength = 10
    TabOrder = 0
  end
  object EditEntrada: TDBEdit
    Left = 99
    Top = 136
    Width = 77
    Height = 20
    DataField = 'ENTRADA'
    DataSource = BancodeDados.DSLivroCaixa
    TabOrder = 4
  end
  object EditSaida: TDBEdit
    Left = 99
    Top = 156
    Width = 77
    Height = 20
    DataField = 'SAIDA'
    DataSource = BancodeDados.DSLivroCaixa
    TabOrder = 5
  end
  object EditDesPag: TDBComboBox
    Left = 99
    Top = 176
    Width = 107
    Height = 20
    Style = csOwnerDrawFixed
    BevelKind = bkFlat
    DataField = 'DESCRICAO_PAGO'
    DataSource = BancodeDados.DSLivroCaixa
    ItemHeight = 14
    Items.Strings = (
      'Dinheiro'
      'Cheque'
      'Cartao'
      'Negociado'
      'Boleto'
      'Outros'
      'Extrato')
    TabOrder = 6
  end
  object EditTipoConta: TDBLookupComboBox
    Left = 99
    Top = 196
    Width = 281
    Height = 20
    Cursor = crHandPoint
    DataField = 'CONTA_ID'
    DataSource = BancodeDados.DSLivroCaixa
    KeyField = 'CONTA_ID'
    ListField = 'CONTA'
    ListSource = BancodeDados.DSContas
    TabOrder = 7
  end
  object EditHora: TDBEdit
    Left = 303
    Top = 76
    Width = 77
    Height = 20
    DataField = 'HORA'
    DataSource = BancodeDados.DSLivroCaixa
    ReadOnly = True
    TabOrder = 1
  end
  object EditContaDest: TDBLookupComboBox
    Left = 99
    Top = 216
    Width = 281
    Height = 20
    Cursor = crHandPoint
    DataField = 'CONTA_ID_DEST'
    DataSource = BancodeDados.DSLivroCaixa
    KeyField = 'CONTA_ID'
    ListField = 'CONTA'
    ListSource = BancodeDados.DSContas
    NullValueKey = 46
    TabOrder = 8
  end
  object EditPagar: TDBEdit
    Left = 99
    Top = 236
    Width = 60
    Height = 20
    DataField = 'PAGAR_ID'
    DataSource = BancodeDados.DSLivroCaixa
    ReadOnly = True
    TabOrder = 9
  end
  object MainMenu1: TMainMenu
    Left = 334
    Top = 22
    object F21: TMenuItem
      Caption = 'F2'
      ShortCut = 113
      Visible = False
      OnClick = btPagarClick
    end
  end
end
