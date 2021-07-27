object CadNfsForm: TCadNfsForm
  Left = 475
  Top = 198
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Nota Fiscal de Servi'#231'os'
  ClientHeight = 375
  ClientWidth = 695
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
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Label10: TLabel
    Left = 46
    Top = 81
    Width = 27
    Height = 14
    Alignment = taRightJustify
    Caption = 'Email:'
  end
  object Label4: TLabel
    Left = 501
    Top = 40
    Width = 56
    Height = 14
    Alignment = taRightJustify
    Caption = 'CPF / CNPJ:'
  end
  object PanelCabecalho: TPanel
    Left = 0
    Top = 0
    Width = 695
    Height = 106
    Align = alTop
    BevelOuter = bvNone
    Color = clSilver
    TabOrder = 0
    object Label2: TLabel
      Left = 38
      Top = 16
      Width = 35
      Height = 14
      Alignment = taRightJustify
      Caption = 'Cliente:'
    end
    object btCli: TSpeedButton
      Left = 429
      Top = 15
      Width = 18
      Height = 19
      Cursor = crHandPoint
      Caption = '...'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -8
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btCliClick
    end
    object Label3: TLabel
      Left = 513
      Top = 18
      Width = 44
      Height = 14
      Alignment = taRightJustify
      Caption = 'N'#186' NFSe:'
    end
    object Label5: TLabel
      Left = 28
      Top = 59
      Width = 45
      Height = 14
      Alignment = taRightJustify
      Caption = 'Situa'#231#227'o:'
    end
    object Label6: TLabel
      Left = 204
      Top = 60
      Width = 91
      Height = 14
      Caption = 'Data Emiss'#227'o RPS:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 29
      Top = 38
      Width = 44
      Height = 14
      Alignment = taRightJustify
      Caption = 'Fantasia:'
    end
    object Label11: TLabel
      Left = 489
      Top = 86
      Width = 68
      Height = 14
      Alignment = taRightJustify
      Caption = 'Compet'#234'ncia: '
    end
    object Label12: TLabel
      Left = 521
      Top = 62
      Width = 36
      Height = 14
      Alignment = taRightJustify
      Caption = 'Cidade:'
    end
    object EditCli: TDBEdit
      Left = 74
      Top = 14
      Width = 353
      Height = 20
      DataField = 'NOME'
      DataSource = BancodeDados.dsNfs
      ReadOnly = True
      TabOrder = 0
      OnDblClick = btCliClick
    end
    object EditNFSeNumero: TDBEdit
      Left = 557
      Top = 17
      Width = 114
      Height = 20
      DataField = 'NFSE_NUMERO'
      DataSource = BancodeDados.dsNfs
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object EditSituacao: TSedDBComboBox
      Left = 74
      Top = 57
      Width = 126
      Height = 21
      Style = csOwnerDrawFixed
      BevelKind = bkFlat
      Color = clWhite
      DataField = 'SIT'
      DataSource = BancodeDados.dsNfs
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ItemHeight = 15
      Items.Strings = (
        '0 - ABERTA'
        '1 - FECHADA'
        '2 - CANCELADA'
        '3 - AGUARDANDO'
        '4 - ENVIADA')
      ParentFont = False
      Values.Strings = (
        '0'
        '1'
        '2'
        '3'
        '4')
      TabOrder = 2
    end
    object EditDtInicial: TSedDbDateEdit
      Left = 296
      Top = 57
      Width = 91
      Height = 20
      DataField = 'DT_RPS'
      DataSource = BancodeDados.dsNfs
      BevelInner = bvSpace
      BevelOuter = bvRaised
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 3
    end
    object EditFantasia: TDBEdit
      Left = 74
      Top = 36
      Width = 353
      Height = 20
      TabStop = False
      DataField = 'FANTASIA'
      DataSource = BancodeDados.dsNfs
      ReadOnly = True
      TabOrder = 4
      OnDblClick = btCliClick
    end
    object DBEdit1: TDBEdit
      Left = 558
      Top = 60
      Width = 114
      Height = 20
      DataField = 'CIDADE_NOME'
      DataSource = BancodeDados.dsNfs
      ReadOnly = True
      TabOrder = 5
    end
    object SedDbDateEdit1: TSedDbDateEdit
      Left = 558
      Top = 82
      Width = 113
      Height = 20
      DataField = 'COMPETENCIA'
      DataSource = BancodeDados.dsNfs
      BevelInner = bvSpace
      BevelOuter = bvRaised
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 6
    end
  end
  object SedDBGrid1: TSedDBGrid
    Left = 0
    Top = 106
    Width = 695
    Height = 200
    Align = alClient
    DataSource = BancodeDados.dsNfsServ
    FixedColor = clGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick]
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWhite
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnKeyDown = SedDBGrid1KeyDown
    AutoAppend = True
    Columns = <
      item
        Expanded = False
        FieldName = 'NFS_IT_ID'
        ReadOnly = True
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Width = 389
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QUANT'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_UNIT'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_TOTAL'
        ReadOnly = True
        Width = 75
        Visible = True
      end>
  end
  object PanelRodape: TPanel
    Left = 0
    Top = 306
    Width = 695
    Height = 39
    Align = alBottom
    BevelOuter = bvNone
    Color = clSilver
    TabOrder = 2
    object Label7: TLabel
      Left = 4
      Top = 13
      Width = 60
      Height = 14
      Alignment = taRightJustify
      Caption = 'Valor Total:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 283
      Top = 13
      Width = 32
      Height = 14
      Alignment = taRightJustify
      Caption = '% ISS:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 515
      Top = 13
      Width = 51
      Height = 14
      Alignment = taRightJustify
      Caption = 'Valor ISS:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EditTotal: TDBEdit
      Left = 66
      Top = 9
      Width = 114
      Height = 20
      DataField = 'VL_TOTAL'
      DataSource = BancodeDados.dsNfs
      ReadOnly = True
      TabOrder = 0
    end
    object EditPercISS: TDBEdit
      Left = 318
      Top = 9
      Width = 114
      Height = 20
      DataField = 'PERC_ISS'
      DataSource = BancodeDados.dsNfs
      TabOrder = 1
      OnExit = EditPercISSExit
    end
    object EditVLISS: TDBEdit
      Left = 570
      Top = 9
      Width = 114
      Height = 20
      DataField = 'VL_ISS'
      DataSource = BancodeDados.dsNfs
      ReadOnly = True
      TabOrder = 2
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 345
    Width = 695
    Height = 30
    Align = alBottom
    BevelOuter = bvNone
    Color = clGray
    ParentBackground = False
    TabOrder = 3
    DesignSize = (
      695
      30)
    object BtGravar: TButton
      Left = 618
      Top = 3
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = 'Gravar <F11>'
      TabOrder = 0
      OnClick = BtGravarClick
    end
    object BtFechar: TButton
      Left = 538
      Top = 3
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = 'Fechar'
      ModalResult = 2
      TabOrder = 1
    end
    object btAreaTransf: TButton
      Left = 387
      Top = 3
      Width = 145
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Copiar p/ '#225'rea de transf.'
      TabOrder = 2
      OnClick = btAreaTransfClick
    end
  end
  object EditEmail: TDBEdit
    Left = 74
    Top = 79
    Width = 353
    Height = 20
    TabStop = False
    DataField = 'EMAIL_CONTATO2'
    DataSource = BancodeDados.dsNfs
    ReadOnly = True
    TabOrder = 4
    OnDblClick = btCliClick
  end
  object Memo1: TMemo
    Left = 120
    Top = 146
    Width = 519
    Height = 149
    ScrollBars = ssBoth
    TabOrder = 5
    Visible = False
  end
  object EditCPF: TDBEdit
    Left = 558
    Top = 38
    Width = 114
    Height = 20
    DataField = 'CNPJ'
    DataSource = BancodeDados.dsNfs
    ReadOnly = True
    TabOrder = 6
  end
  object MainMenu1: TMainMenu
    Left = 298
    Top = 220
    object F111: TMenuItem
      Caption = 'F11'
      ShortCut = 122
      Visible = False
      OnClick = BtGravarClick
    end
    object ctrldel1: TMenuItem
      Caption = 'ctrl+del'
      ShortCut = 16430
      Visible = False
      OnClick = ExcluirServio1Click
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 450
    Top = 222
    object ExcluirServio1: TMenuItem
      Caption = 'Excluir Servi'#231'o'
      ShortCut = 16430
      OnClick = ExcluirServio1Click
    end
  end
end
