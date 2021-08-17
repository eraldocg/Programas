object relSituacaoTitulosForm: TrelSituacaoTitulosForm
  Left = 258
  Top = 174
  Caption = 'Sint'#233'tico de T'#237'tulos'
  ClientHeight = 711
  ClientWidth = 1147
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 75
    Top = 24
    Width = 1123
    Height = 794
    DataSource = BancodeDados.DSBoletos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.Orientation = poLandscape
    ShowProgress = False
    BeforePrint = RLReport1BeforePrint
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 1047
      Height = 93
      BandType = btColumnHeader
      object lbDesc1: TRLLabel
        Left = 100
        Top = 23
        Width = 49
        Height = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 951
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
      object RLSystemInfo2: TRLSystemInfo
        Left = 949
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
      object RLSystemInfo3: TRLSystemInfo
        Left = 961
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
      object RLDraw51: TRLDraw
        Left = 1
        Top = 133
        Width = 1
        Height = 93
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDraw53: TRLDraw
        Left = 1044
        Top = 133
        Width = 1
        Height = 93
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object lbPeriodo: TRLLabel
        Left = 100
        Top = 40
        Width = 57
        Height = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbTitulo1: TRLLabel
        Left = 100
        Top = 2
        Width = 154
        Height = 19
        Caption = 'Anal'#237'tico de T'#237'tulos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBImage1: TSedRLDBImage
        Left = 4
        Top = 5
        Width = 93
        Height = 82
        Stretch = True
        DataField = 'LOGO1'
        DataSource = BancodeDados.dsConfig
      end
      object lbTipo_1: TRLLabel
        Left = 100
        Top = 57
        Width = 51
        Height = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbAnoLet1: TRLLabel
        Left = 100
        Top = 74
        Width = 60
        Height = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLGroup1: TRLGroup
      Left = 38
      Top = 131
      Width = 1047
      Height = 42
      object RLBand2: TRLBand
        Left = 0
        Top = 14
        Width = 1047
        Height = 12
        BeforePrint = RLBand2BeforePrint
        object lbCorProtest1_1: TRLLabel
          Left = 1
          Top = 0
          Width = 1044
          Height = 14
          Alignment = taCenter
          AutoSize = False
          Caption = 
            '----------------------------------------------------------------' +
            '----------------------------------------------------------------' +
            '----------------------------------------------------------------' +
            '----------------------------------------------------------------' +
            '------------------------------'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLDraw18: TRLDraw
          Left = 394
          Top = -2
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw20: TRLDraw
          Left = 433
          Top = -2
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw22: TRLDraw
          Left = 50
          Top = -2
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw24: TRLDraw
          Left = 482
          Top = -2
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw25: TRLDraw
          Left = 524
          Top = -2
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw28: TRLDraw
          Left = 573
          Top = -2
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw29: TRLDraw
          Left = 622
          Top = -2
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw30: TRLDraw
          Left = 671
          Top = -2
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw31: TRLDraw
          Left = 720
          Top = -2
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw36: TRLDraw
          Left = 1
          Top = -2
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDBText2: TRLDBText
          Left = 4
          Top = 1
          Width = 46
          Height = 9
          Alignment = taCenter
          AutoSize = False
          DataField = 'VENCIMENTO'
          DataSource = BancodeDados.DSBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object lbAluno1_2: TRLDBText
          Left = 89
          Top = 1
          Width = 218
          Height = 9
          AutoSize = False
          DataField = 'CLIENTE'
          DataSource = BancodeDados.DSBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText4: TRLDBText
          Left = 396
          Top = 1
          Width = 36
          Height = 9
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PARCELA'
          DataSource = BancodeDados.DSBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText5: TRLDBText
          Left = 674
          Top = 1
          Width = 44
          Height = 9
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALOR_PAGO'
          DataSource = BancodeDados.DSBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText6: TRLDBText
          Left = 625
          Top = 1
          Width = 44
          Height = 9
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'vlAPagarCalc'
          DataSource = BancodeDados.DSBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText7: TRLDBText
          Left = 576
          Top = 1
          Width = 44
          Height = 9
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'JUROS'
          DataSource = BancodeDados.DSBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText8: TRLDBText
          Left = 527
          Top = 1
          Width = 44
          Height = 9
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'MULTA'
          DataSource = BancodeDados.DSBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText11: TRLDBText
          Left = 485
          Top = 1
          Width = 37
          Height = 9
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'DESCONTO'
          DataSource = BancodeDados.DSBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText12: TRLDBText
          Left = 436
          Top = 1
          Width = 44
          Height = 9
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALOR_INTEGRAL'
          DataSource = BancodeDados.DSBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText15: TRLDBText
          Left = 723
          Top = 1
          Width = 50
          Height = 9
          Alignment = taCenter
          AutoSize = False
          DataField = 'SITUACAO_BOLETO'
          DataSource = BancodeDados.DSBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object lbUsProtDB_2: TRLDBText
          Left = 950
          Top = 1
          Width = 91
          Height = 9
          AutoSize = False
          DataField = 'QtdDias'
          DataSource = BancodeDados.DSBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDraw37: TRLDraw
          Left = 1044
          Top = -2
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw35: TRLDraw
          Left = 1
          Top = 11
          Width = 1044
          Height = 1
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DrawKind = dkLine
        end
        object lbHora1_2: TRLDBText
          Left = 895
          Top = 1
          Width = 50
          Height = 9
          Alignment = taCenter
          AutoSize = False
          DataField = 'HORA_RECEB'
          DataSource = BancodeDados.DSBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDraw33: TRLDraw
          Left = 891
          Top = -2
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw68: TRLDraw
          Left = 313
          Top = -2
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDBText17: TRLDBText
          Left = 315
          Top = 1
          Width = 77
          Height = 9
          AutoSize = False
          DataField = 'DESCRICAO'
          DataSource = BancodeDados.DSBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDraw16: TRLDraw
          Left = 87
          Top = -3
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object lbMat1_2: TRLDBText
          Left = 51
          Top = 1
          Width = 36
          Height = 9
          Alignment = taCenter
          AutoSize = False
          DataField = 'CLI_ID'
          DataSource = BancodeDados.DSBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDraw15: TRLDraw
          Left = 774
          Top = -2
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDBText9: TRLDBText
          Left = 839
          Top = 1
          Width = 50
          Height = 9
          Alignment = taCenter
          AutoSize = False
          DataField = 'RECEBIMENTO'
          DataSource = BancodeDados.DSBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDraw26: TRLDraw
          Left = 835
          Top = -2
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw43: TRLDraw
          Left = 947
          Top = -2
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object lbDtReceb1_2: TRLDBText
          Left = 778
          Top = 1
          Width = 54
          Height = 9
          AutoSize = False
          DataField = 'OpcaoPagar'
          DataSource = BancodeDados.DSBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 26
        Width = 1047
        Height = 16
        BandType = btSummary
        object lbCorPadrao1_: TRLLabel
          Left = 433
          Top = -3
          Width = 287
          Height = 15
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
        object RLDraw39: TRLDraw
          Left = 433
          Top = -3
          Width = 1
          Height = 16
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw40: TRLDraw
          Left = 482
          Top = -3
          Width = 1
          Height = 16
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw41: TRLDraw
          Left = 524
          Top = -3
          Width = 1
          Height = 16
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw44: TRLDraw
          Left = 573
          Top = -3
          Width = 1
          Height = 16
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw45: TRLDraw
          Left = 622
          Top = -3
          Width = 1
          Height = 16
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw46: TRLDraw
          Left = 671
          Top = -3
          Width = 1
          Height = 16
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw47: TRLDraw
          Left = 720
          Top = -3
          Width = 1
          Height = 16
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw48: TRLDraw
          Left = 1
          Top = 12
          Width = 1044
          Height = 1
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DrawKind = dkLine
        end
        object RLLabel20: TRLLabel
          Left = 396
          Top = 0
          Width = 35
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Total:'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLDBResult2: TRLDBResult
          Left = 436
          Top = 0
          Width = 44
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALOR_INTEGRAL'
          DataSource = BancodeDados.DSBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLDBResult3: TRLDBResult
          Left = 485
          Top = 0
          Width = 37
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'DESCONTO'
          DataSource = BancodeDados.DSBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLDBResult6: TRLDBResult
          Left = 527
          Top = 0
          Width = 44
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'MULTA'
          DataSource = BancodeDados.DSBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLDBResult7: TRLDBResult
          Left = 576
          Top = 0
          Width = 44
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'JUROS'
          DataSource = BancodeDados.DSBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLDBResult8: TRLDBResult
          Left = 625
          Top = 0
          Width = 44
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'vlAPagarCalc'
          DataSource = BancodeDados.DSBoletos
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
          Left = 674
          Top = 0
          Width = 44
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALOR_PAGO'
          DataSource = BancodeDados.DSBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLDraw54: TRLDraw
          Left = 1
          Top = -3
          Width = 1
          Height = 16
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw55: TRLDraw
          Left = 1044
          Top = -3
          Width = 1
          Height = 16
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDBResult19: TRLDBResult
          Left = 5
          Top = 1
          Width = 105
          Height = 10
          ComputeNulls = False
          DataField = 'BOLETO_ID'
          DataSource = BancodeDados.DSBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Info = riCount
          ParentFont = False
          Text = 'N'#250'mero de Registros: '
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 0
        Width = 1047
        Height = 14
        BandType = btColumnHeader
        object lbCorPadrao1: TRLLabel
          Left = 1
          Top = 0
          Width = 1043
          Height = 13
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
        object RLDraw4: TRLDraw
          Left = 1
          Top = 0
          Width = 1
          Height = 16
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw6: TRLDraw
          Left = 394
          Top = 0
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw7: TRLDraw
          Left = 433
          Top = 0
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object lbAluno1_1: TRLLabel
          Left = 89
          Top = 2
          Width = 218
          Height = 11
          AutoSize = False
          Caption = 'Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel4: TRLLabel
          Left = 396
          Top = 2
          Width = 36
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'Parc.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel5: TRLLabel
          Left = 436
          Top = 2
          Width = 44
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'Vl. Integral'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw9: TRLDraw
          Left = 50
          Top = 0
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel7: TRLLabel
          Left = 4
          Top = 2
          Width = 46
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'Dt. Venc.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw8: TRLDraw
          Left = 482
          Top = 0
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel8: TRLLabel
          Left = 485
          Top = 2
          Width = 38
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'Desc.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw11: TRLDraw
          Left = 524
          Top = 0
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel11: TRLLabel
          Left = 527
          Top = 2
          Width = 44
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'Multa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw17: TRLDraw
          Left = 573
          Top = 0
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel12: TRLLabel
          Left = 576
          Top = 2
          Width = 44
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'Juros'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw19: TRLDraw
          Left = 622
          Top = 0
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel13: TRLLabel
          Left = 625
          Top = 2
          Width = 44
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'Vl. a Rec.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw21: TRLDraw
          Left = 671
          Top = 0
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel14: TRLLabel
          Left = 674
          Top = 2
          Width = 44
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'Vl. Rec.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw23: TRLDraw
          Left = 720
          Top = 0
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw14: TRLDraw
          Left = 774
          Top = 0
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel16: TRLLabel
          Left = 723
          Top = 2
          Width = 50
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'Situa'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbUsProt_2: TRLLabel
          Left = 950
          Top = 2
          Width = 91
          Height = 11
          Alignment = taJustify
          AutoSize = False
          Caption = 'Dias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw1: TRLDraw
          Left = 1
          Top = 0
          Width = 1044
          Height = 1
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DrawKind = dkLine
        end
        object RLDraw12: TRLDraw
          Left = 1044
          Top = 0
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw2: TRLDraw
          Left = 1
          Top = 13
          Width = 1044
          Height = 1
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DrawKind = dkLine
        end
        object RLDraw32: TRLDraw
          Left = 891
          Top = 0
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object lbHora1_1: TRLLabel
          Left = 895
          Top = 2
          Width = 50
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'Hora Rec.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw69: TRLDraw
          Left = 313
          Top = 0
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel1: TRLLabel
          Left = 315
          Top = 2
          Width = 77
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
        object RLDraw5: TRLDraw
          Left = 87
          Top = 0
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object lbMat1_1: TRLLabel
          Left = 51
          Top = 2
          Width = 36
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'C'#243'digo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw13: TRLDraw
          Left = 835
          Top = -2
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel9: TRLLabel
          Left = 839
          Top = 2
          Width = 50
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'Dt. Receb.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw50: TRLDraw
          Left = 947
          Top = -1
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object lbDtReceb1_1: TRLLabel
          Left = 778
          Top = 2
          Width = 54
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'Op'#231#227'o de Pag.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
    object RLBand6: TRLBand
      Left = 38
      Top = 173
      Width = 1047
      Height = 130
      BandType = btSummary
      object RLDraw49: TRLDraw
        Left = 1
        Top = 0
        Width = 1044
        Height = 1
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DrawKind = dkLine
      end
      object RLDraw27: TRLDraw
        Left = 715
        Top = 4
        Width = 287
        Height = 110
        DrawData.Strings = (
          '0 0'
          '1 0'
          '1 1'
          '0 1')
        DrawKind = dkCustom
      end
      object RLDraw42: TRLDraw
        Left = 725
        Top = 26
        Width = 266
        Height = 1
        DrawKind = dkLine
      end
      object lb2_1: TRLLabel
        Left = 720
        Top = 8
        Width = 276
        Height = 14
        Alignment = taCenter
        AutoSize = False
        Caption = 'Resumo Geral'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbTotalRec: TRLLabel
        Left = 852
        Top = 80
        Width = 143
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbTotalInt: TRLLabel
        Left = 852
        Top = 32
        Width = 143
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult13: TRLDBResult
        Left = 5
        Top = 2
        Width = 152
        Height = 12
        DataField = 'MATRICULA_ID'
        DataSource = BancodeDados.DSBoletos
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
      object lbTotalARec: TRLLabel
        Left = 852
        Top = 96
        Width = 143
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 720
        Top = 32
        Width = 131
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Valor Integral:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 720
        Top = 80
        Width = 131
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Valor Recebido (com juros):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 720
        Top = 96
        Width = 131
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Valor em Aberto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw60: TRLDraw
        Left = 39
        Top = 18
        Width = 208
        Height = 80
        DrawData.Strings = (
          '0 0'
          '1 0'
          '1 1'
          '0 1')
        DrawKind = dkCustom
      end
      object lb2_0: TRLLabel
        Left = 42
        Top = 22
        Width = 202
        Height = 14
        Alignment = taCenter
        AutoSize = False
        Caption = 'Legenda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw61: TRLDraw
        Left = 42
        Top = 40
        Width = 202
        Height = 1
        DrawKind = dkLine
      end
      object RLLabel17: TRLLabel
        Left = 42
        Top = 47
        Width = 202
        Height = 10
        AutoSize = False
        Caption = 'RISCADO: T'#237'tulo a receber em protesto.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel25: TRLLabel
        Left = 42
        Top = 59
        Width = 202
        Height = 10
        AutoSize = False
        Caption = 'VERMELHO: T'#237'tulo quitado em protesto.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel10: TRLLabel
        Left = 720
        Top = 48
        Width = 131
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Valor cancelado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbTotalCanc: TRLLabel
        Left = 852
        Top = 48
        Width = 143
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel37: TRLLabel
        Left = 720
        Top = 64
        Width = 131
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Valor renegociado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbTotalReneg: TRLLabel
        Left = 852
        Top = 64
        Width = 143
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 303
      Width = 1047
      Height = 43
      BandType = btFooter
      object RLDraw75: TRLDraw
        Left = 2
        Top = 1
        Width = 1044
        Height = 1
        DrawKind = dkLine
      end
      object LbNomeInstituicao: TRLLabel
        Left = 866
        Top = 5
        Width = 179
        Height = 14
        Alignment = taRightJustify
        Caption = 'Relat'#243'rio de  Clientes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LbEndereco: TRLLabel
        Left = 925
        Top = 19
        Width = 120
        Height = 10
        Alignment = taRightJustify
        Caption = 'Relat'#243'rio de Clientes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LbSite: TRLLabel
        Left = 925
        Top = 29
        Width = 120
        Height = 10
        Alignment = taRightJustify
        Caption = 'Relat'#243'rio de Clientes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
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
  object RLReport2: TRLReport
    Left = 121
    Top = 62
    Width = 794
    Height = 1123
    DataSource = BancodeDados.DSBoletos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ShowProgress = False
    BeforePrint = RLReport2BeforePrint
    object RLBand7: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 93
      BandType = btColumnHeader
      object lbTitulo2: TRLLabel
        Left = 105
        Top = 4
        Width = 156
        Height = 19
        Caption = 'Sint'#233'tico de T'#237'tulos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbPeriodo2: TRLLabel
        Left = 105
        Top = 42
        Width = 64
        Height = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo4: TRLSystemInfo
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
      object RLSystemInfo5: TRLSystemInfo
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
      object RLSystemInfo6: TRLSystemInfo
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
      object lbDesc2: TRLLabel
        Left = 105
        Top = 25
        Width = 49
        Height = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ACRLDBImage1: TSedRLDBImage
        Left = 4
        Top = 2
        Width = 92
        Height = 88
        Stretch = True
        DataField = 'LOGO1'
        DataSource = BancodeDados.dsConfig
      end
      object lbTipo2: TRLLabel
        Left = 105
        Top = 59
        Width = 44
        Height = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbAnoLet2: TRLLabel
        Left = 105
        Top = 76
        Width = 60
        Height = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLGroup2: TRLGroup
      Left = 38
      Top = 131
      Width = 718
      Height = 43
      object RLBand8: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 14
        BandType = btColumnHeader
        object lbCorPadrao2: TRLLabel
          Left = 1
          Top = 0
          Width = 715
          Height = 13
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
        object RLDraw38: TRLDraw
          Left = 1
          Top = 0
          Width = 716
          Height = 1
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DrawKind = dkLine
        end
        object RLDraw52: TRLDraw
          Left = 1
          Top = 13
          Width = 716
          Height = 1
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DrawKind = dkLine
        end
        object RLDraw56: TRLDraw
          Left = 1
          Top = 0
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw70: TRLDraw
          Left = 50
          Top = 0
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw71: TRLDraw
          Left = 398
          Top = 0
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw72: TRLDraw
          Left = 716
          Top = 0
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel23: TRLLabel
          Left = 3
          Top = 2
          Width = 48
          Height = 10
          Alignment = taCenter
          AutoSize = False
          Caption = 'Dt. Venc.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbAluno2_1: TRLLabel
          Left = 91
          Top = 2
          Width = 220
          Height = 11
          AutoSize = False
          Caption = 'Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw73: TRLDraw
          Left = 89
          Top = 0
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object lbMat2_1: TRLLabel
          Left = 52
          Top = 2
          Width = 36
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'C'#243'digo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel27: TRLLabel
          Left = 400
          Top = 2
          Width = 36
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'Parc.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw77: TRLDraw
          Left = 437
          Top = 0
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel29: TRLLabel
          Left = 485
          Top = 2
          Width = 38
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'Desc.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw79: TRLDraw
          Left = 483
          Top = 0
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel30: TRLLabel
          Left = 439
          Top = 2
          Width = 44
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'Vl. Integral'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw80: TRLDraw
          Left = 523
          Top = 0
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw81: TRLDraw
          Left = 615
          Top = 0
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel31: TRLLabel
          Left = 571
          Top = 2
          Width = 44
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'Recebido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbDtReceb2_1: TRLLabel
          Left = 617
          Top = 2
          Width = 47
          Height = 10
          AutoSize = False
          Caption = 'Dt. Receb.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw82: TRLDraw
          Left = 317
          Top = 0
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel33: TRLLabel
          Left = 319
          Top = 2
          Width = 77
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
        object RLLabel34: TRLLabel
          Left = 525
          Top = 2
          Width = 44
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'A receber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw83: TRLDraw
          Left = 569
          Top = 0
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object rlProtest_1: TRLDraw
          Left = 665
          Top = 1
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel22: TRLLabel
          Left = 666
          Top = 2
          Width = 48
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'Situa'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLDetailGrid1: TRLDetailGrid
        Left = 0
        Top = 14
        Width = 718
        Height = 15
        BeforePrint = RLDetailGrid1BeforePrint
        object lbCorProtest2_1: TRLLabel
          Left = 1
          Top = 0
          Width = 716
          Height = 14
          Alignment = taCenter
          AutoSize = False
          Caption = 
            '----------------------------------------------------------------' +
            '----------------------------------------------------------------' +
            '----------------------------------------------------------------' +
            '----------------------------------------------------------------' +
            '------------------------------'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLDraw84: TRLDraw
          Left = 1
          Top = 14
          Width = 716
          Height = 1
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DrawKind = dkLine
        end
        object RLDraw85: TRLDraw
          Left = 1
          Top = -2
          Width = 1
          Height = 17
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw86: TRLDraw
          Left = 50
          Top = -2
          Width = 1
          Height = 17
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw87: TRLDraw
          Left = 716
          Top = -2
          Width = 1
          Height = 17
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw88: TRLDraw
          Left = 89
          Top = -2
          Width = 1
          Height = 17
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object lbMat2_2: TRLDBText
          Left = 52
          Top = 1
          Width = 36
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'CLI_ID'
          DataSource = BancodeDados.DSBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText19: TRLDBText
          Left = 3
          Top = 1
          Width = 48
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'VENCIMENTO'
          DataSource = BancodeDados.DSBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText20: TRLDBText
          Left = 400
          Top = 1
          Width = 36
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PARCELA'
          DataSource = BancodeDados.DSBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText21: TRLDBText
          Left = 571
          Top = 1
          Width = 43
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALOR_PAGO'
          DataSource = BancodeDados.DSBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDraw90: TRLDraw
          Left = 398
          Top = -2
          Width = 1
          Height = 17
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object lbAluno2_2: TRLDBText
          Left = 91
          Top = 1
          Width = 220
          Height = 12
          AutoSize = False
          DataField = 'CLIENTE'
          DataSource = BancodeDados.DSBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDraw91: TRLDraw
          Left = 483
          Top = -2
          Width = 1
          Height = 17
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw92: TRLDraw
          Left = 437
          Top = -2
          Width = 1
          Height = 17
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDBText24: TRLDBText
          Left = 439
          Top = 1
          Width = 44
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALOR_INTEGRAL'
          DataSource = BancodeDados.DSBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDraw94: TRLDraw
          Left = 523
          Top = -2
          Width = 1
          Height = 17
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDBText26: TRLDBText
          Left = 485
          Top = 1
          Width = 37
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'DESCONTO'
          DataSource = BancodeDados.DSBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDraw95: TRLDraw
          Left = 615
          Top = -2
          Width = 1
          Height = 17
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object lbDtReceb2_2: TRLDBText
          Left = 617
          Top = 1
          Width = 48
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'RECEBIMENTO'
          DataSource = BancodeDados.DSBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDraw96: TRLDraw
          Left = 317
          Top = -2
          Width = 1
          Height = 17
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDBText28: TRLDBText
          Left = 319
          Top = 1
          Width = 77
          Height = 12
          AutoSize = False
          DataField = 'DESCRICAO'
          DataSource = BancodeDados.DSBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDraw97: TRLDraw
          Left = 569
          Top = -2
          Width = 1
          Height = 17
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDBText29: TRLDBText
          Left = 525
          Top = 1
          Width = 43
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'vlAPagarCalc'
          DataSource = BancodeDados.DSBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object rlProtest_2: TRLDraw
          Left = 665
          Top = -2
          Width = 1
          Height = 17
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDBText25: TRLDBText
          Left = 666
          Top = 2
          Width = 48
          Height = 10
          AutoSize = False
          DataField = 'SITUACAO_BOLETO'
          DataSource = BancodeDados.DSBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLBand9: TRLBand
        Left = 0
        Top = 29
        Width = 718
        Height = 15
        BandType = btSummary
        object RLDraw99: TRLDraw
          Left = 483
          Top = -4
          Width = 1
          Height = 17
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw100: TRLDraw
          Left = 437
          Top = -4
          Width = 1
          Height = 17
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw101: TRLDraw
          Left = 523
          Top = -4
          Width = 1
          Height = 17
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw102: TRLDraw
          Left = 615
          Top = -4
          Width = 1
          Height = 17
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw103: TRLDraw
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
        object RLDraw104: TRLDraw
          Left = 716
          Top = -4
          Width = 1
          Height = 17
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw105: TRLDraw
          Left = 1
          Top = -1
          Width = 1
          Height = 14
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel35: TRLLabel
          Left = 400
          Top = 1
          Width = 36
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
        object RLDBResult1: TRLDBResult
          Left = 571
          Top = 1
          Width = 43
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALOR_PAGO'
          DataSource = BancodeDados.DSBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLDBResult10: TRLDBResult
          Left = 485
          Top = 1
          Width = 37
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'DESCONTO'
          DataSource = BancodeDados.DSBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLDBResult22: TRLDBResult
          Left = 439
          Top = 1
          Width = 44
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALOR_INTEGRAL'
          DataSource = BancodeDados.DSBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLDBResult23: TRLDBResult
          Left = 4
          Top = 1
          Width = 105
          Height = 10
          ComputeNulls = False
          DataField = 'MATRICULA_ID'
          DataSource = BancodeDados.DSBoletos
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
        object RLDraw106: TRLDraw
          Left = 569
          Top = -4
          Width = 1
          Height = 17
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDBResult24: TRLDBResult
          Left = 525
          Top = 1
          Width = 43
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'vlAPagarCalc'
          DataSource = BancodeDados.DSBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          Text = ''
        end
      end
    end
    object RLBand10: TRLBand
      Left = 38
      Top = 174
      Width = 718
      Height = 120
      BandType = btSummary
      object RLDraw107: TRLDraw
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
      object RLDBResult29: TRLDBResult
        Left = 4
        Top = 2
        Width = 152
        Height = 12
        DataField = 'MATRICULA_ID'
        DataSource = BancodeDados.DSBoletos
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
      object RLDraw58: TRLDraw
        Left = 39
        Top = 18
        Width = 208
        Height = 80
        DrawData.Strings = (
          '0 0'
          '1 0'
          '1 1'
          '0 1')
        DrawKind = dkCustom
      end
      object lb1_0: TRLLabel
        Left = 42
        Top = 22
        Width = 202
        Height = 14
        Alignment = taCenter
        AutoSize = False
        Caption = 'Legenda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw59: TRLDraw
        Left = 42
        Top = 40
        Width = 202
        Height = 1
        DrawKind = dkLine
      end
      object RLLabel28: TRLLabel
        Left = 42
        Top = 47
        Width = 202
        Height = 10
        AutoSize = False
        Caption = 'RISCADO: T'#237'tulo a receber em protesto.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel32: TRLLabel
        Left = 42
        Top = 59
        Width = 202
        Height = 10
        AutoSize = False
        Caption = 'VERMELHO: T'#237'tulo quitado em protesto.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLDraw34: TRLDraw
        Left = 421
        Top = 4
        Width = 287
        Height = 110
        DrawData.Strings = (
          '0 0'
          '1 0'
          '1 1'
          '0 1')
        DrawKind = dkCustom
      end
      object RLDraw57: TRLDraw
        Left = 431
        Top = 26
        Width = 266
        Height = 1
        DrawKind = dkLine
      end
      object RLLabel19: TRLLabel
        Left = 426
        Top = 8
        Width = 276
        Height = 14
        Alignment = taCenter
        AutoSize = False
        Caption = 'Resumo Geral'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbTotalRec_: TRLLabel
        Left = 558
        Top = 80
        Width = 143
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbTotalInt_: TRLLabel
        Left = 558
        Top = 32
        Width = 143
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbTotalARec_: TRLLabel
        Left = 558
        Top = 96
        Width = 143
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel52: TRLLabel
        Left = 426
        Top = 32
        Width = 131
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Valor Integral:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel53: TRLLabel
        Left = 426
        Top = 80
        Width = 131
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Valor Recebido (com juros):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel54: TRLLabel
        Left = 426
        Top = 96
        Width = 131
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Valor em Aberto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel55: TRLLabel
        Left = 426
        Top = 48
        Width = 131
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Valor cancelado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbTotalCanc_: TRLLabel
        Left = 558
        Top = 48
        Width = 143
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel57: TRLLabel
        Left = 426
        Top = 64
        Width = 131
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Valor renegociado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbTotalReneg_: TRLLabel
        Left = 558
        Top = 64
        Width = 143
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand11: TRLBand
      Left = 38
      Top = 294
      Width = 718
      Height = 41
      BandType = btFooter
      object LbNomeInstituicao2: TRLLabel
        Left = 604
        Top = 5
        Width = 112
        Height = 14
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LbEndereco2: TRLLabel
        Left = 665
        Top = 19
        Width = 51
        Height = 10
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LbSite2: TRLLabel
        Left = 686
        Top = 29
        Width = 30
        Height = 10
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw111: TRLDraw
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
      object lbEmpresaNome2: TRLLabel
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
      object lbEmpresaSite2: TRLLabel
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
      object lbSistemaNome2: TRLLabel
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
end
