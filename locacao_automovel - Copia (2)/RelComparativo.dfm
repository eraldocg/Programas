object RelComparativoForm: TRelComparativoForm
  Left = 255
  Top = 153
  Caption = 'RelComparativoForm'
  ClientHeight = 601
  ClientWidth = 1220
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 4
    Top = 2
    Width = 1123
    Height = 794
    DataSource = DSTemp
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.Orientation = poLandscape
    ShowProgress = False
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 1047
      Height = 132
      BandType = btColumnHeader
      object RLLabel17: TRLLabel
        Left = 105
        Top = 93
        Width = 562
        Height = 19
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
      object RLSystemInfo1: TRLSystemInfo
        Left = 953
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
        Left = 951
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
        Left = 963
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
      object RLLabel8: TRLLabel
        Left = 112
        Top = 7
        Width = 263
        Height = 19
        Caption = 'Comparativo de entradas e sa'#237'das'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbPeriodo: TRLLabel
        Left = 112
        Top = 28
        Width = 66
        Height = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbCorPadrao: TRLLabel
        Left = 1
        Top = 112
        Width = 1043
        Height = 18
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
      object RLDraw1: TRLDraw
        Left = 1
        Top = 112
        Width = 1044
        Height = 1
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DrawKind = dkLine
      end
      object RLDraw2: TRLDraw
        Left = 1
        Top = 130
        Width = 1044
        Height = 1
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DrawKind = dkLine
      end
      object RLLabel1: TRLLabel
        Left = 6
        Top = 115
        Width = 96
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'M'#234's'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 232
        Top = 115
        Width = 56
        Height = 14
        Alignment = taCenter
        AutoSize = False
        Caption = 'Sub Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw3: TRLDraw
        Left = 1
        Top = 112
        Width = 1
        Height = 23
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLLabel4: TRLLabel
        Left = 169
        Top = 115
        Width = 56
        Height = 14
        Alignment = taCenter
        AutoSize = False
        Caption = 'Mensalidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 107
        Top = 115
        Width = 56
        Height = 14
        Alignment = taCenter
        AutoSize = False
        Caption = 'Licen'#231'a'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 483
        Top = 115
        Width = 56
        Height = 14
        Alignment = taCenter
        AutoSize = False
        Caption = 'Sub Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 671
        Top = 115
        Width = 56
        Height = 14
        Alignment = taCenter
        AutoSize = False
        Caption = 'A Pagar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel9: TRLLabel
        Left = 734
        Top = 115
        Width = 56
        Height = 14
        Alignment = taCenter
        AutoSize = False
        Caption = 'Pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 608
        Top = 115
        Width = 56
        Height = 14
        Alignment = taCenter
        AutoSize = False
        Caption = 'Tot. Rec.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel11: TRLLabel
        Left = 859
        Top = 115
        Width = 56
        Height = 14
        Alignment = taCenter
        AutoSize = False
        Caption = 'Tot. Pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel12: TRLLabel
        Left = 922
        Top = 115
        Width = 56
        Height = 14
        Alignment = taCenter
        AutoSize = False
        Caption = 'Saldo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel13: TRLLabel
        Left = 796
        Top = 115
        Width = 56
        Height = 14
        Alignment = taCenter
        AutoSize = False
        Caption = 'Out. Sa'#237'das'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel14: TRLLabel
        Left = 546
        Top = 115
        Width = 56
        Height = 14
        Alignment = taCenter
        AutoSize = False
        Caption = 'Out. Rec.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel18: TRLLabel
        Left = 295
        Top = 115
        Width = 56
        Height = 14
        Alignment = taCenter
        AutoSize = False
        Caption = 'Licen'#231'a'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel20: TRLLabel
        Left = 357
        Top = 115
        Width = 56
        Height = 14
        Alignment = taCenter
        AutoSize = False
        Caption = 'Mensalidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel21: TRLLabel
        Left = 985
        Top = 115
        Width = 56
        Height = 14
        Alignment = taCenter
        AutoSize = False
        Caption = 'Acumulado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw15: TRLDraw
        Left = 104
        Top = 93
        Width = 564
        Height = 1
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DrawKind = dkLine
      end
      object RLLabel22: TRLLabel
        Left = 108
        Top = 96
        Width = 182
        Height = 14
        Alignment = taCenter
        AutoSize = False
        Caption = 'A RECEBER'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel23: TRLLabel
        Left = 296
        Top = 96
        Width = 370
        Height = 14
        Alignment = taCenter
        AutoSize = False
        Caption = 'RECEBIDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw27: TRLDraw
        Left = 104
        Top = 93
        Width = 1
        Height = 41
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDraw7: TRLDraw
        Left = 1044
        Top = 112
        Width = 1
        Height = 23
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLLabel24: TRLLabel
        Left = 420
        Top = 115
        Width = 56
        Height = 14
        Alignment = taCenter
        AutoSize = False
        Caption = 'Juros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw9: TRLDraw
        Left = 291
        Top = 93
        Width = 1
        Height = 41
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDraw17: TRLDraw
        Left = 543
        Top = 112
        Width = 1
        Height = 23
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDraw18: TRLDraw
        Left = 166
        Top = 112
        Width = 1
        Height = 23
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDraw19: TRLDraw
        Left = 228
        Top = 112
        Width = 1
        Height = 23
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDraw24: TRLDraw
        Left = 354
        Top = 112
        Width = 1
        Height = 23
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDraw30: TRLDraw
        Left = 416
        Top = 112
        Width = 1
        Height = 23
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDraw31: TRLDraw
        Left = 479
        Top = 112
        Width = 1
        Height = 23
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDraw41: TRLDraw
        Left = 605
        Top = 112
        Width = 1
        Height = 23
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDraw44: TRLDraw
        Left = 667
        Top = 93
        Width = 1
        Height = 41
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDraw46: TRLDraw
        Left = 730
        Top = 112
        Width = 1
        Height = 23
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDraw47: TRLDraw
        Left = 793
        Top = 112
        Width = 1
        Height = 23
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDraw48: TRLDraw
        Left = 855
        Top = 112
        Width = 1
        Height = 23
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDraw49: TRLDraw
        Left = 918
        Top = 112
        Width = 1
        Height = 23
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDraw55: TRLDraw
        Left = 981
        Top = 112
        Width = 1
        Height = 23
        Angle = 90.000000000000000000
        DrawKind = dkLine
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
    object RLBand2: TRLBand
      Left = 38
      Top = 170
      Width = 1047
      Height = 17
      BeforePrint = RLBand2BeforePrint
      object CorMes: TRLLabel
        Left = 1
        Top = -2
        Width = 1043
        Height = 18
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
      object RLLabel26: TRLLabel
        Left = 228
        Top = -1
        Width = 63
        Height = 18
        AutoSize = False
        Borders.Color = 16704207
        Color = 16773608
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16704207
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel25: TRLLabel
        Left = 667
        Top = -1
        Width = 63
        Height = 18
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
      object RLLabel16: TRLLabel
        Left = 855
        Top = -1
        Width = 63
        Height = 18
        AutoSize = False
        Borders.Color = 16704207
        Color = 16773608
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16704207
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel15: TRLLabel
        Left = 606
        Top = -1
        Width = 61
        Height = 18
        AutoSize = False
        Borders.Color = 16704207
        Color = 16773608
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16704207
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLDraw8: TRLDraw
        Left = 1
        Top = -1
        Width = 1
        Height = 20
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDraw12: TRLDraw
        Left = 1044
        Top = 0
        Width = 1
        Height = 20
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDraw13: TRLDraw
        Left = 1
        Top = 19
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
        Left = 6
        Top = 1
        Width = 96
        Height = 13
        Alignment = taCenter
        AutoSize = False
        DataField = 'MES'
        DataSource = DSTemp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDraw23: TRLDraw
        Left = 1
        Top = 16
        Width = 1044
        Height = 1
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DrawKind = dkLine
      end
      object RLDraw28: TRLDraw
        Left = 104
        Top = -2
        Width = 1
        Height = 20
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDBText2: TRLDBText
        Left = 107
        Top = 1
        Width = 56
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'LICENCA'
        DataSource = DSTemp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDraw20: TRLDraw
        Left = 166
        Top = -2
        Width = 1
        Height = 20
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDraw21: TRLDraw
        Left = 228
        Top = -2
        Width = 1
        Height = 20
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDraw22: TRLDraw
        Left = 291
        Top = -2
        Width = 1
        Height = 20
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDraw25: TRLDraw
        Left = 605
        Top = -2
        Width = 1
        Height = 20
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDraw32: TRLDraw
        Left = 667
        Top = -2
        Width = 1
        Height = 20
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDraw33: TRLDraw
        Left = 730
        Top = -2
        Width = 1
        Height = 20
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDraw34: TRLDraw
        Left = 855
        Top = -2
        Width = 1
        Height = 20
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDraw35: TRLDraw
        Left = 918
        Top = -2
        Width = 1
        Height = 20
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDBText1: TRLDBText
        Left = 169
        Top = 1
        Width = 56
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'MENSALIDADE'
        DataSource = DSTemp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 232
        Top = 1
        Width = 56
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'ARECEBER'
        DataSource = DSTemp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 483
        Top = 1
        Width = 56
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'RECEBIDO'
        DataSource = DSTemp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText6: TRLDBText
        Left = 608
        Top = 1
        Width = 56
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TOT_ENT'
        DataSource = DSTemp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText7: TRLDBText
        Left = 671
        Top = 1
        Width = 56
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'APAGAR'
        DataSource = DSTemp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText8: TRLDBText
        Left = 734
        Top = 1
        Width = 56
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'PAGO'
        DataSource = DSTemp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText9: TRLDBText
        Left = 859
        Top = 1
        Width = 56
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TOT_SAI'
        DataSource = DSTemp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText10: TRLDBText
        Left = 922
        Top = 1
        Width = 56
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'SALDO'
        DataSource = DSTemp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDraw40: TRLDraw
        Left = 793
        Top = -2
        Width = 1
        Height = 20
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDBText11: TRLDBText
        Left = 796
        Top = 1
        Width = 56
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'OUTRAS_SAIDAS'
        DataSource = DSTemp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDraw43: TRLDraw
        Left = 543
        Top = -2
        Width = 1
        Height = 20
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDBText12: TRLDBText
        Left = 546
        Top = 1
        Width = 56
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'OUTRAS_ENTRADAS'
        DataSource = DSTemp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDraw50: TRLDraw
        Left = 981
        Top = -1
        Width = 1
        Height = 20
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDBText13: TRLDBText
        Left = 985
        Top = 1
        Width = 56
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'ACUMULADO'
        DataSource = DSTemp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDraw51: TRLDraw
        Left = 354
        Top = -2
        Width = 1
        Height = 20
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDraw52: TRLDraw
        Left = 416
        Top = -2
        Width = 1
        Height = 20
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDBText14: TRLDBText
        Left = 295
        Top = 1
        Width = 56
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'LIC_RECEBIDO'
        DataSource = DSTemp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText15: TRLDBText
        Left = 357
        Top = 1
        Width = 56
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'MENSAL_RECEBIDO'
        DataSource = DSTemp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText16: TRLDBText
        Left = 420
        Top = 1
        Width = 56
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'JUROS'
        DataSource = DSTemp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDraw57: TRLDraw
        Left = 479
        Top = -2
        Width = 1
        Height = 20
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 187
      Width = 1047
      Height = 37
      BandType = btSummary
      object RLDraw11: TRLDraw
        Left = 1
        Top = 15
        Width = 1044
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
        Top = -1
        Width = 1
        Height = 20
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDraw16: TRLDraw
        Left = 1044
        Top = -1
        Width = 1
        Height = 17
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLLabel2: TRLLabel
        Left = 72
        Top = 2
        Width = 28
        Height = 11
        Alignment = taRightJustify
        Caption = 'Total:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw26: TRLDraw
        Left = 166
        Top = -1
        Width = 1
        Height = 17
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDBResult6: TRLDBResult
        Left = 107
        Top = 2
        Width = 56
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'LICENCA'
        DataSource = DSTemp
        DisplayMask = ',0.00;(,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        ResetAfterPrint = True
        Text = ''
      end
      object RLDraw29: TRLDraw
        Left = 104
        Top = -1
        Width = 1
        Height = 17
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDraw5: TRLDraw
        Left = 228
        Top = -1
        Width = 1
        Height = 17
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDraw6: TRLDraw
        Left = 291
        Top = -1
        Width = 1
        Height = 17
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDraw10: TRLDraw
        Left = 543
        Top = -1
        Width = 1
        Height = 17
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDraw36: TRLDraw
        Left = 667
        Top = -1
        Width = 1
        Height = 17
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDraw37: TRLDraw
        Left = 730
        Top = -1
        Width = 1
        Height = 17
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDraw38: TRLDraw
        Left = 855
        Top = -1
        Width = 1
        Height = 17
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDraw39: TRLDraw
        Left = 918
        Top = -1
        Width = 1
        Height = 17
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDBResult1: TRLDBResult
        Left = 169
        Top = 2
        Width = 56
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'MENSALIDADE'
        DataSource = DSTemp
        DisplayMask = ',0.00;(,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        ResetAfterPrint = True
        Text = ''
      end
      object RLDBResult2: TRLDBResult
        Left = 232
        Top = 2
        Width = 56
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'ARECEBER'
        DataSource = DSTemp
        DisplayMask = ',0.00;(,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        ResetAfterPrint = True
        Text = ''
      end
      object RLDBResult3: TRLDBResult
        Left = 483
        Top = 2
        Width = 56
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'RECEBIDO'
        DataSource = DSTemp
        DisplayMask = ',0.00;(,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        ResetAfterPrint = True
        Text = ''
      end
      object RLDBResult4: TRLDBResult
        Left = 671
        Top = 2
        Width = 56
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'APAGAR'
        DataSource = DSTemp
        DisplayMask = ',0.00;(,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        ResetAfterPrint = True
        Text = ''
      end
      object RLDBResult5: TRLDBResult
        Left = 546
        Top = 2
        Width = 56
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'OUTRAS_ENTRADAS'
        DataSource = DSTemp
        DisplayMask = ',0.00;(,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        ResetAfterPrint = True
        Text = ''
      end
      object RLDBResult7: TRLDBResult
        Left = 922
        Top = 2
        Width = 56
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'SALDO'
        DataSource = DSTemp
        DisplayMask = ',0.00;(,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        ResetAfterPrint = True
        Text = ''
      end
      object RLDBResult8: TRLDBResult
        Left = 859
        Top = 2
        Width = 56
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TOT_SAI'
        DataSource = DSTemp
        DisplayMask = ',0.00;(,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        ResetAfterPrint = True
        Text = ''
      end
      object RLDBResult9: TRLDBResult
        Left = 734
        Top = 2
        Width = 56
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'PAGO'
        DataSource = DSTemp
        DisplayMask = ',0.00;(,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        ResetAfterPrint = True
        Text = ''
      end
      object RLDraw42: TRLDraw
        Left = 793
        Top = -1
        Width = 1
        Height = 17
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDBResult10: TRLDBResult
        Left = 796
        Top = 2
        Width = 56
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'OUTRAS_SAIDAS'
        DataSource = DSTemp
        DisplayMask = ',0.00;(,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        ResetAfterPrint = True
        Text = ''
      end
      object RLDraw45: TRLDraw
        Left = 605
        Top = -1
        Width = 1
        Height = 17
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDBResult11: TRLDBResult
        Left = 608
        Top = 2
        Width = 56
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TOT_ENT'
        DataSource = DSTemp
        DisplayMask = ',0.00;(,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        ResetAfterPrint = True
        Text = ''
      end
      object RLDraw53: TRLDraw
        Left = 354
        Top = -1
        Width = 1
        Height = 17
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDraw54: TRLDraw
        Left = 479
        Top = -1
        Width = 1
        Height = 17
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDBResult12: TRLDBResult
        Left = 295
        Top = 2
        Width = 56
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'LIC_RECEBIDO'
        DataSource = DSTemp
        DisplayMask = ',0.00;(,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        ResetAfterPrint = True
        Text = ''
      end
      object RLDBResult13: TRLDBResult
        Left = 357
        Top = 2
        Width = 56
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'MENSAL_RECEBIDO'
        DataSource = DSTemp
        DisplayMask = ',0.00;(,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        ResetAfterPrint = True
        Text = ''
      end
      object RLDraw56: TRLDraw
        Left = 416
        Top = -1
        Width = 1
        Height = 17
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDBResult14: TRLDBResult
        Left = 420
        Top = 2
        Width = 56
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'JUROS'
        DataSource = DSTemp
        DisplayMask = ',0.00;(,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        ResetAfterPrint = True
        Text = ''
      end
      object RLDraw58: TRLDraw
        Left = 981
        Top = -1
        Width = 1
        Height = 17
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object lbContas: TRLMemo
        Left = 4
        Top = 18
        Width = 143
        Height = 14
        Behavior = [beSiteExpander]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbContas2: TRLMemo
        Left = 152
        Top = 18
        Width = 136
        Height = 14
        Alignment = taRightJustify
        Behavior = [beSiteExpander]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 224
      Width = 1047
      Height = 41
      BandType = btFooter
      object RLDraw14: TRLDraw
        Left = 1
        Top = 1
        Width = 1044
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
  object Temp: TClientDataSet
    Aggregates = <>
    AutoCalcFields = False
    Params = <>
    OnCalcFields = TempCalcFields
    Left = 410
    Top = 72
    object TempDATA: TDateField
      FieldName = 'DATA'
    end
    object TempLICENCA: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'LICENCA'
      DisplayFormat = ',0.00;(,0.00)'
      Calculated = True
    end
    object TempMENSALIDADE: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'MENSALIDADE'
      DisplayFormat = ',0.00;(,0.00)'
      Calculated = True
    end
    object TempARECEBER: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ARECEBER'
      DisplayFormat = ',0.00;(,0.00)'
      Calculated = True
    end
    object TempRECEBIDO: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'RECEBIDO'
      DisplayFormat = ',0.00;(,0.00)'
      Calculated = True
    end
    object TempTOT_ENT: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'TOT_ENT'
      DisplayFormat = ',0.00;(,0.00)'
      Calculated = True
    end
    object TempAPAGAR: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'APAGAR'
      DisplayFormat = ',0.00;(,0.00)'
      Calculated = True
    end
    object TempPAGO: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'PAGO'
      DisplayFormat = ',0.00;(,0.00)'
      Calculated = True
    end
    object TempOUTRAS_SAIDAS: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'OUTRAS_SAIDAS'
      DisplayFormat = ',0.00;(,0.00)'
      Calculated = True
    end
    object TempTOT_SAI: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'TOT_SAI'
      DisplayFormat = ',0.00;(,0.00)'
      Calculated = True
    end
    object TempSALDO: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'SALDO'
      DisplayFormat = ',0.00;(,0.00)'
      Calculated = True
    end
    object TempOUTRAS_ENTRADAS: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'OUTRAS_ENTRADAS'
      DisplayFormat = ',0.00;(,0.00)'
      Calculated = True
    end
    object TempLIC_RECEBIDO: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'LIC_RECEBIDO'
      DisplayFormat = ',0.00;(,0.00)'
      Calculated = True
    end
    object TempMENSAL_RECEBIDO: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'MENSAL_RECEBIDO'
      DisplayFormat = ',0.00;(,0.00)'
      Calculated = True
    end
    object TempJUROS: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'JUROS'
      DisplayFormat = ',0.00;(,0.00)'
      Calculated = True
    end
    object TempACUMULADO: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ACUMULADO'
      DisplayFormat = ',0.00;(,0.00)'
      Calculated = True
    end
    object TempMES: TStringField
      FieldKind = fkCalculated
      FieldName = 'MES'
      Calculated = True
    end
  end
  object DSTemp: TDataSource
    DataSet = Temp
    Left = 462
    Top = 70
  end
  object Boletos: TFDQuery
    Connection = BancodeDados.FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      
        'select sum(valor_mensal) as valor_mensal, sum(valor_lic) as valo' +
        'r_lic, sum(juros + multa) as juros, sum(valor_integral) as valor' +
        '_integral from boletos')
    Left = 120
    Top = 284
    object BoletosVALOR_MENSAL: TFloatField
      FieldName = 'VALOR_MENSAL'
      ProviderFlags = []
    end
    object BoletosVALOR_LIC: TFloatField
      FieldName = 'VALOR_LIC'
      ProviderFlags = []
    end
    object BoletosJUROS: TFloatField
      FieldName = 'JUROS'
      ProviderFlags = []
    end
    object BoletosVALOR_INTEGRAL: TFloatField
      FieldName = 'VALOR_INTEGRAL'
      ProviderFlags = []
    end
  end
  object Pagar: TFDQuery
    Connection = BancodeDados.FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      'select sum(valor) as valor from pagar')
    Left = 194
    Top = 286
    object PagarVALOR: TFloatField
      FieldName = 'VALOR'
      ProviderFlags = []
    end
  end
  object Caixa: TFDQuery
    Connection = BancodeDados.FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      
        'select sum (coalesce(entrada,0)-coalesce(saida,0) )  as saldo fr' +
        'om livro_caixa where (pagar_id is null or pagar_id=0)')
    Left = 264
    Top = 290
    object CaixaSALDO: TFloatField
      FieldName = 'SALDO'
      ProviderFlags = []
    end
  end
  object ContasCaixa: TFDQuery
    Connection = BancodeDados.FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      
        'select l.conta_id, t.conta, sum (coalesce(l.entrada,0)-coalesce(' +
        'l.saida,0) ) as saldo from livro_caixa l, tipo_contas t where (t' +
        '.conta_id = l.conta_id) group by l.conta_id, t.conta order by l.' +
        'conta_id')
    Left = 400
    Top = 292
    object ContasCaixaCONTA_ID: TIntegerField
      FieldName = 'CONTA_ID'
    end
    object ContasCaixaCONTA: TStringField
      FieldName = 'CONTA'
      Size = 60
    end
    object ContasCaixaSALDO: TFloatField
      FieldName = 'SALDO'
      ProviderFlags = []
    end
  end
end
