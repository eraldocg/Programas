object RelLivroCaixaForm: TRelLivroCaixaForm
  Left = 257
  Top = 187
  Caption = 'RelCaixaSimples'
  ClientHeight = 409
  ClientWidth = 1070
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
    Top = 12
    Width = 794
    Height = 1123
    DataSource = BancodeDados.DSLivroCaixa
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
      Height = 95
      BandType = btColumnHeader
      object RLLabel6: TRLLabel
        Left = 112
        Top = 7
        Width = 231
        Height = 19
        Caption = 'Relat'#243'rio Movimento de Caixa'
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
        DataField = 'CAIXA_ID'
        DataSource = BancodeDados.DSLivroCaixa
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
        Left = 393
        Top = 20
        Width = 270
        Height = 115
        DrawData.Strings = (
          '0 0'
          '1 0'
          '1 1'
          '0 1')
        DrawKind = dkCustom
      end
      object RLDBResult11: TRLDBResult
        Left = 401
        Top = 76
        Width = 254
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'SAIDA'
        DataSource = BancodeDados.DSLivroCaixa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = 'Sa'#237'da:  '
      end
      object RLDBResult10: TRLDBResult
        Left = 401
        Top = 61
        Width = 254
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'ENTRADA'
        DataSource = BancodeDados.DSLivroCaixa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = 'Entrada:  '
      end
      object RLDraw46: TRLDraw
        Left = 399
        Top = 100
        Width = 257
        Height = 1
        DrawKind = dkLine
      end
      object RLDraw47: TRLDraw
        Left = 399
        Top = 42
        Width = 257
        Height = 1
        DrawKind = dkLine
      end
      object RLLabel14: TRLLabel
        Left = 401
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
      object RLDraw3: TRLDraw
        Left = 71
        Top = 20
        Width = 270
        Height = 115
        DrawData.Strings = (
          '0 0'
          '1 0'
          '1 1'
          '0 1')
        DrawKind = dkCustom
      end
      object RLDraw21: TRLDraw
        Left = 77
        Top = 42
        Width = 257
        Height = 1
        DrawKind = dkLine
      end
      object RLLabel7: TRLLabel
        Left = 79
        Top = 24
        Width = 254
        Height = 14
        Alignment = taCenter
        AutoSize = False
        Caption = 'Desc. Pagamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbDinheiro: TRLLabel
        Left = 79
        Top = 53
        Width = 254
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbCheque: TRLLabel
        Left = 79
        Top = 66
        Width = 254
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbCartao: TRLLabel
        Left = 79
        Top = 79
        Width = 254
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbNegociado: TRLLabel
        Left = 79
        Top = 92
        Width = 254
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbBoleto: TRLLabel
        Left = 79
        Top = 105
        Width = 254
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbOutros: TRLLabel
        Left = 79
        Top = 119
        Width = 254
        Height = 11
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult3: TRLDBResult
        Left = 401
        Top = 110
        Width = 254
        Height = 10
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'SALDO'
        DataSource = BancodeDados.DSLivroCaixa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = 'Saldo:  '
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
    end
    object RLGroup2: TRLGroup
      Left = 38
      Top = 133
      Width = 718
      Height = 45
      DataFields = 'DATA'
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
          Caption = 'C'#243'digo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel3: TRLLabel
          Left = 100
          Top = 3
          Width = 325
          Height = 11
          AutoSize = False
          Caption = 'Hist'#243'rico'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw20: TRLDraw
          Left = 97
          Top = 1
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel5: TRLLabel
          Left = 49
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
        object RLDraw22: TRLDraw
          Left = 414
          Top = 16
          Width = 0
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw26: TRLDraw
          Left = 523
          Top = 1
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw27: TRLDraw
          Left = 643
          Top = 1
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel9: TRLLabel
          Left = 528
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
        object RLLabel10: TRLLabel
          Left = 646
          Top = 3
          Width = 68
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'Desc. Pagamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw31: TRLDraw
          Left = 583
          Top = 1
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel4: TRLLabel
          Left = 588
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
        object RLDraw7: TRLDraw
          Left = 428
          Top = 1
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel1: TRLLabel
          Left = 432
          Top = 3
          Width = 88
          Height = 11
          AutoSize = False
          Caption = 'Conta'
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
        Top = 16
        Width = 718
        Height = 13
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
        object RLDraw13: TRLDraw
          Left = 643
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
          Left = 97
          Top = -4
          Width = 1
          Height = 17
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw16: TRLDraw
          Left = 523
          Top = -4
          Width = 1
          Height = 17
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDBText1: TRLDBText
          Left = 49
          Top = 1
          Width = 44
          Height = 10
          Alignment = taCenter
          AutoSize = False
          DataField = 'DATA'
          DataSource = BancodeDados.DSLivroCaixa
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
          DataField = 'CAIXA_ID'
          DataSource = BancodeDados.DSLivroCaixa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText5: TRLDBText
          Left = 588
          Top = 1
          Width = 51
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'SAIDA'
          DataSource = BancodeDados.DSLivroCaixa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText6: TRLDBText
          Left = 647
          Top = 1
          Width = 66
          Height = 10
          AutoSize = False
          DataField = 'DESCRICAO_PAGO'
          DataSource = BancodeDados.DSLivroCaixa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText7: TRLDBText
          Left = 100
          Top = 1
          Width = 325
          Height = 10
          AutoSize = False
          DataField = 'DESCRICAO'
          DataSource = BancodeDados.DSLivroCaixa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDraw33: TRLDraw
          Left = 583
          Top = -4
          Width = 1
          Height = 17
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDBText11: TRLDBText
          Left = 528
          Top = 1
          Width = 51
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'ENTRADA'
          DataSource = BancodeDados.DSLivroCaixa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDraw8: TRLDraw
          Left = 428
          Top = -3
          Width = 1
          Height = 17
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDBText3: TRLDBText
          Left = 432
          Top = 1
          Width = 88
          Height = 10
          AutoSize = False
          DataField = 'CONTA_NOME'
          DataSource = BancodeDados.DSLivroCaixa
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
          DataField = 'CAIXA_ID'
          DataSource = BancodeDados.DSLivroCaixa
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
          Left = 523
          Top = -4
          Width = 1
          Height = 17
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw39: TRLDraw
          Left = 583
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
          Left = 490
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
        object RLDBResult4: TRLDBResult
          Left = 588
          Top = 1
          Width = 51
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'SAIDA'
          DataSource = BancodeDados.DSLivroCaixa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLDBResult5: TRLDBResult
          Left = 528
          Top = 1
          Width = 51
          Height = 10
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'ENTRADA'
          DataSource = BancodeDados.DSLivroCaixa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLDraw18: TRLDraw
          Left = 643
          Top = -4
          Width = 1
          Height = 17
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
      end
    end
  end
  object QryTotais: TFDQuery
    Connection = BancodeDados.FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      'select sum(saldo) as total from livro_caixa')
    Left = 530
    Top = 42
    object QryTotaisTOTAL: TFloatField
      FieldName = 'TOTAL'
      ReadOnly = True
    end
  end
end
