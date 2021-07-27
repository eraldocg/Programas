object RelCarneCaixaForm: TRelCarneCaixaForm
  Left = 202
  Top = 149
  Width = 1155
  Height = 731
  AutoScroll = True
  Caption = 'RelCarneCaixaForm'
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
    Left = 77
    Top = -4
    Width = 794
    Height = 1123
    Margins.TopMargin = 6.000000000000000000
    Margins.BottomMargin = 2.000000000000000000
    DataSource = BancodeDados.dsV_Boletos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PreviewOptions.ShowModal = True
    ShowProgress = False
    Title = 'Boleto banc'#225'rio'
    object RLBand1: TRLBand
      Left = 38
      Top = 23
      Width = 718
      Height = 354
      AutoExpand = False
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLDraw5: TRLDraw
        Left = 131
        Top = 29
        Width = 596
        Height = 2
        DrawKind = dkLine
      end
      object RLDraw7: TRLDraw
        Left = 130
        Top = -6
        Width = 1
        Height = 355
        Angle = 90.000000000000000000
        DrawKind = dkLine
        Pen.Style = psDot
      end
      object RLDraw8: TRLDraw
        Left = 6
        Top = 44
        Width = 2
        Height = 302
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDraw9: TRLDraw
        Left = 7
        Top = 260
        Width = 117
        Height = 1
        DrawKind = dkLine
      end
      object RLDraw10: TRLDraw
        Left = 7
        Top = 44
        Width = 117
        Height = 1
        DrawKind = dkLine
      end
      object RLDraw12: TRLDraw
        Left = 131
        Top = 56
        Width = 596
        Height = 1
        DrawKind = dkLine
      end
      object RLDraw13: TRLDraw
        Left = 607
        Top = 29
        Width = 1
        Height = 254
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDraw14: TRLDraw
        Left = 131
        Top = 83
        Width = 596
        Height = 1
        DrawKind = dkLine
      end
      object RLDraw15: TRLDraw
        Left = 131
        Top = 110
        Width = 596
        Height = 1
        DrawKind = dkLine
      end
      object RLDraw17: TRLDraw
        Left = 131
        Top = 137
        Width = 596
        Height = 2
        DrawKind = dkLine
      end
      object RLDraw21: TRLDraw
        Left = 607
        Top = 191
        Width = 117
        Height = 1
        DrawKind = dkLine
      end
      object RLDraw23: TRLDraw
        Left = 607
        Top = 218
        Width = 117
        Height = 1
        DrawKind = dkLine
      end
      object RLLabel1: TRLLabel
        Left = 133
        Top = 30
        Width = 72
        Height = 10
        Caption = 'Local de Pagamento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw2: TRLDraw
        Left = 326
        Top = 84
        Width = 1
        Height = 26
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLLabel3: TRLLabel
        Left = 133
        Top = 57
        Width = 32
        Height = 10
        Caption = 'Cedente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw24: TRLDraw
        Left = 418
        Top = 84
        Width = 1
        Height = 26
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLLabel4: TRLLabel
        Left = 329
        Top = 84
        Width = 47
        Height = 10
        Caption = 'Esp'#233'cie Doc.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 420
        Top = 84
        Width = 23
        Height = 10
        Caption = 'Aceite'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 133
        Top = 84
        Width = 31
        Height = 10
        Caption = 'Emiss'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw16: TRLDraw
        Left = 131
        Top = 232
        Width = 477
        Height = 2
        DrawKind = dkLine
      end
      object RLLabel13: TRLLabel
        Left = 133
        Top = 111
        Width = 49
        Height = 10
        Caption = 'Uso do Banco'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 608
        Top = 30
        Width = 41
        Height = 10
        Caption = 'Vencimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel14: TRLLabel
        Left = 608
        Top = 57
        Width = 60
        Height = 10
        Caption = 'Ag/C'#243'd. Cedente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel15: TRLLabel
        Left = 608
        Top = 84
        Width = 53
        Height = 10
        Caption = 'Nosso N'#250'mero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel17: TRLLabel
        Left = 608
        Top = 138
        Width = 34
        Height = 10
        Caption = 'Desconto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel18: TRLLabel
        Left = 608
        Top = 165
        Width = 68
        Height = 10
        Caption = 'Outras Deduc/Abat.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel19: TRLLabel
        Left = 608
        Top = 192
        Width = 41
        Height = 10
        Caption = 'Mora/Multa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel20: TRLLabel
        Left = 608
        Top = 219
        Width = 53
        Height = 10
        Caption = 'Outros Acresc.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText2: TRLDBText
        Left = 133
        Top = 69
        Width = 470
        Height = 12
        AutoSize = False
        DataField = 'NOME_CEDENTE'
        DataSource = BancodeDados.dsV_Boletos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 329
        Top = 96
        Width = 86
        Height = 12
        Alignment = taCenter
        AutoSize = False
        DataField = 'ESPECIE'
        DataSource = BancodeDados.dsV_Boletos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 420
        Top = 96
        Width = 86
        Height = 12
        Alignment = taCenter
        AutoSize = False
        DataField = 'ACEITE'
        DataSource = BancodeDados.dsV_Boletos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText6: TRLDBText
        Left = 649
        Top = 69
        Width = 66
        Height = 12
        Alignment = taRightJustify
        DataField = 'AgCodCedente'
        DataSource = BancodeDados.dsV_Boletos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText7: TRLDBText
        Left = 649
        Top = 42
        Width = 64
        Height = 12
        Alignment = taRightJustify
        DataField = 'VENCIMENTO'
        DataSource = BancodeDados.dsV_Boletos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText8: TRLDBText
        Left = 631
        Top = 96
        Width = 82
        Height = 12
        Alignment = taRightJustify
        DataField = 'NOSSO_NUMERO'
        DataSource = BancodeDados.dsV_Boletos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText9: TRLDBText
        Left = 653
        Top = 123
        Width = 60
        Height = 12
        Alignment = taRightJustify
        DataField = 'VALOR_DOC'
        DataSource = BancodeDados.dsV_Boletos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDraw19: TRLDraw
        Left = 607
        Top = 164
        Width = 117
        Height = 1
        DrawKind = dkLine
      end
      object RLDBText11: TRLDBText
        Left = 134
        Top = 96
        Width = 92
        Height = 12
        Alignment = taCenter
        AutoSize = False
        DataField = 'EMISSAO'
        DataSource = BancodeDados.dsV_Boletos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDraw20: TRLDraw
        Left = 7
        Top = 71
        Width = 117
        Height = 1
        DrawKind = dkLine
      end
      object RLDraw26: TRLDraw
        Left = 7
        Top = 98
        Width = 117
        Height = 1
        DrawKind = dkLine
      end
      object RLDraw27: TRLDraw
        Left = 7
        Top = 125
        Width = 117
        Height = 1
        DrawKind = dkLine
      end
      object RLDraw28: TRLDraw
        Left = 7
        Top = 152
        Width = 117
        Height = 1
        DrawKind = dkLine
      end
      object RLDraw29: TRLDraw
        Left = 7
        Top = 206
        Width = 117
        Height = 1
        DrawKind = dkLine
      end
      object RLDraw30: TRLDraw
        Left = 7
        Top = 233
        Width = 117
        Height = 1
        DrawKind = dkLine
      end
      object RLDraw31: TRLDraw
        Left = 7
        Top = 179
        Width = 117
        Height = 1
        DrawKind = dkLine
      end
      object RLDBText22: TRLDBText
        Left = 9
        Top = 165
        Width = 112
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALOR_DOC'
        DataSource = BancodeDados.dsV_Boletos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel34: TRLLabel
        Left = 9
        Top = 153
        Width = 70
        Height = 10
        Caption = 'Valor do Documento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText24: TRLDBText
        Left = 9
        Top = 138
        Width = 112
        Height = 12
        AutoSize = False
        DataField = 'NOSSO_NUMERO'
        DataSource = BancodeDados.dsV_Boletos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel36: TRLLabel
        Left = 9
        Top = 126
        Width = 53
        Height = 10
        Caption = 'Nosso N'#250'mero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText25: TRLDBText
        Left = 9
        Top = 111
        Width = 118
        Height = 12
        AutoSize = False
        DataField = 'AgCodCedente'
        DataSource = BancodeDados.dsV_Boletos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel37: TRLLabel
        Left = 9
        Top = 99
        Width = 62
        Height = 10
        Caption = 'Ag./C'#243'd. Cedente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel38: TRLLabel
        Left = 7
        Top = 47
        Width = 63
        Height = 10
        Caption = 'N.'#186' do Documento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText26: TRLDBText
        Left = 9
        Top = 57
        Width = 112
        Height = 12
        AutoSize = False
        DataField = 'EMISSAO_ID'
        DataSource = BancodeDados.dsV_Boletos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel39: TRLLabel
        Left = 9
        Top = 72
        Width = 41
        Height = 10
        Caption = 'Vencimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText27: TRLDBText
        Left = 9
        Top = 84
        Width = 112
        Height = 12
        AutoSize = False
        DataField = 'VENCIMENTO'
        DataSource = BancodeDados.dsV_Boletos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel35: TRLLabel
        Left = 9
        Top = 180
        Width = 34
        Height = 10
        Caption = 'Desconto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel40: TRLLabel
        Left = 9
        Top = 207
        Width = 68
        Height = 10
        Caption = 'Outras Deduc/Abat.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel30: TRLLabel
        Left = 9
        Top = 234
        Width = 41
        Height = 10
        Caption = 'Mora/Multa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw32: TRLDraw
        Left = 131
        Top = 282
        Width = 596
        Height = 2
        DrawKind = dkLine
      end
      object RLDraw1: TRLDraw
        Left = 7
        Top = 287
        Width = 117
        Height = 1
        DrawKind = dkLine
      end
      object RLDraw3: TRLDraw
        Left = 7
        Top = 314
        Width = 117
        Height = 1
        DrawKind = dkLine
      end
      object drawPontilhado: TRLDraw
        Left = 1
        Top = 349
        Width = 719
        Height = 1
        DrawKind = dkLine
        Pen.Style = psDot
      end
      object RLDraw11: TRLDraw
        Left = 6
        Top = 347
        Width = 117
        Height = 1
        DrawKind = dkLine
      end
      object RLDraw6: TRLDraw
        Left = 508
        Top = 84
        Width = 1
        Height = 26
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLLabel2: TRLLabel
        Left = 510
        Top = 84
        Width = 82
        Height = 10
        Caption = 'Data de Processamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText5: TRLDBText
        Left = 510
        Top = 96
        Width = 94
        Height = 12
        Alignment = taCenter
        AutoSize = False
        DataField = 'EMISSAO'
        DataSource = BancodeDados.dsV_Boletos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel11: TRLLabel
        Left = 11
        Top = 31
        Width = 81
        Height = 10
        Caption = 'RECIBO DO SACADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText14: TRLDBText
        Left = 133
        Top = 43
        Width = 470
        Height = 12
        AutoSize = False
        DataField = 'LOCAL_PAGAMENTO'
        DataSource = BancodeDados.dsV_Boletos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDraw25: TRLDraw
        Left = 228
        Top = 84
        Width = 1
        Height = 26
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLLabel12: TRLLabel
        Left = 230
        Top = 84
        Width = 53
        Height = 10
        Caption = 'N.'#186' Documento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText15: TRLDBText
        Left = 230
        Top = 96
        Width = 94
        Height = 12
        Alignment = taCenter
        AutoSize = False
        DataField = 'EMISSAO_ID'
        DataSource = BancodeDados.dsV_Boletos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDraw33: TRLDraw
        Left = 228
        Top = 111
        Width = 1
        Height = 26
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLLabel16: TRLLabel
        Left = 230
        Top = 111
        Width = 30
        Height = 10
        Caption = 'Carteira'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText16: TRLDBText
        Left = 230
        Top = 123
        Width = 68
        Height = 12
        Alignment = taCenter
        AutoSize = False
        DataField = 'CarteiraTmp'
        DataSource = BancodeDados.dsV_Boletos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDraw34: TRLDraw
        Left = 490
        Top = 111
        Width = 1
        Height = 26
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLLabel21: TRLLabel
        Left = 492
        Top = 111
        Width = 45
        Height = 10
        Caption = 'Valor Moeda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText17: TRLDBText
        Left = 492
        Top = 123
        Width = 111
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALOR_MOEDA'
        DataSource = BancodeDados.dsV_Boletos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDraw35: TRLDraw
        Left = 374
        Top = 111
        Width = 1
        Height = 26
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLLabel22: TRLLabel
        Left = 376
        Top = 111
        Width = 43
        Height = 10
        Caption = 'Qtde Moeda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText18: TRLDBText
        Left = 376
        Top = 123
        Width = 109
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'QTD_MOEDA'
        DataSource = BancodeDados.dsV_Boletos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel23: TRLLabel
        Left = 9
        Top = 261
        Width = 53
        Height = 10
        Caption = 'Outros Acresc.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel24: TRLLabel
        Left = 9
        Top = 288
        Width = 51
        Height = 10
        Caption = 'Valor Cobrado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel25: TRLLabel
        Left = 9
        Top = 315
        Width = 27
        Height = 10
        Caption = 'Sacado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel26: TRLLabel
        Left = 609
        Top = 111
        Width = 38
        Height = 10
        Caption = 'Valor Doc.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel27: TRLLabel
        Left = 609
        Top = 246
        Width = 51
        Height = 10
        Caption = 'Valor Cobrado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 133
        Top = 234
        Width = 27
        Height = 10
        Caption = 'Sacado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBBarcode1: TRLDBBarcode
        Left = 139
        Top = 290
        Width = 108
        Height = 53
        Margins.LeftMargin = 1.000000000000000000
        Margins.RightMargin = 1.000000000000000000
        DataField = 'COD_BARRAS'
        DataSource = BancodeDados.dsV_Boletos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Ratio = 3.000000000000000000
      end
      object RLDraw36: TRLDraw
        Left = 300
        Top = 111
        Width = 1
        Height = 26
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLLabel28: TRLLabel
        Left = 302
        Top = 111
        Width = 64
        Height = 10
        Caption = 'Esp'#233'cie de Moeda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText1: TRLDBText
        Left = 302
        Top = 123
        Width = 70
        Height = 12
        Alignment = taCenter
        AutoSize = False
        DataField = 'MOEDA'
        DataSource = BancodeDados.dsV_Boletos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDraw22: TRLDraw
        Left = 258
        Top = -2
        Width = 1
        Height = 31
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDraw37: TRLDraw
        Left = 322
        Top = -2
        Width = 1
        Height = 31
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLLabel29: TRLLabel
        Left = 133
        Top = 283
        Width = 58
        Height = 7
        Caption = 'Sacador/Avalista'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText10: TRLDBText
        Left = 135
        Top = 245
        Width = 470
        Height = 12
        AutoSize = False
        DataField = 'Sacado'
        DataSource = BancodeDados.dsV_Boletos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText12: TRLDBText
        Left = 326
        Top = 9
        Width = 389
        Height = 14
        AutoSize = False
        DataField = 'LINHA_DIG'
        DataSource = BancodeDados.dsV_Boletos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLDraw38: TRLDraw
        Left = 76
        Top = 2
        Width = 1
        Height = 23
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDraw39: TRLDraw
        Left = 126
        Top = 2
        Width = 1
        Height = 23
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDBMemo12: TRLDBMemo
        Left = 134
        Top = 151
        Width = 469
        Height = 81
        AutoSize = False
        Behavior = [beSiteExpander]
        DataField = 'OBS'
        DataSource = BancodeDados.dsV_Boletos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBMemo2: TRLDBMemo
        Left = 9
        Top = 325
        Width = 118
        Height = 18
        AutoSize = False
        Behavior = [beSiteExpander]
        DataField = 'Sacado2'
        DataSource = BancodeDados.dsV_Boletos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBImage1: TSedRLDBImage
        Left = 9
        Top = 7
        Width = 64
        Height = 17
        Stretch = True
        DataField = 'LOGOMARCA'
        DataSource = BancodeDados.dsV_Boletos
      end
      object RLDBImage2: TSedRLDBImage
        Left = 133
        Top = 1
        Width = 122
        Height = 27
        Stretch = True
        DataField = 'LOGOMARCA'
        DataSource = BancodeDados.dsV_Boletos
      end
      object RLDBText13: TRLDBText
        Left = 262
        Top = 4
        Width = 58
        Height = 20
        Alignment = taCenter
        AutoSize = False
        DataField = 'CodIdentBanco'
        DataSource = BancodeDados.dsV_Boletos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLDBText19: TRLDBText
        Left = 78
        Top = 6
        Width = 46
        Height = 17
        Alignment = taCenter
        AutoSize = False
        DataField = 'CodIdentBanco'
        DataSource = BancodeDados.dsV_Boletos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLDBText20: TRLDBText
        Left = 135
        Top = 257
        Width = 470
        Height = 12
        AutoSize = False
        DataField = 'Endereco'
        DataSource = BancodeDados.dsV_Boletos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText21: TRLDBText
        Left = 135
        Top = 269
        Width = 470
        Height = 12
        AutoSize = False
        DataField = 'CEP'
        DataSource = BancodeDados.dsV_Boletos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = 'CEP: '
      end
      object RLDraw41: TRLDraw
        Left = 607
        Top = 245
        Width = 118
        Height = 1
        DrawKind = dkLine
      end
      object RLLabel31: TRLLabel
        Left = 133
        Top = 139
        Width = 129
        Height = 10
        Caption = 'Texto de responsabilidade do cedente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 536
        Top = 283
        Width = 74
        Height = 7
        Caption = 'Autentica'#231#227'o no verso'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel9: TRLLabel
        Left = 623
        Top = 283
        Width = 79
        Height = 7
        Caption = 'Ficha de Compensa'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbEmpresaNome: TRLLabel
        Left = 679
        Top = 326
        Width = 32
        Height = 7
        Alignment = taRightJustify
        Caption = 'SED Soft'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbEmpresaSite: TRLLabel
        Left = 643
        Top = 335
        Width = 68
        Height = 7
        Alignment = taRightJustify
        Caption = 'www.sedsoft.com.br'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object RLReport2: TRLReport
    Left = 59
    Top = 460
    Width = 794
    Height = 1123
    DataSource = BancodeDados.DsClientes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand2: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 797
      BandType = btColumnHeader
      BeforePrint = RLBand2BeforePrint
      object CapaFrente: TSedRLDBImage
        Left = 0
        Top = 6
        Width = 718
        Height = 354
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.FixedBottom = True
        Stretch = True
      end
      object lbCliente: TRLLabel
        Left = 22
        Top = 128
        Width = 80
        Height = 16
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object CapaVerso: TSedRLDBImage
        Left = 0
        Top = 360
        Width = 718
        Height = 354
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.FixedBottom = True
        Stretch = True
      end
    end
  end
  object RLReport3: TRLReport
    Left = 213
    Top = 385
    Width = 1123
    Height = 794
    DataSource = BancodeDados.dsV_Boletos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.Orientation = poLandscape
    object RLGroup1: TRLGroup
      Left = 38
      Top = 38
      Width = 1047
      Height = 686
      object RLBand3: TRLBand
        Left = 0
        Top = 0
        Width = 1047
        Height = 676
        AutoExpand = False
        object RLDraw4: TRLDraw
          Left = 451
          Top = 209
          Width = 596
          Height = 2
          DrawKind = dkLine
        end
        object RLDraw18: TRLDraw
          Left = 450
          Top = 174
          Width = 1
          Height = 355
          Angle = 90.000000000000000000
          DrawKind = dkLine
          Pen.Style = psDot
        end
        object RLDraw40: TRLDraw
          Left = 326
          Top = 224
          Width = 2
          Height = 302
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw42: TRLDraw
          Left = 327
          Top = 440
          Width = 117
          Height = 1
          DrawKind = dkLine
        end
        object RLDraw43: TRLDraw
          Left = 327
          Top = 224
          Width = 117
          Height = 1
          DrawKind = dkLine
        end
        object RLDraw44: TRLDraw
          Left = 451
          Top = 236
          Width = 596
          Height = 1
          DrawKind = dkLine
        end
        object RLDraw45: TRLDraw
          Left = 927
          Top = 209
          Width = 1
          Height = 254
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw46: TRLDraw
          Left = 451
          Top = 263
          Width = 596
          Height = 1
          DrawKind = dkLine
        end
        object RLDraw47: TRLDraw
          Left = 451
          Top = 290
          Width = 596
          Height = 1
          DrawKind = dkLine
        end
        object RLDraw48: TRLDraw
          Left = 453
          Top = 319
          Width = 596
          Height = 2
          DrawKind = dkLine
        end
        object RLDraw49: TRLDraw
          Left = 927
          Top = 371
          Width = 117
          Height = 1
          DrawKind = dkLine
        end
        object RLDraw50: TRLDraw
          Left = 927
          Top = 398
          Width = 117
          Height = 1
          DrawKind = dkLine
        end
        object RLLabel32: TRLLabel
          Left = 453
          Top = 210
          Width = 72
          Height = 10
          Caption = 'Local de Pagamento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw51: TRLDraw
          Left = 646
          Top = 264
          Width = 1
          Height = 26
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel33: TRLLabel
          Left = 453
          Top = 237
          Width = 32
          Height = 10
          Caption = 'Cedente:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw52: TRLDraw
          Left = 738
          Top = 264
          Width = 1
          Height = 26
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel41: TRLLabel
          Left = 649
          Top = 264
          Width = 47
          Height = 10
          Caption = 'Esp'#233'cie Doc.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel42: TRLLabel
          Left = 740
          Top = 264
          Width = 23
          Height = 10
          Caption = 'Aceite'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel43: TRLLabel
          Left = 453
          Top = 264
          Width = 31
          Height = 10
          Caption = 'Emiss'#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw53: TRLDraw
          Left = 453
          Top = 414
          Width = 477
          Height = 2
          DrawKind = dkLine
        end
        object RLLabel44: TRLLabel
          Left = 453
          Top = 291
          Width = 49
          Height = 10
          Caption = 'Uso do Banco'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel45: TRLLabel
          Left = 928
          Top = 210
          Width = 41
          Height = 10
          Caption = 'Vencimento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel46: TRLLabel
          Left = 928
          Top = 237
          Width = 60
          Height = 10
          Caption = 'Ag/C'#243'd. Cedente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel47: TRLLabel
          Left = 928
          Top = 264
          Width = 53
          Height = 10
          Caption = 'Nosso N'#250'mero'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel48: TRLLabel
          Left = 928
          Top = 318
          Width = 34
          Height = 10
          Caption = 'Desconto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel49: TRLLabel
          Left = 928
          Top = 345
          Width = 68
          Height = 10
          Caption = 'Outras Deduc/Abat.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel50: TRLLabel
          Left = 928
          Top = 372
          Width = 41
          Height = 10
          Caption = 'Mora/Multa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel51: TRLLabel
          Left = 928
          Top = 399
          Width = 53
          Height = 10
          Caption = 'Outros Acresc.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText23: TRLDBText
          Left = 453
          Top = 249
          Width = 470
          Height = 12
          AutoSize = False
          DataField = 'NOME_CEDENTE'
          DataSource = BancodeDados.dsV_Boletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText28: TRLDBText
          Left = 649
          Top = 276
          Width = 86
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'ESPECIE'
          DataSource = BancodeDados.dsV_Boletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText29: TRLDBText
          Left = 740
          Top = 276
          Width = 86
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'ACEITE'
          DataSource = BancodeDados.dsV_Boletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText30: TRLDBText
          Left = 969
          Top = 249
          Width = 66
          Height = 12
          Alignment = taRightJustify
          DataField = 'AgCodCedente'
          DataSource = BancodeDados.dsV_Boletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText31: TRLDBText
          Left = 969
          Top = 222
          Width = 64
          Height = 12
          Alignment = taRightJustify
          DataField = 'VENCIMENTO'
          DataSource = BancodeDados.dsV_Boletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText32: TRLDBText
          Left = 951
          Top = 276
          Width = 82
          Height = 12
          Alignment = taRightJustify
          DataField = 'NOSSO_NUMERO'
          DataSource = BancodeDados.dsV_Boletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText33: TRLDBText
          Left = 973
          Top = 303
          Width = 60
          Height = 12
          Alignment = taRightJustify
          DataField = 'VALOR_DOC'
          DataSource = BancodeDados.dsV_Boletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDraw54: TRLDraw
          Left = 927
          Top = 344
          Width = 117
          Height = 1
          DrawKind = dkLine
        end
        object RLDBText34: TRLDBText
          Left = 454
          Top = 276
          Width = 92
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'EMISSAO'
          DataSource = BancodeDados.dsV_Boletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDraw55: TRLDraw
          Left = 327
          Top = 251
          Width = 117
          Height = 1
          DrawKind = dkLine
        end
        object RLDraw56: TRLDraw
          Left = 327
          Top = 278
          Width = 117
          Height = 1
          DrawKind = dkLine
        end
        object RLDraw57: TRLDraw
          Left = 327
          Top = 305
          Width = 117
          Height = 1
          DrawKind = dkLine
        end
        object RLDraw58: TRLDraw
          Left = 327
          Top = 332
          Width = 117
          Height = 1
          DrawKind = dkLine
        end
        object RLDraw59: TRLDraw
          Left = 327
          Top = 386
          Width = 117
          Height = 1
          DrawKind = dkLine
        end
        object RLDraw60: TRLDraw
          Left = 327
          Top = 413
          Width = 117
          Height = 1
          DrawKind = dkLine
        end
        object RLDraw61: TRLDraw
          Left = 327
          Top = 359
          Width = 117
          Height = 1
          DrawKind = dkLine
        end
        object RLDBText35: TRLDBText
          Left = 329
          Top = 345
          Width = 112
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALOR_DOC'
          DataSource = BancodeDados.dsV_Boletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel52: TRLLabel
          Left = 329
          Top = 333
          Width = 70
          Height = 10
          Caption = 'Valor do Documento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText36: TRLDBText
          Left = 329
          Top = 318
          Width = 112
          Height = 12
          AutoSize = False
          DataField = 'NOSSO_NUMERO'
          DataSource = BancodeDados.dsV_Boletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel53: TRLLabel
          Left = 329
          Top = 306
          Width = 53
          Height = 10
          Caption = 'Nosso N'#250'mero'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText37: TRLDBText
          Left = 329
          Top = 291
          Width = 118
          Height = 12
          AutoSize = False
          DataField = 'AgCodCedente'
          DataSource = BancodeDados.dsV_Boletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel54: TRLLabel
          Left = 329
          Top = 279
          Width = 62
          Height = 10
          Caption = 'Ag./C'#243'd. Cedente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel55: TRLLabel
          Left = 327
          Top = 227
          Width = 63
          Height = 10
          Caption = 'N.'#186' do Documento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText38: TRLDBText
          Left = 329
          Top = 237
          Width = 112
          Height = 12
          AutoSize = False
          DataField = 'EMISSAO_ID'
          DataSource = BancodeDados.dsV_Boletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel56: TRLLabel
          Left = 329
          Top = 252
          Width = 41
          Height = 10
          Caption = 'Vencimento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText39: TRLDBText
          Left = 329
          Top = 264
          Width = 112
          Height = 12
          AutoSize = False
          DataField = 'VENCIMENTO'
          DataSource = BancodeDados.dsV_Boletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel57: TRLLabel
          Left = 329
          Top = 360
          Width = 34
          Height = 10
          Caption = 'Desconto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel58: TRLLabel
          Left = 329
          Top = 387
          Width = 68
          Height = 10
          Caption = 'Outras Deduc/Abat.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel59: TRLLabel
          Left = 329
          Top = 414
          Width = 41
          Height = 10
          Caption = 'Mora/Multa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw62: TRLDraw
          Left = 451
          Top = 461
          Width = 596
          Height = 2
          DrawKind = dkLine
        end
        object RLDraw63: TRLDraw
          Left = 327
          Top = 467
          Width = 117
          Height = 1
          DrawKind = dkLine
        end
        object RLDraw64: TRLDraw
          Left = 327
          Top = 494
          Width = 117
          Height = 1
          DrawKind = dkLine
        end
        object RLDraw66: TRLDraw
          Left = 326
          Top = 527
          Width = 117
          Height = 1
          DrawKind = dkLine
        end
        object RLDraw67: TRLDraw
          Left = 828
          Top = 264
          Width = 1
          Height = 26
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel60: TRLLabel
          Left = 830
          Top = 264
          Width = 82
          Height = 10
          Caption = 'Data de Processamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText40: TRLDBText
          Left = 830
          Top = 276
          Width = 94
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'EMISSAO'
          DataSource = BancodeDados.dsV_Boletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel61: TRLLabel
          Left = 331
          Top = 211
          Width = 81
          Height = 10
          Caption = 'RECIBO DO SACADO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText41: TRLDBText
          Left = 453
          Top = 223
          Width = 470
          Height = 12
          AutoSize = False
          DataField = 'LOCAL_PAGAMENTO'
          DataSource = BancodeDados.dsV_Boletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDraw68: TRLDraw
          Left = 548
          Top = 264
          Width = 1
          Height = 26
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel62: TRLLabel
          Left = 550
          Top = 264
          Width = 53
          Height = 10
          Caption = 'N.'#186' Documento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText42: TRLDBText
          Left = 550
          Top = 276
          Width = 94
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'EMISSAO_ID'
          DataSource = BancodeDados.dsV_Boletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDraw69: TRLDraw
          Left = 548
          Top = 291
          Width = 1
          Height = 26
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel63: TRLLabel
          Left = 550
          Top = 291
          Width = 30
          Height = 10
          Caption = 'Carteira'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText43: TRLDBText
          Left = 550
          Top = 303
          Width = 68
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'CarteiraTmp'
          DataSource = BancodeDados.dsV_Boletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDraw70: TRLDraw
          Left = 810
          Top = 291
          Width = 1
          Height = 26
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel64: TRLLabel
          Left = 812
          Top = 291
          Width = 45
          Height = 10
          Caption = 'Valor Moeda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText44: TRLDBText
          Left = 812
          Top = 303
          Width = 111
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALOR_MOEDA'
          DataSource = BancodeDados.dsV_Boletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDraw71: TRLDraw
          Left = 694
          Top = 291
          Width = 1
          Height = 26
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel65: TRLLabel
          Left = 696
          Top = 291
          Width = 43
          Height = 10
          Caption = 'Qtde Moeda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText45: TRLDBText
          Left = 696
          Top = 303
          Width = 109
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'QTD_MOEDA'
          DataSource = BancodeDados.dsV_Boletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel66: TRLLabel
          Left = 329
          Top = 441
          Width = 53
          Height = 10
          Caption = 'Outros Acresc.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel67: TRLLabel
          Left = 329
          Top = 468
          Width = 51
          Height = 10
          Caption = 'Valor Cobrado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel68: TRLLabel
          Left = 329
          Top = 495
          Width = 27
          Height = 10
          Caption = 'Sacado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel69: TRLLabel
          Left = 929
          Top = 291
          Width = 38
          Height = 10
          Caption = 'Valor Doc.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel70: TRLLabel
          Left = 929
          Top = 426
          Width = 51
          Height = 10
          Caption = 'Valor Cobrado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel71: TRLLabel
          Left = 455
          Top = 416
          Width = 27
          Height = 10
          Caption = 'Sacado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBBarcode2: TRLDBBarcode
          Left = 459
          Top = 470
          Width = 108
          Height = 53
          Margins.LeftMargin = 1.000000000000000000
          Margins.RightMargin = 1.000000000000000000
          DataField = 'COD_BARRAS'
          DataSource = BancodeDados.dsV_Boletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Ratio = 3.000000000000000000
        end
        object RLDraw72: TRLDraw
          Left = 620
          Top = 291
          Width = 1
          Height = 26
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel72: TRLLabel
          Left = 622
          Top = 291
          Width = 64
          Height = 10
          Caption = 'Esp'#233'cie de Moeda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText46: TRLDBText
          Left = 622
          Top = 303
          Width = 70
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'MOEDA'
          DataSource = BancodeDados.dsV_Boletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDraw73: TRLDraw
          Left = 578
          Top = 178
          Width = 1
          Height = 31
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw74: TRLDraw
          Left = 642
          Top = 178
          Width = 1
          Height = 31
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLLabel73: TRLLabel
          Left = 453
          Top = 462
          Width = 57
          Height = 7
          Caption = 'Sacador/Avalista'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText47: TRLDBText
          Left = 455
          Top = 425
          Width = 470
          Height = 12
          AutoSize = False
          DataField = 'Sacado'
          DataSource = BancodeDados.dsV_Boletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText48: TRLDBText
          Left = 646
          Top = 189
          Width = 389
          Height = 14
          AutoSize = False
          DataField = 'LINHA_DIG'
          DataSource = BancodeDados.dsV_Boletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLDraw75: TRLDraw
          Left = 396
          Top = 182
          Width = 1
          Height = 23
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDraw76: TRLDraw
          Left = 446
          Top = 182
          Width = 1
          Height = 23
          Angle = 90.000000000000000000
          DrawKind = dkLine
        end
        object RLDBMemo1: TRLDBMemo
          Left = 454
          Top = 331
          Width = 469
          Height = 81
          AutoSize = False
          Behavior = [beSiteExpander]
          DataField = 'OBS'
          DataSource = BancodeDados.dsV_Boletos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBMemo3: TRLDBMemo
          Left = 329
          Top = 505
          Width = 118
          Height = 17
          AutoSize = False
          Behavior = [beSiteExpander]
          DataField = 'Sacado2'
          DataSource = BancodeDados.dsV_Boletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object SedRLDBImage1: TSedRLDBImage
          Left = 329
          Top = 187
          Width = 64
          Height = 17
          Stretch = True
          DataField = 'LOGOMARCA'
          DataSource = BancodeDados.dsV_Boletos
        end
        object SedRLDBImage2: TSedRLDBImage
          Left = 453
          Top = 181
          Width = 122
          Height = 27
          Stretch = True
          DataField = 'LOGOMARCA'
          DataSource = BancodeDados.dsV_Boletos
        end
        object RLDBText49: TRLDBText
          Left = 582
          Top = 184
          Width = 58
          Height = 20
          Alignment = taCenter
          AutoSize = False
          DataField = 'CodIdentBanco'
          DataSource = BancodeDados.dsV_Boletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLDBText50: TRLDBText
          Left = 398
          Top = 186
          Width = 46
          Height = 17
          Alignment = taCenter
          AutoSize = False
          DataField = 'CodIdentBanco'
          DataSource = BancodeDados.dsV_Boletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLDBText51: TRLDBText
          Left = 455
          Top = 437
          Width = 470
          Height = 12
          AutoSize = False
          DataField = 'Endereco'
          DataSource = BancodeDados.dsV_Boletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText52: TRLDBText
          Left = 455
          Top = 449
          Width = 470
          Height = 12
          AutoSize = False
          DataField = 'CEP'
          DataSource = BancodeDados.dsV_Boletos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = 'CEP: '
        end
        object RLDraw77: TRLDraw
          Left = 927
          Top = 425
          Width = 118
          Height = 1
          DrawKind = dkLine
        end
        object RLLabel74: TRLLabel
          Left = 455
          Top = 321
          Width = 129
          Height = 10
          Caption = 'Texto de responsabilidade do cedente:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel75: TRLLabel
          Left = 856
          Top = 462
          Width = 74
          Height = 7
          Caption = 'Autentica'#231#227'o no verso'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel76: TRLLabel
          Left = 943
          Top = 462
          Width = 79
          Height = 7
          Caption = 'Ficha de Compensa'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel77: TRLLabel
          Left = 999
          Top = 506
          Width = 32
          Height = 7
          Alignment = taRightJustify
          Caption = 'SED Soft'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel78: TRLLabel
          Left = 963
          Top = 515
          Width = 68
          Height = 7
          Alignment = taRightJustify
          Caption = 'www.sedsoft.com.br'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
  end
  object QryBancos: TFDQuery
    Connection = BancodeDados.FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      'select * from BANCOS where banco_id=:bc_id')
    Left = 84
    Top = 280
    ParamData = <
      item
        Name = 'bc_id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QryBancosBANCO_ID: TIntegerField
      FieldName = 'BANCO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QryBancosCODIGO_BANCO: TIntegerField
      FieldName = 'CODIGO_BANCO'
    end
    object QryBancosDIG_BANCO: TIntegerField
      FieldName = 'DIG_BANCO'
    end
    object QryBancosLOGOMARCA: TBlobField
      FieldName = 'LOGOMARCA'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object QryBancosCONVENIO: TIntegerField
      FieldName = 'CONVENIO'
    end
    object QryBancosNOSSO_NUMERO: TIntegerField
      FieldName = 'NOSSO_NUMERO'
    end
    object QryBancosCARTEIRA: TIntegerField
      FieldName = 'CARTEIRA'
    end
    object QryBancosDIAS_TOLERANCIA: TIntegerField
      FieldName = 'DIAS_TOLERANCIA'
    end
    object QryBancosUSR_CAD: TIntegerField
      FieldName = 'USR_CAD'
    end
    object QryBancosUSUARIO_ID: TIntegerField
      FieldName = 'USUARIO_ID'
    end
    object QryBancosDT_ALTERADO: TDateField
      FieldName = 'DT_ALTERADO'
    end
    object QryBancosMENSAGEM_1: TMemoField
      FieldName = 'MENSAGEM_1'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object QryBancosMENSAGEM_2: TMemoField
      FieldName = 'MENSAGEM_2'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object QryBancosMENSAGEM_3: TMemoField
      FieldName = 'MENSAGEM_3'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object QryBancosOBSERVACAO_1: TMemoField
      FieldName = 'OBSERVACAO_1'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object QryBancosNOME_CEDENTE: TStringField
      FieldName = 'NOME_CEDENTE'
      Size = 120
    end
    object QryBancosLOCAL_PAGAMENTO: TStringField
      FieldName = 'LOCAL_PAGAMENTO'
      Size = 240
    end
    object QryBancosHOMOLOGACAO: TSmallintField
      FieldName = 'HOMOLOGACAO'
    end
    object QryBancosDESC_TOL: TSmallintField
      FieldName = 'DESC_TOL'
    end
    object QryBancosDIAS_BAIXAR_BANCO: TSmallintField
      FieldName = 'DIAS_BAIXAR_BANCO'
    end
    object QryBancosBANCO_NOME: TStringField
      FieldName = 'BANCO_NOME'
      Origin = 'BANCO_NOME'
      Size = 60
    end
    object QryBancosAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Origin = 'AGENCIA'
      Size = 60
    end
    object QryBancosDIG_AGENCIA: TStringField
      FieldName = 'DIG_AGENCIA'
      Origin = 'DIG_AGENCIA'
      Size = 1
    end
    object QryBancosDIG_CONTA_CORRENTE: TStringField
      FieldName = 'DIG_CONTA_CORRENTE'
      Origin = 'DIG_CONTA_CORRENTE'
      Size = 1
    end
    object QryBancosCODIGO_CEDENTE: TStringField
      FieldName = 'CODIGO_CEDENTE'
      Origin = 'CODIGO_CEDENTE'
      Size = 60
    end
    object QryBancosDIG_COD_CEDENTE: TStringField
      FieldName = 'DIG_COD_CEDENTE'
      Origin = 'DIG_COD_CEDENTE'
      Size = 1
    end
    object QryBancosCONTA_CORRENTE: TStringField
      FieldName = 'CONTA_CORRENTE'
      Origin = 'CONTA_CORRENTE'
      Size = 60
    end
    object QryBancosMENS_CABECALHO: TStringField
      FieldName = 'MENS_CABECALHO'
      Origin = 'MENS_CABECALHO'
      Size = 60
    end
    object QryBancosABREV: TStringField
      FieldName = 'ABREV'
      Origin = 'ABREV'
      Size = 9
    end
  end
  object qryBoletos: TFDQuery
    Connection = BancodeDados.FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      
        'select b.*, c.nome as cliente, coalesce(b.valor_mensal, 0) + coa' +
        'lesce(b.valor_lic, 0) as valor_integral'
      'from boletos b'
      'left join clientes c on (c.cli_id = b.cli_id)'
      'left join livro_caixa l on (l.caixa_id = b.caixa_id)'
      'where 1=1 and'
      'b.boleto_id=0')
    Left = 30
    Top = 280
    object qryBoletosBOLETO_ID: TIntegerField
      FieldName = 'BOLETO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryBoletosDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qryBoletosACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object qryBoletosVALOR_APAGAR: TFloatField
      FieldName = 'VALOR_APAGAR'
    end
    object qryBoletosJUROS: TFloatField
      FieldName = 'JUROS'
    end
    object qryBoletosMULTA: TFloatField
      FieldName = 'MULTA'
    end
    object qryBoletosVALOR_PAGO: TFloatField
      FieldName = 'VALOR_PAGO'
    end
    object qryBoletosVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object qryBoletosRECEBIMENTO: TDateField
      FieldName = 'RECEBIMENTO'
    end
    object qryBoletosCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
    end
    object qryBoletosGRADE_ID: TIntegerField
      FieldName = 'GRADE_ID'
    end
    object qryBoletosBANCO_ID: TIntegerField
      FieldName = 'BANCO_ID'
    end
    object qryBoletosRETORNO_ID: TIntegerField
      FieldName = 'RETORNO_ID'
    end
    object qryBoletosOBS: TMemoField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qryBoletosOBS_BOLETO: TMemoField
      FieldName = 'OBS_BOLETO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qryBoletosUSR_CAD: TIntegerField
      FieldName = 'USR_CAD'
    end
    object qryBoletosUSR_ID: TIntegerField
      FieldName = 'USR_ID'
    end
    object qryBoletosDT_ALTERADO: TDateField
      FieldName = 'DT_ALTERADO'
    end
    object qryBoletosEMISSAO: TDateField
      FieldName = 'EMISSAO'
    end
    object qryBoletosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 60
    end
    object qryBoletosDESCRICAO_PAGO: TStringField
      FieldName = 'DESCRICAO_PAGO'
      Origin = 'DESCRICAO_PAGO'
    end
    object qryBoletosSITUACAO_BOLETO: TStringField
      FieldName = 'SITUACAO_BOLETO'
      Origin = 'SITUACAO_BOLETO'
    end
    object qryBoletosPARCELA: TStringField
      FieldName = 'PARCELA'
      Origin = 'PARCELA'
      Size = 9
    end
    object qryBoletosVALOR_INTEGRAL: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_INTEGRAL'
      Origin = 'VALOR_INTEGRAL'
      ProviderFlags = []
      ReadOnly = True
    end
  end
end
