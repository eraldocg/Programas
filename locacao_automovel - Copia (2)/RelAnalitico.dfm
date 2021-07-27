object RelAnaliticoForm: TRelAnaliticoForm
  Left = 253
  Top = 222
  Caption = 'RelCaixaSimples'
  ClientHeight = 409
  ClientWidth = 786
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
  object RLReport2: TRLReport
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    DataSource = BancodeDados.DSPagar
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ShowProgress = False
    BeforePrint = RLReport2BeforePrint
    object RLBand5: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 95
      BandType = btColumnHeader
      object RLLabel6: TRLLabel
        Left = 112
        Top = 7
        Width = 288
        Height = 19
        Caption = 'Relat'#243'rio Sint'#233'tico de Contas a Pagar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbPeriodo: TRLLabel
        Left = 114
        Top = 52
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
        Top = 31
        Width = 52
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
      Top = 133
      Width = 718
      Height = 45
      object RLBand6: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 16
        BandType = btColumnHeader
        object lbCorPadrao1: TRLLabel
          Left = 2
          Top = -1
          Width = 714
          Height = 16
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
          Top = 15
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
          Left = 409
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
          Caption = 'T'#237'tulo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel3: TRLLabel
          Left = 98
          Top = 3
          Width = 145
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
        object RLDraw20: TRLDraw
          Left = 95
          Top = 1
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel5: TRLLabel
          Left = 48
          Top = 3
          Width = 46
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'Vencimento'
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
          Left = 412
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
          Left = 436
          Top = 1
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw26: TRLDraw
          Left = 547
          Top = 1
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel8: TRLLabel
          Left = 495
          Top = 3
          Width = 50
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'Total Pago'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel9: TRLLabel
          Left = 551
          Top = 3
          Width = 50
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'Vl Falta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw30: TRLDraw
          Left = 491
          Top = 1
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel11: TRLLabel
          Left = 439
          Top = 3
          Width = 50
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
        object RLDraw32: TRLDraw
          Left = 604
          Top = 0
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel12: TRLLabel
          Left = 607
          Top = 3
          Width = 46
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
        object RLLabel7: TRLLabel
          Left = 248
          Top = 3
          Width = 160
          Height = 11
          AutoSize = False
          Caption = 'Fornecedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw3: TRLDraw
          Left = 245
          Top = 1
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
      end
      object RLDetailGrid1: TRLDetailGrid
        Left = 0
        Top = 16
        Width = 718
        Height = 13
        BeforePrint = RLDetailGrid1BeforePrint
        object lbCor: TRLLabel
          Left = 2
          Top = -3
          Width = 716
          Height = 16
          AutoSize = False
          Borders.Color = 16704207
          Color = 14145535
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
          Left = 95
          Top = -4
          Width = 1
          Height = 17
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw16: TRLDraw
          Left = 547
          Top = -4
          Width = 1
          Height = 17
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDBText1: TRLDBText
          Left = 48
          Top = 1
          Width = 46
          Height = 10
          Alignment = taCenter
          AutoSize = False
          DataField = 'VENCIMENTO'
          DataSource = BancodeDados.DSPagar
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
          DataField = 'PAGAR_ID'
          DataSource = BancodeDados.DSPagar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText4: TRLDBText
          Left = 412
          Top = 1
          Width = 23
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PARCELA'
          DataSource = BancodeDados.DSPagar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDraw17: TRLDraw
          Left = 409
          Top = -4
          Width = 1
          Height = 17
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDBText7: TRLDBText
          Left = 98
          Top = 1
          Width = 145
          Height = 10
          AutoSize = False
          DataField = 'DESCRICAO'
          DataSource = BancodeDados.DSPagar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDraw23: TRLDraw
          Left = 491
          Top = -4
          Width = 1
          Height = 17
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw25: TRLDraw
          Left = 436
          Top = -4
          Width = 1
          Height = 17
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDBText9: TRLDBText
          Left = 439
          Top = 1
          Width = 50
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALOR_APAGAR'
          DataSource = BancodeDados.DSPagar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText10: TRLDBText
          Left = 495
          Top = 1
          Width = 50
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALOR_PAGO'
          DataSource = BancodeDados.DSPagar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText11: TRLDBText
          Left = 551
          Top = 1
          Width = 50
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALOR_FALTA'
          DataSource = BancodeDados.DSPagar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDraw34: TRLDraw
          Left = 604
          Top = -4
          Width = 1
          Height = 17
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDBText12: TRLDBText
          Left = 607
          Top = 1
          Width = 46
          Height = 10
          Alignment = taCenter
          AutoSize = False
          DataField = 'SITUACAO_PAGAR'
          DataSource = BancodeDados.DSPagar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDraw7: TRLDraw
          Left = 245
          Top = -4
          Width = 1
          Height = 17
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDBText3: TRLDBText
          Left = 248
          Top = 1
          Width = 159
          Height = 10
          AutoSize = False
          DataField = 'ForneNome'
          DataSource = BancodeDados.DSPagar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLBand2: TRLBand
        Left = 0
        Top = 29
        Width = 718
        Height = 15
        BandType = btSummary
        object RLDBResult1: TRLDBResult
          Left = 4
          Top = 1
          Width = 105
          Height = 10
          ComputeNulls = False
          DataField = 'PAGAR_ID'
          DataSource = BancodeDados.DSPagar
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
        object RLDraw35: TRLDraw
          Left = 547
          Top = -4
          Width = 1
          Height = 17
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw37: TRLDraw
          Left = 491
          Top = -4
          Width = 1
          Height = 17
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw38: TRLDraw
          Left = 436
          Top = -4
          Width = 1
          Height = 17
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw40: TRLDraw
          Left = 604
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
          Left = 404
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
        object RLDBResult5: TRLDBResult
          Left = 551
          Top = 1
          Width = 50
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALOR_FALTA'
          DataSource = BancodeDados.DSPagar
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
          Left = 495
          Top = 1
          Width = 50
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALOR_PAGO'
          DataSource = BancodeDados.DSPagar
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
          Left = 439
          Top = 1
          Width = 50
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALOR_APAGAR'
          DataSource = BancodeDados.DSPagar
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
    object RLBand1: TRLBand
      Left = 38
      Top = 178
      Width = 718
      Height = 143
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
        DataField = 'PAGAR_ID'
        DataSource = BancodeDados.DSPagar
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
      object RLDraw45: TRLDraw
        Left = 224
        Top = 20
        Width = 270
        Height = 88
        DrawData.Strings = (
          '0 0'
          '1 0'
          '1 1'
          '0 1')
        DrawKind = dkCustom
      end
      object RLDBResult11: TRLDBResult
        Left = 358
        Top = 79
        Width = 128
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALOR_FALTA'
        DataSource = BancodeDados.DSPagar
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
        Left = 358
        Top = 64
        Width = 128
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALOR_PAGO'
        DataSource = BancodeDados.DSPagar
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
        Left = 358
        Top = 49
        Width = 128
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALOR_APAGAR'
        DataSource = BancodeDados.DSPagar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object RLDraw46: TRLDraw
        Left = 230
        Top = 96
        Width = 257
        Height = 1
        DrawKind = dkLine
      end
      object RLDraw47: TRLDraw
        Left = 230
        Top = 42
        Width = 257
        Height = 1
        DrawKind = dkLine
      end
      object RLLabel14: TRLLabel
        Left = 232
        Top = 24
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
      object RLLabel4: TRLLabel
        Left = 280
        Top = 49
        Width = 76
        Height = 10
        AutoSize = False
        Caption = 'Total Integral:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel15: TRLLabel
        Left = 280
        Top = 64
        Width = 76
        Height = 10
        AutoSize = False
        Caption = 'Total Pago: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel16: TRLLabel
        Left = 280
        Top = 79
        Width = 76
        Height = 10
        AutoSize = False
        Caption = 'Valor Faltando: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 321
      Width = 718
      Height = 41
      BandType = btFooter
      object RLDraw1: TRLDraw
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
        Top = 7
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
        Top = 19
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
        Top = 29
        Width = 55
        Height = 10
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
