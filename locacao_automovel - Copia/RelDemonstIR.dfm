object RelDemonstIRForm: TRelDemonstIRForm
  Left = 317
  Top = 100
  Caption = 'RelDemonstIRForm'
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
  object RLReport1: TRLReport
    Left = 0
    Top = 4
    Width = 794
    Height = 1123
    DataSource = dsReceitas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ShowProgress = False
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 122
      BandType = btColumnHeader
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
      object RLLabel8: TRLLabel
        Left = 112
        Top = 7
        Width = 245
        Height = 19
        Caption = 'Demonstrativo de Rendimentos'
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
      object lbCorPadrao: TRLLabel
        Left = 1
        Top = 102
        Width = 716
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
        Top = 101
        Width = 716
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
        Top = 120
        Width = 716
        Height = 1
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DrawKind = dkLine
      end
      object RLDraw7: TRLDraw
        Left = 716
        Top = 102
        Width = 1
        Height = 23
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLLabel1: TRLLabel
        Left = 6
        Top = 105
        Width = 301
        Height = 13
        AutoSize = False
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw19: TRLDraw
        Left = 527
        Top = 102
        Width = 1
        Height = 23
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLLabel6: TRLLabel
        Left = 361
        Top = 105
        Width = 100
        Height = 14
        AutoSize = False
        Caption = 'CNPJ / CPF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 531
        Top = 105
        Width = 60
        Height = 14
        Alignment = taCenter
        AutoSize = False
        Caption = 'Vl. c/ juros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw3: TRLDraw
        Left = 1
        Top = 102
        Width = 1
        Height = 23
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDraw24: TRLDraw
        Left = 357
        Top = 101
        Width = 1
        Height = 23
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDraw27: TRLDraw
        Left = 463
        Top = 101
        Width = 1
        Height = 23
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLLabel9: TRLLabel
        Left = 466
        Top = 105
        Width = 60
        Height = 14
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
      object RLImage1: TSedRLDBImage
        Left = 4
        Top = 2
        Width = 92
        Height = 88
        Stretch = True
        DataField = 'LOGO1'
        DataSource = BancodeDados.dsConfig
      end
      object lbConta: TRLLabel
        Left = 114
        Top = 50
        Width = 53
        Height = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbOpcoes: TRLLabel
        Left = 114
        Top = 69
        Width = 63
        Height = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw5: TRLDraw
        Left = 592
        Top = 101
        Width = 1
        Height = 23
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLLabel3: TRLLabel
        Left = 595
        Top = 105
        Width = 58
        Height = 14
        Alignment = taCenter
        AutoSize = False
        Caption = '1'#170' Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw9: TRLDraw
        Left = 656
        Top = 101
        Width = 1
        Height = 23
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLLabel4: TRLLabel
        Left = 658
        Top = 105
        Width = 58
        Height = 14
        Alignment = taCenter
        AutoSize = False
        Caption = #218'lt. Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 311
        Top = 105
        Width = 43
        Height = 14
        AutoSize = False
        Caption = 'Qtd. T'#237't.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw17: TRLDraw
        Left = 308
        Top = 101
        Width = 1
        Height = 23
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 160
      Width = 718
      Height = 18
      object RLDraw8: TRLDraw
        Left = 1
        Top = -1
        Width = 1
        Height = 20
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDraw12: TRLDraw
        Left = 716
        Top = -2
        Width = 1
        Height = 22
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
        Width = 301
        Height = 14
        AutoSize = False
        DataField = 'CLIENTE'
        DataSource = dsReceitas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDraw22: TRLDraw
        Left = 527
        Top = -2
        Width = 1
        Height = 22
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDBText7: TRLDBText
        Left = 361
        Top = 1
        Width = 100
        Height = 14
        AutoSize = False
        DataField = 'CNPJ'
        DataSource = dsReceitas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText8: TRLDBText
        Left = 531
        Top = 1
        Width = 60
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALOR_COM_JUROS'
        DataSource = dsReceitas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDraw23: TRLDraw
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
      object RLDraw25: TRLDraw
        Left = 357
        Top = -2
        Width = 1
        Height = 22
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDraw28: TRLDraw
        Left = 463
        Top = -2
        Width = 1
        Height = 22
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDBText4: TRLDBText
        Left = 466
        Top = 1
        Width = 60
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'vlIntegralCalc'
        DataSource = dsReceitas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDraw6: TRLDraw
        Left = 592
        Top = -2
        Width = 1
        Height = 22
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDBText1: TRLDBText
        Left = 595
        Top = 1
        Width = 58
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'PRIM_DATA'
        DataSource = dsReceitas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDraw15: TRLDraw
        Left = 656
        Top = -2
        Width = 1
        Height = 22
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDBText2: TRLDBText
        Left = 658
        Top = 1
        Width = 58
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'ULT_DATA'
        DataSource = dsReceitas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 311
        Top = 1
        Width = 43
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'QTD'
        DataSource = dsReceitas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDraw18: TRLDraw
        Left = 308
        Top = -2
        Width = 1
        Height = 22
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 178
      Width = 718
      Height = 21
      BandType = btSummary
      object RLDraw10: TRLDraw
        Left = 527
        Top = -1
        Width = 1
        Height = 20
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDraw11: TRLDraw
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
      object RLDBResult1: TRLDBResult
        Left = 3
        Top = 2
        Width = 164
        Height = 11
        ComputeNulls = False
        DataField = 'CLIENTE'
        DataSource = dsReceitas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riCount
        ParentFont = False
        Text = 'N'#250'mero Total de Registros: '
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
        Left = 716
        Top = -1
        Width = 1
        Height = 20
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLLabel2: TRLLabel
        Left = 426
        Top = 2
        Width = 33
        Height = 14
        Alignment = taRightJustify
        Caption = 'Total:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw29: TRLDraw
        Left = 463
        Top = -1
        Width = 1
        Height = 20
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDraw20: TRLDraw
        Left = 592
        Top = -1
        Width = 1
        Height = 20
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object lbTotInt: TRLLabel
        Left = 466
        Top = 2
        Width = 60
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbTotComJuros: TRLLabel
        Left = 531
        Top = 2
        Width = 60
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0,00'
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
      Top = 199
      Width = 718
      Height = 41
      BandType = btFooter
      object RLDraw14: TRLDraw
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
  object Receitas: TFDQuery
    OnCalcFields = ReceitasCalcFields
    Connection = BancodeDados.FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      
        'select b.CLIENTE, c.CNPJ, sum(b.VALOR_INTEGRAL) as VALOR_INTEGRA' +
        'L, sum(b.VALOR_PAGO) as VALOR_COM_JUROS, min(l.data) as PRIM_DAT' +
        'A, max(l.data) AS ULT_DATA, count(b.BOLETO_ID) as QTD'
      'from boletos b'
      'left join LIVRO_CAIXA l on (l.BOLETO_ID = b.BOLETO_ID)'
      'left join CLIENTES c on (c.CLI_ID = b.CLI_ID)'
      'where l.DATA between '#39'01/01/2008'#39' and '#39'12/31/2008'#39
      'and b.RETORNO_ID>0'
      'and l.CONTA_ID=3'
      'group by b.CLIENTE, c.CNPJ')
    Left = 274
    Top = 284
    object ReceitasVALOR_INTEGRAL: TFloatField
      FieldName = 'VALOR_INTEGRAL'
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object ReceitasVALOR_COM_JUROS: TFloatField
      FieldName = 'VALOR_COM_JUROS'
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object ReceitasPRIM_DATA: TDateField
      FieldName = 'PRIM_DATA'
      ReadOnly = True
    end
    object ReceitasULT_DATA: TDateField
      FieldName = 'ULT_DATA'
      ReadOnly = True
    end
    object ReceitasQTD: TIntegerField
      FieldName = 'QTD'
      ReadOnly = True
    end
    object ReceitasvlIntegralCalc: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'vlIntegralCalc'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object ReceitasCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 60
    end
    object ReceitasCNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      ProviderFlags = []
      ReadOnly = True
      Size = 19
    end
  end
  object dsReceitas: TDataSource
    DataSet = Receitas
    Left = 374
    Top = 286
  end
end
