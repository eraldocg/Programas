object CsDocumentosForm: TCsDocumentosForm
  Left = 317
  Top = 192
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta de Documentos'
  ClientHeight = 423
  ClientWidth = 491
  Color = clWhite
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
  OnShow = FormShow
  DesignSize = (
    491
    423)
  PixelsPerInch = 96
  TextHeight = 14
  object Image1: TImage
    Left = -16
    Top = -16
    Width = 552
    Height = 107
    Cursor = crHandPoint
  end
  object lbVisualizar: TLabel
    Left = 31
    Top = 67
    Width = 51
    Height = 14
    Alignment = taRightJustify
    Caption = 'Visualizar:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object btAjuda1: TSpeedButton
    Left = 228
    Top = 65
    Width = 18
    Height = 19
    Cursor = crHandPoint
    Caption = '?'
    Font.Charset = BALTIC_CHARSET
    Font.Color = clBlack
    Font.Height = -8
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object BtExecutar: TSpeedButton
    Left = 220
    Top = 8
    Width = 18
    Height = 19
    Cursor = crHandPoint
    Caption = 'F3'
    Font.Charset = BALTIC_CHARSET
    Font.Color = clBlack
    Font.Height = -8
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
    OnClick = BtExecutarClick
  end
  object Label4: TLabel
    Left = 286
    Top = 36
    Width = 48
    Height = 14
    Alignment = taRightJustify
    Caption = 'Condi'#231#227'o:'
  end
  object Label2: TLabel
    Left = 308
    Top = 13
    Width = 26
    Height = 14
    Alignment = taRightJustify
    Caption = 'Filtro:'
  end
  object Panel1: TPanel
    Left = 0
    Top = 394
    Width = 491
    Height = 29
    Align = alBottom
    BevelOuter = bvNone
    Color = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 5
    ExplicitWidth = 497
    object BtOk: TButton
      Left = 417
      Top = 3
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = '&Ok'
      ModalResult = 1
      TabOrder = 0
    end
    object BtNovo: TButton
      Left = 259
      Top = 3
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = '&Novo'
      TabOrder = 2
      OnClick = BtNovoClick
    end
    object BtCancelar: TButton
      Left = 338
      Top = 3
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
    Left = 1
    Top = 90
    Width = 489
    Height = 304
    DataSource = BancodeDados.dsDocumentos
    FixedColor = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnDblClick = DBGrid1DblClick
    OnEditButtonClick = DBGrid1DblClick
    OnTitleClick = DBGrid1TitleClick
    Columns = <
      item
        ButtonStyle = cbsEllipsis
        Expanded = False
        FieldName = 'DOC_ID'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DOC_NOME'
        Width = 350
        Visible = True
      end>
  end
  object cbVisualizar: TComboBox
    Left = 83
    Top = 64
    Width = 144
    Height = 21
    BevelKind = bkFlat
    Style = csOwnerDrawFixed
    ItemHeight = 15
    ItemIndex = 1
    TabOrder = 0
    Text = 'DOCUMENTOS ATIVOS'
    OnChange = cbVisualizarChange
    Items.Strings = (
      'TODOS'
      'DOCUMENTOS ATIVOS')
  end
  object CBOpcao: TComboBox
    Left = 336
    Top = 8
    Width = 147
    Height = 19
    BevelOuter = bvNone
    Style = csOwnerDrawFixed
    Anchors = [akTop, akRight]
    Ctl3D = False
    ItemHeight = 13
    ItemIndex = 1
    ParentCtl3D = False
    TabOrder = 1
    Text = 'Nome do Documento'
    Items.Strings = (
      'C'#243'digo'
      'Nome do Documento')
    ExplicitLeft = 342
  end
  object CBTipo: TComboBox
    Left = 336
    Top = 34
    Width = 147
    Height = 19
    BevelOuter = bvNone
    Style = csOwnerDrawFixed
    Anchors = [akTop, akRight]
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 2
    Text = 'Come'#231'ando por...'
    Items.Strings = (
      'Come'#231'ando por...'
      'Contendo...'
      'Igual '#224'...')
    ExplicitLeft = 342
  end
  object EditConsulta: TEdit
    Left = 296
    Top = 62
    Width = 186
    Height = 20
    Anchors = [akTop, akRight]
    TabOrder = 3
    OnKeyDown = EditConsultaKeyDown
    ExplicitLeft = 302
  end
  object MainMenu1: TMainMenu
    Left = 70
    Top = 204
    object Ctrldel1: TMenuItem
      Caption = 'Ctrl+del'
      ShortCut = 16430
      Visible = False
    end
    object Editar1: TMenuItem
      Caption = '&Editar'
      ShortCut = 16453
      Visible = False
      OnClick = DBGrid1DblClick
    end
    object Novo2: TMenuItem
      Caption = '&Novo'
      ShortCut = 16462
      Visible = False
      OnClick = BtNovoClick
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 200
    Top = 240
    object Editar2: TMenuItem
      Caption = '&Editar'
      ShortCut = 16453
      OnClick = DBGrid1DblClick
    end
    object Excluir1: TMenuItem
      Caption = 'Excluir'
      ShortCut = 16430
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Novo1: TMenuItem
      Caption = '&Novo'
      ShortCut = 16462
      OnClick = BtNovoClick
    end
  end
end
