object RelArquivoRetornoForm: TRelArquivoRetornoForm
  Left = 267
  Top = 292
  Width = 1024
  Height = 655
  Caption = 'RelArquivoRetornoForm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 4
    Top = 10
    Width = 794
    Height = 1123
    DataSource = BancodeDados.DSRetorno
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ShowProgress = False
    object RLBand3: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 94
      BandType = btTitle
      object lbTitulo: TRLLabel
        Left = 112
        Top = 7
        Width = 226
        Height = 19
        Caption = 'Relat'#243'rio de Arquivo Retorno'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbPeriodo: TRLLabel
        Left = 114
        Top = 30
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
      object RLDBImage1: TRLDBImage
        Left = 4
        Top = 2
        Width = 92
        Height = 88
        DataField = 'LOGO4'
        Stretch = True
      end
    end
    object RLGroup1: TRLGroup
      Left = 38
      Top = 132
      Width = 718
      Height = 209
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 32
        BandType = btColumnHeader
        object lbCorPadrao1: TRLLabel
          Left = 1
          Top = 16
          Width = 716
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
        object RLDraw2: TRLDraw
          Left = 1
          Top = 16
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
          Left = 1
          Top = 31
          Width = 716
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
          Top = 0
          Width = 1
          Height = 32
          Angle = 90
          DrawKind = dkLine
        end
        object RLDraw6: TRLDraw
          Left = 50
          Top = 17
          Width = 1
          Height = 15
          Angle = 90
          DrawKind = dkLine
        end
        object RLDraw9: TRLDraw
          Left = 716
          Top = 0
          Width = 1
          Height = 32
          Angle = 90
          DrawKind = dkLine
        end
        object RLLabel2: TRLLabel
          Left = 4
          Top = 19
          Width = 44
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'Retorno'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel3: TRLLabel
          Left = 101
          Top = 19
          Width = 210
          Height = 11
          AutoSize = False
          Caption = 'Nosso N'#250'mero'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw20: TRLDraw
          Left = 99
          Top = 17
          Width = 1
          Height = 15
          Angle = 90
          DrawKind = dkLine
        end
        object RLLabel5: TRLLabel
          Left = 54
          Top = 19
          Width = 42
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'N. Banco'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw24: TRLDraw
          Left = 367
          Top = 17
          Width = 1
          Height = 15
          Angle = 90
          DrawKind = dkLine
        end
        object RLDraw26: TRLDraw
          Left = 470
          Top = 17
          Width = 1
          Height = 15
          Angle = 90
          DrawKind = dkLine
        end
        object RLLabel8: TRLLabel
          Left = 473
          Top = 19
          Width = 44
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'Taxa Banco'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw27: TRLDraw
          Left = 667
          Top = 17
          Width = 1
          Height = 15
          Angle = 90
          DrawKind = dkLine
        end
        object RLLabel9: TRLLabel
          Left = 571
          Top = 19
          Width = 48
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'Dias Toler.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw30: TRLDraw
          Left = 421
          Top = 17
          Width = 1
          Height = 15
          Angle = 90
          DrawKind = dkLine
        end
        object RLLabel11: TRLLabel
          Left = 370
          Top = 19
          Width = 50
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'Creditado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw31: TRLDraw
          Left = 569
          Top = 17
          Width = 1
          Height = 15
          Angle = 90
          DrawKind = dkLine
        end
        object RLDraw32: TRLDraw
          Left = 618
          Top = 16
          Width = 1
          Height = 15
          Angle = 90
          DrawKind = dkLine
        end
        object RLLabel4: TRLLabel
          Left = 621
          Top = 19
          Width = 44
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'Juros/Multa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel12: TRLLabel
          Left = 671
          Top = 19
          Width = 42
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'Abatimento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw7: TRLDraw
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
        object RLLabel10: TRLLabel
          Left = 424
          Top = 19
          Width = 44
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'Valor Doc.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbArquivo: TRLLabel
          Left = 5
          Top = 1
          Width = 710
          Height = 14
          Alignment = taCenter
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw8: TRLDraw
          Left = 313
          Top = 16
          Width = 1
          Height = 15
          Angle = 90
          DrawKind = dkLine
        end
        object RLLabel1: TRLLabel
          Left = 316
          Top = 19
          Width = 50
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
        object RLDraw71: TRLDraw
          Left = 520
          Top = 17
          Width = 1
          Height = 15
          Angle = 90
          DrawKind = dkLine
        end
        object RLLabel6: TRLLabel
          Left = 523
          Top = 19
          Width = 44
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
      end
      object RLBand2: TRLBand
        Left = 0
        Top = 32
        Width = 718
        Height = 14
        object RLDBText1: TRLDBText
          Left = 101
          Top = 1
          Width = 210
          Height = 11
          AutoSize = False
          DataField = 'NOSSO_NUMERO'
          DataSource = BancodeDados.DSRetorno
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw10: TRLDraw
          Left = 50
          Top = -5
          Width = 1
          Height = 19
          Angle = 90
          DrawKind = dkLine
        end
        object RLDraw12: TRLDraw
          Left = 716
          Top = -22
          Width = 1
          Height = 36
          Angle = 90
          DrawKind = dkLine
        end
        object RLDraw13: TRLDraw
          Left = 99
          Top = -5
          Width = 1
          Height = 19
          Angle = 90
          DrawKind = dkLine
        end
        object RLDraw15: TRLDraw
          Left = 367
          Top = -5
          Width = 1
          Height = 19
          Angle = 90
          DrawKind = dkLine
        end
        object RLDraw16: TRLDraw
          Left = 470
          Top = -5
          Width = 1
          Height = 19
          Angle = 90
          DrawKind = dkLine
        end
        object RLDraw17: TRLDraw
          Left = 667
          Top = -5
          Width = 1
          Height = 19
          Angle = 90
          DrawKind = dkLine
        end
        object RLDraw18: TRLDraw
          Left = 421
          Top = -5
          Width = 1
          Height = 19
          Angle = 90
          DrawKind = dkLine
        end
        object RLDraw19: TRLDraw
          Left = 569
          Top = -5
          Width = 1
          Height = 19
          Angle = 90
          DrawKind = dkLine
        end
        object RLDraw22: TRLDraw
          Left = 618
          Top = -5
          Width = 1
          Height = 19
          Angle = 90
          DrawKind = dkLine
        end
        object RLDraw25: TRLDraw
          Left = 1
          Top = 13
          Width = 715
          Height = 1
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DrawKind = dkLine
        end
        object RLDBText5: TRLDBText
          Left = 370
          Top = 1
          Width = 50
          Height = 11
          Alignment = taCenter
          AutoSize = False
          DataField = 'DATA_CREDITO'
          DataSource = BancodeDados.DSRetorno
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText6: TRLDBText
          Left = 473
          Top = 1
          Width = 44
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'TX_BANCO'
          DataSource = BancodeDados.DSRetorno
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText7: TRLDBText
          Left = 573
          Top = 1
          Width = 42
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'DIAS_TOLERANCIA'
          DataSource = BancodeDados.DSRetorno
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText8: TRLDBText
          Left = 621
          Top = 1
          Width = 44
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALOR_MORA'
          DataSource = BancodeDados.DSRetorno
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText9: TRLDBText
          Left = 671
          Top = 1
          Width = 42
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALOR_ABATIMENTO'
          DataSource = BancodeDados.DSRetorno
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText11: TRLDBText
          Left = 4
          Top = 1
          Width = 44
          Height = 11
          Alignment = taCenter
          AutoSize = False
          DataField = 'RETORNO_ID'
          DataSource = BancodeDados.DSRetorno
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText12: TRLDBText
          Left = 54
          Top = 1
          Width = 42
          Height = 11
          Alignment = taCenter
          AutoSize = False
          DataField = 'CODIGO_BANCO'
          DataSource = BancodeDados.DSRetorno
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw28: TRLDraw
          Left = 1
          Top = -5
          Width = 1
          Height = 19
          Angle = 90
          DrawKind = dkLine
        end
        object RLDBText10: TRLDBText
          Left = 424
          Top = 1
          Width = 44
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALOR_DOCUMENTO'
          DataSource = BancodeDados.DSRetorno
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw3: TRLDraw
          Left = 313
          Top = -5
          Width = 1
          Height = 19
          Angle = 90
          DrawKind = dkLine
        end
        object RLDBText2: TRLDBText
          Left = 316
          Top = 1
          Width = 50
          Height = 11
          Alignment = taCenter
          AutoSize = False
          DataField = 'DATA_RECEBIMENTO'
          DataSource = BancodeDados.DSRetorno
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw72: TRLDraw
          Left = 520
          Top = -5
          Width = 1
          Height = 19
          Angle = 90
          DrawKind = dkLine
        end
        object RLDBText21: TRLDBText
          Left = 523
          Top = 1
          Width = 44
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'DataVencCalc'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 46
        Width = 718
        Height = 117
        BandType = btSummary
        BeforePrint = RLBand4BeforePrint
        object RLDraw29: TRLDraw
          Left = 421
          Top = -3
          Width = 1
          Height = 17
          Angle = 90
          DrawKind = dkLine
        end
        object RLDraw33: TRLDraw
          Left = 569
          Top = -3
          Width = 1
          Height = 17
          Angle = 90
          DrawKind = dkLine
        end
        object RLDraw34: TRLDraw
          Left = 470
          Top = -3
          Width = 1
          Height = 17
          Angle = 90
          DrawKind = dkLine
        end
        object RLDraw35: TRLDraw
          Left = 618
          Top = -3
          Width = 1
          Height = 17
          Angle = 90
          DrawKind = dkLine
        end
        object RLDraw36: TRLDraw
          Left = 667
          Top = -3
          Width = 1
          Height = 17
          Angle = 90
          DrawKind = dkLine
        end
        object RLDraw37: TRLDraw
          Left = 1
          Top = 13
          Width = 715
          Height = 1
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DrawKind = dkLine
        end
        object RLDraw38: TRLDraw
          Left = 716
          Top = -20
          Width = 1
          Height = 34
          Angle = 90
          DrawKind = dkLine
        end
        object RLDraw39: TRLDraw
          Left = 1
          Top = -1
          Width = 1
          Height = 15
          Angle = 90
          DrawKind = dkLine
        end
        object RLDBResult1: TRLDBResult
          Left = 4
          Top = 2
          Width = 95
          Height = 10
          DataField = 'RETORNO_ID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Info = riCount
          ParentFont = False
          Text = 'N.'#186' de Registro(s): '
        end
        object RLDBResult2: TRLDBResult
          Left = 473
          Top = 2
          Width = 44
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'TX_BANCO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
        end
        object RLDBResult4: TRLDBResult
          Left = 621
          Top = 2
          Width = 44
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALOR_MORA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
        end
        object RLDBResult6: TRLDBResult
          Left = 424
          Top = 2
          Width = 44
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALOR_DOCUMENTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
        end
        object RLDBResult5: TRLDBResult
          Left = 671
          Top = 2
          Width = 42
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALOR_ABATIMENTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
        end
        object RLLabel7: TRLLabel
          Left = 369
          Top = 2
          Width = 50
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
        object RLDraw73: TRLDraw
          Left = 520
          Top = -4
          Width = 1
          Height = 17
          Angle = 90
          DrawKind = dkLine
        end
        object RLDraw102: TRLDraw
          Left = 227
          Top = 17
          Width = 242
          Height = 96
          DrawData.Strings = (
            '0 0'
            '1 0'
            '1 1'
            '0 1')
          DrawKind = dkCustom
        end
        object lbTotalAbat1: TRLDBResult
          Left = 368
          Top = 76
          Width = 90
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALOR_ABATIMENTO'
          DataSource = BancodeDados.DSRetorno
          DisplayMask = ',0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
        end
        object lbTotalJuros1: TRLDBResult
          Left = 368
          Top = 61
          Width = 90
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALOR_MORA'
          DataSource = BancodeDados.DSRetorno
          DisplayMask = ',0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
        end
        object lbTotalDoc1: TRLDBResult
          Left = 368
          Top = 46
          Width = 90
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALOR_DOCUMENTO'
          DataSource = BancodeDados.DSRetorno
          DisplayMask = ',0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
        end
        object RLDraw104: TRLDraw
          Left = 233
          Top = 89
          Width = 229
          Height = 1
          DrawKind = dkLine
        end
        object RLDraw106: TRLDraw
          Left = 233
          Top = 39
          Width = 229
          Height = 1
          DrawKind = dkLine
        end
        object RLLabel16: TRLLabel
          Left = 235
          Top = 21
          Width = 220
          Height = 14
          Alignment = taCenter
          AutoSize = False
          Caption = 'Resumo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel17: TRLLabel
          Left = 237
          Top = 46
          Width = 120
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Valor total dos documentos:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel36: TRLLabel
          Left = 237
          Top = 61
          Width = 120
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Valor total dos juros:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel40: TRLLabel
          Left = 237
          Top = 75
          Width = 120
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Valor total dos abatimentos:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel51: TRLLabel
          Left = 239
          Top = 96
          Width = 120
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Total l'#237'quido:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object lbTotLiquido1: TRLLabel
          Left = 368
          Top = 96
          Width = 90
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Total l'#237'quido:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
    end
    object RLBand7: TRLBand
      Left = 38
      Top = 341
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
      object RLLabel47: TRLLabel
        Left = 2
        Top = 5
        Width = 57
        Height = 14
        Caption = 'Active Soft'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel48: TRLLabel
        Left = 2
        Top = 19
        Width = 79
        Height = 10
        Caption = 'www.activesoftweb.com'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel49: TRLLabel
        Left = 2
        Top = 29
        Width = 80
        Height = 10
        Caption = 'Sistema Escolar Action'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object RLReport3: TRLReport
    Left = 786
    Top = 129
    Width = 794
    Height = 1123
    DataSource = BaixaNEfetuadaForm.DTTitulosTmp
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ShowProgress = False
    object RLBand8: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 112
      BandType = btColumnHeader
      object lbTitulo3: TRLLabel
        Left = 112
        Top = 7
        Width = 226
        Height = 19
        Caption = 'Relat'#243'rio de Arquivo Retorno'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbPeriodo3: TRLLabel
        Left = 114
        Top = 30
        Width = 73
        Height = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
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
      object RLDBImage3: TRLDBImage
        Left = 4
        Top = 2
        Width = 92
        Height = 88
        DataField = 'LOGO4'
        Stretch = True
      end
    end
    object RLGroup2: TRLGroup
      Left = 38
      Top = 150
      Width = 718
      Height = 66
      DataFields = 'SITUACAO_BOLETO'
      object RLBand14: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 15
        BandType = btColumnHeader
        object lbCorPadrao3: TRLLabel
          Left = 1
          Top = -1
          Width = 716
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
        object RLDraw49: TRLDraw
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
        object RLDraw77: TRLDraw
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
        object RLDraw78: TRLDraw
          Left = 1
          Top = 0
          Width = 1
          Height = 15
          Angle = 90
          DrawKind = dkLine
        end
        object RLDraw79: TRLDraw
          Left = 56
          Top = 0
          Width = 1
          Height = 15
          Angle = 90
          DrawKind = dkLine
        end
        object RLDraw80: TRLDraw
          Left = 716
          Top = 0
          Width = 1
          Height = 15
          Angle = 90
          DrawKind = dkLine
        end
        object RLLabel27: TRLLabel
          Left = 4
          Top = 2
          Width = 50
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
        object RLLabel30: TRLLabel
          Left = 115
          Top = 2
          Width = 248
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
        object RLDraw81: TRLDraw
          Left = 113
          Top = 0
          Width = 1
          Height = 15
          Angle = 90
          DrawKind = dkLine
        end
        object RLDraw83: TRLDraw
          Left = 424
          Top = 0
          Width = 1
          Height = 15
          Angle = 90
          DrawKind = dkLine
        end
        object RLLabel32: TRLLabel
          Left = 427
          Top = 2
          Width = 50
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
        object RLLabel33: TRLLabel
          Left = 537
          Top = 2
          Width = 50
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'Vl. a pagar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw85: TRLDraw
          Left = 369
          Top = 0
          Width = 1
          Height = 15
          Angle = 90
          DrawKind = dkLine
        end
        object RLLabel34: TRLLabel
          Left = 61
          Top = 2
          Width = 50
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'C'#243'd. Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw86: TRLDraw
          Left = 533
          Top = 0
          Width = 1
          Height = 15
          Angle = 90
          DrawKind = dkLine
        end
        object RLDraw87: TRLDraw
          Left = 645
          Top = 0
          Width = 1
          Height = 15
          Angle = 90
          DrawKind = dkLine
        end
        object RLLabel35: TRLLabel
          Left = 649
          Top = 2
          Width = 66
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
        object RLLabel37: TRLLabel
          Left = 372
          Top = 2
          Width = 50
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'Emiss'#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw89: TRLDraw
          Left = 478
          Top = 0
          Width = 1
          Height = 15
          Angle = 90
          DrawKind = dkLine
        end
        object RLLabel39: TRLLabel
          Left = 481
          Top = 2
          Width = 50
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
        object RLLabel14: TRLLabel
          Left = 593
          Top = 2
          Width = 50
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'Vl. a pago'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw88: TRLDraw
          Left = 590
          Top = -2
          Width = 1
          Height = 15
          Angle = 90
          DrawKind = dkLine
        end
      end
      object RLBand12: TRLBand
        Left = 0
        Top = 15
        Width = 718
        Height = 14
        object RLDBText23: TRLDBText
          Left = 115
          Top = 1
          Width = 248
          Height = 11
          AutoSize = False
          DataField = 'CLIENTE'
          DataSource = BaixaNEfetuadaForm.DTTitulosTmp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw91: TRLDraw
          Left = 56
          Top = -1
          Width = 1
          Height = 16
          Angle = 90
          DrawKind = dkLine
        end
        object RLDraw92: TRLDraw
          Left = 716
          Top = -1
          Width = 1
          Height = 16
          Angle = 90
          DrawKind = dkLine
        end
        object RLDraw93: TRLDraw
          Left = 113
          Top = -1
          Width = 1
          Height = 16
          Angle = 90
          DrawKind = dkLine
        end
        object RLDraw95: TRLDraw
          Left = 424
          Top = -1
          Width = 1
          Height = 16
          Angle = 90
          DrawKind = dkLine
        end
        object RLDraw97: TRLDraw
          Left = 369
          Top = -1
          Width = 1
          Height = 16
          Angle = 90
          DrawKind = dkLine
        end
        object RLDraw98: TRLDraw
          Left = 533
          Top = -1
          Width = 1
          Height = 16
          Angle = 90
          DrawKind = dkLine
        end
        object RLDraw99: TRLDraw
          Left = 590
          Top = -1
          Width = 1
          Height = 16
          Angle = 90
          DrawKind = dkLine
        end
        object RLDraw100: TRLDraw
          Left = 1
          Top = 13
          Width = 715
          Height = 1
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DrawKind = dkLine
        end
        object RLDBText24: TRLDBText
          Left = 61
          Top = 1
          Width = 50
          Height = 11
          Alignment = taCenter
          AutoSize = False
          DataField = 'CLI_ID'
          DataSource = BaixaNEfetuadaForm.DTTitulosTmp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText25: TRLDBText
          Left = 427
          Top = 1
          Width = 50
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VENCIMENTO'
          DataSource = BaixaNEfetuadaForm.DTTitulosTmp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText26: TRLDBText
          Left = 537
          Top = 1
          Width = 50
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALOR_APAGAR'
          DataSource = BaixaNEfetuadaForm.DTTitulosTmp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText27: TRLDBText
          Left = 649
          Top = 1
          Width = 66
          Height = 11
          Alignment = taCenter
          AutoSize = False
          DataField = 'SITUACAO_BOLETO'
          DataSource = BaixaNEfetuadaForm.DTTitulosTmp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText29: TRLDBText
          Left = 4
          Top = 1
          Width = 50
          Height = 11
          Alignment = taCenter
          AutoSize = False
          DataField = 'BOLETO_ID'
          DataSource = BaixaNEfetuadaForm.DTTitulosTmp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw101: TRLDraw
          Left = 1
          Top = -1
          Width = 1
          Height = 16
          Angle = 90
          DrawKind = dkLine
        end
        object RLDBText31: TRLDBText
          Left = 372
          Top = 1
          Width = 50
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'EMISSAO'
          DataSource = BaixaNEfetuadaForm.DTTitulosTmp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw103: TRLDraw
          Left = 478
          Top = -1
          Width = 1
          Height = 16
          Angle = 90
          DrawKind = dkLine
        end
        object RLDBText33: TRLDBText
          Left = 481
          Top = 1
          Width = 50
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALOR_INTEGRAL'
          DataSource = BaixaNEfetuadaForm.DTTitulosTmp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw84: TRLDraw
          Left = 645
          Top = -1
          Width = 1
          Height = 16
          Angle = 90
          DrawKind = dkLine
        end
        object RLDBText28: TRLDBText
          Left = 593
          Top = 1
          Width = 50
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALOR_PAGO'
          DataSource = BaixaNEfetuadaForm.DTTitulosTmp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand13: TRLBand
        Left = 0
        Top = 29
        Width = 718
        Height = 31
        BandType = btSummary
        object RLDraw105: TRLDraw
          Left = 533
          Top = -3
          Width = 1
          Height = 17
          Angle = 90
          DrawKind = dkLine
        end
        object RLDraw109: TRLDraw
          Left = 1
          Top = 13
          Width = 715
          Height = 1
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DrawKind = dkLine
        end
        object RLDraw110: TRLDraw
          Left = 716
          Top = -20
          Width = 1
          Height = 34
          Angle = 90
          DrawKind = dkLine
        end
        object RLDraw111: TRLDraw
          Left = 1
          Top = -1
          Width = 1
          Height = 15
          Angle = 90
          DrawKind = dkLine
        end
        object RLDBResult15: TRLDBResult
          Left = 4
          Top = 2
          Width = 95
          Height = 10
          DataField = 'BOLETO_ID'
          DataSource = BaixaNEfetuadaForm.DTTitulosTmp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Info = riCount
          ParentFont = False
          ResetAfterPrint = True
          Text = 'N.'#186' de Registro(s): '
        end
        object RLDBResult17: TRLDBResult
          Left = 537
          Top = 2
          Width = 50
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALOR_APAGAR'
          DataSource = BaixaNEfetuadaForm.DTTitulosTmp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
          ResetAfterPrint = True
        end
        object RLLabel44: TRLLabel
          Left = 425
          Top = 2
          Width = 50
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Total:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw112: TRLDraw
          Left = 478
          Top = -4
          Width = 1
          Height = 17
          Angle = 90
          DrawKind = dkLine
        end
        object RLDBResult21: TRLDBResult
          Left = 481
          Top = 2
          Width = 50
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALOR_INTEGRAL'
          DataSource = BaixaNEfetuadaForm.DTTitulosTmp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
          ResetAfterPrint = True
        end
        object RLDraw107: TRLDraw
          Left = 590
          Top = -3
          Width = 1
          Height = 17
          Angle = 90
          DrawKind = dkLine
        end
        object RLDBResult16: TRLDBResult
          Left = 593
          Top = 2
          Width = 50
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALOR_PAGO'
          DataSource = BaixaNEfetuadaForm.DTTitulosTmp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
          ResetAfterPrint = True
        end
        object RLDraw96: TRLDraw
          Left = 645
          Top = -3
          Width = 1
          Height = 17
          Angle = 90
          DrawKind = dkLine
        end
        object RLLabel15: TRLLabel
          Left = 2
          Top = 17
          Width = 229
          Height = 10
          Caption = '* T'#237'tulos com algum problema no cruzamento entre o retorno'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
    object RLBand11: TRLBand
      Left = 38
      Top = 216
      Width = 718
      Height = 41
      BandType = btFooter
      object RLDraw90: TRLDraw
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
      object lbActive: TRLLabel
        Left = 2
        Top = 5
        Width = 57
        Height = 14
        Caption = 'Active Soft'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lbActiveSite: TRLLabel
        Left = 2
        Top = 19
        Width = 79
        Height = 10
        Caption = 'www.activesoftweb.com'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel38: TRLLabel
        Left = 2
        Top = 29
        Width = 80
        Height = 10
        Caption = 'Sistema Escolar Action'
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
    Left = 176
    Top = 516
    Width = 794
    Height = 1123
    DataSource = BaixaNEfetuadaForm.DsBaixaN
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
      Height = 112
      BandType = btColumnHeader
      object lbTitulo1: TRLLabel
        Left = 112
        Top = 7
        Width = 226
        Height = 19
        Caption = 'Relat'#243'rio de Arquivo Retorno'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbPeriodo1: TRLLabel
        Left = 114
        Top = 30
        Width = 73
        Height = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
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
      object RLDBImage2: TRLDBImage
        Left = 4
        Top = 2
        Width = 92
        Height = 88
        DataField = 'LOGO4'
        Stretch = True
      end
      object lbCorPadrao2: TRLLabel
        Left = 1
        Top = 96
        Width = 716
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
      object RLDraw14: TRLDraw
        Left = 1
        Top = 97
        Width = 716
        Height = 1
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DrawKind = dkLine
      end
      object RLDraw21: TRLDraw
        Left = 1
        Top = 111
        Width = 716
        Height = 1
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DrawKind = dkLine
      end
      object RLDraw23: TRLDraw
        Left = 1
        Top = 97
        Width = 1
        Height = 15
        Angle = 90
        DrawKind = dkLine
      end
      object RLDraw40: TRLDraw
        Left = 50
        Top = 97
        Width = 1
        Height = 15
        Angle = 90
        DrawKind = dkLine
      end
      object RLDraw41: TRLDraw
        Left = 716
        Top = 97
        Width = 1
        Height = 15
        Angle = 90
        DrawKind = dkLine
      end
      object RLLabel18: TRLLabel
        Left = 4
        Top = 99
        Width = 44
        Height = 11
        Alignment = taCenter
        AutoSize = False
        Caption = 'Retorno'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel19: TRLLabel
        Left = 101
        Top = 99
        Width = 155
        Height = 11
        AutoSize = False
        Caption = 'Nosso N'#250'mero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw42: TRLDraw
        Left = 99
        Top = 97
        Width = 1
        Height = 15
        Angle = 90
        DrawKind = dkLine
      end
      object RLLabel20: TRLLabel
        Left = 54
        Top = 99
        Width = 42
        Height = 11
        Alignment = taCenter
        AutoSize = False
        Caption = 'N. Arquivo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw43: TRLDraw
        Left = 313
        Top = 97
        Width = 1
        Height = 15
        Angle = 90
        DrawKind = dkLine
      end
      object RLDraw44: TRLDraw
        Left = 416
        Top = 97
        Width = 1
        Height = 15
        Angle = 90
        DrawKind = dkLine
      end
      object RLLabel21: TRLLabel
        Left = 419
        Top = 99
        Width = 44
        Height = 11
        Alignment = taCenter
        AutoSize = False
        Caption = 'Taxa Banco'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw45: TRLDraw
        Left = 613
        Top = 97
        Width = 1
        Height = 15
        Angle = 90
        DrawKind = dkLine
      end
      object RLLabel22: TRLLabel
        Left = 517
        Top = 99
        Width = 46
        Height = 11
        Alignment = taCenter
        AutoSize = False
        Caption = 'Juros/Multa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw46: TRLDraw
        Left = 367
        Top = 97
        Width = 1
        Height = 15
        Angle = 90
        DrawKind = dkLine
      end
      object RLLabel23: TRLLabel
        Left = 316
        Top = 99
        Width = 50
        Height = 11
        Alignment = taCenter
        AutoSize = False
        Caption = 'Creditado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw47: TRLDraw
        Left = 515
        Top = 97
        Width = 1
        Height = 15
        Angle = 90
        DrawKind = dkLine
      end
      object RLDraw48: TRLDraw
        Left = 564
        Top = 97
        Width = 1
        Height = 15
        Angle = 90
        DrawKind = dkLine
      end
      object RLLabel24: TRLLabel
        Left = 567
        Top = 99
        Width = 44
        Height = 11
        Alignment = taCenter
        AutoSize = False
        Caption = 'Abatimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel25: TRLLabel
        Left = 617
        Top = 99
        Width = 42
        Height = 11
        Alignment = taCenter
        AutoSize = False
        Caption = 'Desconto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel26: TRLLabel
        Left = 370
        Top = 99
        Width = 44
        Height = 11
        Alignment = taCenter
        AutoSize = False
        Caption = 'Valor Doc.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw50: TRLDraw
        Left = 259
        Top = 97
        Width = 1
        Height = 15
        Angle = 90
        DrawKind = dkLine
      end
      object RLLabel28: TRLLabel
        Left = 262
        Top = 99
        Width = 50
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
      object RLDraw74: TRLDraw
        Left = 466
        Top = 97
        Width = 1
        Height = 15
        Angle = 90
        DrawKind = dkLine
      end
      object RLLabel13: TRLLabel
        Left = 469
        Top = 99
        Width = 44
        Height = 11
        Alignment = taCenter
        AutoSize = False
        Caption = 'I.O.F'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw116: TRLDraw
        Left = 661
        Top = 97
        Width = 1
        Height = 15
        Angle = 90
        DrawKind = dkLine
      end
      object RLLabel54: TRLLabel
        Left = 664
        Top = 99
        Width = 50
        Height = 11
        Alignment = taCenter
        AutoSize = False
        Caption = 'Valor Pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand9: TRLBand
      Left = 38
      Top = 150
      Width = 718
      Height = 14
      object RLDBText3: TRLDBText
        Left = 101
        Top = 1
        Width = 155
        Height = 11
        AutoSize = False
        DataField = 'NOSSO_NUMERO'
        DataSource = BaixaNEfetuadaForm.DsBaixaN
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw51: TRLDraw
        Left = 50
        Top = -1
        Width = 1
        Height = 16
        Angle = 90
        DrawKind = dkLine
      end
      object RLDraw52: TRLDraw
        Left = 716
        Top = -1
        Width = 1
        Height = 16
        Angle = 90
        DrawKind = dkLine
      end
      object RLDraw53: TRLDraw
        Left = 99
        Top = -1
        Width = 1
        Height = 16
        Angle = 90
        DrawKind = dkLine
      end
      object RLDraw54: TRLDraw
        Left = 313
        Top = -1
        Width = 1
        Height = 16
        Angle = 90
        DrawKind = dkLine
      end
      object RLDraw55: TRLDraw
        Left = 416
        Top = -1
        Width = 1
        Height = 16
        Angle = 90
        DrawKind = dkLine
      end
      object RLDraw56: TRLDraw
        Left = 613
        Top = -1
        Width = 1
        Height = 16
        Angle = 90
        DrawKind = dkLine
      end
      object RLDraw57: TRLDraw
        Left = 367
        Top = -1
        Width = 1
        Height = 16
        Angle = 90
        DrawKind = dkLine
      end
      object RLDraw58: TRLDraw
        Left = 515
        Top = -1
        Width = 1
        Height = 16
        Angle = 90
        DrawKind = dkLine
      end
      object RLDraw59: TRLDraw
        Left = 564
        Top = -1
        Width = 1
        Height = 16
        Angle = 90
        DrawKind = dkLine
      end
      object RLDraw60: TRLDraw
        Left = 1
        Top = 13
        Width = 715
        Height = 1
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DrawKind = dkLine
      end
      object RLDBText4: TRLDBText
        Left = 316
        Top = 1
        Width = 50
        Height = 11
        Alignment = taCenter
        AutoSize = False
        DataField = 'DATA_CREDITO'
        DataSource = BaixaNEfetuadaForm.DsBaixaN
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText13: TRLDBText
        Left = 419
        Top = 1
        Width = 44
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TX_BANCO'
        DataSource = BaixaNEfetuadaForm.DsBaixaN
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText14: TRLDBText
        Left = 519
        Top = 1
        Width = 42
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALOR_MORA'
        DataSource = BaixaNEfetuadaForm.DsBaixaN
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText15: TRLDBText
        Left = 567
        Top = 1
        Width = 44
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALOR_ABATIMENTO'
        DataSource = BaixaNEfetuadaForm.DsBaixaN
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText16: TRLDBText
        Left = 617
        Top = 1
        Width = 42
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALOR_DESCONTO'
        DataSource = BaixaNEfetuadaForm.DsBaixaN
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText17: TRLDBText
        Left = 4
        Top = 1
        Width = 44
        Height = 11
        Alignment = taCenter
        AutoSize = False
        DataField = 'RETORNO_ID'
        DataSource = BaixaNEfetuadaForm.DsBaixaN
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText18: TRLDBText
        Left = 54
        Top = 1
        Width = 42
        Height = 11
        Alignment = taCenter
        AutoSize = False
        DataField = 'NUMERO_ARQUIVO'
        DataSource = BaixaNEfetuadaForm.DsBaixaN
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw61: TRLDraw
        Left = 1
        Top = -1
        Width = 1
        Height = 16
        Angle = 90
        DrawKind = dkLine
      end
      object RLDBText19: TRLDBText
        Left = 370
        Top = 1
        Width = 44
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALOR_DOCUMENTO'
        DataSource = BaixaNEfetuadaForm.DsBaixaN
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw62: TRLDraw
        Left = 259
        Top = -1
        Width = 1
        Height = 16
        Angle = 90
        DrawKind = dkLine
      end
      object RLDBText20: TRLDBText
        Left = 262
        Top = 1
        Width = 50
        Height = 11
        Alignment = taCenter
        AutoSize = False
        DataField = 'DATA_RECEBIMENTO'
        DataSource = BaixaNEfetuadaForm.DsBaixaN
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw75: TRLDraw
        Left = 466
        Top = -1
        Width = 1
        Height = 16
        Angle = 90
        DrawKind = dkLine
      end
      object RLDBText22: TRLDBText
        Left = 469
        Top = 1
        Width = 44
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALOR_IOF'
        DataSource = BaixaNEfetuadaForm.DsBaixaN
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw115: TRLDraw
        Left = 661
        Top = -1
        Width = 1
        Height = 16
        Angle = 90
        DrawKind = dkLine
      end
      object RLDBText32: TRLDBText
        Left = 664
        Top = 1
        Width = 50
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALOR_PAGO'
        DataSource = BaixaNEfetuadaForm.DsBaixaN
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand10: TRLBand
      Left = 38
      Top = 164
      Width = 718
      Height = 120
      BandType = btSummary
      BeforePrint = RLBand10BeforePrint
      object RLDraw63: TRLDraw
        Left = 367
        Top = -3
        Width = 1
        Height = 17
        Angle = 90
        DrawKind = dkLine
      end
      object RLDraw64: TRLDraw
        Left = 515
        Top = -3
        Width = 1
        Height = 17
        Angle = 90
        DrawKind = dkLine
      end
      object RLDraw65: TRLDraw
        Left = 416
        Top = -3
        Width = 1
        Height = 17
        Angle = 90
        DrawKind = dkLine
      end
      object RLDraw66: TRLDraw
        Left = 564
        Top = -3
        Width = 1
        Height = 17
        Angle = 90
        DrawKind = dkLine
      end
      object RLDraw67: TRLDraw
        Left = 613
        Top = -3
        Width = 1
        Height = 17
        Angle = 90
        DrawKind = dkLine
      end
      object RLDraw68: TRLDraw
        Left = 1
        Top = 13
        Width = 715
        Height = 1
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DrawKind = dkLine
      end
      object RLDraw69: TRLDraw
        Left = 716
        Top = -20
        Width = 1
        Height = 34
        Angle = 90
        DrawKind = dkLine
      end
      object RLDraw70: TRLDraw
        Left = 1
        Top = -1
        Width = 1
        Height = 15
        Angle = 90
        DrawKind = dkLine
      end
      object RLDBResult7: TRLDBResult
        Left = 4
        Top = 2
        Width = 95
        Height = 10
        DataField = 'RETORNO_ID'
        DataSource = BaixaNEfetuadaForm.DsBaixaN
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = riCount
        ParentFont = False
        Text = 'N.'#186' de Registro(s): '
      end
      object RLDBResult8: TRLDBResult
        Left = 419
        Top = 2
        Width = 44
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TX_BANCO'
        DataSource = BaixaNEfetuadaForm.DsBaixaN
        DisplayMask = ',0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        ResetAfterPrint = True
      end
      object RLDBResult9: TRLDBResult
        Left = 519
        Top = 2
        Width = 42
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALOR_MORA'
        DataSource = BaixaNEfetuadaForm.DsBaixaN
        DisplayMask = ',0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        ResetAfterPrint = True
      end
      object RLDBResult10: TRLDBResult
        Left = 567
        Top = 2
        Width = 44
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALOR_ABATIMENTO'
        DataSource = BaixaNEfetuadaForm.DsBaixaN
        DisplayMask = ',0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        ResetAfterPrint = True
      end
      object RLDBResult11: TRLDBResult
        Left = 370
        Top = 2
        Width = 44
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALOR_DOCUMENTO'
        DataSource = BaixaNEfetuadaForm.DsBaixaN
        DisplayMask = ',0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        ResetAfterPrint = True
      end
      object RLDBResult12: TRLDBResult
        Left = 617
        Top = 2
        Width = 42
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALOR_DESCONTO'
        DataSource = BaixaNEfetuadaForm.DsBaixaN
        DisplayMask = ',0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        ResetAfterPrint = True
      end
      object RLLabel29: TRLLabel
        Left = 315
        Top = 2
        Width = 50
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Total:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw76: TRLDraw
        Left = 466
        Top = -4
        Width = 1
        Height = 17
        Angle = 90
        DrawKind = dkLine
      end
      object RLDBResult14: TRLDBResult
        Left = 469
        Top = 2
        Width = 44
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALOR_IOF'
        DataSource = BaixaNEfetuadaForm.DsBaixaN
        DisplayMask = ',0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        ResetAfterPrint = True
      end
      object RLDraw108: TRLDraw
        Left = 227
        Top = 17
        Width = 242
        Height = 98
        DrawData.Strings = (
          '0 0'
          '1 0'
          '1 1'
          '0 1')
        DrawKind = dkCustom
      end
      object lbTotalAbat2: TRLDBResult
        Left = 368
        Top = 75
        Width = 90
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALOR_ABATIMENTO'
        DataSource = BaixaNEfetuadaForm.DsBaixaN
        DisplayMask = ',0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object lbTotalJuros2: TRLDBResult
        Left = 368
        Top = 61
        Width = 90
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALOR_MORA'
        DataSource = BaixaNEfetuadaForm.DsBaixaN
        DisplayMask = ',0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object lbTotalDoc2: TRLDBResult
        Left = 368
        Top = 46
        Width = 90
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALOR_DOCUMENTO'
        DataSource = BaixaNEfetuadaForm.DsBaixaN
        DisplayMask = ',0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDraw113: TRLDraw
        Left = 233
        Top = 89
        Width = 229
        Height = 1
        DrawKind = dkLine
      end
      object RLDraw114: TRLDraw
        Left = 233
        Top = 39
        Width = 229
        Height = 1
        DrawKind = dkLine
      end
      object RLLabel41: TRLLabel
        Left = 235
        Top = 21
        Width = 220
        Height = 14
        Alignment = taCenter
        AutoSize = False
        Caption = 'Resumo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel42: TRLLabel
        Left = 237
        Top = 46
        Width = 120
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Valor total dos documentos:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel50: TRLLabel
        Left = 237
        Top = 61
        Width = 120
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Valor total dos juros:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel52: TRLLabel
        Left = 237
        Top = 75
        Width = 120
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Valor total dos abatimentos:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel53: TRLLabel
        Left = 239
        Top = 96
        Width = 120
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Total l'#237'quido:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw117: TRLDraw
        Left = 661
        Top = -3
        Width = 1
        Height = 17
        Angle = 90
        DrawKind = dkLine
      end
      object RLDBResult18: TRLDBResult
        Left = 664
        Top = 2
        Width = 50
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALOR_PAGO'
        DataSource = BaixaNEfetuadaForm.DsBaixaN
        DisplayMask = ',0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        ResetAfterPrint = True
      end
      object RLDBResult19: TRLDBResult
        Left = 368
        Top = 96
        Width = 90
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALOR_PAGO'
        DataSource = BaixaNEfetuadaForm.DsBaixaN
        DisplayMask = ',0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
    end
    object RLBand6: TRLBand
      Left = 38
      Top = 284
      Width = 718
      Height = 41
      BandType = btFooter
      object RLDraw11: TRLDraw
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
      object RLLabel43: TRLLabel
        Left = 2
        Top = 5
        Width = 57
        Height = 14
        Caption = 'Active Soft'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel45: TRLLabel
        Left = 2
        Top = 19
        Width = 79
        Height = 10
        Caption = 'www.activesoftweb.com'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel46: TRLLabel
        Left = 2
        Top = 29
        Width = 80
        Height = 10
        Caption = 'Sistema Escolar Action'
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
