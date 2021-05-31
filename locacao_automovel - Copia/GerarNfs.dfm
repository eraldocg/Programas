object GerarNfsForm: TGerarNfsForm
  Left = 322
  Top = 238
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Assistente para gera'#231#227'o de Notas Fiscais de Servi'#231'os'
  ClientHeight = 551
  ClientWidth = 794
  Color = clSilver
  Ctl3D = False
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  KeyPreview = True
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel
    Left = 0
    Top = 519
    Width = 794
    Height = 32
    Align = alBottom
    BevelOuter = bvNone
    Color = 7562340
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    ExplicitLeft = -8
    DesignSize = (
      794
      32)
    object lbContadorN: TLabel
      Left = 218
      Top = 9
      Width = 184
      Height = 14
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = 'Registro(s) Encontrado(s): 000000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8454143
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Gauge2: TGauge
      Left = 411
      Top = 4
      Width = 215
      Height = 13
      Progress = 0
      Visible = False
    end
    object Gauge1: TGauge
      Left = 411
      Top = 18
      Width = 215
      Height = 13
      Progress = 0
      Visible = False
    end
    object BtFechar: TButton
      Left = 713
      Top = 5
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Cancel = True
      Caption = '&Fechar'
      ModalResult = 2
      TabOrder = 0
    end
    object chTodos: TCheckBox
      Left = 8
      Top = 9
      Width = 125
      Height = 16
      Cursor = crHandPoint
      Caption = '(des)marcar todos'
      Color = clGray
      Font.Charset = ANSI_CHARSET
      Font.Color = 8454143
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 1
      OnClick = chTodosClick
    end
    object btn_importar: TButton
      Left = 632
      Top = 6
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = 'Importar XLS'
      TabOrder = 2
      OnClick = btn_importarClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 794
    Height = 95
    Align = alTop
    BevelOuter = bvNone
    Color = 7562340
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      794
      95)
    object Label6: TLabel
      Left = 611
      Top = 13
      Width = 26
      Height = 14
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = 'Filtro:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 566
    end
    object Label5: TLabel
      Left = 588
      Top = 48
      Width = 48
      Height = 14
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = 'Condi'#231#227'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object BtExecutar: TSpeedButton
      Left = 189
      Top = 28
      Width = 18
      Height = 19
      Cursor = crHandPoint
      Caption = 'F3'
      Font.Charset = BALTIC_CHARSET
      Font.Color = clBlack
      Font.Height = -8
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = BtExecutarClick
    end
    object Label1: TLabel
      Left = 59
      Top = 9
      Width = 25
      Height = 14
      Alignment = taRightJustify
      Caption = 'Data:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 68
      Top = 31
      Width = 16
      Height = 14
      Alignment = taRightJustify
      Caption = 'De:'
    end
    object Label7: TLabel
      Left = 64
      Top = 51
      Width = 20
      Height = 14
      Alignment = taRightJustify
      Caption = 'At'#233':'
    end
    object Label2: TLabel
      Left = 16
      Top = 72
      Width = 68
      Height = 14
      Alignment = taRightJustify
      Caption = 'Compet'#234'ncia: '
    end
    object CBOpcao: TComboBox
      Left = 642
      Top = 11
      Width = 146
      Height = 19
      BevelKind = bkFlat
      BevelOuter = bvNone
      Style = csOwnerDrawFixed
      Anchors = [akTop, akRight]
      Ctl3D = False
      ItemHeight = 13
      ItemIndex = 1
      ParentCtl3D = False
      TabOrder = 8
      Text = 'Cliente'
      Items.Strings = (
        'C'#243'digo'
        'Cliente')
    end
    object EditConsulta: TEdit
      Left = 603
      Top = 70
      Width = 185
      Height = 17
      Anchors = [akTop, akRight]
      BorderStyle = bsNone
      TabOrder = 10
      OnKeyDown = EditConsultaKeyDown
    end
    object CBTipo: TComboBox
      Left = 642
      Top = 45
      Width = 146
      Height = 19
      BevelKind = bkFlat
      BevelOuter = bvNone
      Style = csOwnerDrawFixed
      Anchors = [akTop, akRight]
      ItemHeight = 13
      ItemIndex = 1
      TabOrder = 9
      Text = 'Contendo...'
      Items.Strings = (
        'Come'#231'ando por...'
        'Contendo...'
        'Igual '#224'...')
    end
    object cbCampo: TComboBox
      Left = 85
      Top = 5
      Width = 137
      Height = 22
      BevelKind = bkFlat
      Style = csOwnerDrawFixed
      ItemIndex = 1
      TabOrder = 0
      Text = 'Recebimento'
      OnChange = BtExecutarClick
      Items.Strings = (
        'Cr'#233'dito'
        'Recebimento'
        'Vencimento')
    end
    object rgDataRPS_: TRadioGroup
      Left = 430
      Top = 1
      Width = 456
      Height = 41
      Anchors = [akTop, akRight]
      Caption = 'Op'#231#227'o de data do RPS'
      Columns = 2
      ItemIndex = 1
      Items.Strings = (
        'Data atual'
        'Data de cr'#233'dito do t'#237'tulo')
      TabOrder = 7
      Visible = False
    end
    object ckJur: TCheckBox
      Left = 226
      Top = 52
      Width = 212
      Height = 17
      Cursor = crHandPoint
      Caption = 'Somente recebimento na conta jur'#237'dica'
      Checked = True
      State = cbChecked
      TabOrder = 5
      OnClick = BtExecutarClick
    end
    object ckCliFat: TCheckBox
      Left = 226
      Top = 74
      Width = 178
      Height = 17
      Cursor = crHandPoint
      Caption = 'Somente clientes p/ faturamento'
      Checked = True
      State = cbChecked
      TabOrder = 6
      OnClick = BtExecutarClick
    end
    object dtDe: TSedDateEdit
      Left = 85
      Top = 28
      Width = 100
      Height = 20
      OnAfterAcceptDateTime = BtExecutarClick
      MaxLength = 10
      TabOrder = 1
    end
    object dtAte: TSedDateEdit
      Left = 85
      Top = 49
      Width = 100
      Height = 20
      OnAfterAcceptDateTime = BtExecutarClick
      MaxLength = 10
      TabOrder = 2
    end
    object SedDateEdit1: TSedDateEdit
      Left = 85
      Top = 70
      Width = 100
      Height = 20
      MaxLength = 10
      TabOrder = 3
    end
    object CheckBox1: TCheckBox
      Left = 226
      Top = 29
      Width = 212
      Height = 17
      Cursor = crHandPoint
      Caption = 'Exibir boletos quitados manualmente'
      TabOrder = 4
      OnClick = BtExecutarClick
    end
  end
  object DBGrid1: TSedDBGrid
    Left = 0
    Top = 95
    Width = 794
    Height = 424
    Align = alClient
    DataSource = dsTemp
    FixedColor = clGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick]
    ParentFont = False
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWhite
    TitleFont.Height = -11
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    OnCellClick = DBGrid1CellClick
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnDblClick = VisualizarTtulos1Click
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
        FieldName = 'CLI_ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cliente'
        Width = 293
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONTADOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CREDITO'
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_FATURA'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_PAGO'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_APAGAR_ORIG'
        Visible = True
      end>
  end
  object StringGrid1: TStringGrid
    Left = 8
    Top = 136
    Width = 171
    Height = 113
    TabOrder = 3
    Visible = False
    RowHeights = (
      24
      20
      24
      24
      24)
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 255
    Width = 171
    Height = 122
    DataSource = DataSource1
    TabOrder = 4
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    Visible = False
  end
  object pnl_alterar_data_competencia: TPanel
    Left = 260
    Top = 244
    Width = 300
    Height = 121
    BevelOuter = bvNone
    Color = clSilver
    ParentBackground = False
    TabOrder = 5
    Visible = False
    DesignSize = (
      300
      121)
    object Panel5: TPanel
      Left = 0
      Top = 0
      Width = 300
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Alterar a Data de Compet'#234'ncia das Notas para:'
      Color = 8404992
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 73
      Top = 88
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 154
      Top = 88
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = '&Alterar'
      TabOrder = 2
      OnClick = Button2Click
    end
    object cp_data_competencia: TSedDateEdit
      Left = 102
      Top = 56
      Width = 100
      Height = 20
      MaxLength = 10
      TabOrder = 3
    end
  end
  object dsTemp: TDataSource
    DataSet = Temp
    Left = 234
    Top = 212
  end
  object PopupMenu1: TPopupMenu
    OnPopup = PopupMenu1Popup
    Left = 350
    Top = 246
    object VisualizarTtulos1: TMenuItem
      Caption = 'Visualizar T'#237'tulos'
      OnClick = VisualizarTtulos1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object FaturarNotaFiscaldeServios1: TMenuItem
      Caption = 'Faturar Nota Fiscal de Servi'#231'os'
      OnClick = FaturarNotaFiscaldeServios1Click
    end
  end
  object MainMenu1: TMainMenu
    Left = 296
    Top = 258
    object F31: TMenuItem
      Caption = 'F3'
      ShortCut = 114
      Visible = False
      OnClick = BtExecutarClick
    end
  end
  object Temp: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 252
    Top = 250
    object TempCLI_ID: TIntegerField
      DisplayLabel = 'C'#243'd. Cli.'
      FieldName = 'CLI_ID'
      DisplayFormat = '000000'
    end
    object TempCONTADOR: TIntegerField
      DisplayLabel = 'N'#186' T'#237'tulos'
      FieldName = 'CONTADOR'
    end
    object TempVL_INT: TCurrencyField
      DisplayLabel = 'Vl. Integral'
      FieldName = 'VL_INT'
      DisplayFormat = ',0.00'
    end
    object TempVL_PAGO: TCurrencyField
      DisplayLabel = 'Vl. Pago'
      FieldName = 'VL_PAGO'
      DisplayFormat = ',0.00'
    end
    object TempVL_FATURA: TCurrencyField
      DisplayLabel = 'Vl. A Faturar'
      FieldName = 'VL_FATURA'
      DisplayFormat = ',0.00'
    end
    object TempCREDITO: TDateField
      DisplayLabel = 'Cr'#233'dito'
      FieldName = 'CREDITO'
    end
    object TempATIVO: TBooleanField
      DisplayLabel = 'Recebimento'
      FieldName = 'ATIVO'
    end
    object TempVALOR_APAGAR_ORIG: TCurrencyField
      DisplayLabel = 'Vl. A Pag. Orig.'
      FieldName = 'VALOR_APAGAR_ORIG'
      DisplayFormat = ',0.00'
    end
    object TempFAT_NOTA: TIntegerField
      FieldName = 'FAT_NOTA'
    end
    object TempCLIENTE: TStringField
      FieldName = 'Cliente'
      Size = 60
    end
    object TempCNPJ: TStringField
      FieldName = 'CNPJ'
    end
  end
  object qryCli: TFDQuery
    Connection = BancodeDados.FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      
        'select (select first 1 cli_id from clientes where cnpj = c.cnpj ' +
        ') as cli_id, c.cnpj, c.nome, c.fat_nota, count(b.boleto_id) as c' +
        'ontador, sum(b.valor_integral) as vl_int, sum(b.valor_pago) as v' +
        'l_pago, sum(b.valor_apagar_orig) as valor_apagar_orig from bolet' +
        'os b'
      'left join clientes c on (c.cli_id = b.cli_id)'
      
        'where b.situacao_boleto = '#39'RECEBIDO'#39' and coalesce(b.nfs_id, 0) =' +
        ' 0'
      'and b.recebimento between '#39'01/01/2011'#39' and '#39'01/31/2011'#39
      'group by c.cnpj, c.nome, c.fat_nota')
    Left = 358
    Top = 200
    object qryCliCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
      ReadOnly = True
    end
    object qryCliCONTADOR: TIntegerField
      FieldName = 'CONTADOR'
      ReadOnly = True
    end
    object qryCliVL_INT: TFloatField
      FieldName = 'VL_INT'
      ReadOnly = True
    end
    object qryCliVL_PAGO: TFloatField
      FieldName = 'VL_PAGO'
      ReadOnly = True
    end
    object qryCliVALOR_APAGAR_ORIG: TFloatField
      FieldName = 'VALOR_APAGAR_ORIG'
      ProviderFlags = []
    end
    object qryCliFAT_NOTA: TSmallintField
      FieldName = 'FAT_NOTA'
    end
    object qryCliCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Size = 19
    end
    object qryCliNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 60
    end
  end
  object qryDtReceb: TFDQuery
    Connection = BancodeDados.FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      'select recebimento from BOLETOS')
    Left = 442
    Top = 192
  end
  object dsPlanilhaNotas: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 592
    Top = 224
  end
  object dsPlanilhaNomes: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 570
    Top = 298
  end
  object OpenDialog1: TOpenDialog
    Left = 664
    Top = 232
  end
  object DataSource1: TDataSource
    DataSet = Nfs_nao_importadas
    Left = 696
    Top = 280
  end
  object OpenDialog2: TOpenDialog
    Left = 632
    Top = 336
  end
  object Nfs_nao_importadas: TClientDataSet
    PersistDataPacket.Data = {
      A40000009619E0BD010000001800000005000000000003000000A40004434E50
      4A01004900000001000557494454480200020028000944455343524943414F01
      0049000000010005574944544802000200640007454D495353414F0100490000
      0001000557494454480200020028000352505301004900000001000557494454
      480200020028000A56414C4F525F534552560100490000000100055749445448
      0200020028000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 576
    Top = 416
    object Nfs_nao_importadasCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 40
    end
    object Nfs_nao_importadasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object Nfs_nao_importadasEMISSAO: TStringField
      FieldName = 'EMISSAO'
      Size = 40
    end
    object Nfs_nao_importadasRPS: TStringField
      FieldName = 'RPS'
      Size = 40
    end
    object Nfs_nao_importadasVALOR_SERV: TStringField
      FieldName = 'VALOR_SERV'
      Size = 40
    end
  end
end
