object RelArquivoRetornoForm: TRelArquivoRetornoForm
  Left = 249
  Top = 221
  Caption = 'RelArquivoRetornoForm'
  ClientHeight = 738
  ClientWidth = 1501
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
    Left = 27
    Top = 57
    Width = 794
    Height = 1123
    DataSource = BancodeDados.DSRetorno
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ShowProgress = False
    BeforePrint = RLReport1BeforePrint
    object RLBand3: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 94
      BandType = btTitle
      object lbTitulo: TRLLabel
        Left = 100
        Top = 7
        Width = 299
        Height = 19
        Caption = 'Relat'#243'rio de Arquivo Retorno Banc'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbSituacao1: TRLLabel
        Left = 100
        Top = 30
        Width = 79
        Height = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 624
        Top = 8
        Width = 92
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
        Left = 622
        Top = 21
        Width = 94
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
        Left = 636
        Top = 34
        Width = 80
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
      object RLDBImage1: TSedRLDBImage
        Left = 4
        Top = 2
        Width = 92
        Height = 88
        Stretch = True
        DataField = 'LOGO1'
        DataSource = BancodeDados.dsConfig
      end
      object lbPeriodo1: TRLLabel
        Left = 100
        Top = 51
        Width = 73
        Height = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbTipoQuitacao1: TRLLabel
        Left = 100
        Top = 72
        Width = 108
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
      Top = 132
      Width = 718
      Height = 145
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 31
        BandType = btColumnHeader
        object lbCorPadrao1: TRLLabel
          Left = 1
          Top = 16
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
        object RLDraw2: TRLDraw
          Left = 1
          Top = 16
          Width = 716
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
          Top = 30
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
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw6: TRLDraw
          Left = 50
          Top = 16
          Width = 1
          Height = 16
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw9: TRLDraw
          Left = 716
          Top = 0
          Width = 1
          Height = 32
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel2: TRLLabel
          Left = 4
          Top = 18
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
        object lbNossoNum: TRLLabel
          Left = 53
          Top = 18
          Width = 200
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
        object RLDraw24: TRLDraw
          Left = 363
          Top = 16
          Width = 1
          Height = 16
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw26: TRLDraw
          Left = 616
          Top = 16
          Width = 1
          Height = 16
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel8: TRLLabel
          Left = 619
          Top = 18
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
        object RLLabel9: TRLLabel
          Left = 667
          Top = 18
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
          Left = 417
          Top = 16
          Width = 1
          Height = 16
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel11: TRLLabel
          Left = 366
          Top = 18
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
          Left = 665
          Top = 16
          Width = 1
          Height = 16
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw32: TRLDraw
          Left = 516
          Top = 16
          Width = 1
          Height = 16
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel4: TRLLabel
          Left = 519
          Top = 18
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
        object RLDraw7: TRLDraw
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
        object RLLabel10: TRLLabel
          Left = 420
          Top = 18
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
        object lbArquivo1: TRLLabel
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
          Left = 309
          Top = 16
          Width = 1
          Height = 16
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel1: TRLLabel
          Left = 312
          Top = 18
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
        object RLDraw20: TRLDraw
          Left = 466
          Top = 17
          Width = 1
          Height = 16
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel5: TRLLabel
          Left = 469
          Top = 18
          Width = 44
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'Desc/Abat'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw72: TRLDraw
          Left = 255
          Top = 17
          Width = 1
          Height = 16
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel6: TRLLabel
          Left = 257
          Top = 18
          Width = 50
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
        object RLDraw17: TRLDraw
          Left = 566
          Top = 17
          Width = 1
          Height = 16
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel12: TRLLabel
          Left = 569
          Top = 18
          Width = 44
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'Vl. Pago'
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
        Top = 31
        Width = 718
        Height = 13
        object dbNossoNum: TRLDBText
          Left = 53
          Top = 1
          Width = 200
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
          Text = ''
        end
        object RLDraw10: TRLDraw
          Left = 50
          Top = -5
          Width = 1
          Height = 19
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw12: TRLDraw
          Left = 716
          Top = -22
          Width = 1
          Height = 36
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw15: TRLDraw
          Left = 363
          Top = -5
          Width = 1
          Height = 19
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw16: TRLDraw
          Left = 516
          Top = -5
          Width = 1
          Height = 19
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw18: TRLDraw
          Left = 417
          Top = -5
          Width = 1
          Height = 19
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw19: TRLDraw
          Left = 566
          Top = -5
          Width = 1
          Height = 19
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw22: TRLDraw
          Left = 616
          Top = -5
          Width = 1
          Height = 19
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw25: TRLDraw
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
        object RLDBText5: TRLDBText
          Left = 366
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
          Text = ''
        end
        object RLDBText6: TRLDBText
          Left = 519
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
          Text = ''
        end
        object RLDBText7: TRLDBText
          Left = 569
          Top = 1
          Width = 44
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALOR_PAGO'
          DataSource = BancodeDados.DSRetorno
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText8: TRLDBText
          Left = 619
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
          Text = ''
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
          Text = ''
        end
        object RLDraw28: TRLDraw
          Left = 1
          Top = -5
          Width = 1
          Height = 19
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDBText10: TRLDBText
          Left = 420
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
          Text = ''
        end
        object RLDraw3: TRLDraw
          Left = 309
          Top = -5
          Width = 1
          Height = 19
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDBText2: TRLDBText
          Left = 312
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
          Text = ''
        end
        object RLDraw13: TRLDraw
          Left = 466
          Top = -5
          Width = 1
          Height = 19
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDBText12: TRLDBText
          Left = 469
          Top = 1
          Width = 44
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'DescAbat'
          DataSource = BancodeDados.DSRetorno
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDraw71: TRLDraw
          Left = 255
          Top = -5
          Width = 1
          Height = 19
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDBText21: TRLDBText
          Left = 257
          Top = 1
          Width = 50
          Height = 11
          Alignment = taCenter
          AutoSize = False
          DataField = 'DataVencCalc'
          DataSource = BancodeDados.DSRetorno
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDraw27: TRLDraw
          Left = 665
          Top = -5
          Width = 1
          Height = 19
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDBText9: TRLDBText
          Left = 667
          Top = 0
          Width = 48
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
          Text = ''
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 44
        Width = 718
        Height = 99
        BandType = btSummary
        BeforePrint = RLBand4BeforePrint
        object RLDraw29: TRLDraw
          Left = 417
          Top = -3
          Width = 1
          Height = 17
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw33: TRLDraw
          Left = 566
          Top = -3
          Width = 1
          Height = 17
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw34: TRLDraw
          Left = 466
          Top = -3
          Width = 1
          Height = 17
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw35: TRLDraw
          Left = 616
          Top = -3
          Width = 1
          Height = 17
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw37: TRLDraw
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
        object RLDraw38: TRLDraw
          Left = 716
          Top = -20
          Width = 1
          Height = 34
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw39: TRLDraw
          Left = 1
          Top = -1
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDBResult1: TRLDBResult
          Left = 4
          Top = 2
          Width = 95
          Height = 10
          DataField = 'RETORNO_ID'
          DataSource = BancodeDados.DSRetorno
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
          Left = 469
          Top = 2
          Width = 44
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'DescAbat'
          DataSource = BancodeDados.DSRetorno
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLDBResult4: TRLDBResult
          Left = 619
          Top = 2
          Width = 44
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'TX_BANCO'
          DataSource = BancodeDados.DSRetorno
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
          Left = 420
          Top = 2
          Width = 44
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALOR_DOCUMENTO'
          DataSource = BancodeDados.DSRetorno
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLLabel7: TRLLabel
          Left = 365
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
          Left = 516
          Top = -4
          Width = 1
          Height = 17
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw102: TRLDraw
          Left = 481
          Top = 17
          Width = 235
          Height = 77
          DrawData.Strings = (
            '0 0'
            '1 0'
            '1 1'
            '0 1')
          DrawKind = dkCustom
        end
        object lbTotalAbat1: TRLDBResult
          Left = 617
          Top = 63
          Width = 90
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'DescAbat'
          DataSource = BancodeDados.DSRetorno
          DisplayMask = ',0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object lbTotalJuros1: TRLDBResult
          Left = 617
          Top = 50
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
          Text = ''
        end
        object lbTotalDoc1: TRLDBResult
          Left = 617
          Top = 37
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
          Text = ''
        end
        object RLDraw104: TRLDraw
          Left = 484
          Top = 77
          Width = 229
          Height = 1
          DrawKind = dkLine
        end
        object RLDraw106: TRLDraw
          Left = 484
          Top = 34
          Width = 229
          Height = 1
          DrawKind = dkLine
        end
        object RLLabel16: TRLLabel
          Left = 486
          Top = 19
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
          Left = 486
          Top = 37
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
          Left = 486
          Top = 50
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
          Left = 486
          Top = 63
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
          Left = 486
          Top = 79
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
          Left = 617
          Top = 79
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
        object RLDBResult5: TRLDBResult
          Left = 519
          Top = 2
          Width = 44
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALOR_MORA'
          DataSource = BancodeDados.DSRetorno
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
          Left = 569
          Top = 2
          Width = 44
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALOR_PAGO'
          DataSource = BancodeDados.DSRetorno
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLDraw36: TRLDraw
          Left = 665
          Top = -3
          Width = 1
          Height = 17
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
      end
    end
    object RLBand7: TRLBand
      Left = 38
      Top = 277
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
        Width = 46
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
        Width = 51
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
    Left = 982
    Top = 78
    Width = 794
    Height = 1123
    DataSource = BaixaNEfetuadaForm.DsBaixaN
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
      object lbTitulo1: TRLLabel
        Left = 112
        Top = 2
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
      object lbPeriodo2: TRLLabel
        Left = 112
        Top = 23
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
        Left = 624
        Top = 8
        Width = 92
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
        Left = 622
        Top = 21
        Width = 94
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
        Left = 636
        Top = 34
        Width = 80
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
      object RLDBImage2: TSedRLDBImage
        Left = 4
        Top = 2
        Width = 92
        Height = 88
        Stretch = True
        DataField = 'LOGO1'
        DataSource = BancodeDados.dsConfig
      end
      object lbSituacao2: TRLLabel
        Left = 112
        Top = 40
        Width = 79
        Height = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbDescricao2: TRLLabel
        Left = 112
        Top = 58
        Width = 85
        Height = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText51: TRLDBText
        Left = 112
        Top = 75
        Width = 210
        Height = 16
        DataField = 'TipoQuitacao'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = 'Tipo de Quita'#231#227'o: '
        Visible = False
      end
    end
    object RLBand10: TRLBand
      Left = 38
      Top = 230
      Width = 718
      Height = 97
      BandType = btSummary
      object RLDraw63: TRLDraw
        Left = 465
        Top = -3
        Width = 1
        Height = 17
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDraw65: TRLDraw
        Left = 514
        Top = -3
        Width = 1
        Height = 17
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDraw66: TRLDraw
        Left = 612
        Top = -3
        Width = 1
        Height = 17
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDraw68: TRLDraw
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
      object RLDraw69: TRLDraw
        Left = 716
        Top = -3
        Width = 1
        Height = 17
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDraw70: TRLDraw
        Left = 1
        Top = -1
        Width = 1
        Height = 15
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDBResult3: TRLDBResult
        Left = 4
        Top = 2
        Width = 100
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
        Text = 'Total de Registro(s): '
      end
      object RLDBResult8: TRLDBResult
        Left = 517
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
        Text = ''
      end
      object RLDBResult9: TRLDBResult
        Left = 567
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
        Text = ''
      end
      object RLDBResult10: TRLDBResult
        Left = 615
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
        Text = ''
      end
      object RLDBResult11: TRLDBResult
        Left = 468
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
        Text = ''
      end
      object RLLabel29: TRLLabel
        Left = 413
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
        Left = 564
        Top = -4
        Width = 1
        Height = 17
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDraw108: TRLDraw
        Left = 481
        Top = 17
        Width = 235
        Height = 77
        DrawData.Strings = (
          '0 0'
          '1 0'
          '1 1'
          '0 1')
        DrawKind = dkCustom
      end
      object lbTotalAbat2: TRLDBResult
        Left = 622
        Top = 62
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
        Text = ''
      end
      object lbTotalJuros2: TRLDBResult
        Left = 622
        Top = 49
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
        Text = ''
      end
      object RLDraw113: TRLDraw
        Left = 484
        Top = 76
        Width = 229
        Height = 1
        DrawKind = dkLine
      end
      object RLDraw114: TRLDraw
        Left = 484
        Top = 34
        Width = 229
        Height = 1
        DrawKind = dkLine
      end
      object RLLabel41: TRLLabel
        Left = 484
        Top = 19
        Width = 230
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
      object RLLabel50: TRLLabel
        Left = 491
        Top = 49
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
        Left = 491
        Top = 62
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
        Left = 491
        Top = 80
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
        Angle = 90.000000000000000000
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
        Text = ''
      end
      object RLDBResult19: TRLDBResult
        Left = 622
        Top = 80
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
        Text = ''
      end
      object RLDraw127: TRLDraw
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
      object RLDraw128: TRLDraw
        Left = 1
        Top = -3
        Width = 1
        Height = 17
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLLabel47: TRLLabel
        Left = 491
        Top = 36
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
      object RLDBResult12: TRLDBResult
        Left = 622
        Top = 36
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
        Text = ''
      end
    end
    object RLBand6: TRLBand
      Left = 38
      Top = 327
      Width = 718
      Height = 51
      BandType = btFooter
      object LbNomeInstituicao1: TRLLabel
        Left = 537
        Top = 13
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
      object LbEndereco1: TRLLabel
        Left = 596
        Top = 27
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
      object LbSite1: TRLLabel
        Left = 596
        Top = 37
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
      object lbEmpresaNome2: TRLLabel
        Left = 2
        Top = 13
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
        Top = 26
        Width = 46
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
        Top = 37
        Width = 51
        Height = 10
        Caption = 'SistemaNome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel42: TRLLabel
        Left = 2
        Top = 1
        Width = 308
        Height = 10
        Caption = 
          '* T'#237'tulos com algum problema no cruzamento entre os valores inte' +
          'grais do retorno'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLGroup2: TRLGroup
      Left = 38
      Top = 133
      Width = 718
      Height = 97
      object RLBand15: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 14
        BandType = btColumnHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        object lbCorPadrao2: TRLLabel
          Left = 1
          Top = 0
          Width = 716
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
        object RLDraw14: TRLDraw
          Left = 1
          Top = 0
          Width = 717
          Height = 1
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DrawKind = dkLine
        end
        object RLDraw40: TRLDraw
          Left = 50
          Top = 0
          Width = 1
          Height = 16
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel18: TRLLabel
          Left = 4
          Top = 2
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
        object lb2NossoNum: TRLLabel
          Left = 212
          Top = 2
          Width = 95
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
          Left = 209
          Top = 0
          Width = 1
          Height = 16
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel20: TRLLabel
          Left = 177
          Top = 2
          Width = 30
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'N. Arq.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw43: TRLDraw
          Left = 411
          Top = 0
          Width = 1
          Height = 16
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw44: TRLDraw
          Left = 514
          Top = 0
          Width = 1
          Height = 16
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel21: TRLLabel
          Left = 517
          Top = 2
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
        object RLLabel22: TRLLabel
          Left = 567
          Top = 2
          Width = 42
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'Jur./Multa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw46: TRLDraw
          Left = 465
          Top = 0
          Width = 1
          Height = 16
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel23: TRLLabel
          Left = 414
          Top = 2
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
        object RLDraw48: TRLDraw
          Left = 612
          Top = 0
          Width = 1
          Height = 16
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel24: TRLLabel
          Left = 615
          Top = 2
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
        object RLLabel26: TRLLabel
          Left = 468
          Top = 2
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
          Left = 309
          Top = 0
          Width = 1
          Height = 16
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel28: TRLLabel
          Left = 360
          Top = 2
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
          Left = 564
          Top = 0
          Width = 1
          Height = 16
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw116: TRLDraw
          Left = 661
          Top = 0
          Width = 1
          Height = 16
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel54: TRLLabel
          Left = 664
          Top = 2
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
        object RLDraw58: TRLDraw
          Left = 174
          Top = 0
          Width = 1
          Height = 16
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel13: TRLLabel
          Left = 52
          Top = 2
          Width = 120
          Height = 11
          AutoSize = False
          Caption = 'Banco'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw45: TRLDraw
          Left = 358
          Top = 0
          Width = 1
          Height = 16
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel25: TRLLabel
          Left = 311
          Top = 2
          Width = 46
          Height = 10
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
      end
      object RLBand9: TRLBand
        Left = 0
        Top = 14
        Width = 718
        Height = 41
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        BeforePrint = RLBand9BeforePrint
        object RLDBText60: TRLDBText
          Left = 521
          Top = 26
          Width = 196
          Height = 14
          Align = faRightBottom
          Alignment = taRightJustify
          Color = clWhite
          DataField = 'RetornoDebAuto'
          DataSource = BaixaNEfetuadaForm.DsBaixaN
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object db2NossoNum: TRLDBText
          Left = 213
          Top = 3
          Width = 95
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
          Text = ''
        end
        object RLDraw51: TRLDraw
          Left = 50
          Top = -1
          Width = 1
          Height = 16
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw53: TRLDraw
          Left = 209
          Top = -1
          Width = 1
          Height = 16
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw54: TRLDraw
          Left = 411
          Top = -1
          Width = 1
          Height = 16
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw55: TRLDraw
          Left = 514
          Top = -1
          Width = 1
          Height = 16
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw57: TRLDraw
          Left = 465
          Top = -1
          Width = 1
          Height = 16
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw59: TRLDraw
          Left = 612
          Top = -1
          Width = 1
          Height = 16
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw60: TRLDraw
          Left = 1
          Top = 14
          Width = 717
          Height = 1
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DrawKind = dkLine
        end
        object RLDBText4: TRLDBText
          Left = 414
          Top = 2
          Width = 50
          Height = 11
          AutoSize = False
          DataField = 'DATA_CREDITO'
          DataSource = BaixaNEfetuadaForm.DsBaixaN
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText13: TRLDBText
          Left = 517
          Top = 2
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
          Text = ''
        end
        object RLDBText14: TRLDBText
          Left = 567
          Top = 2
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
          Text = ''
        end
        object RLDBText15: TRLDBText
          Left = 615
          Top = 2
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
          Text = ''
        end
        object RLDBText17: TRLDBText
          Left = 4
          Top = 2
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
          Text = ''
        end
        object RLDBText18: TRLDBText
          Left = 177
          Top = 2
          Width = 30
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
          Text = ''
        end
        object RLDBText19: TRLDBText
          Left = 468
          Top = 2
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
          Text = ''
        end
        object RLDraw62: TRLDraw
          Left = 309
          Top = -1
          Width = 1
          Height = 16
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDBText20: TRLDBText
          Left = 360
          Top = 2
          Width = 50
          Height = 11
          AutoSize = False
          DataField = 'DATA_RECEBIMENTO'
          DataSource = BaixaNEfetuadaForm.DsBaixaN
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDraw75: TRLDraw
          Left = 564
          Top = -1
          Width = 1
          Height = 16
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw115: TRLDraw
          Left = 661
          Top = -1
          Width = 1
          Height = 16
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDBText32: TRLDBText
          Left = 664
          Top = 2
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
          Text = ''
        end
        object RLDraw47: TRLDraw
          Left = 174
          Top = -1
          Width = 1
          Height = 16
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDBText22: TRLDBText
          Left = 52
          Top = 2
          Width = 120
          Height = 11
          AutoSize = False
          DataField = 'BancoNome'
          DataSource = BaixaNEfetuadaForm.DsBaixaN
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDraw56: TRLDraw
          Left = 358
          Top = -1
          Width = 1
          Height = 16
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDBText16: TRLDBText
          Left = 311
          Top = 2
          Width = 46
          Height = 11
          AutoSize = False
          DataField = 'DATA_VENCIMENTO'
          DataSource = BaixaNEfetuadaForm.DsBaixaN
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDraw21: TRLDraw
          Left = 1
          Top = 0
          Width = 717
          Height = 1
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DrawKind = dkLine
        end
        object dbTxtAlunos: TRLMemo
          Left = 4
          Top = 15
          Width = 713
          Height = 8
          Behavior = [beSiteExpander]
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Borders.Style = bsFDiagonal
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
        end
      end
    end
  end
  object RLReport3: TRLReport
    Left = 134
    Top = 189
    Width = 794
    Height = 1123
    DataSource = BaixaNEfetuadaForm.DTTitulosTmp
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ShowProgress = False
    BeforePrint = RLReport3BeforePrint
    object RLBand8: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 95
      BandType = btColumnHeader
      object lbTitulo3: TRLLabel
        Left = 112
        Top = 7
        Width = 352
        Height = 19
        Caption = 'Relat'#243'rio de Arquivo Retorno - Baixa banc'#225'ria'
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
        Left = 624
        Top = 8
        Width = 92
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
        Left = 622
        Top = 21
        Width = 94
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
        Left = 636
        Top = 34
        Width = 80
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
      object RLDBImage3: TSedRLDBImage
        Left = 4
        Top = 2
        Width = 92
        Height = 88
        Stretch = True
        DataField = 'LOGO1'
        DataSource = BancodeDados.dsConfig
      end
      object lbSituacao3: TRLLabel
        Left = 114
        Top = 52
        Width = 79
        Height = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLGroup3: TRLGroup
      Left = 38
      Top = 133
      Width = 718
      Height = 82
      DataFields = 'RETORNO_ID'
      object RLBand14: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 44
        BandType = btColumnHeader
        object lbCorPadrao3: TRLLabel
          Left = 1
          Top = 30
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
        object RLDraw49: TRLDraw
          Left = 1
          Top = 30
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
          Top = 43
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
          Height = 45
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw79: TRLDraw
          Left = 56
          Top = 30
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw80: TRLDraw
          Left = 716
          Top = 0
          Width = 1
          Height = 45
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel27: TRLLabel
          Left = 4
          Top = 32
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
          Left = 169
          Top = 32
          Width = 197
          Height = 11
          AutoSize = False
          Caption = 'Aluno'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw81: TRLDraw
          Left = 167
          Top = 30
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel31: TRLLabel
          Left = 60
          Top = 32
          Width = 50
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'Matricula'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw82: TRLDraw
          Left = 112
          Top = 30
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw83: TRLDraw
          Left = 424
          Top = 30
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel32: TRLLabel
          Left = 427
          Top = 32
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
          Top = 32
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
          Top = 30
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel34: TRLLabel
          Left = 115
          Top = 32
          Width = 50
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'C'#243'd. Aluno'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw86: TRLDraw
          Left = 533
          Top = 30
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw87: TRLDraw
          Left = 645
          Top = 30
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel35: TRLLabel
          Left = 649
          Top = 32
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
          Top = 32
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
          Top = 30
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel39: TRLLabel
          Left = 481
          Top = 32
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
          Top = 32
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
          Top = 30
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDBText34: TRLDBText
          Left = 4
          Top = 3
          Width = 75
          Height = 12
          DataField = 'RETORNO_ID'
          DataSource = BaixaNEfetuadaForm.DTTitulosTmp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = 'Retorno: '
        end
        object db3NossoNum: TRLDBText
          Left = 4
          Top = 17
          Width = 135
          Height = 12
          DataField = 'NOSSO_NUMERO'
          DataSource = BaixaNEfetuadaForm.DTTitulosTmp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = 'Nosso N'#250'mero: '
        end
        object RLDBText36: TRLDBText
          Left = 204
          Top = 3
          Width = 110
          Height = 12
          DataField = 'DATA_RECEBIMENTO'
          DataSource = BaixaNEfetuadaForm.DTTitulosTmp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = 'Dt. Receb.: '
        end
        object RLDBText37: TRLDBText
          Left = 370
          Top = 3
          Width = 87
          Height = 12
          DataField = 'VALOR_DOCUMENTO'
          DataSource = BaixaNEfetuadaForm.DTTitulosTmp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = 'Vl. Doc.: '
        end
        object db3VlAbat: TRLDBText
          Left = 370
          Top = 17
          Width = 92
          Height = 12
          DataField = 'VALOR_ABATIMENTO'
          DataSource = BaixaNEfetuadaForm.DTTitulosTmp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = 'Vl. Abat.: '
        end
        object db3DtCred: TRLDBText
          Left = 204
          Top = 17
          Width = 95
          Height = 12
          DataField = 'DATA_CREDITO'
          DataSource = BaixaNEfetuadaForm.DTTitulosTmp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = 'Dt. Cr'#233'dito: '
        end
        object RLDBText40: TRLDBText
          Left = 516
          Top = 3
          Width = 96
          Height = 12
          DataField = 'VALOR_MORA'
          DataSource = BaixaNEfetuadaForm.DTTitulosTmp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = 'Vl. Multa.: '
        end
        object db3vlPago: TRLDBText
          Left = 516
          Top = 16
          Width = 140
          Height = 12
          DataField = 'VL_PAGO_RETORNO'
          DataSource = BaixaNEfetuadaForm.DTTitulosTmp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = 'Vl. Pago.: '
        end
        object RLDraw118: TRLDraw
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
      end
      object RLBand12: TRLBand
        Left = 0
        Top = 44
        Width = 718
        Height = 13
        object RLDBText23: TRLDBText
          Left = 169
          Top = 1
          Width = 197
          Height = 11
          AutoSize = False
          DataField = 'ALUNO'
          DataSource = BaixaNEfetuadaForm.DTTitulosTmp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDraw91: TRLDraw
          Left = 56
          Top = 0
          Width = 1
          Height = 14
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw92: TRLDraw
          Left = 716
          Top = 0
          Width = 1
          Height = 14
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw93: TRLDraw
          Left = 167
          Top = 0
          Width = 1
          Height = 14
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw94: TRLDraw
          Left = 112
          Top = 0
          Width = 1
          Height = 14
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw95: TRLDraw
          Left = 424
          Top = 0
          Width = 1
          Height = 14
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw97: TRLDraw
          Left = 369
          Top = 0
          Width = 1
          Height = 14
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw98: TRLDraw
          Left = 533
          Top = 0
          Width = 1
          Height = 14
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw99: TRLDraw
          Left = 590
          Top = 0
          Width = 1
          Height = 14
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw100: TRLDraw
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
        object RLDBText24: TRLDBText
          Left = 115
          Top = 1
          Width = 50
          Height = 11
          Alignment = taCenter
          AutoSize = False
          DataField = 'ALUNO_ID'
          DataSource = BaixaNEfetuadaForm.DTTitulosTmp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
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
          Text = ''
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
          Text = ''
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
          Text = ''
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
          Text = ''
        end
        object RLDBText30: TRLDBText
          Left = 60
          Top = 1
          Width = 50
          Height = 11
          Alignment = taCenter
          AutoSize = False
          DataField = 'MATRICULA_ID'
          DataSource = BaixaNEfetuadaForm.DTTitulosTmp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDraw101: TRLDraw
          Left = 1
          Top = 0
          Width = 1
          Height = 14
          Angle = 90.000000000000000000
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
          Text = ''
        end
        object RLDraw103: TRLDraw
          Left = 478
          Top = 0
          Width = 1
          Height = 14
          Angle = 90.000000000000000000
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
          Text = ''
        end
        object RLDraw84: TRLDraw
          Left = 645
          Top = 0
          Width = 1
          Height = 14
          Angle = 90.000000000000000000
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
          Text = ''
        end
      end
      object RLBand13: TRLBand
        Left = 0
        Top = 57
        Width = 718
        Height = 17
        BandType = btSummary
        object RLDraw105: TRLDraw
          Left = 533
          Top = -1
          Width = 1
          Height = 14
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw109: TRLDraw
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
        object RLDraw110: TRLDraw
          Left = 716
          Top = -21
          Width = 1
          Height = 34
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw111: TRLDraw
          Left = 1
          Top = -2
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDBResult15: TRLDBResult
          Left = 4
          Top = 1
          Width = 94
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
          Top = 1
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
          Text = ''
        end
        object RLLabel44: TRLLabel
          Left = 425
          Top = 1
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
          Top = -1
          Width = 1
          Height = 14
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDBResult21: TRLDBResult
          Left = 481
          Top = 1
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
          Text = ''
        end
        object RLDraw107: TRLDraw
          Left = 590
          Top = -1
          Width = 1
          Height = 14
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDBResult16: TRLDBResult
          Left = 593
          Top = 1
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
          Text = ''
        end
        object RLDraw96: TRLDraw
          Left = 645
          Top = -1
          Width = 1
          Height = 14
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
      end
    end
    object RLBand11: TRLBand
      Left = 38
      Top = 215
      Width = 718
      Height = 51
      BandType = btFooter
      object LbNomeInstituicao3: TRLLabel
        Left = 537
        Top = 13
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
      object LbEndereco3: TRLLabel
        Left = 596
        Top = 27
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
      object LbSite3: TRLLabel
        Left = 596
        Top = 37
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
      object RLLabel15: TRLLabel
        Left = 2
        Top = 1
        Width = 308
        Height = 10
        Caption = 
          '* T'#237'tulos com algum problema no cruzamento entre os valores inte' +
          'grais do retorno'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbEmpresaNome3: TRLLabel
        Left = 2
        Top = 13
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
      object lbEmpresaSite3: TRLLabel
        Left = 2
        Top = 26
        Width = 46
        Height = 10
        Caption = 'EmpresaSite'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lbSistemaNome3: TRLLabel
        Left = 2
        Top = 37
        Width = 51
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
  object RLReport4: TRLReport
    Left = -11
    Top = 113
    Width = 794
    Height = 1123
    DataSource = RetornoForm.dsTitQuitado2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ShowProgress = False
    object RLBand16: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 95
      BandType = btColumnHeader
      object lbTitulo4: TRLLabel
        Left = 112
        Top = 7
        Width = 228
        Height = 19
        Caption = 'Rela'#231#227'o de Quita'#231#245'es Duplas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo10: TRLSystemInfo
        Left = 624
        Top = 8
        Width = 92
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
      object RLSystemInfo11: TRLSystemInfo
        Left = 622
        Top = 21
        Width = 94
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
      object RLSystemInfo12: TRLSystemInfo
        Left = 636
        Top = 34
        Width = 80
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
      object ACRLDBImage1: TSedRLDBImage
        Left = 4
        Top = 2
        Width = 92
        Height = 88
        Stretch = True
        DataField = 'LOGO1'
        DataSource = BancodeDados.dsConfig
      end
      object RLLabel46: TRLLabel
        Left = 112
        Top = 30
        Width = 387
        Height = 16
        Caption = 'Rela'#231#227'o de t'#237'tulos que foram quitados por boletos diferentes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLGroup4: TRLGroup
      Left = 38
      Top = 133
      Width = 718
      Height = 276
      DataFields = 'RET1_RETORNO_ID'
      BeforePrint = RLGroup4BeforePrint
      object RLBand18: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 54
        BandType = btColumnHeader
        object lbCorPadrao4: TRLLabel
          Left = 1
          Top = 40
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
        object RLDraw129: TRLDraw
          Left = 1
          Top = 40
          Width = 716
          Height = 1
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DrawKind = dkLine
        end
        object RLDraw130: TRLDraw
          Left = 1
          Top = 53
          Width = 716
          Height = 1
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DrawKind = dkLine
        end
        object RLDraw131: TRLDraw
          Left = 1
          Top = 0
          Width = 1
          Height = 55
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw132: TRLDraw
          Left = 60
          Top = 40
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw133: TRLDraw
          Left = 716
          Top = 0
          Width = 1
          Height = 55
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel48: TRLLabel
          Left = 4
          Top = 42
          Width = 54
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'T'#237'tulo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel49: TRLLabel
          Left = 112
          Top = 42
          Width = 183
          Height = 11
          AutoSize = False
          Caption = 'Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel55: TRLLabel
          Left = 64
          Top = 42
          Width = 44
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'C'#243'digo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw135: TRLDraw
          Left = 110
          Top = 40
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw136: TRLDraw
          Left = 401
          Top = 40
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel56: TRLLabel
          Left = 404
          Top = 42
          Width = 54
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'Venc.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel57: TRLLabel
          Left = 527
          Top = 42
          Width = 56
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'Vl. a pagar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw137: TRLDraw
          Left = 342
          Top = 40
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw138: TRLDraw
          Left = 523
          Top = 40
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw139: TRLDraw
          Left = 645
          Top = 40
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel59: TRLLabel
          Left = 649
          Top = 42
          Width = 66
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'Situa'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel60: TRLLabel
          Left = 345
          Top = 42
          Width = 54
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'Emiss'#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw140: TRLDraw
          Left = 461
          Top = 40
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel61: TRLLabel
          Left = 464
          Top = 42
          Width = 56
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'Vl. Integral'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel62: TRLLabel
          Left = 587
          Top = 42
          Width = 56
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'Vl. pago'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw141: TRLDraw
          Left = 584
          Top = 40
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw142: TRLDraw
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
        object RLDBText61: TRLDBText
          Left = 4
          Top = 13
          Width = 131
          Height = 12
          AutoSize = False
          DataField = 'RET1_RETORNO_ID'
          DataSource = RetornoForm.dsTitQuitado2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = 'Retorno: '
        end
        object RLDBText62: TRLDBText
          Left = 6
          Top = 26
          Width = 173
          Height = 12
          AutoSize = False
          DataField = 'RET1_NOSSO_NUMERO'
          DataSource = RetornoForm.dsTitQuitado2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = 'Nosso N'#250'mero: '
        end
        object RLDBText63: TRLDBText
          Left = 180
          Top = 13
          Width = 105
          Height = 12
          AutoSize = False
          DataField = 'RET1_DATA_RECEBIMENTO'
          DataSource = RetornoForm.dsTitQuitado2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = 'Dt. Receb.: '
        end
        object RLDBText64: TRLDBText
          Left = 608
          Top = 13
          Width = 105
          Height = 12
          AutoSize = False
          DataField = 'RET1_VALOR_DOCUMENTO'
          DataSource = RetornoForm.dsTitQuitado2
          DisplayMask = ',0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = 'Vl. Doc.: '
        end
        object RLDBText65: TRLDBText
          Left = 498
          Top = 26
          Width = 105
          Height = 12
          AutoSize = False
          DataField = 'RET1_VALOR_MORA'
          DataSource = RetornoForm.dsTitQuitado2
          DisplayMask = ',0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = 'Vl. Multa.: '
        end
        object RLDBText66: TRLDBText
          Left = 180
          Top = 26
          Width = 105
          Height = 12
          AutoSize = False
          DataField = 'RET1_DATA_CREDITO'
          DataSource = RetornoForm.dsTitQuitado2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = 'Dt. Cr'#233'dito: '
        end
        object RLDBText67: TRLDBText
          Left = 498
          Top = 13
          Width = 105
          Height = 12
          AutoSize = False
          DataField = 'RET1_VALOR_ABATIMENTO'
          DataSource = RetornoForm.dsTitQuitado2
          DisplayMask = ',0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = 'Vl. Abat.: '
        end
        object RLDBText68: TRLDBText
          Left = 608
          Top = 26
          Width = 105
          Height = 12
          AutoSize = False
          DataField = 'RET1_VALOR_PAGO'
          DataSource = RetornoForm.dsTitQuitado2
          DisplayMask = ',0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = 'Vl. Pago: '
        end
        object RLDBText69: TRLDBText
          Left = 94
          Top = 13
          Width = 83
          Height = 12
          AutoSize = False
          DataField = 'RET1_NUMERO_ARQUIVO'
          DataSource = RetornoForm.dsTitQuitado2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = 'N'#186': '
        end
        object RLDBText70: TRLDBText
          Left = 288
          Top = 26
          Width = 207
          Height = 12
          AutoSize = False
          DataField = 'RET1_NOME_ARQ'
          DataSource = RetornoForm.dsTitQuitado2
          DisplayMask = ',0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = 'Nome: '
        end
        object RLLabel43: TRLLabel
          Left = 4
          Top = 2
          Width = 264
          Height = 11
          Caption = 'Dados do retorno que quitou o(s) t'#237'tulo(s) anteriormente:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw192: TRLDraw
          Left = 298
          Top = 40
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel3: TRLLabel
          Left = 302
          Top = 42
          Width = 38
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'Parcela'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand19: TRLBand
        Left = 0
        Top = 54
        Width = 718
        Height = 14
        object RLDBText50: TRLDBText
          Left = 112
          Top = 1
          Width = 183
          Height = 11
          AutoSize = False
          DataField = 'ALUNO'
          DataSource = RetornoForm.dsTitQuitado2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDraw143: TRLDraw
          Left = 60
          Top = 0
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw144: TRLDraw
          Left = 716
          Top = 0
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw146: TRLDraw
          Left = 110
          Top = 0
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw147: TRLDraw
          Left = 401
          Top = 0
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw148: TRLDraw
          Left = 342
          Top = 0
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw149: TRLDraw
          Left = 523
          Top = 0
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw150: TRLDraw
          Left = 584
          Top = 0
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw151: TRLDraw
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
        object RLDBText52: TRLDBText
          Left = 405
          Top = 1
          Width = 54
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VENCIMENTO'
          DataSource = RetornoForm.dsTitQuitado2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText53: TRLDBText
          Left = 528
          Top = 1
          Width = 56
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALOR_APAGAR'
          DataSource = RetornoForm.dsTitQuitado2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText54: TRLDBText
          Left = 649
          Top = 1
          Width = 66
          Height = 11
          Alignment = taCenter
          AutoSize = False
          DataField = 'SITUACAO_BOLETO'
          DataSource = RetornoForm.dsTitQuitado2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText55: TRLDBText
          Left = 4
          Top = 1
          Width = 54
          Height = 11
          Alignment = taCenter
          AutoSize = False
          DataField = 'BOLETO_ID'
          DataSource = RetornoForm.dsTitQuitado2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText56: TRLDBText
          Left = 64
          Top = 1
          Width = 44
          Height = 11
          Alignment = taCenter
          AutoSize = False
          DataField = 'MATRICULA_ID'
          DataSource = RetornoForm.dsTitQuitado2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDraw152: TRLDraw
          Left = 1
          Top = 0
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDBText57: TRLDBText
          Left = 346
          Top = 1
          Width = 54
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'EMISSAO'
          DataSource = RetornoForm.dsTitQuitado2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDraw153: TRLDraw
          Left = 461
          Top = 0
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDBText58: TRLDBText
          Left = 465
          Top = 1
          Width = 56
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALOR_INTEGRAL'
          DataSource = RetornoForm.dsTitQuitado2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDraw154: TRLDraw
          Left = 645
          Top = 0
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDBText59: TRLDBText
          Left = 587
          Top = 1
          Width = 56
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALOR_PAGO'
          DataSource = RetornoForm.dsTitQuitado2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDraw193: TRLDraw
          Left = 298
          Top = -1
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDBText48: TRLDBText
          Left = 302
          Top = 1
          Width = 38
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PARCELA'
          DataSource = RetornoForm.dsTitQuitado2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLBand20: TRLBand
        Left = 0
        Top = 68
        Width = 718
        Height = 65
        BandType = btSummary
        object RLDraw155: TRLDraw
          Left = 523
          Top = -1
          Width = 1
          Height = 14
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw156: TRLDraw
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
        object RLDraw157: TRLDraw
          Left = 716
          Top = -21
          Width = 1
          Height = 34
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw158: TRLDraw
          Left = 1
          Top = -2
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDBResult25: TRLDBResult
          Left = 4
          Top = 0
          Width = 115
          Height = 12
          DataField = 'BOLETO_ID'
          DataSource = RetornoForm.dsTitQuitado2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Info = riCount
          ParentFont = False
          ResetAfterPrint = True
          Text = 'N.'#186' de Registro(s): '
        end
        object RLDBResult26: TRLDBResult
          Left = 528
          Top = 1
          Width = 56
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALOR_APAGAR'
          DataSource = RetornoForm.dsTitQuitado2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
          ResetAfterPrint = True
          Text = ''
        end
        object RLLabel63: TRLLabel
          Left = 409
          Top = 1
          Width = 50
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Total:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw159: TRLDraw
          Left = 461
          Top = -1
          Width = 1
          Height = 14
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDBResult27: TRLDBResult
          Left = 465
          Top = 1
          Width = 56
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALOR_INTEGRAL'
          DataSource = RetornoForm.dsTitQuitado2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
          ResetAfterPrint = True
          Text = ''
        end
        object RLDraw160: TRLDraw
          Left = 584
          Top = -1
          Width = 1
          Height = 14
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDBResult28: TRLDBResult
          Left = 587
          Top = 1
          Width = 56
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALOR_PAGO'
          DataSource = RetornoForm.dsTitQuitado2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
          ResetAfterPrint = True
          Text = ''
        end
        object RLDraw161: TRLDraw
          Left = 645
          Top = -1
          Width = 1
          Height = 14
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel45: TRLLabel
          Left = 4
          Top = 18
          Width = 276
          Height = 11
          Caption = 'Dados do retorno que tentou quitar o(s) t'#237'tulo(s) novamente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object ret2_ret_id: TRLLabel
          Left = 4
          Top = 33
          Width = 131
          Height = 12
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object ret2_nosso_n: TRLLabel
          Left = 4
          Top = 47
          Width = 173
          Height = 12
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object ret2_dt_recb: TRLLabel
          Left = 180
          Top = 33
          Width = 105
          Height = 12
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object ret2_vl_doc: TRLLabel
          Left = 608
          Top = 33
          Width = 105
          Height = 12
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object ret2_vl_mora: TRLLabel
          Left = 498
          Top = 47
          Width = 105
          Height = 12
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object ret2_dt_cred: TRLLabel
          Left = 180
          Top = 47
          Width = 105
          Height = 12
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object ret2_vl_abat: TRLLabel
          Left = 498
          Top = 33
          Width = 105
          Height = 12
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object ret2_vl_pago: TRLLabel
          Left = 608
          Top = 47
          Width = 105
          Height = 12
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object ret2_n_arq: TRLLabel
          Left = 94
          Top = 33
          Width = 83
          Height = 12
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object ret2_nome_arq: TRLLabel
          Left = 288
          Top = 33
          Width = 207
          Height = 12
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
    end
    object RLBand21: TRLBand
      Left = 38
      Top = 409
      Width = 718
      Height = 40
      BandType = btFooter
      object LbNomeInstituicao4: TRLLabel
        Left = 537
        Top = 3
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
      object LbEndereco4: TRLLabel
        Left = 596
        Top = 17
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
      object LbSite4: TRLLabel
        Left = 596
        Top = 27
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
      object RLDraw162: TRLDraw
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
      object lbEmpresaNome4: TRLLabel
        Left = 2
        Top = 3
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
      object lbEmpresaSite4: TRLLabel
        Left = 2
        Top = 16
        Width = 46
        Height = 10
        Caption = 'EmpresaSite'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lbSistemaNome4: TRLLabel
        Left = 2
        Top = 27
        Width = 51
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
  object RLReport10: TRLReport
    Left = 165
    Top = 562
    Width = 794
    Height = 1123
    DataSource = BancodeDados.DSBoletos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ShowProgress = False
    BeforePrint = RLReport10BeforePrint
    object RLBand17: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 94
      BandType = btColumnHeader
      object lbTitulo_10: TRLLabel
        Left = 100
        Top = 7
        Width = 283
        Height = 19
        Caption = 'Relat'#243'rio de Recebimento Via Banco'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbPeriodo10: TRLLabel
        Left = 100
        Top = 51
        Width = 80
        Height = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo13: TRLSystemInfo
        Left = 624
        Top = 8
        Width = 92
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
      object RLSystemInfo14: TRLSystemInfo
        Left = 622
        Top = 21
        Width = 94
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
      object RLSystemInfo15: TRLSystemInfo
        Left = 636
        Top = 34
        Width = 80
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
      object lbSituacao10: TRLLabel
        Left = 100
        Top = 30
        Width = 86
        Height = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SedRLDBImage1: TSedRLDBImage
        Left = 4
        Top = 2
        Width = 92
        Height = 88
        Stretch = True
        DataField = 'LOGO1'
        DataSource = BancodeDados.dsConfig
      end
      object lbTipoQuitacao10: TRLLabel
        Left = 100
        Top = 72
        Width = 115
        Height = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand22: TRLBand
      Left = 38
      Top = 291
      Width = 718
      Height = 41
      BandType = btFooter
      object LbNomeInstituicao10: TRLLabel
        Left = 593
        Top = 5
        Width = 123
        Height = 15
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LbEndereco10: TRLLabel
        Left = 648
        Top = 18
        Width = 68
        Height = 11
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LbSite10: TRLLabel
        Left = 674
        Top = 29
        Width = 42
        Height = 11
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw23: TRLDraw
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
      object lbEmpresaNome10: TRLLabel
        Left = 2
        Top = 5
        Width = 92
        Height = 14
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lbEmpresaSite10: TRLLabel
        Left = 2
        Top = 18
        Width = 60
        Height = 10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lbSistemaNome10: TRLLabel
        Left = 2
        Top = 29
        Width = 65
        Height = 10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLGroup10: TRLGroup
      Left = 38
      Top = 132
      Width = 718
      Height = 65
      object RLBand23: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 30
        BandType = btColumnHeader
        object lbCorPadrao10: TRLLabel
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
        object RLDraw41: TRLDraw
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
        object RLDraw52: TRLDraw
          Left = 2
          Top = 29
          Width = 715
          Height = 1
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DrawKind = dkLine
        end
        object RLDraw61: TRLDraw
          Left = 1
          Top = 0
          Width = 1
          Height = 32
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw64: TRLDraw
          Left = 47
          Top = 16
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw67: TRLDraw
          Left = 422
          Top = 16
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw119: TRLDraw
          Left = 716
          Top = 0
          Width = 1
          Height = 32
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel19: TRLLabel
          Left = 3
          Top = 18
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
        object RLLabel38: TRLLabel
          Left = 85
          Top = 18
          Width = 196
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
        object RLDraw120: TRLDraw
          Left = 83
          Top = 16
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel58: TRLLabel
          Left = 49
          Top = 18
          Width = 34
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
        object RLLabel64: TRLLabel
          Left = 424
          Top = 18
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
        object RLDraw122: TRLDraw
          Left = 449
          Top = 16
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw123: TRLDraw
          Left = 539
          Top = 16
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel65: TRLLabel
          Left = 541
          Top = 18
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
        object RLDraw124: TRLDraw
          Left = 669
          Top = 16
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel66: TRLLabel
          Left = 584
          Top = 18
          Width = 40
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
        object RLDraw125: TRLDraw
          Left = 494
          Top = 16
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel67: TRLLabel
          Left = 451
          Top = 18
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
        object RLDraw126: TRLDraw
          Left = 582
          Top = 16
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw134: TRLDraw
          Left = 625
          Top = 16
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel68: TRLLabel
          Left = 626
          Top = 18
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
        object RLLabel69: TRLLabel
          Left = 671
          Top = 18
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
        object RLDraw145: TRLDraw
          Left = 281
          Top = 16
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel70: TRLLabel
          Left = 283
          Top = 18
          Width = 135
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
        object RLDraw163: TRLDraw
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
        object RLLabel71: TRLLabel
          Left = 496
          Top = 18
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
        object lbArquivo10: TRLLabel
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
      end
      object RLBand24: TRLBand
        Left = 0
        Top = 30
        Width = 718
        Height = 13
        BeforePrint = RLBand24BeforePrint
        object lbCorProtest10_1: TRLLabel
          Left = 1
          Top = -1
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
        object RLDBText1: TRLDBText
          Left = 85
          Top = 1
          Width = 196
          Height = 11
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
        object RLDraw164: TRLDraw
          Left = 47
          Top = -2
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw165: TRLDraw
          Left = 422
          Top = -2
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw166: TRLDraw
          Left = 716
          Top = -19
          Width = 1
          Height = 32
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw167: TRLDraw
          Left = 83
          Top = -2
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw169: TRLDraw
          Left = 449
          Top = -2
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw170: TRLDraw
          Left = 539
          Top = -2
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw171: TRLDraw
          Left = 669
          Top = -2
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw172: TRLDraw
          Left = 494
          Top = -2
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw173: TRLDraw
          Left = 582
          Top = -2
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw174: TRLDraw
          Left = 625
          Top = -2
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw175: TRLDraw
          Left = 281
          Top = -2
          Width = 1
          Height = 14
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw176: TRLDraw
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
        object RLDBText3: TRLDBText
          Left = 283
          Top = 1
          Width = 135
          Height = 11
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
        object RLDBText35: TRLDBText
          Left = 424
          Top = 1
          Width = 24
          Height = 11
          Alignment = taCenter
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
        object RLDBText38: TRLDBText
          Left = 451
          Top = 1
          Width = 42
          Height = 11
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
        object RLDBText39: TRLDBText
          Left = 541
          Top = 1
          Width = 40
          Height = 11
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
        object RLDBText41: TRLDBText
          Left = 584
          Top = 1
          Width = 40
          Height = 11
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
        object RLDBText42: TRLDBText
          Left = 626
          Top = 1
          Width = 42
          Height = 11
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
        object RLDBText43: TRLDBText
          Left = 671
          Top = 1
          Width = 44
          Height = 11
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
        object RLDBText44: TRLDBText
          Left = 3
          Top = 1
          Width = 44
          Height = 11
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
        object RLDBText45: TRLDBText
          Left = 49
          Top = 1
          Width = 34
          Height = 11
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
        object RLDraw177: TRLDraw
          Left = 1
          Top = -2
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDBText46: TRLDBText
          Left = 496
          Top = 1
          Width = 42
          Height = 11
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
      end
      object RLBand25: TRLBand
        Left = 0
        Top = 43
        Width = 718
        Height = 15
        BandType = btSummary
        object RLDraw178: TRLDraw
          Left = 494
          Top = -1
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw179: TRLDraw
          Left = 582
          Top = -1
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw180: TRLDraw
          Left = 539
          Top = -1
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw181: TRLDraw
          Left = 625
          Top = -1
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw182: TRLDraw
          Left = 669
          Top = -1
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw183: TRLDraw
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
        object RLDraw184: TRLDraw
          Left = 716
          Top = -18
          Width = 1
          Height = 32
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw185: TRLDraw
          Left = 1
          Top = -1
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDBResult13: TRLDBResult
          Left = 3
          Top = 2
          Width = 94
          Height = 10
          DataField = 'MATRICULA_ID'
          DataSource = BancodeDados.DSBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Info = riCount
          ParentFont = False
          Text = 'N.'#186' de Registro(s): '
        end
        object RLDBResult14: TRLDBResult
          Left = 541
          Top = 2
          Width = 40
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'JUROS'
          DataSource = BancodeDados.DSBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLDBResult20: TRLDBResult
          Left = 584
          Top = 2
          Width = 40
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'MULTA'
          DataSource = BancodeDados.DSBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLDBResult22: TRLDBResult
          Left = 626
          Top = 2
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
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLDBResult23: TRLDBResult
          Left = 496
          Top = 2
          Width = 42
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'DESCONTO'
          DataSource = BancodeDados.DSBoletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLDraw186: TRLDraw
          Left = 449
          Top = 0
          Width = 1
          Height = 14
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDBResult24: TRLDBResult
          Left = 451
          Top = 2
          Width = 42
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
          Info = riSum
          ParentFont = False
          Text = ''
        end
      end
    end
    object RLBand26: TRLBand
      Left = 38
      Top = 197
      Width = 718
      Height = 94
      BandType = btSummary
      object RLDraw187: TRLDraw
        Left = 2
        Top = 4
        Width = 235
        Height = 77
      end
      object RLDraw188: TRLDraw
        Left = 481
        Top = 4
        Width = 235
        Height = 86
        DrawData.Strings = (
          '0 0'
          '1 0'
          '1 1'
          '0 1')
        DrawKind = dkCustom
      end
      object RLDBResult29: TRLDBResult
        Left = 487
        Top = 74
        Width = 225
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALOR_PAGO'
        DataSource = BancodeDados.DSBoletos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = 'Valor Total Pago/Recebido: '
      end
      object RLDBResult30: TRLDBResult
        Left = 487
        Top = 48
        Width = 225
        Height = 10
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
        Text = 'Juros: '
      end
      object RLDBResult31: TRLDBResult
        Left = 487
        Top = 37
        Width = 225
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
        Text = 'Descontos: '
      end
      object RLDBResult32: TRLDBResult
        Left = 487
        Top = 25
        Width = 225
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
        Text = 'Valor Integral: '
      end
      object RLDraw189: TRLDraw
        Left = 486
        Top = 70
        Width = 226
        Height = 1
        DrawKind = dkLine
      end
      object RLDraw190: TRLDraw
        Left = 486
        Top = 22
        Width = 226
        Height = 1
        DrawKind = dkLine
      end
      object RLLabel73: TRLLabel
        Left = 486
        Top = 7
        Width = 226
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
      object RLDBResult33: TRLDBResult
        Left = 487
        Top = 59
        Width = 225
        Height = 10
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
        Text = 'Multa: '
      end
      object RLLabel74: TRLLabel
        Left = 9
        Top = 29
        Width = 188
        Height = 10
        Caption = 'Em destaque t'#237'tulos protestados. Informe ao setor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel75: TRLLabel
        Left = 6
        Top = 7
        Width = 226
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
      object RLDraw191: TRLDraw
        Left = 7
        Top = 25
        Width = 225
        Height = 1
        DrawKind = dkLine
      end
      object RLLabel76: TRLLabel
        Left = 9
        Top = 40
        Width = 155
        Height = 10
        Caption = 'competente, evitando cobran'#231'a indevida.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object RLReport5: TRLReport
    Left = 129
    Top = 517
    Width = 794
    Height = 1123
    DataSource = RetornoForm.dsRetornoTmp
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ShowProgress = False
    object RLBand27: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 94
      BandType = btTitle
      object lbTitulo5: TRLLabel
        Left = 100
        Top = 7
        Width = 186
        Height = 19
        Caption = 'Ocorr'#234'ncias de Retorno'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbSituacao5: TRLLabel
        Left = 100
        Top = 30
        Width = 86
        Height = 16
        Caption = 'lbSituacao51'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo16: TRLSystemInfo
        Left = 624
        Top = 8
        Width = 92
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
      object RLSystemInfo17: TRLSystemInfo
        Left = 622
        Top = 21
        Width = 94
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
      object RLSystemInfo18: TRLSystemInfo
        Left = 636
        Top = 34
        Width = 80
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
      object lbPeriodo5: TRLLabel
        Left = 100
        Top = 51
        Width = 73
        Height = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbTipoQuitacao51: TRLLabel
        Left = 100
        Top = 72
        Width = 361
        Height = 16
        Caption = 'Consulte o Gerente ou Administrador da Conta Banc'#225'ria'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLGroup5: TRLGroup
      Left = 38
      Top = 132
      Width = 718
      Height = 148
      object RLBand28: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 31
        BandType = btColumnHeader
        object lbCorPadrao105: TRLLabel
          Left = 1
          Top = 16
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
        object RLDraw194: TRLDraw
          Left = 1
          Top = 16
          Width = 716
          Height = 1
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DrawKind = dkLine
        end
        object RLDraw195: TRLDraw
          Left = 1
          Top = 30
          Width = 716
          Height = 1
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DrawKind = dkLine
        end
        object RLDraw196: TRLDraw
          Left = 1
          Top = 0
          Width = 1
          Height = 32
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw197: TRLDraw
          Left = 54
          Top = 16
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw198: TRLDraw
          Left = 716
          Top = 0
          Width = 1
          Height = 32
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel82: TRLLabel
          Left = 9
          Top = 18
          Width = 44
          Height = 10
          Alignment = taCenter
          Caption = 'N'#186' Arquivo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel83: TRLLabel
          Left = 57
          Top = 18
          Width = 50
          Height = 11
          AutoSize = False
          Caption = 'Data Arq.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw199: TRLDraw
          Left = 241
          Top = 16
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw201: TRLDraw
          Left = 295
          Top = 16
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel86: TRLLabel
          Left = 244
          Top = 18
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
        object RLDraw204: TRLDraw
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
        object RLLabel88: TRLLabel
          Left = 298
          Top = 18
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
        object lbArquivo5_1: TRLLabel
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
        object RLDraw206: TRLDraw
          Left = 344
          Top = 17
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw207: TRLDraw
          Left = 110
          Top = 17
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel92: TRLLabel
          Left = 113
          Top = 18
          Width = 126
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
        object RLLabel78: TRLLabel
          Left = 348
          Top = 18
          Width = 359
          Height = 11
          AutoSize = False
          Caption = 'Descri'#231#227'o da Ocorr'#234'ncia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand29: TRLBand
        Left = 0
        Top = 31
        Width = 718
        Height = 29
        object RLDBText49: TRLDBText
          Left = 57
          Top = 1
          Width = 50
          Height = 11
          AutoSize = False
          DataField = 'DATA_ARQUIVO'
          DataSource = RetornoForm.dsRetornoTmp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDraw210: TRLDraw
          Left = 716
          Top = -22
          Width = 1
          Height = 50
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDBText71: TRLDBText
          Left = 244
          Top = 1
          Width = 50
          Height = 11
          Alignment = taCenter
          AutoSize = False
          DataField = 'DATA_RECEBIMENTO'
          DataSource = RetornoForm.dsRetornoTmp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText75: TRLDBText
          Left = 9
          Top = 1
          Width = 44
          Height = 11
          Alignment = taCenter
          AutoSize = False
          DataField = 'NUMERO_ARQUIVO'
          DataSource = RetornoForm.dsRetornoTmp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDraw217: TRLDraw
          Left = 1
          Top = -5
          Width = 1
          Height = 33
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDBText76: TRLDBText
          Left = 298
          Top = 1
          Width = 44
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALOR_PAGO'
          DataSource = RetornoForm.dsRetornoTmp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText79: TRLDBText
          Left = 113
          Top = 1
          Width = 126
          Height = 11
          AutoSize = False
          DataField = 'NOSSO_NUMERO'
          DataSource = RetornoForm.dsRetornoTmp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText74: TRLDBText
          Left = 348
          Top = 1
          Width = 359
          Height = 11
          AutoSize = False
          DataField = 'OCORRENCIA_NOME'
          DataSource = RetornoForm.dsRetornoTmp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDraw242: TRLDraw
          Left = 1
          Top = 27
          Width = 715
          Height = 3
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DrawKind = dkLine
          Pen.Width = 2
        end
        object RLLabel103: TRLLabel
          Left = 6
          Top = 15
          Width = 46
          Height = 10
          Alignment = taCenter
          Caption = 'Observa'#231#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText82: TRLDBText
          Left = 55
          Top = 15
          Width = 652
          Height = 11
          AutoSize = False
          DataField = 'OBSERVACAO'
          DataSource = RetornoForm.dsRetornoTmp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLBand30: TRLBand
        Left = 0
        Top = 60
        Width = 718
        Height = 25
        BandType = btSummary
        BeforePrint = RLBand4BeforePrint
        object RLDraw222: TRLDraw
          Left = 295
          Top = -3
          Width = 1
          Height = 17
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw224: TRLDraw
          Left = 344
          Top = -3
          Width = 1
          Height = 17
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw226: TRLDraw
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
        object RLDraw227: TRLDraw
          Left = 716
          Top = -20
          Width = 1
          Height = 34
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw228: TRLDraw
          Left = 1
          Top = -1
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDBResult34: TRLDBResult
          Left = 4
          Top = 2
          Width = 94
          Height = 10
          DataField = 'NUMERO_ARQUIVO'
          DataSource = RetornoForm.dsRetornoTmp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Info = riCount
          ParentFont = False
          Text = 'N.'#186' de Registro(s): '
        end
        object RLDBResult37: TRLDBResult
          Left = 298
          Top = 2
          Width = 44
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALOR_PAGO'
          DataSource = RetornoForm.dsRetornoTmp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLLabel94: TRLLabel
          Left = 243
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
      end
    end
    object RLBand31: TRLBand
      Left = 38
      Top = 280
      Width = 718
      Height = 41
      BandType = btFooter
      object LbNomeInstituicao5: TRLLabel
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
      object LbEndereco5: TRLLabel
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
      object LbSite5: TRLLabel
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
      object RLDraw234: TRLDraw
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
      object lbEmpresaNome5: TRLLabel
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
      object lbEmpresaSite5: TRLLabel
        Left = 2
        Top = 18
        Width = 46
        Height = 10
        Caption = 'EmpresaSite'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lbSistemaNome5: TRLLabel
        Left = 2
        Top = 29
        Width = 51
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
