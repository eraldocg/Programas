object CsTitulosForm: TCsTitulosForm
  Left = 401
  Top = 257
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Consulta de T'#237'tulos'
  ClientHeight = 484
  ClientWidth = 707
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
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel
    Left = 0
    Top = 454
    Width = 707
    Height = 30
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
    TabOrder = 1
    DesignSize = (
      707
      30)
    object lbContadorN: TLabel
      Left = 12
      Top = 8
      Width = 68
      Height = 14
      Caption = 'lbContadorN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BtOk: TButton
      Left = 627
      Top = 3
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = '&Ok'
      ModalResult = 1
      TabOrder = 0
    end
    object BtFechar: TButton
      Left = 548
      Top = 3
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = '&Fechar'
      ModalResult = 2
      TabOrder = 1
    end
    object Button1: TButton
      Left = 470
      Top = 3
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Imprimir'
      TabOrder = 2
      OnClick = Button1Click
    end
    object chkAgrupar: TCheckBox
      Left = 387
      Top = 6
      Width = 77
      Height = 17
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = 'Agrupar?'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      State = cbChecked
      TabOrder = 3
    end
    object lbAnalitico: TRadioButton
      Left = 116
      Top = 10
      Width = 178
      Height = 17
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = 'Relat'#243'rio Anal'#237'tico de T'#237'tulos'
      Checked = True
      Color = 6579300
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 4
      TabStop = True
      Visible = False
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 707
    Height = 159
    Align = alTop
    BevelOuter = bvNone
    Color = clSilver
    TabOrder = 0
    DesignSize = (
      707
      159)
    object Image3: TImage
      Left = 0
      Top = 0
      Width = 251
      Height = 81
      AutoSize = True
    end
    object Label2: TLabel
      Left = 81
      Top = 119
      Width = 69
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Data Final:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 81
      Top = 98
      Width = 69
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Data Inicial:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object BtExecutar: TSpeedButton
      Left = 289
      Top = 53
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
      OnClick = BtExecutarClick
    end
    object Label4: TLabel
      Left = 81
      Top = 54
      Width = 69
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Situa'#231#227'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 522
      Top = 12
      Width = 26
      Height = 14
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = 'Filtro:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 500
      Top = 43
      Width = 48
      Height = 14
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = 'Condi'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 81
      Top = 76
      Width = 69
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Campo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object cbSituacao: TComboBox
      Left = 153
      Top = 50
      Width = 132
      Height = 22
      AutoDropDown = True
      BevelInner = bvLowered
      BevelKind = bkFlat
      Style = csOwnerDrawFixed
      ItemIndex = 2
      TabOrder = 0
      Text = 'A RECEBER'
      OnChange = cbSituacaoChange
      Items.Strings = (
        'TODOS'
        'RECEBIDO'
        'A RECEBER'
        'CANCELADO')
    end
    object Dt_Inicial: TSedDateEdit
      Left = 153
      Top = 94
      Width = 121
      Height = 20
      MaxLength = 10
      TabOrder = 2
    end
    object Dt_Final: TSedDateEdit
      Left = 153
      Top = 115
      Width = 121
      Height = 20
      MaxLength = 10
      TabOrder = 3
      OnExit = Dt_FinalExit
    end
    object CBOpcao: TComboBox
      Left = 555
      Top = 6
      Width = 145
      Height = 21
      Style = csOwnerDrawFixed
      Anchors = [akTop, akRight]
      Ctl3D = False
      ItemHeight = 15
      ItemIndex = 3
      ParentCtl3D = False
      TabOrder = 4
      Text = 'Cliente'
      Items.Strings = (
        'C'#243'digo T'#237'tulo'
        'Parcela'
        'C'#243'd. Cliente'
        'Cliente'
        'Usu'#225'rio'
        'Descri'#231#227'o')
    end
    object EditConsulta: TEdit
      Left = 490
      Top = 73
      Width = 208
      Height = 20
      Anchors = [akTop, akRight]
      TabOrder = 6
      OnKeyDown = EditConsultaKeyDown
    end
    object CBTipo: TComboBox
      Left = 555
      Top = 38
      Width = 147
      Height = 21
      Style = csOwnerDrawFixed
      Anchors = [akTop, akRight]
      ItemHeight = 15
      ItemIndex = 0
      TabOrder = 5
      Text = 'Come'#231'ando por...'
      Items.Strings = (
        'Come'#231'ando por...'
        'Contendo...'
        'Igual '#224'...')
    end
    object Panel2: TPanel
      Left = 0
      Top = 158
      Width = 601
      Height = 30
      Anchors = [akLeft, akTop, akRight]
      BevelOuter = bvNone
      Color = 6579300
      TabOrder = 7
    end
    object chkPeriod: TCheckBox
      Left = 153
      Top = 140
      Width = 97
      Height = 17
      Cursor = crHandPoint
      Caption = 'Utilizar per'#237'odo?'
      Checked = True
      State = cbChecked
      TabOrder = 8
    end
    object cbCampo: TComboBox
      Left = 153
      Top = 72
      Width = 132
      Height = 22
      AutoDropDown = True
      BevelInner = bvLowered
      BevelKind = bkFlat
      Style = csOwnerDrawFixed
      ItemIndex = 0
      TabOrder = 1
      Text = 'VENCIMENTO'
      Items.Strings = (
        'VENCIMENTO'
        'VENC. ORIGINAL'
        'RECEBIMENTO'
        'DATA CR'#201'DITO'
        'EMISSAO')
    end
  end
  object DBGrid1: TSedDBGrid
    Left = 0
    Top = 159
    Width = 707
    Height = 295
    Align = alClient
    Color = clWhite
    DataSource = BancodeDados.DSBoletos
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
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnDblClick = DBGrid1DblClick
    OnEditButtonClick = DBGrid1DblClick
    OnTitleClick = DBGrid1TitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'BOLETO_ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PARCELA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fantasia'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VENCIMENTO'
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VENCIMENTO_ORIG'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_INTEGRAL'
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_LIC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_MENSAL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_APAGAR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_PAGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SITUACAO_BOLETO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLIENTE'
        Width = 225
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMISSAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'JurosCalc'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vlAPagarCalc'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RECEBIMENTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO_PAGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USR_ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DT_ALTERADO'
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLIENTE'
        Visible = True
      end>
  end
  object MainMenu1: TMainMenu
    Left = 340
    Top = 226
    object F31: TMenuItem
      Caption = 'F3'
      ShortCut = 114
      Visible = False
      OnClick = BtExecutarClick
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 250
    Top = 236
    object HistricodoTtulo1: TMenuItem
      Caption = 'Verificar Hist'#243'rico do T'#237'tulo'
      OnClick = HistricodoTtulo1Click
    end
    object VerTtulo1: TMenuItem
      Caption = 'Ver T'#237'tulo...'
      OnClick = DBGrid1DblClick
    end
  end
end
