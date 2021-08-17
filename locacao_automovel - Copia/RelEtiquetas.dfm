object RelEtiquetasForm: TRelEtiquetasForm
  Left = 0
  Top = 0
  Width = 990
  Height = 561
  AutoScroll = True
  Caption = 'RelEtiquetasForm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 68
    Top = -50
    Width = 816
    Height = 1056
    Margins.LeftMargin = 8.000000000000000000
    Margins.TopMargin = 22.000000000000000000
    Margins.RightMargin = 7.000000000000000000
    Margins.BottomMargin = 7.000000000000000000
    DataSource = dsTemp
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.PaperSize = fpLetter
    ShowProgress = False
    object RLDetailGrid8: TRLDetailGrid
      Left = 30
      Top = 83
      Width = 760
      Height = 128
      AutoExpand = False
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      ColCount = 2
      ColSpacing = 12.000000000000000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      object RLDBText7: TRLDBText
        Left = 3
        Top = 3
        Width = 35
        Height = 16
        DataField = 'TIPO'
        DataSource = dsTemp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLDBText8: TRLDBText
        Left = 3
        Top = 21
        Width = 42
        Height = 16
        DataField = 'NOME'
        DataSource = dsTemp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLDBText9: TRLDBText
        Left = 3
        Top = 41
        Width = 31
        Height = 16
        DataField = 'END'
        DataSource = dsTemp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
        Visible = False
      end
      object RLDBText10: TRLDBText
        Left = 3
        Top = 57
        Width = 52
        Height = 16
        DataField = 'CIDADE'
        DataSource = dsTemp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
        Visible = False
      end
      object RLDBText11: TRLDBText
        Left = 3
        Top = 74
        Width = 28
        Height = 15
        DataField = 'CEP'
        DataSource = dsTemp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText12: TRLDBText
        Left = 3
        Top = 108
        Width = 28
        Height = 15
        DataField = 'OBS'
        DataSource = dsTemp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        ParentFont = False
        Text = ''
      end
      object RLDBMemo2: TRLDBMemo
        Left = 3
        Top = 40
        Width = 353
        Height = 33
        AutoSize = False
        Behavior = [beSiteExpander]
        DataField = 'END'
        DataSource = dsTemp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText1: TRLDBText
        Left = 3
        Top = 91
        Width = 36
        Height = 15
        DataField = 'FONE'
        DataSource = dsTemp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
    end
    object RLBand8: TRLBand
      Left = 30
      Top = 211
      Width = 760
      Height = 19
      BandType = btFooter
      object RLLabel18: TRLLabel
        Left = 2
        Top = 4
        Width = 758
        Height = 14
        Alignment = taCenter
        AutoSize = False
        Caption = 'Tamanho: 101,6 x 33,9 (14 etiquetas) - Matr'#237'cula'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object Temp: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 86
    Top = 68
    object TempNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object TempEND: TStringField
      FieldName = 'END'
      Size = 240
    end
    object TempCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 60
    end
    object TempCEP: TStringField
      FieldName = 'CEP'
      Size = 60
    end
    object TempOBS: TStringField
      FieldName = 'OBS'
      Size = 60
    end
    object TempTIPO: TStringField
      FieldName = 'TIPO'
    end
    object TempFONE: TStringField
      FieldName = 'FONE'
      Size = 40
    end
  end
  object dsTemp: TDataSource
    DataSet = Temp
    Left = 32
    Top = 126
  end
end
