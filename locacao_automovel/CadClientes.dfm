object CadClientesForm: TCadClientesForm
  Left = 381
  Top = 138
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Clientes'
  ClientHeight = 526
  ClientWidth = 517
  Color = clWhite
  Ctl3D = False
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel
    Left = 0
    Top = 496
    Width = 517
    Height = 30
    Align = alBottom
    BevelOuter = bvNone
    Color = clSilver
    ParentBackground = False
    TabOrder = 1
    object DBText5: TDBText
      Left = 50
      Top = 8
      Width = 63
      Height = 13
      DataField = 'CLI_ID'
      DataSource = BancodeDados.DsClientes
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 5
      Top = 7
      Width = 42
      Height = 14
      Caption = 'C'#243'digo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BTgravar: TButton
      Left = 435
      Top = 2
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = '&Gravar'
      TabOrder = 0
      OnClick = BTgravarClick
    end
    object BTfechar: TButton
      Left = 357
      Top = 2
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = '&Fechar'
      TabOrder = 1
      OnClick = BTfecharClick
    end
    object DBNavigator2: TDBNavigator
      Left = 273
      Top = 4
      Width = 80
      Height = 20
      DataSource = BancodeDados.DsClientes
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 2
      OnClick = DBNavigator2Click
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 517
    Height = 496
    ActivePage = TabSheet1
    Align = alClient
    Style = tsButtons
    TabOrder = 0
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'Dados principais'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label1: TLabel
        Left = 41
        Top = 10
        Width = 35
        Height = 14
        Alignment = taRightJustify
        Caption = 'Nome:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 46
        Top = 94
        Width = 31
        Height = 14
        Alignment = taRightJustify
        Caption = 'C.P.F.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 657
        Top = -7
        Width = 23
        Height = 14
        Alignment = taRightJustify
        Caption = 'Tipo:'
      end
      object Label31: TLabel
        Left = 286
        Top = 343
        Width = 148
        Height = 14
        Alignment = taRightJustify
        Caption = 'Dia Fixo p/ Expirar o Desconto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label33: TLabel
        Left = 294
        Top = 351
        Width = 148
        Height = 14
        Alignment = taRightJustify
        Caption = 'Dia Fixo p/ Expirar o Desconto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label36: TLabel
        Left = 820
        Top = 18
        Width = 73
        Height = 14
        Alignment = taRightJustify
        Caption = 'Insc. Municipal:'
      end
      object Label20: TLabel
        Left = 635
        Top = 65
        Width = 45
        Height = 14
        Alignment = taRightJustify
        Caption = 'Situa'#231#227'o:'
      end
      object Label4: TLabel
        Left = 647
        Top = 37
        Width = 35
        Height = 14
        Alignment = taRightJustify
        Caption = 'Cliente:'
      end
      object Label2: TLabel
        Left = 11
        Top = 32
        Width = 68
        Height = 14
        Alignment = taRightJustify
        Caption = 'Nascimento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 1
        Top = 53
        Width = 78
        Height = 14
        Alignment = taRightJustify
        Caption = 'Nacionalidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 218
        Top = 32
        Width = 30
        Height = 14
        Alignment = taRightJustify
        Caption = 'Sexo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 300
        Top = 53
        Width = 19
        Height = 14
        Alignment = taRightJustify
        Caption = 'U.F:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label75: TLabel
        Left = 8
        Top = 74
        Width = 71
        Height = 14
        Alignment = taRightJustify
        Caption = 'Naturalidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label29: TLabel
        Left = 22
        Top = 201
        Width = 58
        Height = 14
        Alignment = taRightJustify
        Caption = 'Estado Civil:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label46: TLabel
        Left = 31
        Top = 223
        Width = 49
        Height = 14
        Alignment = taRightJustify
        Caption = 'Profiss'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 1
        Top = 179
        Width = 78
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Passaporte:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label68: TLabel
        Left = 354
        Top = 158
        Width = 21
        Height = 14
        Alignment = taRightJustify
        Caption = 'U.F.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label49: TLabel
        Left = 1
        Top = 158
        Width = 78
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = #211'rg'#227'o Emissor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label48: TLabel
        Left = 1
        Top = 137
        Width = 78
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Expedi'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel
        Left = 1
        Top = 116
        Width = 78
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'RG:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label27: TLabel
        Left = 351
        Top = 246
        Width = 45
        Height = 14
        Alignment = taRightJustify
        Caption = 'Situa'#231#227'o:'
      end
      object EditNome: TDBEdit
        Left = 81
        Top = 8
        Width = 414
        Height = 20
        AutoSelect = False
        DataField = 'NOME'
        DataSource = BancodeDados.DsClientes
        TabOrder = 0
      end
      object EditCNPJ: TDBEdit
        Left = 81
        Top = 92
        Width = 167
        Height = 20
        DataField = 'CNPJ'
        DataSource = BancodeDados.DsClientes
        TabOrder = 6
        OnExit = EditCNPJExit
      end
      object EditTipo: TDBComboBox
        Left = 684
        Top = -9
        Width = 95
        Height = 20
        Style = csOwnerDrawFixed
        BevelKind = bkFlat
        DataField = 'TIPO'
        DataSource = BancodeDados.DsClientes
        ItemHeight = 14
        Items.Strings = (
          '012 - Pessoa F'#237'sica'
          '013 - Pessoa Jur'#237'dica')
        TabOrder = 18
      end
      object PageControl2: TPageControl
        Left = 0
        Top = 265
        Width = 509
        Height = 199
        ActivePage = TabSheet7
        Align = alBottom
        Style = tsButtons
        TabOrder = 16
        OnChange = PageControl2Change
        object TabSheet7: TTabSheet
          Caption = 'Endere'#231'o'
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Label8: TLabel
            Left = 14
            Top = 65
            Width = 59
            Height = 14
            Alignment = taRightJustify
            Caption = 'Logradouro:'
          end
          object Label9: TLabel
            Left = 41
            Top = 45
            Width = 32
            Height = 14
            Alignment = taRightJustify
            Caption = 'Bairro:'
          end
          object Label12: TLabel
            Left = 300
            Top = 105
            Width = 22
            Height = 14
            Alignment = taRightJustify
            Caption = 'CEP:'
          end
          object Label14: TLabel
            Left = 37
            Top = 85
            Width = 36
            Height = 14
            Alignment = taRightJustify
            Caption = 'Fone 1:'
          end
          object Label15: TLabel
            Left = 52
            Top = 105
            Width = 21
            Height = 14
            Alignment = taRightJustify
            Caption = 'Fax:'
          end
          object Label16: TLabel
            Left = 266
            Top = 85
            Width = 36
            Height = 14
            Alignment = taRightJustify
            Caption = 'Fone 2:'
          end
          object Label19: TLabel
            Left = 2
            Top = 125
            Width = 71
            Height = 14
            Alignment = taRightJustify
            Caption = 'E-mail Contato:'
          end
          object Label26: TLabel
            Left = 5
            Top = 145
            Width = 68
            Height = 14
            Alignment = taRightJustify
            Caption = 'E-mail (NFSe):'
          end
          object Label30: TLabel
            Left = 420
            Top = 65
            Width = 18
            Height = 14
            Alignment = taRightJustify
            Caption = 'N.'#186':'
          end
          object Label35: TLabel
            Left = 53
            Top = 6
            Width = 19
            Height = 14
            Alignment = taRightJustify
            Caption = 'U.F:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 36
            Top = 27
            Width = 36
            Height = 14
            Alignment = taRightJustify
            Caption = 'Cidade:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object EditLogradouro: TDBEdit
            Left = 75
            Top = 63
            Width = 334
            Height = 20
            AutoSelect = False
            DataField = 'LOGRADOURO'
            DataSource = BancodeDados.DsClientes
            TabOrder = 3
          end
          object EditBairro: TDBEdit
            Left = 75
            Top = 43
            Width = 334
            Height = 20
            DataField = 'BAIRRO'
            DataSource = BancodeDados.DsClientes
            TabOrder = 2
          end
          object EditCEP: TDBEdit
            Left = 322
            Top = 103
            Width = 167
            Height = 20
            DataField = 'CEP'
            DataSource = BancodeDados.DsClientes
            TabOrder = 11
          end
          object EditFone1: TDBEdit
            Left = 75
            Top = 83
            Width = 105
            Height = 20
            DataField = 'FONE1'
            DataSource = BancodeDados.DsClientes
            TabOrder = 5
          end
          object EditFax: TDBEdit
            Left = 75
            Top = 103
            Width = 105
            Height = 20
            DataField = 'FAX'
            DataSource = BancodeDados.DsClientes
            TabOrder = 9
          end
          object EditFone2: TDBEdit
            Left = 304
            Top = 83
            Width = 105
            Height = 20
            DataField = 'FONE2'
            DataSource = BancodeDados.DsClientes
            TabOrder = 7
          end
          object EditEmailContato1: TDBEdit
            Left = 75
            Top = 123
            Width = 414
            Height = 20
            AutoSelect = False
            DataField = 'EMAIL_CONTATO1'
            DataSource = BancodeDados.DsClientes
            TabOrder = 12
          end
          object EditEmailContato2: TDBEdit
            Left = 75
            Top = 143
            Width = 414
            Height = 20
            AutoSelect = False
            DataField = 'EMAIL_CONTATO2'
            DataSource = BancodeDados.DsClientes
            TabOrder = 13
          end
          object EditCelOper_1: TDBLookupComboBox
            Left = 180
            Top = 83
            Width = 80
            Height = 20
            DataField = 'OPER_CEL1_ID'
            DataSource = BancodeDados.DsClientes
            KeyField = 'OPER_CEL_ID'
            ListField = 'DESCRICAO'
            ListSource = BancodeDados.dsOperCelular
            TabOrder = 6
          end
          object EditCelOper_2: TDBLookupComboBox
            Left = 409
            Top = 83
            Width = 80
            Height = 20
            DataField = 'OPER_CEL2_ID'
            DataSource = BancodeDados.DsClientes
            KeyField = 'OPER_CEL_ID'
            ListField = 'DESCRICAO'
            ListSource = BancodeDados.dsOperCelular
            TabOrder = 8
          end
          object EditFaxOper_1: TDBLookupComboBox
            Left = 180
            Top = 103
            Width = 80
            Height = 20
            DataField = 'OPER_FAX_ID'
            DataSource = BancodeDados.DsClientes
            KeyField = 'OPER_CEL_ID'
            ListField = 'DESCRICAO'
            ListSource = BancodeDados.dsOperCelular
            TabOrder = 10
          end
          object DBEdit1: TDBEdit
            Left = 442
            Top = 63
            Width = 47
            Height = 20
            DataField = 'NUMERO'
            DataSource = BancodeDados.DsClientes
            TabOrder = 4
          end
          object EditEstadoProvincReside: TDBLookupComboBox
            Left = 75
            Top = 3
            Width = 182
            Height = 20
            DataField = 'ESTADO'
            DataSource = BancodeDados.DsClientes
            KeyField = 'UF_COD'
            ListField = 'NOME'
            ListSource = BancodeDados.DsEstados2
            TabOrder = 0
          end
          object EditNaturalidade: TDBLookupComboBox
            Left = 75
            Top = 23
            Width = 414
            Height = 20
            Color = clWhite
            DataField = 'CIDADE'
            DataSource = BancodeDados.DsClientes
            KeyField = 'CODMUN'
            ListField = 'NOME'
            ListSource = BancodeDados.DSMunicopios2
            NullValueKey = 46
            TabOrder = 1
          end
        end
        object TabSheet6: TTabSheet
          Caption = 'Internet'
          ImageIndex = 2
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Label21: TLabel
            Left = 54
            Top = 5
            Width = 40
            Height = 14
            Alignment = taRightJustify
            Caption = 'Contato:'
          end
          object Label22: TLabel
            Left = 65
            Top = 47
            Width = 29
            Height = 14
            Alignment = taRightJustify
            Caption = 'Login:'
          end
          object Label23: TLabel
            Left = 61
            Top = 68
            Width = 31
            Height = 14
            Alignment = taRightJustify
            Caption = 'Senha'
          end
          object Label24: TLabel
            Left = 2
            Top = 26
            Width = 92
            Height = 14
            Alignment = taRightJustify
            Caption = 'Fantasia Reduzida:'
          end
          object Label25: TLabel
            Left = 26
            Top = 89
            Width = 68
            Height = 14
            Alignment = taRightJustify
            Caption = 'C'#243'd. Rastreio:'
          end
          object EditSenha: TDBEdit
            Left = 96
            Top = 66
            Width = 167
            Height = 20
            DataField = 'SENHA'
            DataSource = BancodeDados.DsClientes
            TabOrder = 3
          end
          object EditLogin: TDBEdit
            Left = 96
            Top = 45
            Width = 167
            Height = 20
            DataField = 'LOGIN'
            DataSource = BancodeDados.DsClientes
            TabOrder = 2
          end
          object EditContato: TDBEdit
            Left = 96
            Top = 3
            Width = 167
            Height = 20
            AutoSelect = False
            DataField = 'CONTATO'
            DataSource = BancodeDados.DsClientes
            TabOrder = 0
          end
          object EditFantasiaRed: TDBEdit
            Left = 96
            Top = 24
            Width = 167
            Height = 20
            DataField = 'FANTASIA_RED'
            DataSource = BancodeDados.DsClientes
            TabOrder = 1
          end
          object btRastreio: TButton
            Left = 264
            Top = 86
            Width = 105
            Height = 23
            Caption = 'Exibir Rastreamento'
            TabOrder = 4
            OnClick = btRastreioClick
          end
          object EditCodRastreio: TDBEdit
            Left = 96
            Top = 87
            Width = 167
            Height = 20
            DataField = 'COD_RASTREIO'
            DataSource = BancodeDados.DsClientes
            TabOrder = 5
            OnExit = EditCNPJExit
          end
        end
      end
      object edtInsc_Municipal: TDBEdit
        Left = 897
        Top = 16
        Width = 167
        Height = 20
        DataField = 'INSC_MUNICIPAL'
        DataSource = BancodeDados.DsClientes
        TabOrder = 17
      end
      object EditFoto: TSedDBImage
        Left = 759
        Top = 61
        Width = 90
        Height = 108
        DataField = 'LOGO'
        DataSource = BancodeDados.DsClientes
        Stretch = True
        TabOrder = 19
        OnDblClick = EditFotoDblClick
      end
      object DBCheckBox4: TDBCheckBox
        Left = 82
        Top = 245
        Width = 75
        Height = 17
        Cursor = crHandPoint
        Caption = 'Confi'#225'vel?'
        DataField = 'CONFIAVEL'
        DataSource = BancodeDados.DsClientes
        TabOrder = 14
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox6: TDBCheckBox
        Left = 172
        Top = 245
        Width = 89
        Height = 17
        Cursor = crHandPoint
        Caption = 'Fatura Nota?'
        DataField = 'FAT_NOTA'
        DataSource = BancodeDados.DsClientes
        TabOrder = 15
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object EditSituac: TSedDBComboBox
        Left = 684
        Top = 61
        Width = 95
        Height = 22
        Style = csOwnerDrawFixed
        BevelKind = bkFlat
        Ctl3D = False
        DataField = 'SIT'
        DataSource = BancodeDados.DsClientes
        Items.Strings = (
          'ATIVO'
          'INATIVO')
        ParentCtl3D = False
        Values.Strings = (
          '1'
          '2')
        TabOrder = 20
      end
      object EditCliDesde: TSedDbDateEdit
        Left = 684
        Top = 35
        Width = 95
        Height = 20
        DataField = 'CLIENTE_DESDE'
        DataSource = BancodeDados.DsClientes
        MaxLength = 10
        TabOrder = 21
      end
      object EditSexo: TDBComboBox
        Left = 250
        Top = 29
        Width = 45
        Height = 20
        Style = csOwnerDrawFixed
        BevelOuter = bvRaised
        BevelKind = bkFlat
        Color = clWhite
        DataField = 'SEXO'
        DataSource = BancodeDados.DsClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ItemHeight = 14
        Items.Strings = (
          'M'
          'F')
        ParentFont = False
        TabOrder = 2
      end
      object EditNasc: TSedDbDateEdit
        Left = 81
        Top = 29
        Width = 98
        Height = 20
        DataField = 'NASCIMENTO'
        DataSource = BancodeDados.DsClientes
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 1
      end
      object EditNacionalidade: TSedDBComboBox
        Left = 81
        Top = 50
        Width = 214
        Height = 20
        Style = csOwnerDrawFixed
        BevelOuter = bvRaised
        BevelKind = bkFlat
        DataField = 'NACIONALIDADE'
        DataSource = BancodeDados.DsClientes
        ItemHeight = 14
        Items.Strings = (
          'AFEGANIST'#195'O'
          'ALB'#194'NIA'
          'ARG'#201'LIA'
          'SAMOA AMERICANA'
          'ANDORRA'
          'ANGOLA'
          'ANT'#205'GUA E BARBUDA'
          'AZERBAIJ'#195'O'
          'ARGENTINA'
          'AUSTR'#193'LIA'
          #193'USTRIA'
          'BAHAMAS'
          'BAHREIN'
          'BANGLADESH'
          'ARM'#202'NIA'
          'BARBADOS'
          'B'#201'LGICA'
          'BERMUDAS'
          'BUT'#195'O'
          'BOL'#205'VIA (ESTADO PLURINACIONAL DA)'
          'B'#211'SNIA E HERZEGOVINA'
          'BOTSUANA'
          'BRASIL'
          'BELIZE'
          'ILHAS SALOM'#195'O'
          'ILHAS VIRGENS BRIT'#194'NICAS'
          'BRUNEI '
          'BULG'#193'RIA'
          'MYANMAR'
          'BURUNDI'
          'BIELORR'#218'SSIA'
          'CAMBOJA'
          'CAMAR'#213'ES'
          'CANAD'#193
          'CABO VERDE'
          'ILHAS CAIMAN'
          'REP'#218'BLICA CENTRO AFRICANA'
          'SRI LANKA'
          'CHADE'
          'CHILE'
          'CHINA'
          'COL'#212'MBIA'
          'COMORES'
          'MAYOTTE'
          'CONGO'
          'REP'#218'BLICA DEMOCR'#193'TICA DO CONGO'
          'ILHAS COOK'
          'COSTA RICA'
          'CRO'#193'CIA'
          'CUBA'
          'CHIPRE'
          'REP'#218'BLICA TCHECA'
          'BENIN'
          'DINAMARCA'
          'DOMINICA'
          'REP'#218'BLICA DOMINICANA'
          'EQUADOR'
          'EL SALVADOR'
          'GUIN'#201' EQUATORIAL'
          'ETI'#211'PIA'
          'ERITR'#201'IA'
          'EST'#212'NIA'
          'ILHAS FEROE'
          'ILHAS MALVINAS'
          'FIJI'
          'FINL'#194'NDIA'
          #197'LAND, ILHAS'
          'FRAN'#199'A'
          'GUIANA FRANCESA'
          'POLIN'#201'SIA FRANCESA'
          'DJIBUTI'
          'GAB'#195'O'
          'GE'#211'RGIA'
          'G'#194'MBIA'
          'PALESTINA'
          'ALEMANHA'
          'GANA'
          'GIBRALTAR'
          'QUIRIBATI'
          'GR'#201'CIA'
          'GROENL'#194'NDIA'
          'GRANADA'
          'GUADALUPE'
          'GUAM'
          'GUATEMALA'
          'GUIN'#201
          'GUIANA'
          'HAITI'
          'VATICANO'
          'AP'#193'TRIDA'
          'HONDURAS'
          'CHINA, REGI'#195'O ADMINISTRATIVA ESPECIAL DE HONG KONG'
          'HUNGRIA'
          'ISL'#194'NDIA'
          #205'NDIA'
          'INDON'#201'SIA'
          'IR'#195' (REP'#218'BLICA ISL'#194'MICA DO)'
          'IRAQUE'
          'IRLANDA'
          'ISRAEL'
          'IT'#193'LIA'
          'COSTA DO MARFIM'
          'JAMAICA'
          'JAP'#195'O'
          'CAZAQUIST'#195'O'
          'JORD'#194'NIA'
          'QU'#202'NIA'
          'COREIA DO NORTE'
          'COREIA DO SUL'
          'KUWAIT'
          'QUIRGUIST'#195'O'
          'LAOS, REP'#218'BLICA POPULAR DEMOCR'#193'TICA'
          'L'#205'BANO'
          'LESOTO'
          'LET'#212'NIA'
          'LIB'#201'RIA'
          'L'#205'BIA'
          'LIECHTENSTEIN'
          'LITU'#194'NIA'
          'LUXEMBURGO'
          'CHINA, REGI'#195'O ADMINISTRATIVA ESPECIAL DE MACAU'
          'MADAG'#193'SCAR'
          'MALAWI'
          'MAL'#193'SIA'
          'MALDIVAS'
          'MALI '
          'MALTA'
          'MARTINICA'
          'MAURIT'#194'NIA'
          'MAUR'#205'CIO'
          'M'#201'XICO'
          'M'#212'NACO'
          'MONG'#211'LIA'
          'MOLD'#193'VIA'
          'MONTENEGRO'
          'MONTSERRAT'
          'MARROCOS'
          'MO'#199'AMBIQUE'
          'OMAN'
          'NAM'#205'BIA'
          'NAURU'
          'NEPAL'
          'HOLANDA'
          'ANTILHAS HOLANDESAS'
          'CURA'#199'AO'
          'ARUBA'
          'SINT MAARTEN (PARTE HOLANDESA) '
          'BONAIRE, SAINT EUSTATIUS E SABA'
          'NOVA CALED'#212'NIA'
          'VANUATU'
          'NOVA ZEL'#194'NDIA'
          'NICAR'#193'GUA'
          'N'#205'GER'
          'NIG'#201'RIA'
          'NIUE'
          'ILHA NORFOLK'
          'NORUEGA'
          'ILHAS MARIANA'
          'MICRONESIA'
          'ILHAS MARSHALL'
          'PALAU'
          'PAQUIST'#195'O'
          'PANAM'#193
          'PAPUA NOVA GUIN'#201
          'PARAGUAI'
          'PERU'
          'FILIPINAS'
          'PITCAIRIN'
          'POL'#212'NIA'
          'PORTUGAL'
          'GUIN'#201' BISSAU'
          'TIMOR LESTE'
          'PORTO RICO'
          'CATAR'
          'REUNI'#195'O'
          'ROM'#202'NIA'
          'R'#218'SSIA'
          'RUANDA'
          'S'#195'O BARTOLOMEU'
          'SANTA HELENA'
          'S'#195'O CRISTOV'#195'O E NEVIS'
          'ANGUILLA'
          'SANTA L'#218'CIA'
          'SAINT-MARTIN (PARTE FRANCESA)'
          'SAINT PIERRE E MIQUELON'
          'S'#195'O VICENTE E GRANADINAS'
          'SAN MARINO'
          'S'#195'O TOM'#201' E PR'#205'NCIPE'
          'AR'#193'BIA SAUDITA'
          'SENEGAL'
          'S'#201'RVIA'
          'SEYCHELLES'
          'SERRA LEOA'
          'CINGAPURA'
          'ESLOV'#193'QUIA'
          'VIETN'#195
          'ESLOV'#202'NIA'
          'SOM'#193'LIA'
          #193'FRICA DO SUL'
          'ZIMB'#193'BUE'
          'ESPANHA'
          'SAARA OCIDENTAL'
          'SUD'#195'O'
          'SURINAME'
          'SVALBARD E JAN MAYER'
          'SUAZIL'#194'NDIA'
          'SU'#201'CIA'
          'SU'#205#199'A'
          'S'#205'RIA'
          'TAJIQUIST'#195'O'
          'TAIL'#194'NDIA'
          'TOGO'
          'TOKELAU'
          'TONGA'
          'TRINDADE E TOBAGO'
          'EMIRADOS '#193'RABES UNIDOS'
          'TUN'#205'SIA'
          'TURQUIA'
          'TURQUEMENIST'#195'O'
          'ILHAS TURKS E CAICOS'
          'TUVALU'
          'UGANDA'
          'UCR'#194'NIA'
          'REP'#218'BLICA DA MACED'#212'NIA'
          'EGITO'
          'REINO UNIDO DA GR'#195' BRETANHA E IRLANDA DO NORTE '
          'ILHAS DO CANAL'
          'GUERNSEY'
          'JERSEY'
          'ILHAS DE MAN'
          'TANZ'#194'NIA'
          'ESTADOS UNIDOS DA AM'#201'RICA'
          'ILHAS VIRGENS AMERICANAS'
          'BURQUINA FASO'
          'URUGUAI'
          'UZBEQUIST'#195'O'
          'VENEZUELA'
          'ILHAS WALLIS E FUTUNA'
          'SAMOA'
          'I'#201'MEN'
          'Z'#194'MBIA'
          'OUTRA NACIONALIDADE')
        Values.Strings = (
          '4'
          '8'
          '12'
          '16'
          '20'
          '24'
          '28'
          '31'
          '32'
          '36'
          '40'
          '44'
          '48'
          '50'
          '51'
          '52'
          '56'
          '60'
          '64'
          '68'
          '70'
          '72'
          '76'
          '84'
          '90'
          '92'
          '96'
          '100'
          '104'
          '108'
          '112'
          '116'
          '120'
          '124'
          '132'
          '136'
          '140'
          '144'
          '148'
          '152'
          '156'
          '170'
          '174'
          '175'
          '178'
          '180'
          '184'
          '188'
          '191'
          '192'
          '196'
          '203'
          '204'
          '208'
          '212'
          '214'
          '218'
          '222'
          '226'
          '231'
          '232'
          '233'
          '234'
          '238'
          '242'
          '246'
          '248'
          '250'
          '254'
          '258'
          '262'
          '266'
          '268'
          '270'
          '275'
          '276'
          '288'
          '292'
          '296'
          '300'
          '304'
          '308'
          '312'
          '316'
          '320'
          '324'
          '328'
          '332'
          '336'
          '339'
          '340'
          '344'
          '348'
          '352'
          '356'
          '360'
          '364'
          '368'
          '372'
          '376'
          '380'
          '384'
          '388'
          '392'
          '398'
          '400'
          '404'
          '408'
          '410'
          '414'
          '417'
          '418'
          '422'
          '426'
          '428'
          '430'
          '434'
          '438'
          '440'
          '442'
          '446'
          '450'
          '454'
          '458'
          '462'
          '466'
          '470'
          '474'
          '478'
          '480'
          '484'
          '492'
          '496'
          '498'
          '499'
          '500'
          '504'
          '508'
          '512'
          '516'
          '520'
          '524'
          '528'
          '530'
          '531'
          '533'
          '534'
          '535'
          '540'
          '548'
          '554'
          '558'
          '562'
          '566'
          '570'
          '574'
          '578'
          '580'
          '583'
          '584'
          '585'
          '586'
          '591'
          '598'
          '600'
          '604'
          '608'
          '612'
          '616'
          '620'
          '624'
          '626'
          '630'
          '634'
          '638'
          '642'
          '643'
          '646'
          '652'
          '654'
          '659'
          '660'
          '662'
          '663'
          '666'
          '670'
          '674'
          '678'
          '682'
          '686'
          '688'
          '690'
          '694'
          '702'
          '703'
          '704'
          '705'
          '706'
          '710'
          '716'
          '724'
          '732'
          '736'
          '740'
          '744'
          '748'
          '752'
          '756'
          '760'
          '762'
          '764'
          '768'
          '772'
          '776'
          '780'
          '784'
          '788'
          '792'
          '795'
          '796'
          '798'
          '800'
          '804'
          '807'
          '818'
          '826'
          '830'
          '831'
          '832'
          '833'
          '834'
          '840'
          '850'
          '854'
          '858'
          '860'
          '862'
          '876'
          '882'
          '887'
          '894'
          '999')
        TabOrder = 3
      end
      object EditEstadoProvinc: TDBLookupComboBox
        Left = 321
        Top = 50
        Width = 173
        Height = 20
        DataField = 'UF_NATURAL'
        DataSource = BancodeDados.DsClientes
        KeyField = 'UF_COD'
        ListField = 'NOME'
        ListSource = BancodeDados.dsEstadosClient
        TabOrder = 4
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 81
        Top = 71
        Width = 365
        Height = 20
        Color = clWhite
        DataField = 'NATURALIDADE'
        DataSource = BancodeDados.DsClientes
        KeyField = 'CODMUN'
        ListField = 'NOME'
        ListSource = BancodeDados.DsMunicipiosClient
        NullValueKey = 46
        TabOrder = 5
      end
      object EditEstadoCivil: TDBComboBox
        Left = 81
        Top = 197
        Width = 273
        Height = 22
        BevelInner = bvNone
        BevelKind = bkFlat
        DataField = 'EST_CIVIL'
        DataSource = BancodeDados.DsClientes
        Items.Strings = (
          'SOLTEIRO'
          'CASADO'
          'VI'#218'VO'
          'DIVORCIADO'
          'UNI'#195'O EST'#193'VEL')
        TabOrder = 12
      end
      object EditProfissao: TDBEdit
        Left = 81
        Top = 220
        Width = 273
        Height = 20
        AutoSelect = False
        Color = clWhite
        DataField = 'PROFISSAO'
        DataSource = BancodeDados.DsClientes
        TabOrder = 13
      end
      object EdirRGOrgao: TDBLookupComboBox
        Left = 81
        Top = 155
        Width = 271
        Height = 20
        DataField = 'RG_ORG_ID'
        DataSource = BancodeDados.DsClientes
        KeyField = 'ORG_ID'
        ListField = 'ORG_EXPED'
        ListSource = BancodeDados.dsOrgExped
        TabOrder = 9
      end
      object EditPassaporte: TDBEdit
        Left = 81
        Top = 176
        Width = 181
        Height = 20
        Color = clWhite
        DataField = 'PASSAPORTE'
        DataSource = BancodeDados.DsClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
      end
      object EditRgUF: TSedDBComboBox
        Left = 378
        Top = 155
        Width = 53
        Height = 20
        Style = csOwnerDrawFixed
        BevelKind = bkFlat
        DataField = 'RG_UF'
        DataSource = BancodeDados.DsClientes
        ItemHeight = 14
        Items.Strings = (
          'AC'
          'AL'
          'AM'
          'AP'
          'BA'
          'CE'
          'DF'
          'ES'
          'GO'
          'MA'
          'MG'
          'MS'
          'MT'
          'PA'
          'PB'
          'PE'
          'PI'
          'PR'
          'RJ'
          'RN'
          'RO'
          'RR'
          'RS'
          'SC'
          'SE'
          'SP'
          'TO')
        Values.Strings = (
          '12'
          '27'
          '13'
          '16'
          '29'
          '23'
          '53'
          '32'
          '52'
          '21'
          '31'
          '50'
          '51'
          '15'
          '25'
          '26'
          '22'
          '41'
          '33'
          '24'
          '11'
          '14'
          '43'
          '42'
          '28'
          '35'
          '17')
        TabOrder = 10
      end
      object EditRGExp: TSedDbDateEdit
        Left = 81
        Top = 134
        Width = 111
        Height = 20
        DataField = 'RG_DATA'
        DataSource = BancodeDados.DsClientes
        MaxLength = 10
        TabOrder = 8
      end
      object EditRG: TDBEdit
        Left = 81
        Top = 113
        Width = 167
        Height = 20
        Color = clWhite
        DataField = 'RG'
        DataSource = BancodeDados.DsClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      object SedDBComboBox1: TSedDBComboBox
        Left = 400
        Top = 242
        Width = 95
        Height = 22
        Style = csOwnerDrawFixed
        BevelKind = bkFlat
        Ctl3D = False
        DataField = 'SIT'
        DataSource = BancodeDados.DsClientes
        Items.Strings = (
          'ATIVO'
          'INATIVO')
        ParentCtl3D = False
        Values.Strings = (
          '1'
          '2')
        TabOrder = 22
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Informa'#231#245'es de registro'
      ImageIndex = 1
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel2: TPanel
        Left = 0
        Top = 293
        Width = 509
        Height = 30
        Align = alBottom
        BevelOuter = bvNone
        Color = clSilver
        TabOrder = 0
        object Button1: TButton
          Left = 395
          Top = 3
          Width = 75
          Height = 25
          Caption = 'Gerar Chave'
          TabOrder = 0
          OnClick = Button1Click
        end
        object chkLimpar: TCheckBox
          Left = 6
          Top = 6
          Width = 189
          Height = 17
          Cursor = crHandPoint
          Caption = 'Limpar unidades antes de registar?'
          TabOrder = 1
        end
      end
      object DBGrid2: TSedDBGrid
        Left = 0
        Top = 323
        Width = 509
        Height = 141
        Align = alBottom
        FixedColor = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick]
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWhite
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnKeyDown = DBGrid2KeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'INST_ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Width = 249
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CNPJ'
            Visible = True
          end>
      end
    end
    object TabSheet8: TTabSheet
      Caption = 'Observa'#231#245'es'
      ImageIndex = 6
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object SedDBGrid2: TSedDBGrid
        Left = 0
        Top = 0
        Width = 509
        Height = 464
        Align = alClient
        DataSource = BancodeDados.dsObservac
        FixedColor = clSilver
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -35
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        OnDrawColumnCell = SedDBGrid2DrawColumnCell
        AutoAppend = True
        Columns = <
          item
            Expanded = False
            FieldName = 'OBS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Width = 452
            Visible = True
          end>
      end
    end
    object tbScanDoc: TTabSheet
      Caption = 'Documentos Diversos'
      ImageIndex = 7
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object SedDBGrid3: TSedDBGrid
        Left = 0
        Top = 0
        Width = 509
        Height = 464
        Align = alClient
        DataSource = BancodeDados.dsS_Doc
        FixedColor = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'NOME_ARQ'
            Width = 270
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DT_CAD'
            Width = 107
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UsCad'
            Width = 90
            Visible = True
          end>
      end
    end
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.acreg'
    Filter = 'Registro active|*.acreg'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 544
    Top = 56
  end
  object PopupMenu1: TPopupMenu
    Left = 1052
    Top = 100
    object mnuNovo1: TMenuItem
      Caption = '&Novo'
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object mnuExcluir1: TMenuItem
      Caption = 'E&xcluir'
    end
    object ImprimirContrato1: TMenuItem
      Caption = 'Imprimir Contrato'
    end
  end
  object PopImagem: TPopupMenu
    Left = 606
    Top = 50
    object Novo1: TMenuItem
      Caption = 'Incluir Logomarca'
    end
    object Excluir1: TMenuItem
      Caption = 'Excluir'
    end
  end
  object popDocScan: TPopupMenu
    Left = 534
    Top = 108
    object Abrirdocumento1: TMenuItem
      Caption = 'Abrir Documento'
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object Adicionarnovodocumento1: TMenuItem
      Caption = 'Adicionar Novo Documento'
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object Excluirdocumento1: TMenuItem
      Caption = 'Excluir Documento'
    end
  end
end
