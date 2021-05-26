object ListarRetornoForm: TListarRetornoForm
  Left = 508
  Top = 292
  BorderIcons = [biSystemMenu]
  Caption = 'Lista de Retornos'
  ClientHeight = 262
  ClientWidth = 369
  Color = clSilver
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 14
  object DBGrid1: TSedDBGrid
    Left = 0
    Top = 0
    Width = 369
    Height = 232
    Align = alClient
    DataSource = DSTemp2
    FixedColor = clGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWhite
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    OnCellClick = DBGrid1CellClick
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnKeyDown = DBGrid1KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'ATIVO'
        Title.Caption = ' '
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ARQUIVO'
        Width = 213
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA2'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 232
    Width = 369
    Height = 30
    Align = alBottom
    BevelOuter = bvNone
    Color = clGray
    ParentBackground = False
    TabOrder = 1
    DesignSize = (
      369
      30)
    object btOk: TButton
      Left = 290
      Top = 3
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = 'Ok'
      ModalResult = 1
      TabOrder = 0
    end
    object btProcurar: TButton
      Left = 212
      Top = 3
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = 'Procurar'
      ModalResult = 6
      TabOrder = 1
    end
    object btCancelar: TButton
      Left = 134
      Top = 3
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Cancel = True
      Caption = 'Cancelar'
      ModalResult = 2
      TabOrder = 2
    end
    object ckBanco: TCheckBox
      Left = 139
      Top = 15
      Width = 132
      Height = 17
      Cursor = crHandPoint
      Caption = 'Arquivos deste banco?'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8454143
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 3
      Visible = False
      OnClick = ckBancoClick
    end
    object chkTodos: TCheckBox
      Left = 7
      Top = 7
      Width = 118
      Height = 17
      Cursor = crHandPoint
      Caption = '(Des)Marcar todos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8454143
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = chkTodosClick
    end
  end
  object Temp: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 42
    Top = 38
    object TempDATA: TIntegerField
      FieldName = 'DATA'
    end
    object TempARQUIVO: TStringField
      FieldName = 'ARQUIVO'
      Size = 254
    end
  end
  object Temp2: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 72
    Top = 38
    object Temp2ATIVO: TBooleanField
      FieldName = 'ATIVO'
    end
    object Temp2TIPO: TSmallintField
      FieldName = 'TIPO'
    end
    object Temp2DATA: TIntegerField
      FieldName = 'DATA'
    end
    object Temp2DATA2: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA2'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object Temp2ARQUIVO: TStringField
      DisplayLabel = 'Arquivo'
      FieldName = 'ARQUIVO'
      Size = 254
    end
    object Temp2ARQUIVO_COMPLETO: TStringField
      FieldName = 'ARQUIVO_COMPLETO'
      Size = 254
    end
  end
  object DSTemp2: TDataSource
    DataSet = Temp2
    Left = 104
    Top = 36
  end
end
