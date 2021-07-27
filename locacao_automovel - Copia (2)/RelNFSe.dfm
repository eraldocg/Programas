object RelNFSeForm: TRelNFSeForm
  Left = 292
  Top = 192
  Width = 1125
  Height = 639
  AutoScroll = True
  Caption = 'RelNFSeForm'
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
    Top = 17
    Width = 794
    Height = 1123
    DataSource = dsNFse
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ShowProgress = False
    BeforePrint = RLReport1BeforePrint
    object RLGroup1: TRLGroup
      Left = 38
      Top = 38
      Width = 718
      Height = 1005
      Borders.Sides = sdAll
      DataFields = 'CLI_ID'
      PageBreaking = pbBeforePrint
      BeforePrint = RLGroup1BeforePrint
      object RLBand5: TRLBand
        Left = 1
        Top = 19
        Width = 716
        Height = 962
        AutoExpand = False
        BeforePrint = RLBand5BeforePrint
        object lbPrefeitura: TRLLabel
          Left = 108
          Top = 7
          Width = 440
          Height = 18
          Alignment = taCenter
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLSystemInfo1: TRLSystemInfo
          Left = 623
          Top = 248
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
          Left = 621
          Top = 261
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
        object lbNFSe: TRLLabel
          Left = 108
          Top = 49
          Width = 440
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = 'NOTA FISCAL DE SERVI'#199'OS ELETR'#212'NICA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object lbPrestador: TRLLabel
          Left = 269
          Top = 108
          Width = 176
          Height = 16
          Alignment = taCenter
          Caption = 'PRESTADOR DE SERVI'#199'OS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbSecFin: TRLLabel
          Left = 108
          Top = 31
          Width = 440
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = 'SECRETARIA DE FINAN'#199'AS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBImage1: TSedRLDBImage
          Left = 4
          Top = 128
          Width = 92
          Height = 92
          Stretch = True
          DataField = 'LOGO'
          DataSource = BancodeDados.dsConfig
        end
        object RLDraw2: TRLDraw
          Left = 554
          Top = 56
          Width = 162
          Height = 3
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DrawKind = dkLine
        end
        object RLDraw4: TRLDraw
          Left = 0
          Top = 106
          Width = 717
          Height = 1
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DrawKind = dkLine
        end
        object RLDraw5: TRLDraw
          Left = 554
          Top = 0
          Width = 1
          Height = 107
          Angle = 90.000000000000000000
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DrawKind = dkLine
        end
        object RLLabel1: TRLLabel
          Left = 556
          Top = 2
          Width = 69
          Height = 14
          Caption = 'N'#250'mero NFSe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText1: TRLDBText
          Left = 562
          Top = 24
          Width = 151
          Height = 22
          Alignment = taRightJustify
          DataField = 'NFSE_NUMERO'
          DataSource = dsNFse
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLLabel2: TRLLabel
          Left = 556
          Top = 61
          Width = 100
          Height = 14
          Caption = 'Data / Hora Emiss'#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText2: TRLDBText
          Left = 585
          Top = 82
          Width = 129
          Height = 16
          Alignment = taRightJustify
          DataField = 'NFSE_DT_EMISSAO'
          DataSource = dsNFse
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLDBText3: TRLDBText
          Left = 108
          Top = 82
          Width = 440
          Height = 16
          Alignment = taCenter
          AutoSize = False
          DataField = 'NFSE_COD_VERIF'
          DataSource = dsNFse
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLLabel4: TRLLabel
          Left = 103
          Top = 128
          Width = 69
          Height = 14
          Alignment = taRightJustify
          Caption = 'Raz'#227'o Social:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object lbTomador: TRLLabel
          Left = 277
          Top = 232
          Width = 162
          Height = 16
          Alignment = taCenter
          Caption = 'TOMADOR DE SERVI'#199'OS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel5: TRLLabel
          Left = 141
          Top = 144
          Width = 31
          Height = 14
          Alignment = taRightJustify
          Caption = 'CNPJ:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel6: TRLLabel
          Left = 98
          Top = 160
          Width = 74
          Height = 14
          Alignment = taRightJustify
          Caption = 'Nome Fantasia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel7: TRLLabel
          Left = 120
          Top = 176
          Width = 52
          Height = 14
          Alignment = taRightJustify
          Caption = 'Endere'#231'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel8: TRLLabel
          Left = 467
          Top = 144
          Width = 97
          Height = 14
          Alignment = taRightJustify
          Caption = 'Inscri'#231#227'o Municipal:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel9: TRLLabel
          Left = 133
          Top = 208
          Width = 39
          Height = 14
          Alignment = taRightJustify
          Caption = 'Cidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel10: TRLLabel
          Left = 545
          Top = 212
          Width = 19
          Height = 14
          Alignment = taRightJustify
          Caption = 'UF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw6: TRLDraw
          Left = 0
          Top = 230
          Width = 717
          Height = 1
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DrawKind = dkLine
        end
        object RLDraw7: TRLDraw
          Left = 0
          Top = 336
          Width = 717
          Height = 2
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DrawKind = dkLine
        end
        object RLLabel11: TRLLabel
          Left = 5
          Top = 252
          Width = 69
          Height = 14
          Alignment = taRightJustify
          Caption = 'Raz'#227'o Social:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText11: TRLDBText
          Left = 78
          Top = 252
          Width = 37
          Height = 15
          DataField = 'NOME'
          DataSource = dsNFse
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLLabel12: TRLLabel
          Left = 15
          Top = 268
          Width = 59
          Height = 14
          Alignment = taRightJustify
          Caption = 'CNPJ / CPF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText12: TRLDBText
          Left = 78
          Top = 268
          Width = 34
          Height = 15
          DataField = 'CNPJ'
          DataSource = dsNFse
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLLabel14: TRLLabel
          Left = 22
          Top = 284
          Width = 52
          Height = 14
          Alignment = taRightJustify
          Caption = 'Endere'#231'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText14: TRLDBText
          Left = 78
          Top = 284
          Width = 85
          Height = 15
          DataField = 'LOGRADOURO'
          DataSource = dsNFse
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLLabel16: TRLLabel
          Left = 35
          Top = 317
          Width = 39
          Height = 14
          Alignment = taRightJustify
          Caption = 'Cidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText16: TRLDBText
          Left = 78
          Top = 317
          Width = 45
          Height = 15
          DataField = 'CIDADE'
          DataSource = dsNFse
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLLabel17: TRLLabel
          Left = 425
          Top = 317
          Width = 19
          Height = 14
          Alignment = taRightJustify
          Caption = 'UF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText17: TRLDBText
          Left = 448
          Top = 317
          Width = 50
          Height = 15
          DataField = 'ESTADO'
          DataSource = dsNFse
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLLabel13: TRLLabel
          Left = 252
          Top = 338
          Width = 212
          Height = 16
          Alignment = taCenter
          Caption = 'DISCRIMINA'#199#195'O DOS SERVI'#199'OS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw8: TRLDraw
          Left = 0
          Top = 684
          Width = 717
          Height = 2
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DrawKind = dkLine
        end
        object lbTotalNota: TRLLabel
          Left = 279
          Top = 688
          Width = 158
          Height = 16
          Alignment = taCenter
          Caption = 'VALOR TOTAL DA NOTA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw9: TRLDraw
          Left = 0
          Top = 708
          Width = 717
          Height = 2
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DrawKind = dkLine
        end
        object RLDraw10: TRLDraw
          Left = 168
          Top = 740
          Width = 1
          Height = 37
          Angle = 90.000000000000000000
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DrawKind = dkLine
        end
        object RLDraw11: TRLDraw
          Left = 344
          Top = 740
          Width = 1
          Height = 37
          Angle = 90.000000000000000000
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DrawKind = dkLine
        end
        object RLDraw12: TRLDraw
          Left = 425
          Top = 740
          Width = 1
          Height = 37
          Angle = 90.000000000000000000
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DrawKind = dkLine
        end
        object RLDraw13: TRLDraw
          Left = 602
          Top = 740
          Width = 1
          Height = 37
          Angle = 90.000000000000000000
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DrawKind = dkLine
        end
        object RLDraw14: TRLDraw
          Left = 0
          Top = 776
          Width = 717
          Height = 2
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DrawKind = dkLine
        end
        object RLLabel15: TRLLabel
          Left = 0
          Top = 742
          Width = 168
          Height = 10
          Alignment = taCenter
          AutoSize = False
          Caption = 'Valor Total das Dedu'#231#245'es (R$)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel18: TRLLabel
          Left = 171
          Top = 742
          Width = 172
          Height = 10
          Alignment = taCenter
          AutoSize = False
          Caption = 'Base de C'#225'lculo (R$)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel19: TRLLabel
          Left = 346
          Top = 742
          Width = 78
          Height = 10
          Alignment = taCenter
          AutoSize = False
          Caption = 'Al'#237'quota (%)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel20: TRLLabel
          Left = 427
          Top = 742
          Width = 172
          Height = 10
          Alignment = taCenter
          AutoSize = False
          Caption = 'Valor do ISS (R$)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel21: TRLLabel
          Left = 606
          Top = 742
          Width = 108
          Height = 10
          Alignment = taCenter
          AutoSize = False
          Caption = 'Cr'#233'dito p/ Abatimento do IPTU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw15: TRLDraw
          Left = 0
          Top = 740
          Width = 717
          Height = 2
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DrawKind = dkLine
        end
        object RLLabel22: TRLLabel
          Left = 0
          Top = 712
          Width = 64
          Height = 10
          Caption = 'C'#243'digo do Servi'#231'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel23: TRLLabel
          Left = 279
          Top = 780
          Width = 158
          Height = 16
          Alignment = taCenter
          Caption = 'OUTRAS INFORMA'#199#213'ES'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel24: TRLLabel
          Left = 137
          Top = 192
          Width = 35
          Height = 14
          Alignment = taRightJustify
          Caption = 'Bairro:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel25: TRLLabel
          Left = 539
          Top = 192
          Width = 25
          Height = 14
          Alignment = taRightJustify
          Caption = 'CEP:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel26: TRLLabel
          Left = 39
          Top = 300
          Width = 35
          Height = 14
          Alignment = taRightJustify
          Caption = 'Bairro:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText19: TRLDBText
          Left = 78
          Top = 300
          Width = 47
          Height = 15
          DataField = 'BAIRRO'
          DataSource = dsNFse
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLLabel27: TRLLabel
          Left = 419
          Top = 300
          Width = 25
          Height = 14
          Alignment = taRightJustify
          Caption = 'CEP:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText20: TRLDBText
          Left = 448
          Top = 300
          Width = 26
          Height = 15
          DataField = 'CEP'
          DataSource = dsNFse
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object memoServicos: TRLMemo
          Left = 6
          Top = 358
          Width = 701
          Height = 15
          Behavior = [beSiteExpander]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText21: TRLDBText
          Left = 260
          Top = 758
          Width = 79
          Height = 15
          Alignment = taRightJustify
          DataField = 'VL_BS_CALC'
          DataSource = dsNFse
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLDBText22: TRLDBText
          Left = 362
          Top = 758
          Width = 60
          Height = 15
          Alignment = taRightJustify
          DataField = 'PERC_ISS'
          DataSource = dsNFse
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLDBText23: TRLDBText
          Left = 555
          Top = 758
          Width = 44
          Height = 15
          Alignment = taRightJustify
          DataField = 'VL_ISS'
          DataSource = dsNFse
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLLabel28: TRLLabel
          Left = 139
          Top = 759
          Width = 27
          Height = 15
          Alignment = taRightJustify
          Caption = '0,00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel29: TRLLabel
          Left = 685
          Top = 759
          Width = 27
          Height = 15
          Alignment = taRightJustify
          Caption = '0,00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel31: TRLLabel
          Left = 1
          Top = 724
          Width = 712
          Height = 15
          AutoSize = False
          Caption = 
            '62015000 DESENVOLVIMENTO DE PROGRAMAS DE COMPUTADOR SOB ENCOMEND' +
            'A'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lb_razaoSocial: TRLLabel
          Left = 175
          Top = 128
          Width = 254
          Height = 14
          Caption = 'SED SOFT ASSESSORIA EM INFORM'#193'TICA LTDA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lb_cnpj: TRLLabel
          Left = 175
          Top = 144
          Width = 100
          Height = 14
          Caption = '09.541.451/0001-00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lb_fantasia: TRLLabel
          Left = 175
          Top = 160
          Width = 75
          Height = 14
          Caption = 'SED Soft Ltda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lb_logradouro: TRLLabel
          Left = 175
          Top = 176
          Width = 103
          Height = 14
          Caption = 'Rua Riachuelo, 801'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lb_insc_municipal: TRLLabel
          Left = 567
          Top = 144
          Width = 43
          Height = 14
          Caption = '47084-6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lb_cidade: TRLLabel
          Left = 175
          Top = 208
          Width = 94
          Height = 14
          Caption = 'Campina Grande'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lb_uf: TRLLabel
          Left = 567
          Top = 212
          Width = 17
          Height = 14
          Caption = 'PB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lb_bairro: TRLLabel
          Left = 175
          Top = 192
          Width = 59
          Height = 14
          Caption = 'Liberdade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lb_cep: TRLLabel
          Left = 567
          Top = 192
          Width = 55
          Height = 14
          Caption = '58414-140'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object SedRLDBImage2: TSedRLDBImage
          Left = 4
          Top = 6
          Width = 92
          Height = 92
          Stretch = True
          DataField = 'LOGO_PREFEITURA'
          DataSource = BancodeDados.dsConfig
        end
        object RLLabel30: TRLLabel
          Left = 262
          Top = 67
          Width = 132
          Height = 14
          Alignment = taCenter
          AutoSize = False
          Caption = 'C'#243'digo de Verifica'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object bandHomologacao: TRLBand
        Left = 1
        Top = 1
        Width = 716
        Height = 18
        BandType = btColumnHeader
        object lbHomologacao: TRLLabel
          Left = 0
          Top = 0
          Width = 716
          Height = 18
          Alignment = taCenter
          AutoSize = False
          Borders.Color = 16704207
          Caption = 'NFSe de Homologa'#231#227'o (Teste) - N'#227'o tem valor fiscal'
          Color = clRed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 1043
      Width = 718
      Height = 41
      BandType = btFooter
      Visible = False
      object LbNomeInstituicao: TRLLabel
        Left = 610
        Top = 5
        Width = 106
        Height = 14
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LbEndereco: TRLLabel
        Left = 669
        Top = 19
        Width = 47
        Height = 10
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LbSite: TRLLabel
        Left = 690
        Top = 29
        Width = 26
        Height = 10
        Alignment = taRightJustify
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
        Top = 18
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
  object qryNFSe: TFDQuery
    Connection = BancodeDados.FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      
        'select n.nfs_id, n.nfse_numero, n.nfse_cod_verif, n.nfse_dt_emis' +
        'sao, n.dt_rps, n.nfse_ambiente,'
      
        'n.cli_id, c.nome, c.cnpj, c.logradouro, c.bairro, c.cidade, c.es' +
        'tado, c.cep, c.email_contato2,'
      'n.vl_total, n.vl_bs_calc, n.vl_iss, n.perc_iss'
      'from nfs n'
      'left join clientes c on (c.cli_id = n.cli_id)')
    Left = 882
    Top = 38
    object qryNFSeNFS_ID: TIntegerField
      FieldName = 'NFS_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '000000'
    end
    object qryNFSeNFSE_NUMERO: TIntegerField
      FieldName = 'NFSE_NUMERO'
    end
    object qryNFSeNFSE_COD_VERIF: TStringField
      FieldName = 'NFSE_COD_VERIF'
      Size = 60
    end
    object qryNFSeNFSE_DT_EMISSAO: TDateTimeField
      FieldName = 'NFSE_DT_EMISSAO'
      DisplayFormat = 'dd/mm/yyyy dd:nn'
    end
    object qryNFSeDT_RPS: TDateField
      FieldName = 'DT_RPS'
      Required = True
    end
    object qryNFSeNFSE_AMBIENTE: TSmallintField
      FieldName = 'NFSE_AMBIENTE'
    end
    object qryNFSeCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
      Required = True
    end
    object qryNFSeNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object qryNFSeCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 19
    end
    object qryNFSeLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 60
    end
    object qryNFSeBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object qryNFSeCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object qryNFSeESTADO: TStringField
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 2
    end
    object qryNFSeCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object qryNFSeVL_TOTAL: TFloatField
      FieldName = 'VL_TOTAL'
      DisplayFormat = ',0.00'
    end
    object qryNFSeVL_BS_CALC: TFloatField
      FieldName = 'VL_BS_CALC'
      DisplayFormat = ',0.00'
    end
    object qryNFSeVL_ISS: TFloatField
      FieldName = 'VL_ISS'
      DisplayFormat = ',0.00'
    end
    object qryNFSePERC_ISS: TFloatField
      FieldName = 'PERC_ISS'
      DisplayFormat = ',0.00%'
    end
    object qryNFSeEMAIL_CONTATO2: TStringField
      FieldName = 'EMAIL_CONTATO2'
      Size = 240
    end
  end
  object dsNFse: TDataSource
    DataSet = qryNFSe
    Left = 932
    Top = 40
  end
end
