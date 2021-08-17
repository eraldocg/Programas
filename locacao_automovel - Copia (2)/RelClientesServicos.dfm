object RelClientesServicosForm: TRelClientesServicosForm
  Left = 226
  Top = 102
  Caption = 'Relat'#243'rio de Alunos por Turma'
  ClientHeight = 623
  ClientWidth = 849
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 27
    Top = 18
    Width = 794
    Height = 1123
    DataSource = BancodeDados.DsClientes
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
      Height = 109
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
        Left = 635
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
      object RLDBImage2: TSedRLDBImage
        Left = 4
        Top = 3
        Width = 96
        Height = 100
        Stretch = True
        DataField = 'LOGO1'
        DataSource = BancodeDados.dsConfig
      end
      object lbTipoFiltro1: TRLLabel
        Left = 110
        Top = 30
        Width = 84
        Height = 16
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object LbTitulo1: TRLLabel
        Left = 110
        Top = 9
        Width = 167
        Height = 19
        Caption = 'Relat'#243'rio de Servi'#231'os'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object lbPeriodo1: TRLLabel
        Left = 110
        Top = 48
        Width = 73
        Height = 16
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object lbOpcoes1: TRLLabel
        Left = 110
        Top = 66
        Width = 70
        Height = 16
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object lbOpcoes11: TRLLabel
        Left = 110
        Top = 84
        Width = 77
        Height = 16
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 216
      Width = 718
      Height = 16
      BandType = btSummary
      object RLDraw24: TRLDraw
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
      object RLDBResult1: TRLDBResult
        Left = 4
        Top = 2
        Width = 126
        Height = 11
        ComputeNulls = False
        DataField = 'CLI_ID'
        DataSource = BancodeDados.DsClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riCount
        ParentFont = False
        Text = 'Total de Registros: '
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 232
      Width = 718
      Height = 41
      BandType = btFooter
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
        Width = 45
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
        Width = 49
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
    object RLGroup1: TRLGroup
      Left = 38
      Top = 147
      Width = 718
      Height = 69
      object RLBand5: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 36
        BandType = btColumnHeader
        object lbCorPadrao: TRLLabel
          Left = 1
          Top = 17
          Width = 715
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
          Top = 17
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
          Top = 35
          Width = 716
          Height = 1
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DrawKind = dkLine
        end
        object RLDraw6: TRLDraw
          Left = 620
          Top = 17
          Width = 1
          Height = 20
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw7: TRLDraw
          Left = 716
          Top = 1
          Width = 1
          Height = 36
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel3: TRLLabel
          Left = 50
          Top = 21
          Width = 231
          Height = 13
          AutoSize = False
          Caption = 'Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel5: TRLLabel
          Left = 622
          Top = 21
          Width = 92
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Caption = 'Telefone'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw17: TRLDraw
          Left = 48
          Top = 17
          Width = 1
          Height = 20
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel6: TRLLabel
          Left = 6
          Top = 21
          Width = 40
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
        object RLDraw22: TRLDraw
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
        object lbCampoAgrupa1: TRLDBText
          Left = 7
          Top = 3
          Width = 708
          Height = 11
          Alignment = taCenter
          AutoSize = False
          DataSource = BancodeDados.DsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLDraw3: TRLDraw
          Left = 1
          Top = 1
          Width = 1
          Height = 37
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw9: TRLDraw
          Left = 501
          Top = 17
          Width = 1
          Height = 20
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel7: TRLLabel
          Left = 503
          Top = 21
          Width = 116
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Caption = 'Contato'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw23: TRLDraw
          Left = 285
          Top = 17
          Width = 1
          Height = 20
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object lbCampoDesc1: TRLLabel
          Left = 288
          Top = 21
          Width = 211
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Caption = 'Servi'#231'os'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand6: TRLBand
        Left = 0
        Top = 36
        Width = 718
        Height = 17
        object RLDraw8: TRLDraw
          Left = 1
          Top = 0
          Width = 1
          Height = 16
          Align = faHeight
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw11: TRLDraw
          Left = 620
          Top = 0
          Width = 1
          Height = 16
          Align = faHeight
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw12: TRLDraw
          Left = 716
          Top = 0
          Width = 1
          Height = 16
          Align = faHeight
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw13: TRLDraw
          Left = 0
          Top = 16
          Width = 718
          Height = 1
          Align = faBottom
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DrawKind = dkLine
        end
        object RLDBText2: TRLDBText
          Left = 50
          Top = 4
          Width = 231
          Height = 11
          AutoSize = False
          DataField = 'NOME'
          DataSource = BancodeDados.DsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText4: TRLDBText
          Left = 622
          Top = 4
          Width = 92
          Height = 11
          Alignment = taCenter
          AutoSize = False
          DataField = 'FONE1'
          DataSource = BancodeDados.DsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDraw20: TRLDraw
          Left = 48
          Top = 0
          Width = 1
          Height = 16
          Align = faHeight
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDBText7: TRLDBText
          Left = 6
          Top = 4
          Width = 40
          Height = 11
          Alignment = taCenter
          AutoSize = False
          DataField = 'CLI_ID'
          DataSource = BancodeDados.DsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDraw15: TRLDraw
          Left = 501
          Top = 0
          Width = 1
          Height = 16
          Align = faHeight
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDBText1: TRLDBText
          Left = 503
          Top = 4
          Width = 116
          Height = 11
          AutoSize = False
          DataField = 'CONTATO'
          DataSource = BancodeDados.DsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDraw16: TRLDraw
          Left = 285
          Top = 0
          Width = 1
          Height = 16
          Align = faHeight
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDBMemo1: TRLDBMemo
          Left = 288
          Top = 4
          Width = 211
          Height = 12
          Behavior = [beSiteExpander]
          DataField = 'ListaServ'
          DataSource = BancodeDados.DsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand2: TRLBand
        Left = 0
        Top = 53
        Width = 718
        Height = 14
        BandType = btSummary
        object RLDBResult20: TRLDBResult
          Left = 3
          Top = 1
          Width = 139
          Height = 11
          ComputeNulls = False
          DataField = 'CLI_ID'
          DataSource = BancodeDados.DsClientes
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
    end
  end
  object csClientesServicos: TFDQuery
    Connection = BancodeDados.FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      'select c.*, s.servic_id'
      'from clientes c'
      'left join cont_serv_clien s on (s.cli_id = c.cli_id)'
      'where s.servic_id=4')
    Left = 158
    Top = 386
    object csClientesServicosCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object csClientesServicosNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object csClientesServicosCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 19
    end
    object csClientesServicosCLIENTE_DESDE: TDateField
      FieldName = 'CLIENTE_DESDE'
    end
    object csClientesServicosCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object csClientesServicosESTADO: TStringField
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 2
    end
    object csClientesServicosFONE1: TStringField
      FieldName = 'FONE1'
      Size = 16
    end
    object csClientesServicosCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 60
    end
  end
  object dsClientesServ: TDataSource
    DataSet = csClientesServicos
    Left = 246
    Top = 420
  end
end
