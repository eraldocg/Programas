object ImpExtratoForm: TImpExtratoForm
  Left = 343
  Top = 363
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Concilia'#231#227'o Banc'#225'ria (Dispon'#237'vel para Arquivos: BBT, OFC, OFX)'
  ClientHeight = 580
  ClientWidth = 1059
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
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 321
    Height = 580
    Align = alLeft
    BevelOuter = bvNone
    Color = clSilver
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 21
      Width = 79
      Height = 14
      Caption = 'Nome do Banco:'
    end
    object Gauge1: TGauge
      Left = 8
      Top = 295
      Width = 307
      Height = 13
      ForeColor = clNavy
      Progress = 0
    end
    object LBOperacao: TLabel
      Left = 8
      Top = 279
      Width = 307
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'LBOperacao'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object LbArquivo: TLabel
      Left = 8
      Top = 265
      Width = 307
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'LbArquivo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object LbNumero: TLabel
      Left = 8
      Top = 311
      Width = 307
      Height = 13
      AutoSize = False
      Caption = 'LbNumero'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 138
      Width = 83
      Height = 14
      Caption = 'Conta de Origem:'
    end
    object lbRegistro: TLabel
      Left = 8
      Top = 327
      Width = 307
      Height = 13
      AutoSize = False
      Caption = 'LbNumero'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 448
      Width = 307
      Height = 13
      AutoSize = False
      Caption = 'OBSERVA'#199#213'ES:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Bevel2: TBevel
      Left = 3
      Top = 436
      Width = 312
      Height = 2
    end
    object Label4: TLabel
      Left = 8
      Top = 465
      Width = 307
      Height = 29
      AutoSize = False
      Caption = 
        'Para alterar a coluna descri'#231#227'o, basta digitar sobre o registro ' +
        'na grade ao lado.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object Label5: TLabel
      Left = 8
      Top = 497
      Width = 307
      Height = 29
      AutoSize = False
      Caption = 
        'D'#234' um clique-duplo sobre o registro para associar ao tipo de con' +
        'ta.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object Panel3: TPanel
      Left = 0
      Top = 546
      Width = 321
      Height = 34
      Align = alBottom
      BevelOuter = bvNone
      Color = clSilver
      TabOrder = 3
      DesignSize = (
        321
        34)
      object Bevel1: TBevel
        Left = 1
        Top = -1
        Width = 312
        Height = 2
      end
      object BtCancelar: TButton
        Left = 142
        Top = 7
        Width = 84
        Height = 25
        Cursor = crHandPoint
        Anchors = [akRight, akBottom]
        Cancel = True
        Caption = 'Fechar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ModalResult = 2
        ParentFont = False
        TabOrder = 1
      end
      object BtGerar: TButton
        Left = 229
        Top = 7
        Width = 84
        Height = 25
        Cursor = crHandPoint
        Anchors = [akRight, akBottom]
        Caption = 'Concluir'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = BtGerarClick
      end
      object btAbrirArq: TButton
        Left = 55
        Top = 7
        Width = 84
        Height = 25
        Cursor = crHandPoint
        Anchors = [akRight, akBottom]
        Caption = 'Abrir Arquivo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = btAbrirArqClick
      end
    end
    object EditConta: TDBLookupComboBox
      Left = 8
      Top = 152
      Width = 307
      Height = 20
      KeyField = 'CONTA_ID'
      ListField = 'CONTA'
      TabOrder = 2
    end
    object EditBanco1: TDBLookupComboBox
      Left = 8
      Top = 35
      Width = 307
      Height = 20
      KeyField = 'BANCO_ID'
      ListField = 'BANCO_NOME'
      ListSource = BancodeDados.DSBancos
      TabOrder = 0
    end
    object gbOpcoes: TGroupBox
      Left = 8
      Top = 63
      Width = 307
      Height = 67
      Caption = 'Op'#231'oes do Livro Caixa'
      ParentShowHint = False
      ShowHint = False
      TabOrder = 1
      TabStop = True
      object chkIndividual: TRadioButton
        Left = 10
        Top = 19
        Width = 235
        Height = 17
        Cursor = crHandPoint
        Caption = 'Lan'#231'amentos individuais por registro'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object chkSintetico: TRadioButton
        Left = 10
        Top = 39
        Width = 235
        Height = 17
        Cursor = crHandPoint
        Caption = 'Lan'#231'amento '#250'nico sintetizado'
        Enabled = False
        TabOrder = 1
      end
    end
  end
  object Memo1: TMemo
    Left = 410
    Top = 333
    Width = 521
    Height = 128
    Lines.Strings = (
      'Memo1')
    ScrollBars = ssBoth
    TabOrder = 1
    Visible = False
  end
  object DBGrid1: TSedDBGrid
    Left = 321
    Top = 0
    Width = 738
    Height = 580
    Align = alClient
    DataSource = dsTemp
    FixedColor = clGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWhite
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    OnCellClick = DBGrid1CellClick
    OnColEnter = DBGrid1ColEnter
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnDblClick = DBGrid1DblClick
    OnKeyDown = DBGrid1KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'ATIVO'
        ReadOnly = True
        Title.Caption = ' '
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DOCUMENTO'
        ReadOnly = True
        Width = 108
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Width = 178
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENTRADA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SAIDA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAGAR_ID'
        ReadOnly = True
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAGAR_NOME'
        ReadOnly = True
        Width = 217
        Visible = True
      end>
  end
  object RLReport1: TRLReport
    Left = 10000
    Top = 70
    Width = 794
    Height = 1123
    DataSource = dsTemp
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ShowProgress = False
    object RLBand12: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 96
      AutoExpand = False
      BandType = btColumnHeader
      object lbTitulo_1: TRLLabel
        Left = 98
        Top = 3
        Width = 429
        Height = 19
        Caption = 'Concilia'#231#227'o Banc'#225'ria / Relat'#243'rio de Dados Tempor'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo7: TRLSystemInfo
        Left = 625
        Top = 8
        Width = 91
        Height = 10
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = 'Data de Impress'#227'o: '
      end
      object RLSystemInfo8: TRLSystemInfo
        Left = 623
        Top = 21
        Width = 93
        Height = 10
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = itHour
        ParentFont = False
        Text = 'Hora de Impress'#227'o: '
      end
      object RLSystemInfo9: TRLSystemInfo
        Left = 635
        Top = 34
        Width = 81
        Height = 10
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = itPageNumber
        ParentFont = False
        Text = 'P'#225'gina: '
      end
      object SedRLDBImage2: TSedRLDBImage
        Left = 4
        Top = 2
        Width = 92
        Height = 88
        Stretch = True
        DataField = 'LOGO1'
        DataSource = BancodeDados.dsConfig
      end
      object lbBanco1: TRLLabel
        Left = 98
        Top = 25
        Width = 63
        Height = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbTipoMov_1: TRLLabel
        Left = 98
        Top = 44
        Width = 84
        Height = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbConta1: TRLLabel
        Left = 98
        Top = 63
        Width = 60
        Height = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLGroup1: TRLGroup
      Left = 38
      Top = 134
      Width = 718
      Height = 51
      object RLBand13: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 16
        BandType = btColumnHeader
        object lbCorPadrao1: TRLLabel
          Left = 1
          Top = 1
          Width = 715
          Height = 14
          AutoSize = False
          Borders.Color = 16704207
          Color = 16704207
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16704207
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLDraw46: TRLDraw
          Left = 1
          Top = 1
          Width = 716
          Height = 1
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DrawKind = dkLine
        end
        object RLDraw72: TRLDraw
          Left = 1
          Top = 15
          Width = 716
          Height = 1
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DrawKind = dkLine
        end
        object RLDraw73: TRLDraw
          Left = 1
          Top = 1
          Width = 1
          Height = 16
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw75: TRLDraw
          Left = 716
          Top = 1
          Width = 1
          Height = 16
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel35: TRLLabel
          Left = 153
          Top = 3
          Width = 248
          Height = 11
          AutoSize = False
          Caption = 'Descri'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw76: TRLDraw
          Left = 148
          Top = 1
          Width = 1
          Height = 16
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel36: TRLLabel
          Left = 6
          Top = 3
          Width = 44
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'Data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw77: TRLDraw
          Left = 414
          Top = 16
          Width = 0
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw78: TRLDraw
          Left = 416
          Top = 1
          Width = 1
          Height = 16
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw79: TRLDraw
          Left = 536
          Top = 1
          Width = 1
          Height = 16
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel37: TRLLabel
          Left = 421
          Top = 3
          Width = 52
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'Entrada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel38: TRLLabel
          Left = 539
          Top = 3
          Width = 171
          Height = 11
          AutoSize = False
          Caption = 'Conta Destino'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw80: TRLDraw
          Left = 476
          Top = 1
          Width = 1
          Height = 16
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel39: TRLLabel
          Left = 481
          Top = 3
          Width = 52
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'Sa'#237'da'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw81: TRLDraw
          Left = 53
          Top = 1
          Width = 1
          Height = 16
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel40: TRLLabel
          Left = 57
          Top = 3
          Width = 88
          Height = 11
          AutoSize = False
          Caption = 'Documento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand14: TRLBand
        Left = 0
        Top = 29
        Width = 718
        Height = 19
        BandType = btSummary
        object RLDBResult3: TRLDBResult
          Left = 4
          Top = 1
          Width = 105
          Height = 10
          ComputeNulls = False
          DataField = 'DOCUMENTO'
          DataSource = dsTemp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Info = riCount
          ParentFont = False
          ResetAfterPrint = True
          Text = 'N'#250'mero de Registros: '
        end
        object RLDraw91: TRLDraw
          Left = 416
          Top = -4
          Width = 1
          Height = 17
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw92: TRLDraw
          Left = 476
          Top = -4
          Width = 1
          Height = 17
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw93: TRLDraw
          Left = 1
          Top = 12
          Width = 716
          Height = 1
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DrawKind = dkLine
        end
        object RLDraw94: TRLDraw
          Left = 716
          Top = -4
          Width = 1
          Height = 17
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw95: TRLDraw
          Left = 1
          Top = -1
          Width = 1
          Height = 14
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel41: TRLLabel
          Left = 383
          Top = 1
          Width = 30
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Total:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult8: TRLDBResult
          Left = 481
          Top = 1
          Width = 52
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'SAIDA'
          DataSource = dsTemp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLDBResult9: TRLDBResult
          Left = 421
          Top = 1
          Width = 52
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'ENTRADA'
          DataSource = dsTemp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLDraw96: TRLDraw
          Left = 536
          Top = -4
          Width = 1
          Height = 17
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
      end
      object RLBand1: TRLBand
        Left = 0
        Top = 16
        Width = 718
        Height = 13
        object RLDraw82: TRLDraw
          Left = 1
          Top = 12
          Width = 716
          Height = 1
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DrawKind = dkLine
        end
        object RLDraw83: TRLDraw
          Left = 1
          Top = -1
          Width = 1
          Height = 14
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw85: TRLDraw
          Left = 536
          Top = -3
          Width = 1
          Height = 16
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw86: TRLDraw
          Left = 716
          Top = -3
          Width = 1
          Height = 16
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw87: TRLDraw
          Left = 148
          Top = -3
          Width = 1
          Height = 16
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw88: TRLDraw
          Left = 416
          Top = -3
          Width = 1
          Height = 16
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDBText18: TRLDBText
          Left = 6
          Top = 1
          Width = 44
          Height = 10
          Alignment = taCenter
          AutoSize = False
          DataField = 'DATA'
          DataSource = dsTemp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText20: TRLDBText
          Left = 481
          Top = 1
          Width = 52
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'SAIDA'
          DataSource = dsTemp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText21: TRLDBText
          Left = 539
          Top = 1
          Width = 171
          Height = 10
          AutoSize = False
          DataField = 'CONTA_DESTINO'
          DataSource = dsTemp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText22: TRLDBText
          Left = 153
          Top = 1
          Width = 248
          Height = 10
          AutoSize = False
          DataField = 'DESCRICAO'
          DataSource = dsTemp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDraw89: TRLDraw
          Left = 476
          Top = -3
          Width = 1
          Height = 16
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDBText23: TRLDBText
          Left = 421
          Top = 1
          Width = 52
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'ENTRADA'
          DataSource = dsTemp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDraw90: TRLDraw
          Left = 53
          Top = -3
          Width = 1
          Height = 16
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDBText24: TRLDBText
          Left = 57
          Top = 1
          Width = 88
          Height = 10
          AutoSize = False
          DataField = 'DOCUMENTO'
          DataSource = dsTemp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
    end
    object bandaRodape1: TRLBand
      Left = 38
      Top = 185
      Width = 718
      Height = 14
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLDraw97: TRLDraw
        Left = 1
        Top = 1
        Width = 716
        Height = 1
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DrawKind = dkLine
      end
      object RLDBResult10: TRLDBResult
        Left = 4
        Top = 2
        Width = 152
        Height = 12
        DataField = 'DOCUMENTO'
        DataSource = dsTemp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Info = riCount
        ParentFont = False
        ResetAfterPrint = True
        Text = 'N'#250'mero Total de Registros: '
      end
      object RLDraw98: TRLDraw
        Left = 166
        Top = 60
        Width = 195
        Height = 107
        DrawData.Strings = (
          '0 0'
          '1 0'
          '1 1'
          '0 1')
        DrawKind = dkCustom
        Visible = False
      end
      object RLDraw99: TRLDraw
        Left = 172
        Top = 128
        Width = 182
        Height = 1
        DrawKind = dkLine
        Visible = False
      end
      object RLDraw100: TRLDraw
        Left = 172
        Top = 80
        Width = 182
        Height = 1
        DrawKind = dkLine
        Visible = False
      end
      object RLLabel42: TRLLabel
        Left = 174
        Top = 64
        Width = 180
        Height = 14
        Alignment = taCenter
        AutoSize = False
        Caption = 'RESUMO GERAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object lbTTEntrada_1: TRLLabel
        Left = 174
        Top = 98
        Width = 179
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object lbTTSaida_1: TRLLabel
        Left = 174
        Top = 113
        Width = 179
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object lbTTSaldo_1: TRLLabel
        Left = 174
        Top = 132
        Width = 179
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object lbTTSaldoAnt_1: TRLLabel
        Left = 174
        Top = 83
        Width = 179
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object lbTTSaldoGeral_1: TRLLabel
        Left = 173
        Top = 150
        Width = 179
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
    end
    object RLBand16: TRLBand
      Left = 38
      Top = 199
      Width = 718
      Height = 41
      BandType = btFooter
      object LbNomeInstituicao: TRLLabel
        Left = 537
        Top = 5
        Width = 179
        Height = 14
        Alignment = taRightJustify
        Caption = 'Relat'#243'rio de Alunos por Turmas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LbEndereco: TRLLabel
        Left = 596
        Top = 19
        Width = 120
        Height = 10
        Alignment = taRightJustify
        Caption = 'Relat'#243'rio de Alunos por Turmas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LbSite: TRLLabel
        Left = 596
        Top = 29
        Width = 120
        Height = 10
        Alignment = taRightJustify
        Caption = 'Relat'#243'rio de Alunos por Turmas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw103: TRLDraw
        Left = 1
        Top = 1
        Width = 716
        Height = 1
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DrawKind = dkLine
      end
      object lbEmpresaNome: TRLLabel
        Left = 2
        Top = 5
        Width = 72
        Height = 14
        Caption = 'EmpresaNome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lbEmpresaSite: TRLLabel
        Left = 2
        Top = 18
        Width = 45
        Height = 10
        Caption = 'EmpresaSite'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lbSistemaNome: TRLLabel
        Left = 2
        Top = 29
        Width = 49
        Height = 10
        Caption = 'SistemaNome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 
      'Ms Money e Internet Banking (*.ofc / *.ofx)|*.ofc;*.ofx|Internet' +
      ' Banking (*.bbt)|*.bbt'
    FilterIndex = 0
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofEnableSizing]
    Left = 774
    Top = 64
  end
  object MainMenu1: TMainMenu
    Left = 700
    Top = 54
    object F41: TMenuItem
      Caption = 'F4'
      ShortCut = 115
      Visible = False
    end
    object F31: TMenuItem
      Caption = 'F3'
      ShortCut = 114
      Visible = False
    end
  end
  object Temp: TClientDataSet
    Aggregates = <>
    Params = <>
    OnCalcFields = TempCalcFields
    Left = 610
    Top = 54
    object TempATIVO: TBooleanField
      FieldName = 'ATIVO'
    end
    object TempDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object TempDOCUMENTO: TStringField
      DisplayLabel = 'Documento'
      FieldName = 'DOCUMENTO'
    end
    object TempDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object TempENTRADA: TCurrencyField
      DisplayLabel = 'Entrada'
      FieldName = 'ENTRADA'
      DisplayFormat = ',0.00'
    end
    object TempSAIDA: TCurrencyField
      DisplayLabel = 'Sa'#237'da'
      FieldName = 'SAIDA'
      DisplayFormat = ',0.00'
    end
    object TempCONTA_ID: TIntegerField
      DisplayLabel = 'C'#243'd. Conta'
      FieldName = 'CONTA_ID'
      DisplayFormat = '00'
    end
    object TempPAGAR_ID: TIntegerField
      DisplayLabel = 'C'#243'd. Pagar'
      FieldName = 'PAGAR_ID'
    end
    object TempPAGAR_NOME: TStringField
      DisplayLabel = 'Pagar'
      FieldName = 'PAGAR_NOME'
      Size = 60
    end
  end
  object dsTemp: TDataSource
    DataSet = Temp
    Left = 652
    Top = 54
  end
  object qryTipoContas2: TFDQuery
    Connection = BancodeDados.FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      'select CONTA_ID, CONTA from TIPO_CONTAS order by CONTA')
    Left = 494
    Top = 46
    object qryTipoContas2CONTA_ID: TIntegerField
      FieldName = 'CONTA_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryTipoContas2CONTA: TStringField
      FieldName = 'CONTA'
      Size = 60
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 368
    Top = 42
    object AssociaraoTipodeConta1: TMenuItem
      Caption = 'Associar a Conta Destino'
      Enabled = False
      Visible = False
      OnClick = AssociaraoTipodeConta1Click
    end
    object N3: TMenuItem
      Caption = '-'
      Enabled = False
      Visible = False
    end
    object Repetirltimotipodecontautilizado1: TMenuItem
      Caption = 'Repetir '#250'ltimo tipo de conta utilizado'
      Enabled = False
      ShortCut = 115
      Visible = False
      OnClick = Repetirltimotipodecontautilizado1Click
    end
    object N1: TMenuItem
      Caption = '-'
      Enabled = False
      Visible = False
    end
    object Repetirltimotipodecontaparatodos1: TMenuItem
      Caption = 'Repetir '#250'ltimo tipo de conta para todos'
      Enabled = False
      Visible = False
      OnClick = Repetirltimotipodecontaparatodos1Click
    end
    object N2: TMenuItem
      Caption = '-'
      Enabled = False
      Visible = False
    end
    object Imprimir1: TMenuItem
      Caption = 'Imprimir'
      OnClick = Imprimir1Click
    end
  end
end
