object CsCamposForm: TCsCamposForm
  Left = 429
  Top = 229
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 
    'Selecione e clique no bot'#227'o inserir, ou d'#234' um clique duplo sobre' +
    ' a Vari'#225'vel/Campo.'
  ClientHeight = 517
  ClientWidth = 834
  Color = clSilver
  Ctl3D = False
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel
    Left = 0
    Top = 488
    Width = 834
    Height = 29
    Align = alBottom
    BevelOuter = bvNone
    Color = clGray
    ParentBackground = False
    TabOrder = 0
    object Label2: TLabel
      Left = 447
      Top = 7
      Width = 200
      Height = 14
      Caption = '<< Digite a descri'#231#227'o para pesquisar.'
      Color = clGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object BtCancelar: TButton
      Left = 673
      Top = 3
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Cancel = True
      Caption = '&Fechar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ModalResult = 2
      ParentFont = False
      TabOrder = 1
    end
    object btInserir: TButton
      Left = 753
      Top = 3
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Inserir'
      TabOrder = 0
      OnClick = btInserirClick
    end
    object EditConsulta: TEdit
      Left = 226
      Top = 4
      Width = 218
      Height = 21
      AutoSize = False
      TabOrder = 2
      OnChange = EditConsultaChange
    end
    object cbVisualizar: TComboBox
      Left = 7
      Top = 4
      Width = 219
      Height = 21
      BevelKind = bkFlat
      Style = csOwnerDrawFixed
      ItemHeight = 15
      ItemIndex = 0
      TabOrder = 3
      Text = 'SELECIONE UMA CATEGORIA'
      OnChange = cbVisualizarChange
      Items.Strings = (
        'SELECIONE UMA CATEGORIA'
        'INFORMA'#199#213'ES DO CLIENTE'
        'SELECIONE DO VE'#205'CULO'
        'INFORMA'#199#213'ES FINANCEIRA'
        'INFORMA'#199#213'ES DE T'#205'TULOS')
    end
  end
  object ListView1_: TListView
    Left = 294
    Top = 86
    Width = 231
    Height = 199
    Columns = <
      item
        Caption = 'Descri'#231#227'o'
        Width = 110
      end
      item
        Caption = 'Campo'
        Width = 130
      end
      item
        AutoSize = True
        Caption = 'Informa'#231#227'o do campo'
        WidthType = (
          -11)
      end>
    GridLines = True
    RowSelect = True
    TabOrder = 1
    ViewStyle = vsReport
    Visible = False
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 834
    Height = 488
    Align = alClient
    BevelOuter = bvNone
    Color = clSilver
    TabOrder = 2
    object DBGrid1: TSedDBGrid
      Left = 0
      Top = 0
      Width = 834
      Height = 488
      Align = alClient
      DataSource = CadDocHTMLForm.dsTemp
      FixedColor = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnDblClick = btInserirClick
      Columns = <
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Width = 244
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CAMPO'
          Width = 169
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'INFRMACOES'
          Width = 388
          Visible = True
        end>
    end
  end
end
