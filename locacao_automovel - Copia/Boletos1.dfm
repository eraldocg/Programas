object Boletos1Form: TBoletos1Form
  Left = 409
  Top = 416
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Financeiro do cliente'
  ClientHeight = 461
  ClientWidth = 894
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
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 430
    Width = 894
    Height = 31
    Align = alBottom
    BevelOuter = bvNone
    Color = clSilver
    ParentBackground = False
    TabOrder = 2
    DesignSize = (
      894
      31)
    object BtMensal: TButton
      Left = 809
      Top = 4
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = '&T'#237'tulos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BtMensalClick
    end
    object chTodos: TCheckBox
      Left = 14
      Top = 9
      Width = 125
      Height = 16
      Cursor = crHandPoint
      Caption = '(des)marcar todos'
      Color = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = 8454143
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 1
      OnClick = chTodosClick
    end
    object btNovo: TButton
      Left = 734
      Top = 4
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = 'Novo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btNovoClick
    end
    object btLocacaoVeic: TButton
      Left = 659
      Top = 4
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = 'Loca'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btLocacaoVeicClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 894
    Height = 118
    Align = alTop
    BevelOuter = bvNone
    Color = clSilver
    TabOrder = 0
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 894
      Height = 119
      Align = alTop
      BevelOuter = bvNone
      Color = clSilver
      TabOrder = 0
      DesignSize = (
        894
        119)
      object Label2: TLabel
        Left = 704
        Top = 12
        Width = 26
        Height = 14
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = 'Filtro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 498
      end
      object Label4: TLabel
        Left = 682
        Top = 43
        Width = 48
        Height = 14
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = 'Condi'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 476
      end
      object lbPagos: TLabel
        Left = 100
        Top = 26
        Width = 66
        Height = 14
        Caption = 'xxxxxxxxxxx'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object lbAbertos: TLabel
        Left = 100
        Top = 11
        Width = 66
        Height = 14
        Caption = 'xxxxxxxxxxx'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object lbRegistros: TLabel
        Left = 100
        Top = 63
        Width = 66
        Height = 14
        Caption = 'xxxxxxxxxxx'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object lbOutros: TLabel
        Left = 100
        Top = 41
        Width = 66
        Height = 14
        Caption = 'xxxxxxxxxxx'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object BtExecutar: TSpeedButton
        Left = 229
        Top = 31
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
      object Label1: TLabel
        Left = 480
        Top = 45
        Width = 32
        Height = 13
        Caption = 'Label1'
        Enabled = False
        Visible = False
      end
      object Label3: TLabel
        Left = 480
        Top = 64
        Width = 32
        Height = 13
        Caption = 'Label1'
        Enabled = False
        Visible = False
      end
      object Label5: TLabel
        Left = 480
        Top = 7
        Width = 32
        Height = 13
        Caption = 'Label1'
        Enabled = False
        Visible = False
      end
      object Label6: TLabel
        Left = 480
        Top = 26
        Width = 32
        Height = 13
        Caption = 'Label1'
        Enabled = False
        Visible = False
      end
      object CBOpcao: TComboBox
        Left = 737
        Top = 8
        Width = 145
        Height = 21
        Style = csOwnerDrawFixed
        Anchors = [akTop, akRight]
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ItemHeight = 15
        ItemIndex = 5
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        Text = 'Descri'#231#227'o'
        Items.Strings = (
          'C'#243'digo T'#237'tulo'
          'Situa'#231#227'o'
          'Vencimento'
          'Recebimento'
          'Parcela'
          'Descri'#231#227'o'
          'Usu'#225'rio')
      end
      object EditConsulta: TEdit
        Left = 673
        Top = 74
        Width = 208
        Height = 20
        Anchors = [akTop, akRight]
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
        Left = 737
        Top = 40
        Width = 147
        Height = 21
        Style = csOwnerDrawFixed
        Anchors = [akTop, akRight]
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
      object cbExibir: TComboBox
        Left = 100
        Top = 83
        Width = 217
        Height = 22
        Style = csOwnerDrawFixed
        ItemIndex = 0
        TabOrder = 3
        Text = #218'ltimos 12 meses'
        OnChange = cbExibirChange
        Items.Strings = (
          #218'ltimos 12 meses'
          'Todos os t'#237'tulos')
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 118
    Width = 894
    Height = 312
    Align = alClient
    BevelOuter = bvNone
    Color = clSilver
    Enabled = False
    TabOrder = 1
    object DBGrid1: TSedDBGrid
      Left = 0
      Top = 0
      Width = 894
      Height = 312
      Align = alClient
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
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      OnCellClick = DBGrid1CellClick
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnDblClick = DBGrid1DblClick
      OnEditButtonClick = DBGrid1DblClick
      OnKeyDown = DBGrid1KeyDown
      OnTitleClick = DBGrid1TitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'ATIVO'
          Title.Caption = ' '
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BOLETO_ID'
          Width = 51
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PARCELA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Width = 239
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VENCIMENTO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_INTEGRAL'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCONTO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SITUACAO_BOLETO'
          Width = 90
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
          FieldName = 'VENCIMENTO_ORIG'
          Width = 87
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RECEBIMENTO'
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
          Width = 225
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ImpBoleto'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Faturado'
          Visible = True
        end>
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 276
    Top = 14
    object BaixarTtulo1: TMenuItem
      Caption = 'Baixar T'#237'tulo'
      ShortCut = 115
      OnClick = BaixarTtulo1Click
    end
    object CancelarTtulo1: TMenuItem
      Caption = 'Cancelar T'#237'tulo'
      ShortCut = 116
      OnClick = CancelarTtulo1Click
    end
    object EstornarTtulo1: TMenuItem
      Caption = 'Estornar T'#237'tulo'
      ShortCut = 117
      OnClick = EstornarTtulo1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Imprimir1: TMenuItem
      Caption = 'Im&primir'
      object Boleto1: TMenuItem
        Caption = '&Boleto'
        OnClick = Boleto1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Boletosemtolerncia1: TMenuItem
        Caption = 'Boleto sem toler'#226'ncia'
        OnClick = Boletosemtolerncia1Click
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object CapadoBoleto1: TMenuItem
        Caption = 'Capa do Boleto'
        OnClick = CapadoBoleto1Click
      end
    end
    object ReimpressoLocalizarEmissodeBoleto21: TMenuItem
      Caption = 'Reimpress'#227'o / Localizar Emiss'#227'o de Boleto'
      OnClick = ReimpressoLocalizarEmissodeBoleto21Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object FaturarNotaFiscal1: TMenuItem
      Caption = 'Faturar Nota Fiscal'
      OnClick = FaturarNotaFiscal1Click
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object Duplicarttulo1: TMenuItem
      Caption = 'Duplicar t'#237'tulo'
      OnClick = Duplicarttulo1Click
    end
    object N8: TMenuItem
      Caption = '-'
    end
    object Atualizarvalorvencimento1: TMenuItem
      Caption = 'Atualizar valor / vencimento'
      OnClick = Atualizarvalorvencimento1Click
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object Editar1: TMenuItem
      Caption = '&Editar'
      ShortCut = 16453
      OnClick = DBGrid1DblClick
    end
    object Excluir1: TMenuItem
      Caption = 'E&xcluir'
      ShortCut = 16430
      OnClick = Excluir1Click
    end
    object ConsultadeBoletosEmitidos1: TMenuItem
      Caption = 'Consulta de Boletos Emitidos'
      OnClick = ConsultadeBoletosEmitidos1Click
    end
  end
  object MainMenu1: TMainMenu
    Left = 346
    Top = 22
    object Atalhos1: TMenuItem
      Caption = 'Atalhos'
      Visible = False
      object teste2: TMenuItem
        Caption = 'Baixar'
        ShortCut = 115
        Visible = False
        OnClick = BaixarTtulo1Click
      end
      object Cancelar1: TMenuItem
        Caption = 'Cancelar'
        ShortCut = 116
        OnClick = CancelarTtulo1Click
      end
      object Estornar1: TMenuItem
        Caption = 'Estornar'
        ShortCut = 117
        OnClick = EstornarTtulo1Click
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object editar2: TMenuItem
        Caption = 'Editar'
        ShortCut = 16453
        OnClick = DBGrid1DblClick
      end
      object Excluir2: TMenuItem
        Caption = 'Excluir'
        ShortCut = 16430
        OnClick = Excluir1Click
      end
    end
    object EditConsultar1: TMenuItem
      Caption = 'EditConsultar'
      Visible = False
      OnClick = EditConsultar1Click
    end
  end
  object Timer1: TTimer
    Interval = 500
    OnTimer = Timer1Timer
    Left = 394
    Top = 14
  end
end
