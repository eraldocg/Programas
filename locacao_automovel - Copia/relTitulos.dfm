object relTitulosForm: TrelTitulosForm
  Left = 244
  Top = 175
  Caption = 'relTitulosForm'
  ClientHeight = 602
  ClientWidth = 854
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport2: TRLReport
    Left = 8
    Top = 58
    Width = 794
    Height = 1123
    DataSource = BancodeDados.DSBoletos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ShowProgress = False
    object RLBand5: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 94
      BandType = btColumnHeader
      object RLLabel6: TRLLabel
        Left = 112
        Top = 7
        Width = 222
        Height = 19
        Caption = 'Relat'#243'rio Anal'#237'tico de T'#237'tulos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbPeriodo: TRLLabel
        Left = 114
        Top = 49
        Width = 66
        Height = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
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
      object RLSystemInfo2: TRLSystemInfo
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
      object RLSystemInfo3: TRLSystemInfo
        Left = 637
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
      object lbTitulo: TRLLabel
        Left = 114
        Top = 30
        Width = 52
        Height = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbTipo: TRLLabel
        Left = 114
        Top = 68
        Width = 44
        Height = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLImage1: TSedRLDBImage
        Left = 4
        Top = 2
        Width = 92
        Height = 88
        Stretch = True
        DataField = 'LOGO1'
        DataSource = BancodeDados.dsConfig
      end
    end
    object RLGroup2: TRLGroup
      Left = 38
      Top = 132
      Width = 718
      Height = 80
      object RLBand6: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 15
        BandType = btColumnHeader
        object lbCorPadrao1: TRLLabel
          Left = 2
          Top = -1
          Width = 715
          Height = 16
          AutoSize = False
          Borders.Color = 16704207
          Color = 16706784
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16704207
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLDraw2: TRLDraw
          Left = 1
          Top = 0
          Width = 715
          Height = 1
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DrawKind = dkLine
        end
        object RLDraw4: TRLDraw
          Left = 2
          Top = 14
          Width = 715
          Height = 1
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DrawKind = dkLine
        end
        object RLDraw5: TRLDraw
          Left = 1
          Top = 1
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw6: TRLDraw
          Left = 45
          Top = 1
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw8: TRLDraw
          Left = 412
          Top = 1
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw9: TRLDraw
          Left = 716
          Top = 1
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel2: TRLLabel
          Left = 4
          Top = 3
          Width = 40
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'Venc.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel3: TRLLabel
          Left = 126
          Top = 3
          Width = 172
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
        object RLDraw20: TRLDraw
          Left = 122
          Top = 1
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel5: TRLLabel
          Left = 47
          Top = 3
          Width = 74
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'Telefone'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw22: TRLDraw
          Left = 414
          Top = 16
          Width = 0
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel1: TRLLabel
          Left = 415
          Top = 3
          Width = 24
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
        object RLDraw24: TRLDraw
          Left = 439
          Top = 1
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw26: TRLDraw
          Left = 526
          Top = 1
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel8: TRLLabel
          Left = 487
          Top = 3
          Width = 38
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'Dias Atr.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel9: TRLLabel
          Left = 529
          Top = 3
          Width = 40
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
        object RLDraw30: TRLDraw
          Left = 485
          Top = 1
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel11: TRLLabel
          Left = 442
          Top = 3
          Width = 42
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw31: TRLDraw
          Left = 571
          Top = 1
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw32: TRLDraw
          Left = 671
          Top = 0
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel4: TRLLabel
          Left = 628
          Top = 3
          Width = 42
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'Pago'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel12: TRLLabel
          Left = 673
          Top = 3
          Width = 42
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
        object RLDraw3: TRLDraw
          Left = 300
          Top = 1
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel16: TRLLabel
          Left = 303
          Top = 3
          Width = 109
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
        object RLDraw1: TRLDraw
          Left = 625
          Top = 0
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel7: TRLLabel
          Left = 574
          Top = 2
          Width = 50
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'A Pagar'
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
        Top = 15
        Width = 718
        Height = 12
        BeforePrint = RLDetailGrid1BeforePrint
        object lbCor: TRLLabel
          Left = 2
          Top = -3
          Width = 715
          Height = 16
          AutoSize = False
          Borders.Color = 16704207
          Color = 12713982
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16704207
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLDraw10: TRLDraw
          Left = 1
          Top = 11
          Width = 716
          Height = 1
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DrawKind = dkLine
        end
        object RLDraw11: TRLDraw
          Left = 1
          Top = -1
          Width = 1
          Height = 14
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw12: TRLDraw
          Left = 45
          Top = -4
          Width = 1
          Height = 17
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw14: TRLDraw
          Left = 716
          Top = -4
          Width = 1
          Height = 17
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw15: TRLDraw
          Left = 122
          Top = -4
          Width = 1
          Height = 17
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw16: TRLDraw
          Left = 526
          Top = -4
          Width = 1
          Height = 17
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDBText1: TRLDBText
          Left = 47
          Top = 1
          Width = 74
          Height = 10
          Alignment = taCenter
          AutoSize = False
          DataField = 'CliFone'
          DataSource = BancodeDados.DSBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText2: TRLDBText
          Left = 4
          Top = 1
          Width = 40
          Height = 10
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
        object RLDBText4: TRLDBText
          Left = 415
          Top = 1
          Width = 23
          Height = 10
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
          Left = 628
          Top = 1
          Width = 42
          Height = 10
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
        object RLDraw17: TRLDraw
          Left = 412
          Top = -4
          Width = 1
          Height = 17
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDBText7: TRLDBText
          Left = 127
          Top = 1
          Width = 172
          Height = 10
          AutoSize = False
          DataField = 'Fantasia'
          DataSource = BancodeDados.DSBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDraw23: TRLDraw
          Left = 485
          Top = -4
          Width = 1
          Height = 17
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw25: TRLDraw
          Left = 439
          Top = -4
          Width = 1
          Height = 17
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDBText9: TRLDBText
          Left = 442
          Top = 1
          Width = 41
          Height = 10
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
        object RLDraw33: TRLDraw
          Left = 571
          Top = -4
          Width = 1
          Height = 17
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDBText11: TRLDBText
          Left = 529
          Top = 1
          Width = 40
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'JurosCalc'
          DataSource = BancodeDados.DSBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDraw34: TRLDraw
          Left = 671
          Top = -4
          Width = 1
          Height = 17
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDBText12: TRLDBText
          Left = 673
          Top = 1
          Width = 42
          Height = 10
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
        object RLDraw7: TRLDraw
          Left = 300
          Top = -2
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDBText3: TRLDBText
          Left = 303
          Top = 1
          Width = 109
          Height = 10
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
        object RLDBText8: TRLDBText
          Left = 487
          Top = 1
          Width = 38
          Height = 10
          Alignment = taRightJustify
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
        object RLDBText6: TRLDBText
          Left = 574
          Top = 1
          Width = 50
          Height = 10
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
        object RLDraw13: TRLDraw
          Left = 625
          Top = -4
          Width = 1
          Height = 17
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
      end
      object RLBand2: TRLBand
        Left = 0
        Top = 27
        Width = 718
        Height = 31
        AutoExpand = False
        BandType = btSummary
        object RLDraw35: TRLDraw
          Left = 526
          Top = -4
          Width = 1
          Height = 17
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw37: TRLDraw
          Left = 485
          Top = -4
          Width = 1
          Height = 17
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw38: TRLDraw
          Left = 439
          Top = -4
          Width = 1
          Height = 17
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw39: TRLDraw
          Left = 571
          Top = -4
          Width = 1
          Height = 17
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw40: TRLDraw
          Left = 625
          Top = -4
          Width = 1
          Height = 17
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw41: TRLDraw
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
        object RLDraw42: TRLDraw
          Left = 716
          Top = -4
          Width = 1
          Height = 17
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw44: TRLDraw
          Left = 1
          Top = -1
          Width = 1
          Height = 14
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel13: TRLLabel
          Left = 408
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
        object lbTotAPagarCalc: TRLDBResult
          Left = 574
          Top = 1
          Width = 50
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
          ResetAfterPrint = True
          Text = ''
        end
        object RLDBResult1: TRLDBResult
          Left = 4
          Top = 1
          Width = 105
          Height = 10
          ComputeNulls = False
          DataField = 'CLI_ID'
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
        object lbTotJurosCalc: TRLDBResult
          Left = 529
          Top = 1
          Width = 40
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'JurosCalc'
          DataSource = BancodeDados.DSBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          ResetAfterPrint = True
          Text = ''
        end
        object RLDraw18: TRLDraw
          Left = 671
          Top = -4
          Width = 1
          Height = 17
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object lbTotPago: TRLDBResult
          Left = 628
          Top = 1
          Width = 42
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
          ResetAfterPrint = True
          Text = ''
        end
        object lbTotInt: TRLDBResult
          Left = 442
          Top = 1
          Width = 41
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
          ResetAfterPrint = True
          Text = ''
        end
      end
    end
    object RLBand1: TRLBand
      Left = 38
      Top = 212
      Width = 718
      Height = 138
      BandType = btSummary
      object RLDraw19: TRLDraw
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
      object RLDBResult2: TRLDBResult
        Left = 4
        Top = 2
        Width = 152
        Height = 12
        DataField = 'CLI_ID'
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
      object lbEmpresaNome: TRLLabel
        Left = 2
        Top = 21
        Width = 80
        Height = 14
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lbEmpresaSite: TRLLabel
        Left = 2
        Top = 33
        Width = 51
        Height = 10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lbSistemaNome: TRLLabel
        Left = 2
        Top = 43
        Width = 55
        Height = 10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw21: TRLDraw
        Left = 407
        Top = 6
        Width = 270
        Height = 127
        DrawData.Strings = (
          '0 0'
          '1 0'
          '1 1'
          '0 1')
        DrawKind = dkCustom
      end
      object RLDraw27: TRLDraw
        Left = 413
        Top = 86
        Width = 257
        Height = 1
        DrawKind = dkLine
      end
      object RLDraw28: TRLDraw
        Left = 413
        Top = 28
        Width = 257
        Height = 1
        DrawKind = dkLine
      end
      object RLLabel10: TRLLabel
        Left = 415
        Top = 10
        Width = 254
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
      object RLDBResult3: TRLDBResult
        Left = 415
        Top = 50
        Width = 254
        Height = 13
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
        Text = 'Valor Total Recebido: '
      end
      object RLDBResult4: TRLDBResult
        Left = 415
        Top = 95
        Width = 254
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'vlFaltando'
        DataSource = BancodeDados.DSBoletos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = 'Valor Total a Receber: '
      end
      object RLDBResult5: TRLDBResult
        Left = 415
        Top = 35
        Width = 254
        Height = 13
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
        Text = 'Valor Total Integral: '
      end
      object RLDBResult6: TRLDBResult
        Left = 415
        Top = 65
        Width = 254
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'JurosCalc'
        DataSource = BancodeDados.DSBoletos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = 'Total de Juros: '
      end
      object lbConfiavel: TRLLabel
        Left = 415
        Top = 112
        Width = 254
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object tempTotal: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 300
    Top = 418
    object tempTotalVL_INT: TCurrencyField
      FieldName = 'VL_INT'
    end
    object tempTotalVL_JUROS: TCurrencyField
      FieldName = 'VL_JUROS'
    end
    object tempTotalVL_APAGAR: TCurrencyField
      FieldName = 'VL_APAGAR'
    end
    object tempTotalVL_PAGO: TCurrencyField
      FieldName = 'VL_PAGO'
    end
  end
end
