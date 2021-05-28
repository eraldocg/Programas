object CsFornecedoresForm: TCsFornecedoresForm
  Left = 260
  Top = 168
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta de Fornecedores'
  ClientHeight = 430
  ClientWidth = 497
  Color = clWhite
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
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 1
    Top = 0
    Width = 216
    Height = 81
    AutoSize = True
  end
  object Label2: TLabel
    Left = 308
    Top = 11
    Width = 26
    Height = 14
    Alignment = taRightJustify
    Caption = 'Filtro:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 286
    Top = 42
    Width = 48
    Height = 14
    Alignment = taRightJustify
    Caption = 'Condi'#231#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object BtExecutar: TSpeedButton
    Left = 238
    Top = 61
    Width = 18
    Height = 19
    Cursor = crHandPoint
    Caption = 'F3'
    Font.Charset = BALTIC_CHARSET
    Font.Color = clBlack
    Font.Height = -8
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Margin = 1
    ParentFont = False
    Visible = False
    OnClick = BtExecutarClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 400
    Width = 497
    Height = 30
    Align = alBottom
    BevelOuter = bvNone
    Color = clSilver
    ParentBackground = False
    TabOrder = 4
    object BtNovo: TButton
      Left = 262
      Top = 3
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = '&Novo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BtNovoClick
    end
    object BtCancelar: TButton
      Left = 340
      Top = 3
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Cancel = True
      Caption = '&Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ModalResult = 2
      ParentFont = False
      TabOrder = 1
    end
    object BtOk: TButton
      Left = 418
      Top = 3
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = '&Ok'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ModalResult = 1
      ParentFont = False
      TabOrder = 0
    end
  end
  object CBOpcao: TComboBox
    Left = 341
    Top = 7
    Width = 145
    Height = 21
    Style = csOwnerDrawFixed
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ItemHeight = 15
    ItemIndex = 1
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    Text = 'Fornecedor'
    Items.Strings = (
      'C'#243'digo Fornecedor'
      'Fornecedor'
      'Fantasia'
      'Respons'#225'vel'
      'CNPJ')
  end
  object EditConsulta: TEdit
    Left = 276
    Top = 72
    Width = 208
    Height = 20
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnKeyDown = EditConsultaKeyDown
  end
  object CBTipo: TComboBox
    Left = 341
    Top = 39
    Width = 147
    Height = 21
    Style = csOwnerDrawFixed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ItemHeight = 15
    ItemIndex = 0
    ParentFont = False
    TabOrder = 1
    Text = 'Come'#231'ando por...'
    Items.Strings = (
      'Come'#231'ando por...'
      'Contendo...'
      'Igual '#224'...')
  end
  object Panel2: TPanel
    Left = 2
    Top = 104
    Width = 495
    Height = 296
    BevelOuter = bvNone
    Color = clSilver
    TabOrder = 3
    object DBGrid1: TSedDBGrid
      Left = 0
      Top = 0
      Width = 495
      Height = 296
      Align = alClient
      Color = clWhite
      DataSource = BancodeDados.DSForne
      FixedColor = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick]
      ParentFont = False
      PopupMenu = PopupMenu1
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnDblClick = DBGrid1DblClick
      OnTitleClick = DBGrid1TitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'FORNE_ID'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FANTASIA'
          Width = 138
          Visible = True
        end>
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 225
    Top = 21
    object ExcluirRegistro2: TMenuItem
      Caption = '&Excluir Registro'
      ShortCut = 16430
      OnClick = ExcluirRegistro2Click
    end
  end
  object MainMenu1: TMainMenu
    Left = 254
    Top = 21
    object ExcluirRegistro1: TMenuItem
      Caption = 'Excluir Registro'
      ShortCut = 16430
      Visible = False
      OnClick = ExcluirRegistro2Click
    end
  end
end
