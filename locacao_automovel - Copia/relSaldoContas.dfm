object relSaldoContasForm: TrelSaldoContasForm
  Left = 288
  Top = 180
  Caption = 'relSaldoContasForm'
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
    Left = 8
    Top = -24
    Width = 794
    Height = 1123
    DataSource = DTContasCaixa
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ShowProgress = False
    object RLBand4: TRLBand
      Left = 38
      Top = 235
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
    object RLGroup1: TRLGroup
      Left = 38
      Top = 38
      Width = 718
      Height = 197
      object RLBand1: TRLBand
        Left = 0
        Top = 0
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
          Width = 298
          Height = 19
          Caption = 'Rela'#231#227'o de saldos dos tipos de contas'
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
        object RLLabel3: TRLLabel
          Left = 92
          Top = 105
          Width = 213
          Height = 14
          AutoSize = False
          Caption = 'Tipo de Conta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel1: TRLLabel
          Left = 6
          Top = 105
          Width = 78
          Height = 13
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
        object RLDraw15: TRLDraw
          Left = 88
          Top = 102
          Width = 1
          Height = 23
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw17: TRLDraw
          Left = 390
          Top = 102
          Width = 1
          Height = 23
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw18: TRLDraw
          Left = 472
          Top = 102
          Width = 1
          Height = 23
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw19: TRLDraw
          Left = 634
          Top = 102
          Width = 1
          Height = 23
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel5: TRLLabel
          Left = 394
          Top = 105
          Width = 76
          Height = 14
          Alignment = taCenter
          AutoSize = False
          Caption = 'Entrada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel6: TRLLabel
          Left = 476
          Top = 105
          Width = 76
          Height = 14
          Alignment = taCenter
          AutoSize = False
          Caption = 'Sa'#237'da'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel7: TRLLabel
          Left = 638
          Top = 105
          Width = 76
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
        object RLDraw3: TRLDraw
          Left = 1
          Top = 102
          Width = 1
          Height = 23
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw24: TRLDraw
          Left = 308
          Top = 101
          Width = 1
          Height = 23
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel4: TRLLabel
          Left = 312
          Top = 105
          Width = 76
          Height = 14
          Alignment = taCenter
          AutoSize = False
          Caption = 'Saldo Anterior'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw27: TRLDraw
          Left = 554
          Top = 101
          Width = 1
          Height = 23
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel9: TRLLabel
          Left = 557
          Top = 105
          Width = 76
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
        Left = 0
        Top = 122
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
        object RLDBText2: TRLDBText
          Left = 90
          Top = 1
          Width = 35
          Height = 12
          DataField = 'CONTA'
          DataSource = DTContasCaixa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText3: TRLDBText
          Left = 6
          Top = 1
          Width = 78
          Height = 14
          Alignment = taCenter
          AutoSize = False
          DataField = 'CONTA_ID'
          DataSource = DTContasCaixa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDraw9: TRLDraw
          Left = 88
          Top = -2
          Width = 1
          Height = 22
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw20: TRLDraw
          Left = 390
          Top = -2
          Width = 1
          Height = 22
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw21: TRLDraw
          Left = 472
          Top = -2
          Width = 1
          Height = 22
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw22: TRLDraw
          Left = 634
          Top = -2
          Width = 1
          Height = 22
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDBText5: TRLDBText
          Left = 394
          Top = 1
          Width = 75
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'ENTRADA'
          DataSource = DTContasCaixa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText6: TRLDBText
          Left = 476
          Top = 1
          Width = 75
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'SAIDA'
          DataSource = DTContasCaixa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText7: TRLDBText
          Left = 638
          Top = 1
          Width = 75
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'SaldoAtual'
          DataSource = DTContasCaixa
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
          Left = 308
          Top = -2
          Width = 1
          Height = 22
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDBText1: TRLDBText
          Left = 312
          Top = 1
          Width = 75
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'SaldoAnt'
          DataSource = DTContasCaixa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDraw28: TRLDraw
          Left = 554
          Top = -2
          Width = 1
          Height = 22
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDBText4: TRLDBText
          Left = 557
          Top = 1
          Width = 75
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'SubTotal'
          DataSource = DTContasCaixa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 140
        Width = 718
        Height = 21
        AutoExpand = False
        BandType = btSummary
        object RLDraw5: TRLDraw
          Left = 390
          Top = -1
          Width = 1
          Height = 20
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw6: TRLDraw
          Left = 472
          Top = -1
          Width = 1
          Height = 20
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw10: TRLDraw
          Left = 634
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
          DataField = 'CONTA_ID'
          DataSource = DTContasCaixa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riCount
          ParentFont = False
          ResetAfterPrint = True
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
          Left = 273
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
        object RLDraw26: TRLDraw
          Left = 308
          Top = -1
          Width = 1
          Height = 20
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw29: TRLDraw
          Left = 554
          Top = -1
          Width = 1
          Height = 20
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object lbTotSaldoAnt: TRLLabel
          Left = 312
          Top = 2
          Width = 75
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
        object lbTotEnt: TRLLabel
          Left = 394
          Top = 2
          Width = 75
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
        object lbTotSai: TRLLabel
          Left = 476
          Top = 2
          Width = 75
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
        object lbTotSub: TRLLabel
          Left = 557
          Top = 2
          Width = 75
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
        object lbTotSaldo: TRLLabel
          Left = 638
          Top = 2
          Width = 75
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
    end
  end
  object DTContasCaixa: TDataSource
    DataSet = ContasCaixa
    Left = 460
    Top = 70
  end
  object QryContas: TFDQuery
    Connection = BancodeDados.FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      
        'select sum(coalesce(entrada,0)-coalesce(saida,0)) as saldo from ' +
        'livro_caixa where conta_id=:conta_id and data < :data')
    Left = 190
    Top = 264
    ParamData = <
      item
        Name = 'conta_id'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'data'
        DataType = ftDate
        ParamType = ptInput
      end>
    object QryContasSALDO: TFloatField
      FieldName = 'SALDO'
      ReadOnly = True
    end
  end
  object ContasCaixa: TFDQuery
    OnCalcFields = ContasCaixaCalcFields
    Connection = BancodeDados.FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      'select conta_id, conta from tipo_contas where 1=1'
      'and coalesce(oculto, 0)=0'
      'order by conta')
    Left = 264
    Top = 290
    object ContasCaixaCONTA_ID: TIntegerField
      FieldName = 'CONTA_ID'
      Required = True
    end
    object ContasCaixaENTRADA: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ENTRADA'
      ReadOnly = True
      DisplayFormat = ',0.00;(,0.00)'
      Calculated = True
    end
    object ContasCaixaSAIDA: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SAIDA'
      ReadOnly = True
      DisplayFormat = ',0.00;(,0.00)'
      Calculated = True
    end
    object ContasCaixaSALDO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SALDO'
      ReadOnly = True
      DisplayFormat = ',0.00;(,0.00)'
      Calculated = True
    end
    object ContasCaixaSaldoAtual: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'SaldoAtual'
      DisplayFormat = ',0.00;(,0.00)'
      Calculated = True
    end
    object ContasCaixaSaldoAnt: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'SaldoAnt'
      DisplayFormat = ',0.00;(,0.00)'
      Calculated = True
    end
    object ContasCaixaSubTotal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'SubTotal'
      DisplayFormat = ',0.00;(,0.00)'
      Calculated = True
    end
    object ContasCaixaCONTA: TStringField
      FieldName = 'CONTA'
      Origin = 'CONTA'
      Size = 60
    end
  end
  object QryContas2: TFDQuery
    Connection = BancodeDados.FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      
        'select sum(entrada) as entrada, sum(saida) as saida, sum(coalesc' +
        'e(entrada,0)-coalesce(saida,0) ) as saldo '
      'from livro_caixa where (data between :data_ini and :data_fim) '
      'and conta_id=:conta')
    Left = 160
    Top = 340
    ParamData = <
      item
        Name = 'data_ini'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'data_fim'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'conta'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QryContas2ENTRADA: TFloatField
      FieldName = 'ENTRADA'
      ReadOnly = True
    end
    object QryContas2SAIDA: TFloatField
      FieldName = 'SAIDA'
      ReadOnly = True
    end
    object QryContas2SALDO: TFloatField
      FieldName = 'SALDO'
      ReadOnly = True
    end
  end
end
