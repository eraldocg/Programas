object RelClientesGeralForm: TRelClientesGeralForm
  Left = 0
  Top = 0
  Caption = 'RelClientesGeralForm'
  ClientHeight = 618
  ClientWidth = 1206
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
    Left = 32
    Top = 34
    Width = 1123
    Height = 794
    DataSource = BancodeDados.DsClientes
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
      Height = 111
      BandType = btColumnHeader
      object RLSystemInfo4: TRLSystemInfo
        Left = 892
        Top = 25
        Width = 148
        Height = 16
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = itPageNumber
        ParentFont = False
        Text = 'P'#225'gina: '
      end
      object lbTitulo_1: TRLLabel
        Left = 123
        Top = 3
        Width = 242
        Height = 22
        Caption = 'Rela'#231#227'o Geral de Clientes'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object SedRLDBImage1: TSedRLDBImage
        Left = 6
        Top = 3
        Width = 111
        Height = 99
        Stretch = True
        DataField = 'LOGO1'
        DataSource = BancodeDados.dsConfig
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 249
      Width = 1047
      Height = 36
      BandType = btFooter
      object RLDraw75: TRLDraw
        Left = 2
        Top = 1
        Width = 1044
        Height = 1
        DrawKind = dkLine
      end
      object lbEmpresaNome: TRLLabel
        Left = 2
        Top = 2
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
        Top = 15
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
        Top = 25
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
    object RLBand3: TRLBand
      Left = 38
      Top = 233
      Width = 1047
      Height = 16
      BandType = btSummary
      object RLDBResult1: TRLDBResult
        Left = 0
        Top = 1
        Width = 113
        Height = 11
        DataField = 'CLI_ID'
        DataSource = BancodeDados.DsClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riCount
        ParentFont = False
        ResetAfterPrint = True
        Text = 'Total de Alunos: '
      end
      object RLDraw5: TRLDraw
        Left = 2
        Top = 1
        Width = 1044
        Height = 1
        DrawKind = dkLine
      end
    end
    object RLGroup1: TRLGroup
      Left = 38
      Top = 149
      Width = 1047
      Height = 84
      DataFields = 'TIPO'
      object RLBand5: TRLBand
        Left = 0
        Top = 0
        Width = 1047
        Height = 38
        BandType = btColumnHeader
        object lbCorPadrao: TRLLabel
          Left = 1
          Top = 20
          Width = 1044
          Height = 18
          Alignment = taCenter
          AutoSize = False
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
        object RLLabel1: TRLLabel
          Left = 46
          Top = 23
          Width = 234
          Height = 12
          AutoSize = False
          Caption = 'Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel3: TRLLabel
          Left = 5
          Top = 23
          Width = 36
          Height = 11
          Alignment = taCenter
          Caption = 'C'#243'digo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LbDisc2: TRLLabel
          Left = 285
          Top = 23
          Width = 318
          Height = 12
          AutoSize = False
          Caption = 'Diretor / E-mail'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw1: TRLDraw
          Left = 282
          Top = 19
          Width = 1
          Height = 18
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw3: TRLDraw
          Left = 606
          Top = 19
          Width = 1
          Height = 18
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object LbDisc6: TRLLabel
          Left = 609
          Top = 23
          Width = 81
          Height = 12
          AutoSize = False
          Caption = 'Telefone(s)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw7: TRLDraw
          Left = 693
          Top = 19
          Width = 1
          Height = 18
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw13: TRLDraw
          Left = 750
          Top = 19
          Width = 1
          Height = 18
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw27: TRLDraw
          Left = 996
          Top = 19
          Width = 1
          Height = 18
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw2: TRLDraw
          Left = 43
          Top = 20
          Width = 1
          Height = 18
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw4: TRLDraw
          Left = 1
          Top = 0
          Width = 1
          Height = 39
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw37: TRLDraw
          Left = 1
          Top = 19
          Width = 1045
          Height = 1
          DrawKind = dkLine
        end
        object RLDraw41: TRLDraw
          Left = 2
          Top = 37
          Width = 1044
          Height = 1
          DrawKind = dkLine
        end
        object RLLabel6: TRLLabel
          Left = 697
          Top = 23
          Width = 50
          Height = 11
          Alignment = taCenter
          AutoSize = False
          Caption = 'Cadastro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel7: TRLLabel
          Left = 753
          Top = 23
          Width = 53
          Height = 12
          AutoSize = False
          Caption = 'Endere'#231'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel8: TRLLabel
          Left = 1000
          Top = 23
          Width = 42
          Height = 11
          Alignment = taCenter
          Caption = 'Situa'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbCampoAgrupa: TRLDBText
          Left = 4
          Top = 4
          Width = 1038
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'TIPO'
          DataSource = BancodeDados.DsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLDraw8: TRLDraw
          Left = 1045
          Top = 0
          Width = 1
          Height = 39
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw10: TRLDraw
          Left = 1
          Top = 0
          Width = 1044
          Height = 1
          DrawKind = dkLine
        end
      end
      object RLBand2: TRLBand
        Left = 0
        Top = 38
        Width = 1047
        Height = 29
        object RLDBText2: TRLDBText
          Left = 46
          Top = 1
          Width = 234
          Height = 12
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
        object RLDBText3: TRLDBText
          Left = 5
          Top = 9
          Width = 36
          Height = 12
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
        object RLDraw6: TRLDraw
          Left = 43
          Top = 0
          Width = 1
          Height = 29
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw9: TRLDraw
          Left = 1
          Top = 0
          Width = 1
          Height = 29
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw11: TRLDraw
          Left = 282
          Top = 0
          Width = 1
          Height = 29
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw12: TRLDraw
          Left = 606
          Top = -1
          Width = 1
          Height = 29
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw20: TRLDraw
          Left = 693
          Top = -1
          Width = 1
          Height = 29
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw22: TRLDraw
          Left = 750
          Top = -1
          Width = 1
          Height = 29
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw34: TRLDraw
          Left = 996
          Top = -1
          Width = 1
          Height = 30
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw36: TRLDraw
          Left = 1045
          Top = -1
          Width = 1
          Height = 30
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw38: TRLDraw
          Left = 2
          Top = 28
          Width = 1044
          Height = 1
          DrawKind = dkLine
        end
        object RLDBText4: TRLDBText
          Left = 285
          Top = 1
          Width = 318
          Height = 12
          AutoSize = False
          DataField = 'DIRETOR'
          DataSource = BancodeDados.DsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText5: TRLDBText
          Left = 285
          Top = 14
          Width = 318
          Height = 12
          AutoSize = False
          DataField = 'EMAIL_CONTATO1'
          DataSource = BancodeDados.DsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText6: TRLDBText
          Left = 609
          Top = 1
          Width = 81
          Height = 12
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
        object RLDBText7: TRLDBText
          Left = 697
          Top = 9
          Width = 50
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'CLIENTE_DESDE'
          DataSource = BancodeDados.DsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText8: TRLDBText
          Left = 1000
          Top = 9
          Width = 42
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'Situac_Nome'
          DataSource = BancodeDados.DsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText10: TRLDBText
          Left = 609
          Top = 14
          Width = 81
          Height = 12
          AutoSize = False
          DataField = 'FONE2'
          DataSource = BancodeDados.DsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText11: TRLDBText
          Left = 753
          Top = 1
          Width = 240
          Height = 12
          AutoSize = False
          DataField = 'LOGRADOURO'
          DataSource = BancodeDados.DsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText12: TRLDBText
          Left = 753
          Top = 14
          Width = 50
          Height = 12
          AutoSize = False
          DataField = 'CEP'
          DataSource = BancodeDados.DsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText13: TRLDBText
          Left = 970
          Top = 14
          Width = 25
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'ESTADO'
          DataSource = BancodeDados.DsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText15: TRLDBText
          Left = 805
          Top = 14
          Width = 164
          Height = 12
          AutoSize = False
          DataField = 'CIDADE'
          DataSource = BancodeDados.DsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText14: TRLDBText
          Left = 46
          Top = 14
          Width = 234
          Height = 12
          AutoSize = False
          DataField = 'FANTASIA'
          DataSource = BancodeDados.DsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLBand6: TRLBand
        Left = 0
        Top = 67
        Width = 1047
        Height = 16
        BandType = btSummary
        object RLDBResult2: TRLDBResult
          Left = 0
          Top = 1
          Width = 126
          Height = 11
          DataField = 'CLI_ID'
          DataSource = BancodeDados.DsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riCount
          ParentFont = False
          ResetAfterPrint = True
          Text = 'N'#250'mero de Alunos: '
        end
      end
    end
  end
end
