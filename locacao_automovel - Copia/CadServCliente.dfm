object CadServClienteForm: TCadServClienteForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Servi'#231'o'
  ClientHeight = 428
  ClientWidth = 377
  Color = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 20
    Top = 185
    Width = 104
    Height = 13
    Alignment = taRightJustify
    Caption = 'In'#237'cio de Contrato:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 75
    Top = 163
    Width = 49
    Height = 13
    Alignment = taRightJustify
    Caption = 'Dia Venc.:'
  end
  object Label2: TLabel
    Left = 20
    Top = 142
    Width = 104
    Height = 14
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Valor Semanal:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel
    Left = 81
    Top = 59
    Width = 43
    Height = 13
    Alignment = taRightJustify
    Caption = 'Ve'#237'culo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 20
    Top = 226
    Width = 104
    Height = 14
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Observa'#231#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label9: TLabel
    Left = 20
    Top = 79
    Width = 104
    Height = 14
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Placa:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label10: TLabel
    Left = 20
    Top = 100
    Width = 104
    Height = 14
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Modelo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label11: TLabel
    Left = 20
    Top = 121
    Width = 104
    Height = 14
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Marca:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label5: TLabel
    Left = 26
    Top = 284
    Width = 98
    Height = 13
    Alignment = taRightJustify
    Caption = 'Grade Financeira:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 91
    Top = 305
    Width = 33
    Height = 13
    Alignment = taRightJustify
    Caption = 'Banco:'
  end
  object Label15: TLabel
    Left = 191
    Top = 163
    Width = 119
    Height = 13
    Alignment = taRightJustify
    Caption = 'Toler'#226'ncia Mul/Jur(Dias):'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label16: TLabel
    Left = 25
    Top = 205
    Width = 99
    Height = 13
    Alignment = taRightJustify
    Caption = 'Final de Contrato:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 397
    Width = 377
    Height = 31
    Align = alBottom
    BevelOuter = bvNone
    Color = clSilver
    ParentBackground = False
    TabOrder = 13
    object DBText5: TDBText
      Left = 51
      Top = 8
      Width = 43
      Height = 14
      AutoSize = True
      DataField = 'C_S_C_ID'
      DataSource = BancodeDados.dsContServClien
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 6
      Top = 8
      Width = 42
      Height = 14
      Caption = 'C'#243'digo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BtGravar: TButton
      Left = 292
      Top = 2
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = '&Gravar'
      TabOrder = 0
      OnClick = BtGravarClick
    end
    object BtCancelar: TButton
      Left = 213
      Top = 2
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 287
    Top = 180
    Width = 80
    Height = 20
    Cursor = crHandPoint
    DataSource = BancodeDados.dsContServClien
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Flat = True
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 15
    OnClick = DBNavigator1Click
  end
  object EditDtInicioContrato: TSedDbDateEdit
    Left = 127
    Top = 182
    Width = 121
    Height = 19
    DataField = 'DT_CONTRATO'
    DataSource = BancodeDados.dsContServClien
    MaxLength = 10
    TabOrder = 7
  end
  object EditDiaVenc: TDBComboBox
    Left = 127
    Top = 160
    Width = 55
    Height = 21
    BevelKind = bkFlat
    DataField = 'VENC_DIA'
    DataSource = BancodeDados.dsContServClien
    Items.Strings = (
      '1'
      '2'
      '3'
      '4'
      '5'
      '6'
      '7'
      '8'
      '9'
      '10'
      '11'
      '12'
      '13'
      '14'
      '15'
      '16'
      '17'
      '18'
      '19'
      '20'
      '21'
      '22'
      '23'
      '24'
      '25'
      '26'
      '27'
      '28'
      '29'
      '30'
      '31')
    TabOrder = 5
  end
  object EditValorMensal: TDBEdit
    Left = 127
    Top = 139
    Width = 106
    Height = 20
    AutoSelect = False
    DataField = 'VALOR'
    DataSource = BancodeDados.dsContServClien
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object GroupBox1: TGroupBox
    Left = 574
    Top = 43
    Width = 343
    Height = 63
    Caption = 'Representante / Forcecedor'
    TabOrder = 14
    object Label8: TLabel
      Left = 71
      Top = 32
      Width = 31
      Height = 13
      Caption = 'Nome:'
      Enabled = False
    end
    object EditRepresentante: TDBLookupComboBox
      Left = 105
      Top = 30
      Width = 220
      Height = 19
      Color = clWhite
      DataField = 'FORNE_ID'
      DataSource = BancodeDados.dsContServClien
      Enabled = False
      KeyField = 'FORNE_ID'
      ListField = 'NOME'
      ListSource = BancodeDados.DSForne
      NullValueKey = 46
      TabOrder = 0
    end
  end
  object EditVeiculo: TDBLookupComboBox
    Left = 127
    Top = 56
    Width = 240
    Height = 19
    Color = clWhite
    DataField = 'VEICULO_ID'
    DataSource = BancodeDados.dsContServClien
    KeyField = 'VEICULO_ID'
    ListField = 'PLACA;MODELO;MARCA'
    ListSource = BancodeDados.dsVeiculos
    NullValueKey = 46
    TabOrder = 0
    OnExit = EditVeiculoExit
  end
  object EditObservacao: TDBMemo
    Left = 127
    Top = 222
    Width = 240
    Height = 57
    DataField = 'OBS'
    DataSource = BancodeDados.dsContServClien
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
  end
  object EditPlaca: TDBEdit
    Left = 127
    Top = 76
    Width = 114
    Height = 20
    AutoSelect = False
    DataField = 'Placa'
    DataSource = BancodeDados.dsContServClien
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object EditModelo: TDBEdit
    Left = 127
    Top = 97
    Width = 240
    Height = 20
    AutoSelect = False
    DataField = 'Modelo'
    DataSource = BancodeDados.dsContServClien
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object EditMarca: TDBEdit
    Left = 127
    Top = 118
    Width = 240
    Height = 20
    AutoSelect = False
    DataField = 'Marca'
    DataSource = BancodeDados.dsContServClien
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object EditGrade: TDBLookupComboBox
    Left = 127
    Top = 281
    Width = 240
    Height = 19
    Color = clWhite
    DataField = 'GRADE_ID'
    DataSource = BancodeDados.dsContServClien
    KeyField = 'GRADE_ID'
    ListField = 'DESCRICAO'
    ListSource = BancodeDados.DSGrade
    NullValueKey = 46
    TabOrder = 10
  end
  object EditBanco: TDBLookupComboBox
    Left = 127
    Top = 302
    Width = 240
    Height = 19
    Color = clWhite
    DataField = 'BANCO_ID'
    DataSource = BancodeDados.dsContServClien
    KeyField = 'BANCO_ID'
    ListField = 'BANCO_NOME'
    ListSource = BancodeDados.DSBancos
    NullValueKey = 46
    TabOrder = 11
  end
  object GroupBox2: TGroupBox
    Left = 38
    Top = 321
    Width = 329
    Height = 73
    Caption = 'Situa'#231#227'o:'
    TabOrder = 12
    object Label12: TLabel
      Left = 59
      Top = 45
      Width = 27
      Height = 13
      Alignment = taRightJustify
      Caption = 'Data:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = -23
      Top = 24
      Width = 109
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Situa'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object EditDataSituacao: TSedDbDateEdit
      Left = 89
      Top = 43
      Width = 121
      Height = 19
      DataField = 'DT_SIT'
      DataSource = BancodeDados.dsContServClien
      Enabled = False
      MaxLength = 10
      TabOrder = 1
    end
    object EditSituacao: TSedDBComboBox
      Left = 89
      Top = 21
      Width = 121
      Height = 20
      Style = csOwnerDrawFixed
      BevelKind = bkFlat
      Ctl3D = False
      DataField = 'SIT'
      DataSource = BancodeDados.dsContServClien
      ItemHeight = 14
      Items.Strings = (
        'Locado'
        'Cancelado'
        'Devolvido')
      ParentCtl3D = False
      Values.Strings = (
        '1'
        '2'
        '3')
      TabOrder = 0
    end
  end
  object EditMulJur: TDBEdit
    Left = 312
    Top = 160
    Width = 55
    Height = 20
    AutoSelect = False
    DataField = 'DIAS_TOL'
    DataSource = BancodeDados.dsContServClien
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object EditDtFinalContrato: TSedDbDateEdit
    Left = 127
    Top = 202
    Width = 121
    Height = 19
    DataField = 'DT_CONTRATO_FIM'
    DataSource = BancodeDados.dsContServClien
    MaxLength = 10
    TabOrder = 8
  end
  object qryValor: TFDQuery
    Connection = BancodeDados.FDConnection1
    SQL.Strings = (
      
        'select coalesce(c.vl_mult_contratual,0) as vl_mult_contratual, c' +
        'oalesce(c.valor,0) as valor from config c where c.conf_id=:ID')
    Left = 65532
    Top = 308
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        FDDataType = dtInt32
        ParamType = ptInput
      end>
    object qryValorVL_MULT_CONTRATUAL: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'VL_MULT_CONTRATUAL'
      Origin = 'VL_MULT_CONTRATUAL'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryValorVALOR: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR'
      Origin = 'VALOR'
      ProviderFlags = []
      ReadOnly = True
    end
  end
end