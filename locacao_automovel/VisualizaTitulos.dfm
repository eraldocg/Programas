object VisualizaTitulosForm: TVisualizaTitulosForm
  Left = 297
  Top = 280
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Lista de T'#237'tulos'
  ClientHeight = 316
  ClientWidth = 670
  Color = clSilver
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TSedDBGrid
    Left = 0
    Top = 0
    Width = 670
    Height = 287
    Align = alClient
    DataSource = BancodeDados.DSBoletos
    FixedColor = clGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles,dgIndicator,dgColumnResize,dgColLines,dgTabs,dgConfirmDelete,dgCancelOnExit,dgTitleClick]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWhite
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'BOLETO_ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cliente'
        Width = 211
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Width = 184
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PARCELA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_INTEGRAL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_APAGAR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_PAGO'
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SITUACAO_BOLETO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VENCIMENTO'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RECEBIMENTO'
        Width = 80
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 287
    Width = 670
    Height = 29
    Align = alBottom
    BevelOuter = bvNone
    Color = clGray
    ParentBackground = False
    TabOrder = 1
    object BTCancelar: TButton
      Left = 589
      Top = 3
      Width = 75
      Height = 25
      Cancel = True
      Caption = 'Ok'
      ModalResult = 2
      TabOrder = 0
    end
  end
end
