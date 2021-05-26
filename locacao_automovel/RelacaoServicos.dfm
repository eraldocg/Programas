object RelacaoServicosForm: TRelacaoServicosForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Rela'#231#227'o de Servi'#231'os'
  ClientHeight = 263
  ClientWidth = 736
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 232
    Width = 736
    Height = 31
    Align = alBottom
    BevelOuter = bvNone
    Color = clSilver
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = -8
    ExplicitTop = 234
    DesignSize = (
      736
      31)
    object BtOk: TButton
      Left = 649
      Top = 3
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = '&Ok'
      ModalResult = 1
      TabOrder = 0
    end
    object BtNovo: TButton
      Left = 492
      Top = 3
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = '&Novo'
      TabOrder = 2
      OnClick = BtNovoClick
    end
    object BtCancelar: TButton
      Left = 570
      Top = 3
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Cancel = True
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 1
    end
    object BtImprimir: TButton
      Left = 414
      Top = 3
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Contrato'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BtImprimirClick
    end
    object btLocacaoVeic: TButton
      Left = 336
      Top = 3
      Width = 73
      Height = 25
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = 'Pagamento'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = btLocacaoVeicClick
    end
  end
  object DBGrid4: TSedDBGrid
    Left = 0
    Top = 0
    Width = 736
    Height = 232
    Align = alClient
    DataSource = BancodeDados.dsContServClien
    FixedColor = clSilver
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick]
    ParentFont = False
    PopupMenu = PopupMenu2
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    OnDrawColumnCell = DBGrid4DrawColumnCell
    OnDblClick = DBGrid4DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'DT_CONTRATO'
        ReadOnly = True
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Placa'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Modelo'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Marca'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Situacao_Nome'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DT_CAD'
        Visible = True
      end>
  end
  object PopupMenu2: TPopupMenu
    Left = 162
    Top = 150
    object Excluir1: TMenuItem
      Caption = 'Excluir'
      OnClick = Excluir1Click
    end
  end
end
