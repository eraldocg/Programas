object CadConfigForm: TCadConfigForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro do Locador'
  ClientHeight = 352
  ClientWidth = 498
  Color = 7562340
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
  OnCloseQuery = FormCloseQuery
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 321
    Width = 498
    Height = 31
    Align = alBottom
    BevelOuter = bvNone
    Color = 7562340
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      498
      31)
    object btOk: TButton
      Left = 419
      Top = 4
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = 'Gravar'
      TabOrder = 0
      OnClick = btOkClick
    end
    object btSair: TButton
      Left = 343
      Top = 4
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = 'Fechar'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 498
    Height = 321
    ActivePage = tbImagens
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Style = tsButtons
    TabOrder = 1
    object TabSheet5: TTabSheet
      Caption = 'Pessoa F'#237'sica'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      object Label37: TLabel
        Left = 84
        Top = 13
        Width = 35
        Height = 14
        Alignment = taRightJustify
        Caption = 'Nome:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label39: TLabel
        Left = 86
        Top = 114
        Width = 31
        Height = 14
        Alignment = taRightJustify
        Caption = 'C.P.F.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label40: TLabel
        Left = 51
        Top = 33
        Width = 68
        Height = 14
        Alignment = taRightJustify
        Caption = 'Nascimento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label41: TLabel
        Left = 41
        Top = 54
        Width = 78
        Height = 14
        Alignment = taRightJustify
        Caption = 'Nacionalidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label42: TLabel
        Left = 258
        Top = 33
        Width = 30
        Height = 14
        Alignment = taRightJustify
        Caption = 'Sexo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label43: TLabel
        Left = 99
        Top = 75
        Width = 19
        Height = 14
        Alignment = taRightJustify
        Caption = 'U.F:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label75: TLabel
        Left = 48
        Top = 95
        Width = 71
        Height = 14
        Alignment = taRightJustify
        Caption = 'Naturalidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label44: TLabel
        Left = 62
        Top = 205
        Width = 58
        Height = 14
        Alignment = taRightJustify
        Caption = 'Estado Civil:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label46: TLabel
        Left = 71
        Top = 226
        Width = 49
        Height = 14
        Alignment = taRightJustify
        Caption = 'Profiss'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object EditPF_Nome: TDBEdit
        Left = 121
        Top = 10
        Width = 306
        Height = 19
        AutoSelect = False
        Color = clWhite
        DataField = 'NOME'
        DataSource = BancodeDados.dsConfig
        TabOrder = 0
      end
      object EditPF_CPF: TDBEdit
        Left = 121
        Top = 112
        Width = 167
        Height = 19
        DataField = 'CNPJ'
        DataSource = BancodeDados.dsConfig
        TabOrder = 6
        OnExit = EditPF_CPFExit
      end
      object EditPF_Sexo: TDBComboBox
        Left = 290
        Top = 30
        Width = 45
        Height = 20
        Style = csOwnerDrawFixed
        BevelOuter = bvRaised
        BevelKind = bkFlat
        Color = clWhite
        DataField = 'SEXO'
        DataSource = BancodeDados.dsConfig
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
      object EditPF_Nasc: TSedDbDateEdit
        Left = 121
        Top = 30
        Width = 98
        Height = 20
        DataField = 'NASCIMENTO'
        DataSource = BancodeDados.dsConfig
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
      object EditPF_Nacionalid: TSedDBComboBox
        Left = 121
        Top = 51
        Width = 214
        Height = 20
        Style = csOwnerDrawFixed
        BevelOuter = bvRaised
        BevelKind = bkFlat
        DataField = 'NACIONALIDADE'
        DataSource = BancodeDados.dsConfig
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
      object EditPF_UF_Nat: TDBLookupComboBox
        Left = 121
        Top = 72
        Width = 173
        Height = 19
        DataField = 'UF_NATURAL'
        DataSource = BancodeDados.dsConfig
        KeyField = 'UF_COD'
        ListField = 'NOME'
        ListSource = BancodeDados.DsEstados3
        TabOrder = 4
      end
      object EditPF_Nacional: TDBLookupComboBox
        Left = 121
        Top = 92
        Width = 365
        Height = 19
        Color = clWhite
        DataField = 'NATURALIDADE'
        DataSource = BancodeDados.dsConfig
        KeyField = 'CODMUN'
        ListField = 'NOME'
        ListSource = BancodeDados.DSMunicopios3
        NullValueKey = 46
        TabOrder = 5
      end
      object EditPF_EstadoCivil: TDBComboBox
        Left = 121
        Top = 201
        Width = 273
        Height = 21
        BevelInner = bvNone
        BevelKind = bkFlat
        DataField = 'EST_CIVIL'
        DataSource = BancodeDados.dsConfig
        Items.Strings = (
          'SOLTEIRO'
          'CASADO'
          'VI'#218'VO'
          'DIVORCIADO'
          'UNI'#195'O EST'#193'VEL')
        TabOrder = 8
      end
      object EditPF_Profissao: TDBEdit
        Left = 121
        Top = 223
        Width = 273
        Height = 19
        AutoSelect = False
        Color = clWhite
        DataField = 'PROFISSAO'
        DataSource = BancodeDados.dsConfig
        TabOrder = 9
      end
      object PageControl3: TPageControl
        Left = 36
        Top = 133
        Width = 508
        Height = 70
        ActivePage = TabSheetCNH
        Style = tsButtons
        TabOrder = 7
        object TabSheetRG: TTabSheet
          Caption = 'RG - Carteira de Identidade'
          object Label68: TLabel
            Left = 355
            Top = 24
            Width = 21
            Height = 14
            Alignment = taRightJustify
            Caption = 'U.F.:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label49: TLabel
            Left = -1
            Top = 24
            Width = 81
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = #211'rg'#227'o Emissor:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label48: TLabel
            Left = 241
            Top = 2
            Width = 78
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Expedi'#231#227'o:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Visible = False
          end
          object Label45: TLabel
            Left = -1
            Top = 2
            Width = 81
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'N'#250'mero:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object EdirRGOrgao: TDBLookupComboBox
            Left = 81
            Top = 21
            Width = 273
            Height = 19
            DataField = 'RG_ORG_ID'
            DataSource = BancodeDados.dsConfig
            KeyField = 'ORG_ID'
            ListField = 'ORG_EXPED'
            ListSource = BancodeDados.dsOrgExped
            TabOrder = 2
          end
          object EditRgUF: TSedDBComboBox
            Left = 379
            Top = 21
            Width = 53
            Height = 20
            Style = csOwnerDrawFixed
            BevelKind = bkFlat
            DataField = 'RG_UF'
            DataSource = BancodeDados.dsConfig
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
            TabOrder = 3
          end
          object EditRGExp: TSedDbDateEdit
            Left = 320
            Top = 1
            Width = 111
            Height = 19
            DataField = 'RG_DATA'
            DataSource = BancodeDados.dsConfig
            MaxLength = 10
            TabOrder = 1
            Visible = False
          end
          object EditRG: TDBEdit
            Left = 81
            Top = 0
            Width = 150
            Height = 20
            AutoSelect = False
            Color = clWhite
            DataField = 'RG'
            DataSource = BancodeDados.dsConfig
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
        end
        object TabSheetCNH: TTabSheet
          Caption = 'CNH - Carteira Nacional de Habilita'#231#227'o'
          ImageIndex = 1
          object Label47: TLabel
            Left = 2
            Top = 24
            Width = 78
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = '1'#170' Habilita'#231#227'o:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label51: TLabel
            Left = 2
            Top = 2
            Width = 78
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'N.'#186' de Registro:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label54: TLabel
            Left = 207
            Top = 24
            Width = 78
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Renach:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object btF2: TSpeedButton
            Left = 432
            Top = 20
            Width = 18
            Height = 19
            Cursor = crHandPoint
            Hint = 'Onde Encontrar o Renach na CNH?'
            Caption = '?'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -8
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = btF2Click
          end
          object EditCNH_Data_Prim_Hab: TSedDbDateEdit
            Left = 81
            Top = 21
            Width = 111
            Height = 19
            DataField = 'CNH_DT_1_HAB'
            DataSource = BancodeDados.dsConfig
            MaxLength = 10
            TabOrder = 1
          end
          object EditCNH_Numero: TDBEdit
            Left = 81
            Top = 0
            Width = 150
            Height = 20
            AutoSelect = False
            Color = clWhite
            DataField = 'CNH_N_REG'
            DataSource = BancodeDados.dsConfig
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object EditCNH_Renach: TDBEdit
            Left = 287
            Top = 21
            Width = 145
            Height = 20
            Color = clWhite
            DataField = 'CNH_RENACH'
            DataSource = BancodeDados.dsConfig
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Empresa(OFF)'
      ImageIndex = 4
      object Label2: TLabel
        Left = 47
        Top = 11
        Width = 70
        Height = 14
        Alignment = taRightJustify
        Caption = 'Raz'#227'o Social:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label10: TLabel
        Left = 34
        Top = 33
        Width = 83
        Height = 14
        Alignment = taRightJustify
        Caption = 'Nome Fantasia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label11: TLabel
        Left = 52
        Top = 54
        Width = 65
        Height = 14
        Alignment = taRightJustify
        Caption = 'C.P.F/C.N.P.J'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label30: TLabel
        Left = 81
        Top = 75
        Width = 36
        Height = 14
        Alignment = taRightJustify
        Caption = 'Slogan:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label23: TLabel
        Left = 96
        Top = 99
        Width = 21
        Height = 14
        Alignment = taRightJustify
        Caption = 'Site:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label28: TLabel
        Left = 30
        Top = 242
        Width = 87
        Height = 14
        Alignment = taRightJustify
        Caption = 'Simples Nacional?'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label29: TLabel
        Left = 279
        Top = 54
        Width = 77
        Height = 14
        Alignment = taRightJustify
        Caption = 'Inc. Municipal:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object EditNome: TDBEdit
        Left = 119
        Top = 8
        Width = 265
        Height = 19
        AutoSelect = False
        Color = clWhite
        DataField = 'NOME'
        DataSource = BancodeDados.dsConfig
        TabOrder = 0
      end
      object EditFantasia: TDBEdit
        Left = 119
        Top = 30
        Width = 265
        Height = 19
        AutoSelect = False
        Color = clWhite
        DataField = 'FANTASIA'
        DataSource = BancodeDados.dsConfig
        TabOrder = 1
      end
      object EditCNPJ: TDBEdit
        Left = 119
        Top = 52
        Width = 144
        Height = 19
        Color = clWhite
        DataField = 'CNPJ'
        DataSource = BancodeDados.dsConfig
        TabOrder = 2
      end
      object EditSlogan: TDBEdit
        Left = 119
        Top = 74
        Width = 174
        Height = 19
        Color = clWhite
        DataField = 'SLOGAN'
        DataSource = BancodeDados.dsConfig
        TabOrder = 4
      end
      object SedDBImage1: TSedDBImage
        Left = 119
        Top = 117
        Width = 98
        Height = 120
        DataField = 'LOGO1'
        DataSource = BancodeDados.dsConfig
        PopupMenu = PopupMenu1
        Stretch = True
        TabOrder = 6
        OnDblClick = SedDBImage1DblClick
      end
      object EditSite: TDBEdit
        Left = 119
        Top = 96
        Width = 245
        Height = 19
        CharCase = ecLowerCase
        Color = clWhite
        DataField = 'SITE'
        DataSource = BancodeDados.dsConfig
        TabOrder = 5
      end
      object EditSimpNac: TSedDBComboBox
        Left = 119
        Top = 239
        Width = 67
        Height = 22
        Style = csOwnerDrawFixed
        BevelKind = bkFlat
        DataField = 'OPT_SIMP_NAC'
        DataSource = BancodeDados.dsConfig
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Items.Strings = (
          'N'#195'O'
          'SIM')
        ParentFont = False
        Values.Strings = (
          '0'
          '1')
        TabOrder = 7
      end
      object EditInscMunic: TDBEdit
        Left = 360
        Top = 52
        Width = 100
        Height = 19
        Color = clWhite
        DataField = 'INSC_MUNIC'
        DataSource = BancodeDados.dsConfig
        TabOrder = 3
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Endere'#231'o'
      ImageIndex = 5
      object Label12: TLabel
        Left = 50
        Top = 139
        Width = 67
        Height = 14
        Alignment = taRightJustify
        Caption = 'Telefone Fixo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label13: TLabel
        Left = 85
        Top = 96
        Width = 32
        Height = 14
        Alignment = taRightJustify
        Caption = 'Bairro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label14: TLabel
        Left = 58
        Top = 77
        Width = 59
        Height = 14
        Alignment = taRightJustify
        Caption = 'Logradouro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label15: TLabel
        Left = 94
        Top = 118
        Width = 22
        Height = 14
        Alignment = taRightJustify
        Caption = 'CEP:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label17: TLabel
        Left = 94
        Top = 11
        Width = 23
        Height = 14
        Alignment = taRightJustify
        Caption = 'Pa'#237's:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label20: TLabel
        Left = 81
        Top = 160
        Width = 36
        Height = 14
        Alignment = taRightJustify
        Caption = 'Celular:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label19: TLabel
        Left = 35
        Top = 180
        Width = 81
        Height = 14
        Alignment = taRightJustify
        Caption = 'E-mail Comercial:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label31: TLabel
        Left = 97
        Top = 34
        Width = 19
        Height = 14
        Alignment = taRightJustify
        Caption = 'U.F:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label33: TLabel
        Left = 75
        Top = 56
        Width = 41
        Height = 14
        Alignment = taRightJustify
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EditCep: TDBEdit
        Left = 119
        Top = 115
        Width = 99
        Height = 19
        Color = clWhite
        DataField = 'CEP'
        DataSource = BancodeDados.dsConfig
        TabOrder = 5
      end
      object EditLogradouro: TDBEdit
        Left = 119
        Top = 73
        Width = 245
        Height = 19
        Color = clWhite
        DataField = 'LOGRADOURO'
        DataSource = BancodeDados.dsConfig
        TabOrder = 3
      end
      object EditBairro: TDBEdit
        Left = 119
        Top = 94
        Width = 245
        Height = 19
        Color = clWhite
        DataField = 'BAIRRO'
        DataSource = BancodeDados.dsConfig
        TabOrder = 4
      end
      object EditTele1: TDBEdit
        Left = 119
        Top = 136
        Width = 99
        Height = 19
        Color = clWhite
        DataField = 'FONE1'
        DataSource = BancodeDados.dsConfig
        TabOrder = 6
      end
      object EditCelular_1: TDBEdit
        Left = 119
        Top = 157
        Width = 99
        Height = 19
        Color = clWhite
        DataField = 'CELULAR_1'
        DataSource = BancodeDados.dsConfig
        TabOrder = 7
      end
      object EditEmailComercial: TDBEdit
        Left = 119
        Top = 178
        Width = 245
        Height = 19
        CharCase = ecLowerCase
        Color = clWhite
        DataField = 'EMAIL_COMERC'
        DataSource = BancodeDados.dsConfig
        TabOrder = 8
      end
      object EditEstadoProvinc: TDBLookupComboBox
        Left = 119
        Top = 31
        Width = 182
        Height = 19
        DataField = 'UF'
        DataSource = BancodeDados.dsConfig
        KeyField = 'UF_COD'
        ListField = 'NOME'
        ListSource = BancodeDados.DsEstados2
        TabOrder = 1
      end
      object EditNaturalidade: TDBLookupComboBox
        Left = 119
        Top = 52
        Width = 365
        Height = 19
        Color = clWhite
        DataField = 'CIDADE'
        DataSource = BancodeDados.dsConfig
        KeyField = 'CODMUN'
        ListField = 'NOME'
        ListSource = BancodeDados.DSMunicopios2
        NullValueKey = 46
        TabOrder = 2
      end
      object EditPais: TDBLookupComboBox
        Left = 119
        Top = 10
        Width = 182
        Height = 19
        DataField = 'PAIS'
        DataSource = BancodeDados.dsConfig
        KeyField = 'CODIGO'
        ListField = 'NOME'
        ListSource = BancodeDados.dsNacional
        TabOrder = 0
      end
    end
    object tbEmail: TTabSheet
      Caption = 'Email'
      ImageIndex = 1
      object Label1: TLabel
        Left = 14
        Top = 22
        Width = 99
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nome do remetente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 40
        Top = 42
        Width = 73
        Height = 13
        Alignment = taRightJustify
        Caption = 'Servidor SMTP:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 383
        Top = 42
        Width = 30
        Height = 13
        Alignment = taRightJustify
        Caption = 'Porta:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 85
        Top = 62
        Width = 28
        Height = 13
        Alignment = taRightJustify
        Caption = 'Email:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 79
        Top = 82
        Width = 34
        Height = 13
        Alignment = taRightJustify
        Caption = 'Senha:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object EditEmailNome: TDBEdit
        Left = 116
        Top = 20
        Width = 263
        Height = 19
        DataField = 'EMAIL_REMET'
        DataSource = BancodeDados.dsConfig
        TabOrder = 0
      end
      object EditEmailServSMTP: TDBEdit
        Left = 116
        Top = 40
        Width = 263
        Height = 19
        DataField = 'EMAIL_SERV_SMTP'
        DataSource = BancodeDados.dsConfig
        TabOrder = 1
      end
      object EditEmailPorta: TDBEdit
        Left = 416
        Top = 40
        Width = 59
        Height = 19
        DataField = 'EMAIL_PORTA_SMTP'
        DataSource = BancodeDados.dsConfig
        TabOrder = 2
      end
      object EditEmailUser: TDBEdit
        Left = 116
        Top = 60
        Width = 263
        Height = 19
        DataField = 'EMAIL_USER'
        DataSource = BancodeDados.dsConfig
        TabOrder = 3
      end
      object EditEmailPass: TEdit
        Left = 116
        Top = 80
        Width = 263
        Height = 19
        PasswordChar = '*'
        TabOrder = 4
        OnChange = EditEmailPassChange
      end
      object GroupBox1: TGroupBox
        Left = 116
        Top = 124
        Width = 263
        Height = 153
        Caption = 'SSL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        object Label7: TLabel
          Left = 12
          Top = 16
          Width = 154
          Height = 13
          Caption = 'Seguran'#231'a a n'#237'vel de transporte'
        end
        object Label8: TLabel
          Left = 12
          Top = 58
          Width = 56
          Height = 13
          Caption = 'M'#233'todo SSL'
        end
        object Label9: TLabel
          Left = 12
          Top = 100
          Width = 46
          Height = 13
          Caption = 'Modo SSL'
        end
        object EditEmailNivel: TSedDBComboBox
          Left = 12
          Top = 35
          Width = 233
          Height = 22
          Style = csOwnerDrawFixed
          DataField = 'EMAIL_SSL_NIVEL'
          DataSource = BancodeDados.dsConfig
          Items.Strings = (
            'Sem TLS'
            'Expl'#237'cito'
            'Impl'#237'cito'
            'Requerido')
          Values.Strings = (
            '0'
            '1'
            '2'
            '3')
          TabOrder = 0
        end
        object EditEmailMetodo: TSedDBComboBox
          Left = 12
          Top = 77
          Width = 233
          Height = 22
          Style = csOwnerDrawFixed
          DataField = 'EMAIL_SSL_METODO'
          DataSource = BancodeDados.dsConfig
          Items.Strings = (
            'SSL v2'
            'SSL v23'
            'SSL v3'
            'TLS v1')
          Values.Strings = (
            '0'
            '1'
            '2'
            '3')
          TabOrder = 1
        end
        object EditEmailModo: TSedDBComboBox
          Left = 12
          Top = 119
          Width = 233
          Height = 22
          Style = csOwnerDrawFixed
          DataField = 'EMAIL_SSL_MODO'
          DataSource = BancodeDados.dsConfig
          Items.Strings = (
            'Ambos'
            'Cliente'
            'Servidor'
            'N'#227'o associado')
          Values.Strings = (
            '0'
            '1'
            '2'
            '3')
          TabOrder = 2
        end
      end
      object btTestar: TButton
        Left = 20
        Top = 237
        Width = 75
        Height = 25
        Caption = 'Testar'
        TabOrder = 7
        Visible = False
        OnClick = btOkClick
      end
      object EditCompactar: TDBCheckBox
        Left = 116
        Top = 104
        Width = 113
        Height = 17
        Caption = 'Compactar Anexo?'
        DataField = 'EMAIL_COMPACTAR_ANEXO'
        DataSource = BancodeDados.dsConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
    end
    object tbMsg: TTabSheet
      Caption = 'Mensagem'
      ImageIndex = 1
      object Image4: TImage
        Left = -132
        Top = -306
        Width = 622
        Height = 584
        AutoSize = True
        Picture.Data = {
          0A544A504547496D61676551530000FFD8FFE000104A46494600010101012C01
          2C0000FFE100224578696600004D4D002A000000080001011200030000000100
          01000000000000FFE13222687474703A2F2F6E732E61646F62652E636F6D2F78
          61702F312E302F003C3F787061636B657420626567696E3D22EFBBBF22206964
          3D2257354D304D7043656869487A7265537A4E54637A6B633964223F3E0D0A3C
          783A786D706D65746120786D6C6E733A783D2261646F62653A6E733A6D657461
          2F2220783A786D70746B3D2241646F626520584D5020436F726520352E332D63
          3031312036362E3134353636312C20323031322F30322F30362D31343A35363A
          32372020202020202020223E0D0A093C7264663A52444620786D6C6E733A7264
          663D22687474703A2F2F7777772E77332E6F72672F313939392F30322F32322D
          7264662D73796E7461782D6E7323223E0D0A09093C7264663A44657363726970
          74696F6E207264663A61626F75743D222220786D6C6E733A786D703D22687474
          703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F223E0D0A090909
          3C786D703A43726561746F72546F6F6C3E41646F62652046697265776F726B73
          20435336202857696E646F7773293C2F786D703A43726561746F72546F6F6C3E
          0D0A0909093C786D703A437265617465446174653E323032312D30352D323754
          32303A31303A33365A3C2F786D703A437265617465446174653E0D0A0909093C
          786D703A4D6F64696679446174653E323032312D30352D32375432303A31323A
          35305A3C2F786D703A4D6F64696679446174653E0D0A09093C2F7264663A4465
          736372697074696F6E3E0D0A09093C7264663A4465736372697074696F6E2072
          64663A61626F75743D222220786D6C6E733A64633D22687474703A2F2F707572
          6C2E6F72672F64632F656C656D656E74732F312E312F223E0D0A0909093C6463
          3A666F726D61743E696D6167652F6A7065673C2F64633A666F726D61743E0D0A
          09093C2F7264663A4465736372697074696F6E3E0D0A093C2F7264663A524446
          3E0D0A3C2F783A786D706D6574613E0D0A202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020200A20202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020200A2020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020202020200A
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020200A202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020200A20202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020200A2020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020200A202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020200A20202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020202020200A2020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20200A2020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020200A202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020200A20202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020200A2020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020200A202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020200A20202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          0A20202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020200A2020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020200A202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020200A20202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020200A2020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020200A202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020200A20
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020200A20202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020200A2020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020200A202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020200A20202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020200A2020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020200A202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          200A202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020200A20202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020200A2020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020200A202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020200A20202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020200A2020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020202020200A
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020200A202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020200A20202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020200A2020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020200A202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020200A20202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020202020200A2020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20200A2020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020200A202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020200A20202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020200A2020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020200A202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020200A20202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          0A20202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020200A2020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020200A202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020200A20202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020200A2020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020200A202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020200A20
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020200A20202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020200A2020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020200A202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020200A20202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020200A2020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020200A202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          200A202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020200A20202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020200A2020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020200A202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020200A20202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020200A2020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020202020200A
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020200A202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020200A20202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020200A2020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020200A202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020200A20202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020202020200A2020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20200A2020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020200A202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020200A20202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020200A2020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020200A202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020200A20202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          0A20202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020200A2020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020200A202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020200A20202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020200A2020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020200A202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020200A20
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020200A20202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020200A2020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020200A202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020200A20202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020200A2020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020200A202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          200A202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020200A20202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020200A2020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020200A202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020200A20202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020200A2020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020202020200A
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020200A202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020200A20202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020200A2020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020200A202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020200A20202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020202020200A2020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20200A2020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020200A202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020200A20202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020200A2020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020200A202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020200A20202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          0A20202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020200A2020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020200A202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020200A20202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020200A2020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020200A202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020200A20
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020200A20202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020203C3F787061636B65
          7420656E643D2777273F3EFFDB00430002010102010102020202020202020305
          03030303030604040305070607070706070708090B0908080A0807070A0D0A0A
          0B0C0C0C0C07090E0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C
          0807080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC00011080248026E0301
          2200021101031101FFC4001F0000010501010101010100000000000000000102
          030405060708090A0BFFC400B5100002010303020403050504040000017D0102
          0300041105122131410613516107227114328191A1082342B1C11552D1F02433
          627282090A161718191A25262728292A3435363738393A434445464748494A53
          5455565758595A636465666768696A737475767778797A838485868788898A92
          939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7
          C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FA
          FFC4001F0100030101010101010101010000000000000102030405060708090A
          0BFFC400B5110002010204040304070504040001027700010203110405213106
          1241510761711322328108144291A1B1C109233352F0156272D10A162434E125
          F11718191A262728292A35363738393A434445464748494A535455565758595A
          636465666768696A737475767778797A82838485868788898A92939495969798
          999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4
          D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002
          110311003F00F17A28A2BDC330A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800DB9FA7AD19AEA3E156831E
          B1E2066B88639A1B78F71565DCA49F635E8DFF0008AE92B8CE9BA7FAFF00A84F
          F0A5CC0788D15EDDFF00089E93FF0040FD3BFF0001D3FC28FF00844F49FF00A0
          7E9DFF0080E9FE147301E23457B77FC227A4FF00D03F4EFF00C074FF000A3FE1
          13D27FE81FA77FE03A7F852E603C468ED5EDDFF089E93FF40FD3BFF01D3FC281
          E14D23247F6769BF2F38F213A7E547301E258F5E3FCFAD2575DF16BC336FA16A
          16F35B42904570A432AAE1777A607D6B91AA00A28A2800A28A2800A28A2800A2
          8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
          8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
          8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
          8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28ABF67E19D4350B7
          F360B3B89A36CED6442C38E3D2803BDF82BA6FD9F429EE48C35C49B57E8BFE4F
          E558FF0019F50326BF042A5BF731E4E0F5C9AEEBC21A6FF63786ECADD976C8B1
          82EB9E8C4F4FCC915E6BF132492F3C637588DD84602AED53C8EB53BB039CDEDE
          A68DEDEA69FE437FCF393FEF93FE14790DFF003CE4FF00BE4FF85500CDEDEA68
          DEDEA69FE437FCF393FEF93FE14790DFF3CE4FFBE4FF008500337B7A9AEABE11
          5F18BC5CB1B33626460013D08E7F966B98F21BFE79C9FF007C9FF0AD6F03CB2E
          9DE2CB1976C817CDC1250F00FCBE94AC077BF17F4EFB67848C8A3E6B5903FD41
          C83FCEBCA2BDD35DB0FED4D1EEADC8FF005D1B01F8D78D5D785F52B0B76966B1
          B88A34196664381FA524C0A14514550051451400514514005145140051451400
          5145140051451400514514005145140051451400514514005145140051451400
          5145140051451400514514005145140051451400514514005145140051451400
          5145140051451400514514005145140051451400514514005145140051451400
          5145140051451400514514005145140057A2FC28F125E5CD9C7A7C56AA6DED72
          6498B74DCC4D79D57A27C0CFF53A80EDBA3FFD9A94B603BCC535A1476DCCAA49
          EE4552D6FC4B67E1D851AEE5F2C48405E3713EFC55C8A559E2578DB72380C0FB
          5400BE427F717F2A3C84FEE2FE558379F13746D3EEA4864BA6DF19DA71192323
          F0A8BFE16D689FF3F0FF00F7E9BFC2803A3F213FB8BF951E427F717F2AE73FE1
          6D689FF3F0FF00F7E9BFC28FF85B5A27FCFC3FFDFA6FF0A7A81D1F909FDC5FCA
          810A2B06D8B95E871D2B9FB7F8A5A2DD4EB1ADD36E63B4168980CD7454B500AE
          3FE2B6BD75A6696D6FF6746B5BC1B449BBE6523DABA0D3BC5363A9EA9359C33E
          FB887EF2E3D2B9EF8D7C787ADFFEBE07F23401E61599AA6B53595D98D635DA00
          20B03CD69D15C799E12BE228FB3C3D574DDEF74AFA76DD7F48FAEE0BCFB2BCA3
          1EF159B60238CA7CAD284A6E0949B5695D295DA49AB34D6B7DD230FF00E125B8
          FEEC3F91FF001A3FE125B8FEEC3F91FF001ADCA2BE7FFD5FCD3FE83E5FF80FFF
          006C7EADFF00115B823FE897A7FF0083DFFF002A30FF00E125B8FEEC3F91FF00
          1A3FE125B8FEEC3F91FF001ADCA28FF57F34FF00A0F97FE03FFDB07FC456E08F
          FA25E9FF00E0F7FF00CA8C3FF8496E3FBB0FE47FC68FF8496E3FBB0FE47FC6B7
          28A3FD5FCD3FE83E5FF80FFF006C1FF115B823FE897A7FF83DFF00F2A30FFE12
          5B8FEEC3F91FF1A3FE125B8FEEC3F91FF1ADCA28FF0057F34FFA0F97FE03FF00
          DB07FC456E08FF00A25E9FFE0F7FFCA8C3FF008496E3FBB0FE47FC68FF008496
          E3FBB0FE47FC6B728A3FD5FCD3FE83E5FF0080FF00F6C1FF00115B823FE897A7
          FF0083DFFF002A30FF00E125B8FEEC3F91FF001A3FE125B8FEEC3F91FF001ADC
          A28FF57F34FF00A0F97FE03FFDB07FC456E08FFA25E9FF00E0F7FF00CA8C3FF8
          496E3FBB0FE47FC68FF8496E3FBB0FE47FC6B728A3FD5FCD3FE83E5FF80FFF00
          6C1FF115B823FE897A7FF83DFF00F2A0A28A2BEC0FE7B0A28A2800A28A2800A2
          8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
          8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
          8A2800A28A2800A28A2800A28A2800A28A2800A28A2800AF40F821751A35FC3B
          9448E519149E580DD9FCB35E7F57FC2D2B45E23B12ACCA7CE51C1C646714303A
          CF8E277DF69FFDDF2D875F715D6F8059A4F0669FE6677795DC761D3FFD753788
          3C2D67E288163BA8D9FCB25D4AFCB591F14AE24D27C1F1FD95DADF64A883CB3B
          3E5E78E3B7B567E4060EABF07AFAE3519E486E2DDA39246650D9079AADFF000A
          6353FF009F8B5FFBECFF008573BFF0936A59FF009085EFFDFE6FF1A3FE128D4B
          FE82179FF7F9BFC6AACD01D17FC298D4FF00E7E2D7FEFB3FE147FC298D4FFE7E
          2D7FEFB3FE15CEFF00C251A97FD042F3FEFF0037F8D1FF000946A5FF00410BCF
          FBFCDFE34F503A6B6F82B7E6E2312DC5BAC79F9B6E4D7A4C85BCA6603A0C8AF1
          0FF849F52C7FC842F7FEFF00B7F8D77FF07753B8D42C6ECDC5C4D3E2400798E5
          B1C7BD2770396F87AD237C4384FCDBC33EF03BF073F9574FF1A2E13FB0ADA32C
          BE634DB82E7E6E879FA574361E0FD3F4BD626BE8630B71364925B85F5C0AF35F
          8A72349E34BA0CCCC1428009E9F2FF00F5E925A81CED14515601451450014514
          5001451450014514500145145001451450014514500145145001451450014514
          5001451450014514500145145001451450014514500145145001451450014514
          5001451450014514500145145001451450014514500145145001451450014514
          500145145001451450014514500145145001451450014514500156B44B85B4D6
          6D6673B638E54663E8335568C71401EE03C57A5B81FF00130B11F5996B97F8B7
          E21B1BDF0EA5BC3750DC486556C46FBB18CFA66BCDF1C74A00C54F2EA0145145
          5005145140057A07C16D42DE082EE19258E3959832A96DA4FE75E7F40E0D0C0F
          7CFB6C60FF00AC8FFEFE2FF8D78FFC43BC8B50F175E490B0923F94061DF0B8AC
          3DD47F8E6925600A28A298051451400514514005145140051451400514514005
          1451400514514005145140051451400514514005145140051451400514514005
          1451400514514005145140051451400514514005145140051451400514514005
          1451400514514005145140051451400514514005145140051451400514514005
          145140051451400514514005145140051451400514514019FAAEB0FA7DCA22A2
          B0C6E39EFCFF00F5AB42B0FC4BFF001FCBFF005CC7F335B95F3393E36BD6CC31
          94AA4AF1838F2AED74EFF923F68F11386F2DCBF84F87F1F83A4A157114EABA92
          4DDE6E2E9D9BBB6B4E676B5B476D92B1451457D31F8B85145140051451400514
          5140051451400514514005145140051451400514514005145140051451400514
          5140051451400514514005145140051451400514514005145140051451400514
          5140051451400514514005145140051451400514514005145140051451400514
          5140051451400514514005145140051451400514514005145140051451400514
          51400514514005145140187E25FF008FE5FF00AE63F99ADCAC3F12FF00C7F2FF
          00D731FCCD6E57C7F0FF00FC8D31FF00E28FFEDC7F4278AFFF0024470BFF00D7
          BAFF009D20A28A2BEC0FE7B0A28A2800A28A2800A28A2800A28A2800A28A2800
          A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
          A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
          A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
          A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2803
          0FC4BFF1FCBFF5CC7F335B9587E25FF8FE5FFAE63F99ADCAF8FE1FFF0091A63F
          FC51FF00DB8FE84F15FF00E488E17FFAF75FF3A41451457D81FCF61451450014
          5145001451450014514500145145001451450014514500145145001451450014
          5145001451450014514500145145001451450014514500145145001451450014
          5145001451450014514500145145001451450014514500145145001451450014
          5145001451450014514500145145001451450014514500145145001451450014
          51450014514500145145001451450061F897FE3F97FEB98FE66B72B0FC4BFF00
          1FCBFF005CC7F335B95F1FC3FF00F234C7FF008A3FFB71FD09E2BFFC911C2FFF
          005EEBFE74828A28AFB03F9EC28A28A0028A28A0028A28A0028A28A0028A28A0
          028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0
          028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0
          028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0
          028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0
          0C3F12FF00C7F2FF00D731FCCD6E561F897FE3F97FEB98FE66B72BE3F87FFE46
          98FF00F147FF006E3FA13C57FF00922385FF00EBDD7FCE90514515F607F3D851
          4514005145140051451400514514005145140051451400514514005145140051
          4514005145140051451400514514005145140051451400514514005145140051
          4514005145140051451400514514005145140051451400514514005145140051
          4514005145140051451400514514005145140051451400514514005145140051
          4514005145140051451400514514005145140187E25FF8FE5FFAE63F99ADCAC3
          F12FFC7F2FFD731FCCD6E57C7F0FFF00C8D31FFE28FF00EDC7F4278AFF00F244
          70BFFD7BAFF9D20A28A2BEC0FE7B0A28A2800A28A2800A28A2800A28A2800A28
          A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28
          A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28
          A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28
          A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28
          A28030FC4BFF001FCBFF005CC7F335B9587E25FF008FE5FF00AE63F99ADCAF8F
          E1FF00F91A63FF00C51FFDB8FE84F15FFE488E17FF00AF75FF003A41451457D8
          1FCF614514500145145001451450014514500145145001451450014514500145
          1450014514500145145001451450014514500145145001451450014514500145
          1450014514500145145001451450014514500145145001451450014514500145
          1450014514500145145001451450014514500145145001451450014514500145
          14500145145001451450014514500145145001451450061F897FE3F97FEB98FE
          66B72B0FC4BFF1FCBFF5CC7F335B95F1FC3FFF00234C7FF8A3FF00B71FD09E2B
          FF00C911C2FF00F5EEBFE74828A28AFB03F9EC28A28A0028A28A0028A28A0028
          A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
          A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
          A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
          A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028
          A28A0028A28A00C3F12FFC7F2FFD731FCCD6E51457C7F0FF00FC8D31FF00E28F
          FEDC7F4278AFFF0024470BFF00D7BAFF009D20A28A2BEC0FE7B0A28A2800A28A
          2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2803FFD9}
      end
      object DBMemo1: TDBMemo
        Left = 0
        Top = 0
        Width = 490
        Height = 290
        Align = alClient
        DataField = 'MSG'
        DataSource = BancodeDados.dsConfig
        ScrollBars = ssBoth
        TabOrder = 0
      end
    end
    object tbImagens: TTabSheet
      Caption = 'Imagens'
      ImageIndex = 2
      object Label26: TLabel
        Left = 14
        Top = 17
        Width = 41
        Height = 14
        Caption = 'Padr'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label27: TLabel
        Left = 151
        Top = 17
        Width = 58
        Height = 14
        Caption = 'Prefeitura:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object Label57: TLabel
        Left = 17
        Top = 156
        Width = 266
        Height = 14
        Caption = 'Largura m'#237'nima = 96 pixel'#39's - Altura m'#237'nima = 100 pixel'#39's'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object EditLogo1: TSedDBImage
        Left = 14
        Top = 30
        Width = 89
        Height = 94
        DataField = 'LOGO'
        DataSource = BancodeDados.dsConfig
        PopupMenu = PopupMenu3
        Stretch = True
        TabOrder = 0
        OnDblClick = EditLogo1DblClick
      end
      object EditLogo2: TSedDBImage
        Left = 151
        Top = 30
        Width = 89
        Height = 94
        DataField = 'LOGO_PREFEITURA'
        DataSource = BancodeDados.dsConfig
        Stretch = True
        TabOrder = 1
        Visible = False
        OnDblClick = EditLogo2DblClick
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'NFSe'
      ImageIndex = 3
      object Label52: TLabel
        Left = 14
        Top = 15
        Width = 106
        Height = 14
        Alignment = taRightJustify
        Caption = 'Cert. Digital (N. S'#233'rie):'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label53: TLabel
        Left = 72
        Top = 36
        Width = 48
        Height = 14
        Alignment = taRightJustify
        Caption = 'Ambiente:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label61: TLabel
        Left = 12
        Top = 58
        Width = 106
        Height = 14
        Alignment = taRightJustify
        Caption = 'Percentual de ISS(%):'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label81: TLabel
        Left = 92
        Top = 83
        Width = 28
        Height = 14
        Alignment = taRightJustify
        Caption = 'S'#233'rie:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label21: TLabel
        Left = 59
        Top = 103
        Width = 61
        Height = 14
        Alignment = taRightJustify
        Caption = 'Tipo de RPS:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label25: TLabel
        Left = 53
        Top = 123
        Width = 67
        Height = 14
        Alignment = taRightJustify
        Caption = 'C'#243'digo CNAE:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label24: TLabel
        Left = 276
        Top = 58
        Width = 55
        Height = 14
        Alignment = taRightJustify
        Caption = 'ISS Retido?'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label16: TLabel
        Left = 13
        Top = 143
        Width = 105
        Height = 14
        Alignment = taRightJustify
        Caption = 'C'#243'digo de Tributa'#231#227'o:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label18: TLabel
        Left = 269
        Top = 80
        Width = 64
        Height = 14
        Alignment = taRightJustify
        Caption = 'N. S'#233'rie RPS:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label34: TLabel
        Left = 5
        Top = 164
        Width = 113
        Height = 14
        Alignment = taRightJustify
        Caption = 'C'#243'd. Atividade do Mun.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label35: TLabel
        Left = 95
        Top = 186
        Width = 23
        Height = 14
        Alignment = taRightJustify
        Caption = 'Tipo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label36: TLabel
        Left = 279
        Top = 103
        Width = 54
        Height = 14
        Alignment = taRightJustify
        Caption = 'Seq. NFSE:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object EditNSerie: TDBEdit
        Left = 124
        Top = 12
        Width = 262
        Height = 20
        AutoSelect = False
        DataField = 'NFSE_CERT_DIG_NUM_SERIE'
        DataSource = BancodeDados.dsConfig
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object EditAmbiente: TSedDBComboBox
        Left = 124
        Top = 34
        Width = 126
        Height = 22
        Style = csOwnerDrawFixed
        BevelKind = bkFlat
        DataField = 'NFSE_AMBIENTE'
        DataSource = BancodeDados.dsConfig
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Items.Strings = (
          'Produ'#231#227'o'
          'Homologa'#231#227'o')
        ParentFont = False
        Values.Strings = (
          '1'
          '2')
        TabOrder = 1
      end
      object EditPercISS: TDBEdit
        Left = 124
        Top = 57
        Width = 126
        Height = 20
        AutoSelect = False
        DataField = 'PERC_ISS'
        DataSource = BancodeDados.dsConfig
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object EditSerie: TDBEdit
        Left = 124
        Top = 78
        Width = 126
        Height = 20
        AutoSelect = False
        DataField = 'NFSERIE'
        DataSource = BancodeDados.dsConfig
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object EditTipoRPS: TDBEdit
        Left = 124
        Top = 99
        Width = 126
        Height = 20
        AutoSelect = False
        DataField = 'NFSE_TIPO_RPS'
        DataSource = BancodeDados.dsConfig
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object EditCodigoCNAE: TDBEdit
        Left = 124
        Top = 120
        Width = 126
        Height = 20
        AutoSelect = False
        DataField = 'CNAE'
        DataSource = BancodeDados.dsConfig
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      object SedDBComboBox1: TSedDBComboBox
        Left = 337
        Top = 53
        Width = 67
        Height = 22
        Style = csOwnerDrawFixed
        BevelKind = bkFlat
        DataField = 'NFSE_RETER_ISS'
        DataSource = BancodeDados.dsConfig
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Items.Strings = (
          'N'#195'O'
          'SIM')
        ParentFont = False
        Values.Strings = (
          '0'
          '1')
        TabOrder = 3
      end
      object EditCodTribuSErv: TDBEdit
        Left = 124
        Top = 141
        Width = 126
        Height = 20
        AutoSelect = False
        DataField = 'NFSE_COD_TRIB_SERV'
        DataSource = BancodeDados.dsConfig
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
      end
      object EditNumerSerieRPS: TDBEdit
        Left = 337
        Top = 76
        Width = 67
        Height = 20
        AutoSelect = False
        DataField = 'NFSE_N_RPS'
        DataSource = BancodeDados.dsConfig
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object EditAtvidaMunic: TDBEdit
        Left = 124
        Top = 162
        Width = 126
        Height = 20
        AutoSelect = False
        DataField = 'NFSE_COD_ATV_MUN'
        DataSource = BancodeDados.dsConfig
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
      end
      object SedDBComboBox3: TSedDBComboBox
        Left = 123
        Top = 184
        Width = 128
        Height = 22
        Style = csDropDownList
        BevelKind = bkFlat
        DataField = 'TIPO_CLIENT'
        DataSource = BancodeDados.dsConfig
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Items.Strings = (
          'SEDSoft'
          'Y'#225'zigi'
          'Outros')
        ParentFont = False
        Values.Strings = (
          '1'
          '2'
          '3'
          '')
        TabOrder = 10
      end
      object editSeqNfse: TDBEdit
        Left = 337
        Top = 97
        Width = 67
        Height = 20
        AutoSelect = False
        Color = clMenu
        DataField = 'NFSE_SEQ_NUM'
        DataSource = BancodeDados.dsConfig
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupMenu2
        ReadOnly = True
        TabOrder = 11
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Financeiro'
      ImageIndex = 6
      object Label32: TLabel
        Left = 17
        Top = 24
        Width = 98
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Tipo de Instru'#231#245'es:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label22: TLabel
        Left = 62
        Top = 46
        Width = 52
        Height = 14
        Alignment = taRightJustify
        Caption = 'Chave PIX:'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label38: TLabel
        Left = 11
        Top = 68
        Width = 103
        Height = 14
        Alignment = taRightJustify
        Caption = 'Valor Semanal (Opc):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label50: TLabel
        Left = 240
        Top = 68
        Width = 130
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Vl. Quebra de Contrato:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object SedDBComboBox2: TSedDBComboBox
        Left = 117
        Top = 22
        Width = 362
        Height = 20
        Style = csOwnerDrawFixed
        BevelKind = bkFlat
        Color = clWhite
        DataField = 'TIPO_BOLETO'
        DataSource = BancodeDados.dsConfig
        ItemHeight = 14
        Items.Strings = (
          'Gerar descri'#231#245'es com base no vencimento e desconto (padr'#227'o)'
          'Personalizar as descri'#231#245'es por tipo de desconto'
          'Dia fixo para expirar desconto dentro do m'#234's de vencimento')
        Values.Strings = (
          '0'
          '1'
          '2')
        TabOrder = 0
      end
      object EditChave_PIX: TDBEdit
        Left = 117
        Top = 44
        Width = 362
        Height = 19
        Color = clWhite
        DataField = 'CHAVE_PIX'
        DataSource = BancodeDados.dsConfig
        Enabled = False
        TabOrder = 1
      end
      object EditValorMensal: TDBEdit
        Left = 117
        Top = 65
        Width = 106
        Height = 20
        AutoSelect = False
        DataField = 'VALOR'
        DataSource = BancodeDados.dsConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object EditVlContrato: TDBEdit
        Left = 373
        Top = 65
        Width = 106
        Height = 20
        AutoSelect = False
        DataField = 'VL_MULT_CONTRATUAL'
        DataSource = BancodeDados.dsConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 342
    Top = 40
    object altera: TMenuItem
      Caption = 'Modificar'
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 'Imagens JPEG|*.jpg;*.jpeg'
    Left = 430
    Top = 44
  end
  object PopupMenu2: TPopupMenu
    Left = 380
    Top = 40
    object Modificar1: TMenuItem
      Caption = 'Modificar'
      OnClick = Modificar1Click
    end
  end
  object PopupMenu3: TPopupMenu
    Left = 40
    Top = 180
    object InserirFoto1: TMenuItem
      Caption = 'Inserir Imagem...'
      OnClick = EditLogo1DblClick
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object CapturarImagem1: TMenuItem
      Caption = 'Capturar Imagem'
      Visible = False
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object ExcluirFoto1: TMenuItem
      Caption = 'Excluir Foto...'
      OnClick = ExcluirFoto1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object SalvarImagemnoDisco1: TMenuItem
      Caption = 'Salvar Imagem no Disco'
      Visible = False
    end
  end
end
