object CsConfForm: TCsConfForm
  Left = 274
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta de Locador'
  ClientHeight = 425
  ClientWidth = 497
  Color = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  KeyPreview = True
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Label2: TLabel
    Left = 309
    Top = 9
    Width = 26
    Height = 14
    Alignment = taRightJustify
    Caption = 'Filtro:'
  end
  object Label4: TLabel
    Left = 287
    Top = 40
    Width = 48
    Height = 14
    Alignment = taRightJustify
    Caption = 'Condi'#231#227'o:'
  end
  object Panel1: TPanel
    Left = 0
    Top = 394
    Width = 497
    Height = 31
    Align = alBottom
    BevelOuter = bvNone
    Color = clSilver
    ParentBackground = False
    TabOrder = 4
    object BtOk: TButton
      Left = 418
      Top = 4
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = '&Ok'
      ModalResult = 1
      TabOrder = 0
    end
    object BtNovo1: TButton
      Left = 260
      Top = 4
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = '&Novo'
      TabOrder = 2
      OnClick = BtNovo1Click
    end
    object BtCancelar: TButton
      Left = 339
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
  object DBGrid1: TSedDBGrid
    Left = 6
    Top = 104
    Width = 491
    Height = 288
    DataSource = BancodeDados.dsConfig
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
    TabOrder = 3
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    OnCellClick = DBGrid1CellClick
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnDblClick = DBGrid1DblClick
    OnEditButtonClick = DBGrid1DblClick
    OnTitleClick = DBGrid1TitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'CONF_ID'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 270
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CNPJ'
        Visible = True
      end>
  end
  object CBOpcao: TComboBox
    Left = 342
    Top = 6
    Width = 145
    Height = 21
    Style = csOwnerDrawFixed
    Ctl3D = False
    ItemHeight = 15
    ItemIndex = 1
    ParentCtl3D = False
    TabOrder = 0
    Text = 'Nome/Raz'#227'o Social'
    Items.Strings = (
      'C'#243'digo'
      'Nome/Raz'#227'o Social'
      'C.P.F/C.N.P.J')
  end
  object EditConsulta: TEdit
    Left = 277
    Top = 70
    Width = 208
    Height = 20
    TabOrder = 2
  end
  object CBTipo: TComboBox
    Left = 342
    Top = 37
    Width = 147
    Height = 21
    Style = csOwnerDrawFixed
    ItemHeight = 15
    ItemIndex = 0
    TabOrder = 1
    Text = 'Come'#231'ando por...'
    Items.Strings = (
      'Come'#231'ando por...'
      'Contendo...'
      'Igual '#224'...')
  end
  object PopupMenu1: TPopupMenu
    Left = 44
    Top = 40
    object Editar1: TMenuItem
      Caption = '&Editar'
      ShortCut = 16453
      OnClick = DBGrid1DblClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Excluir1: TMenuItem
      Caption = 'E&xcluir'
      Enabled = False
      ShortCut = 16430
    end
  end
  object MainMenu1: TMainMenu
    Left = 98
    Top = 56
    object Excluir2: TMenuItem
      Caption = 'Excluir'
      ShortCut = 16430
      Visible = False
    end
    object Editar2: TMenuItem
      Caption = 'Editar'
      ShortCut = 16453
      Visible = False
      OnClick = DBGrid1DblClick
    end
  end
end
