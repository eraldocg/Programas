object RelContatosForm: TRelContatosForm
  Left = 297
  Top = 184
  AutoSize = True
  Caption = 'RelContatos'
  ClientHeight = 845
  ClientWidth = 1123
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
    Left = 0
    Top = 0
    Width = 1123
    Height = 794
    DataSource = BancodeDados.DsContatos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.Orientation = poLandscape
    ShowProgress = False
    object RLBand2: TRLBand
      Left = 38
      Top = 38
      Width = 1047
      Height = 95
      BandType = btColumnHeader
      object lbTitulo: TRLLabel
        Left = 100
        Top = 27
        Width = 492
        Height = 19
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 951
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
        Left = 949
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
        Left = 961
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
      object RLDraw51: TRLDraw
        Left = 1
        Top = 133
        Width = 1
        Height = 93
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDraw53: TRLDraw
        Left = 1044
        Top = 133
        Width = 1
        Height = 93
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object lbPeriodo: TRLLabel
        Left = 100
        Top = 49
        Width = 492
        Height = 19
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object RLLabel17: TRLLabel
        Left = 100
        Top = 5
        Width = 492
        Height = 19
        AutoSize = False
        Caption = 'Rela'#231#227'o de Empresa para Contatos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
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
    object RLGroup1: TRLGroup
      Left = 38
      Top = 133
      Width = 1047
      Height = 50
      DataFields = 'UF'
      object RLBand3: TRLBand
        Left = 0
        Top = 17
        Width = 1047
        Height = 15
        object RLDraw20: TRLDraw
          Left = 325
          Top = -1
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw22: TRLDraw
          Left = 256
          Top = -1
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw36: TRLDraw
          Left = 1
          Top = -1
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object lbCampo: TRLDBText
          Left = 260
          Top = 2
          Width = 62
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'FONE1'
          DataSource = BancodeDados.DsContatos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText3: TRLDBText
          Left = 6
          Top = 2
          Width = 247
          Height = 11
          AutoSize = False
          DataField = 'EMPRESA'
          DataSource = BancodeDados.DsContatos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText12: TRLDBText
          Left = 328
          Top = 2
          Width = 136
          Height = 11
          AutoSize = False
          DataField = 'CIDADE'
          DataSource = BancodeDados.DsContatos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText16: TRLDBText
          Left = 873
          Top = 2
          Width = 20
          Height = 11
          Alignment = taCenter
          AutoSize = False
          DataField = 'UF'
          DataSource = BancodeDados.DsContatos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDraw37: TRLDraw
          Left = 1044
          Top = -1
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw35: TRLDraw
          Left = 1
          Top = 14
          Width = 1044
          Height = 1
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DrawKind = dkLine
        end
        object RLDraw33: TRLDraw
          Left = 870
          Top = -1
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw19: TRLDraw
          Left = 467
          Top = -1
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw25: TRLDraw
          Left = 684
          Top = -1
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw26: TRLDraw
          Left = 725
          Top = -1
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDBText18: TRLDBText
          Left = 471
          Top = 2
          Width = 212
          Height = 11
          AutoSize = False
          DataField = 'LOGRADOURO'
          DataSource = BancodeDados.DsContatos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText19: TRLDBText
          Left = 686
          Top = 2
          Width = 38
          Height = 11
          Alignment = taCenter
          AutoSize = False
          DataField = 'NUMERO'
          DataSource = BancodeDados.DsContatos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText20: TRLDBText
          Left = 728
          Top = 2
          Width = 138
          Height = 11
          AutoSize = False
          DataField = 'BAIRRO'
          DataSource = BancodeDados.DsContatos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText2: TRLDBText
          Left = 898
          Top = 2
          Width = 142
          Height = 11
          AutoSize = False
          DataField = 'CONTATO'
          DataSource = BancodeDados.DsContatos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDraw5: TRLDraw
          Left = 894
          Top = -1
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 32
        Width = 1047
        Height = 20
        BandType = btSummary
        object RLDraw48: TRLDraw
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
        object RLDraw54: TRLDraw
          Left = 1
          Top = -2
          Width = 1
          Height = 18
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw55: TRLDraw
          Left = 1044
          Top = -1
          Width = 1
          Height = 16
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDBResult19: TRLDBResult
          Left = 5
          Top = 3
          Width = 152
          Height = 12
          AutoSize = False
          ComputeNulls = False
          DataField = 'CONTATO_ID'
          DataSource = BancodeDados.DsContatos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riCount
          ParentFont = False
          Text = 'N'#250'mero de Registros: '
        end
      end
      object RLBand5: TRLBand
        Left = 0
        Top = 0
        Width = 1047
        Height = 17
        BandType = btColumnHeader
        object lbCorPadrao1: TRLLabel
          Left = 2
          Top = 2
          Width = 1043
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
        object RLDraw4: TRLDraw
          Left = 1
          Top = 2
          Width = 1
          Height = 16
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw7: TRLDraw
          Left = 325
          Top = 2
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel3: TRLLabel
          Left = 6
          Top = 4
          Width = 247
          Height = 11
          AutoSize = False
          Caption = 'Empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw9: TRLDraw
          Left = 256
          Top = 2
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object lbDescCampo: TRLLabel
          Left = 260
          Top = 4
          Width = 62
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
        object RLLabel18: TRLLabel
          Left = 873
          Top = 4
          Width = 20
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'UF'
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
          Width = 1044
          Height = 1
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DrawKind = dkLine
        end
        object RLDraw12: TRLDraw
          Left = 1044
          Top = 2
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw2: TRLDraw
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
        object RLDraw32: TRLDraw
          Left = 870
          Top = 2
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw11: TRLDraw
          Left = 467
          Top = 2
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel8: TRLLabel
          Left = 471
          Top = 4
          Width = 212
          Height = 11
          AutoSize = False
          Caption = 'Logradouro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel9: TRLLabel
          Left = 686
          Top = 4
          Width = 38
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'N'#250'mero'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw15: TRLDraw
          Left = 725
          Top = 2
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel10: TRLLabel
          Left = 728
          Top = 4
          Width = 138
          Height = 11
          AutoSize = False
          Caption = 'Bairro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel4: TRLLabel
          Left = 328
          Top = 4
          Width = 136
          Height = 11
          AutoSize = False
          Caption = 'Cidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw13: TRLDraw
          Left = 684
          Top = 2
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel2: TRLLabel
          Left = 898
          Top = 4
          Width = 142
          Height = 11
          AutoSize = False
          Caption = 'Contato'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw3: TRLDraw
          Left = 894
          Top = 2
          Width = 1
          Height = 15
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
      end
    end
    object RLBand6: TRLBand
      Left = 38
      Top = 183
      Width = 1047
      Height = 41
      BandType = btFooter
      object RLDraw6: TRLDraw
        Left = 1
        Top = 1
        Width = 1046
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
  object RLReport1: TRLReport
    Left = 41
    Top = 236
    Width = 816
    Height = 1056
    Margins.LeftMargin = 7.000000000000000000
    Margins.TopMargin = 21.000000000000000000
    Margins.RightMargin = 7.000000000000000000
    Margins.BottomMargin = 7.000000000000000000
    DataSource = dsContatos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.PaperSize = fpLetter
    ShowProgress = False
    object RLBand1: TRLBand
      Left = 26
      Top = 207
      Width = 764
      Height = 19
      BandType = btFooter
      object RLLabel1: TRLLabel
        Left = 2
        Top = 4
        Width = 758
        Height = 14
        Alignment = taCenter
        AutoSize = False
        Caption = 
          'Tamanho: 101,6 x 33,9 (14 etiquetas) - Endere'#231'os de Respons'#225'veis' +
          ' Inadimplentes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLDetailGrid1: TRLDetailGrid
      Left = 26
      Top = 79
      Width = 764
      Height = 128
      Margins.RightMargin = 4.000000000000000000
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      ColCount = 2
      ColSpacing = 10.000000000000000000
      object RLDBText1: TRLDBText
        Left = 10
        Top = 30
        Width = 54
        Height = 14
        DataField = 'EMPRESA'
        DataSource = dsContatos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLDBText7: TRLDBText
        Left = 10
        Top = 46
        Width = 93
        Height = 12
        DataField = 'LOGRADOURO'
        DataSource = dsContatos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = 'Rua: '
      end
      object RLDBText8: TRLDBText
        Left = 10
        Top = 61
        Width = 45
        Height = 12
        DataField = 'CEP'
        DataSource = dsContatos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = 'Cep: '
      end
      object RLDBText9: TRLDBText
        Left = 255
        Top = 46
        Width = 83
        Height = 12
        Alignment = taRightJustify
        DataField = 'NUMERO'
        DataSource = dsContatos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = 'N'#250'mero: '
      end
      object RLDBText10: TRLDBText
        Left = 10
        Top = 77
        Width = 69
        Height = 12
        DataField = 'BAIRRO'
        DataSource = dsContatos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = 'Bairro: '
      end
      object RLDBText11: TRLDBText
        Left = 287
        Top = 93
        Width = 51
        Height = 12
        Alignment = taRightJustify
        DataField = 'UF'
        DataSource = dsContatos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = 'Estado: '
      end
      object RLDBText14: TRLDBText
        Left = 10
        Top = 93
        Width = 74
        Height = 12
        DataField = 'CIDADE'
        DataSource = dsContatos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = 'Cidade: '
      end
      object RLLabel5: TRLLabel
        Left = 10
        Top = 15
        Width = 85
        Height = 12
        Caption = 'Ao Sr.(a) Diretor(a) '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object Contatos: TFDQuery
    Connection = BancodeDados.FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      'select * from contatos')
    Left = 576
    Top = 34
    object ContatosCONTATO_ID: TIntegerField
      FieldName = 'CONTATO_ID'
      Required = True
    end
    object ContatosEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
      Size = 60
    end
    object ContatosLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Origin = 'LOGRADOURO'
      Size = 120
    end
    object ContatosNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 13
    end
    object ContatosBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 60
    end
    object ContatosCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 13
    end
    object ContatosCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 60
    end
    object ContatosUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      FixedChar = True
      Size = 2
    end
  end
  object dsContatos: TDataSource
    DataSet = Contatos
    Left = 520
    Top = 250
  end
end
