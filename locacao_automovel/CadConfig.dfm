object CadConfigForm: TCadConfigForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro do Locador'
  ClientHeight = 337
  ClientWidth = 498
  Color = clWindow
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 498
    Height = 306
    ActivePage = TabSheet4
    Align = alClient
    TabOrder = 0
    object TabSheet5: TTabSheet
      Caption = 'Pessoa F'#237'sica'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label37: TLabel
        Left = 84
        Top = 13
        Width = 35
        Height = 14
        Alignment = taRightJustify
        Caption = 'Nome:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
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
        Font.Color = clWindowText
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
        Font.Color = clBlack
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
        Font.Color = clBlack
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
        Font.Color = clBlack
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
        Font.Color = clBlack
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
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label44: TLabel
        Left = 62
        Top = 220
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
        Left = 71
        Top = 241
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
      object Label45: TLabel
        Left = 41
        Top = 198
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
        Left = 394
        Top = 157
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
        Left = 41
        Top = 178
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
        Left = 41
        Top = 157
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
      object Label47: TLabel
        Left = 41
        Top = 136
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
        Top = 216
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
        ParentColor = True
        TabOrder = 12
      end
      object EditPF_Profissao: TDBEdit
        Left = 121
        Top = 238
        Width = 273
        Height = 19
        AutoSelect = False
        Color = clWhite
        DataField = 'PROFISSAO'
        DataSource = BancodeDados.dsConfig
        TabOrder = 13
      end
      object EditPF_RGOrgao: TDBLookupComboBox
        Left = 121
        Top = 175
        Width = 271
        Height = 19
        DataField = 'RG_ORG_ID'
        DataSource = BancodeDados.dsConfig
        KeyField = 'ORG_ID'
        ListField = 'ORG_EXPED'
        ListSource = BancodeDados.dsOrgExped
        TabOrder = 10
      end
      object EditPF_Passaporte: TDBEdit
        Left = 121
        Top = 195
        Width = 181
        Height = 20
        Color = clWhite
        DataField = 'PASSAPORTE'
        DataSource = BancodeDados.dsConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
      end
      object EditPF_RgUF: TSedDBComboBox
        Left = 418
        Top = 153
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
        TabOrder = 9
      end
      object EditPF_RGExp: TSedDbDateEdit
        Left = 121
        Top = 154
        Width = 111
        Height = 19
        DataField = 'RG_DATA'
        DataSource = BancodeDados.dsConfig
        MaxLength = 10
        TabOrder = 8
      end
      object EditPF_RG: TDBEdit
        Left = 121
        Top = 133
        Width = 167
        Height = 20
        Color = clWhite
        DataField = 'RG'
        DataSource = BancodeDados.dsConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Empresa(OFF)'
      ImageIndex = 4
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label2: TLabel
        Left = 47
        Top = 11
        Width = 70
        Height = 14
        Alignment = taRightJustify
        Caption = 'Raz'#227'o Social:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
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
        Font.Color = clBlack
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
        Font.Color = clBlack
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
        Font.Color = clBlack
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
        Font.Color = clBlack
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
        Font.Color = clBlack
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
        Font.Color = clBlack
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
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label12: TLabel
        Left = 50
        Top = 139
        Width = 67
        Height = 14
        Alignment = taRightJustify
        Caption = 'Telefone Fixo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
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
        Font.Color = clBlack
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
        Font.Color = clBlack
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
        Font.Color = clBlack
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
        Font.Color = clBlack
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
        Font.Color = clBlack
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
        Font.Color = clBlack
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
        Font.Color = clBlack
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
        Font.Color = clBlack
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
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label1: TLabel
        Left = 14
        Top = 22
        Width = 99
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nome do remetente:'
      end
      object Label3: TLabel
        Left = 40
        Top = 42
        Width = 73
        Height = 13
        Alignment = taRightJustify
        Caption = 'Servidor SMTP:'
      end
      object Label4: TLabel
        Left = 383
        Top = 42
        Width = 30
        Height = 13
        Alignment = taRightJustify
        Caption = 'Porta:'
      end
      object Label5: TLabel
        Left = 85
        Top = 62
        Width = 28
        Height = 13
        Alignment = taRightJustify
        Caption = 'Email:'
      end
      object Label6: TLabel
        Left = 79
        Top = 82
        Width = 34
        Height = 13
        Alignment = taRightJustify
        Caption = 'Senha:'
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
        Left = 400
        Top = 252
        Width = 75
        Height = 25
        Caption = 'Testar'
        TabOrder = 7
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
        TabOrder = 5
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
    end
    object tbMsg: TTabSheet
      Caption = 'Mensagem'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBMemo1: TDBMemo
        Left = 0
        Top = 0
        Width = 490
        Height = 278
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
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label26: TLabel
        Left = 14
        Top = 17
        Width = 41
        Height = 14
        Caption = 'Padr'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
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
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label57: TLabel
        Left = 17
        Top = 156
        Width = 266
        Height = 14
        Caption = 'Largura m'#237'nima = 96 pixel'#39's - Altura m'#237'nima = 100 pixel'#39's'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
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
        OnDblClick = EditLogo2DblClick
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'NFSe'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label52: TLabel
        Left = 14
        Top = 15
        Width = 106
        Height = 14
        Alignment = taRightJustify
        Caption = 'Cert. Digital (N. S'#233'rie):'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
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
        Font.Color = clBlack
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
        Font.Color = clBlack
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
        Font.Color = clBlack
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
        Font.Color = clBlack
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
        Font.Color = clBlack
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
        Font.Color = clBlack
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
        Font.Color = clBlack
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
        Font.Color = clBlack
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
        Font.Color = clBlack
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
        Font.Color = clBlack
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
        Font.Color = clBlack
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
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label32: TLabel
        Left = 17
        Top = 24
        Width = 98
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Tipo de Instru'#231#245'es:'
        Transparent = True
      end
      object Label22: TLabel
        Left = 62
        Top = 46
        Width = 52
        Height = 14
        Alignment = taRightJustify
        Caption = 'Chave PIX:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
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
        Font.Color = clBlack
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
        Font.Color = clBlack
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
  object Panel1: TPanel
    Left = 0
    Top = 306
    Width = 498
    Height = 31
    Align = alBottom
    BevelOuter = bvNone
    Color = clSilver
    ParentBackground = False
    TabOrder = 1
    DesignSize = (
      498
      31)
    object btOk: TButton
      Left = 416
      Top = 4
      Width = 65
      Height = 25
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = 'Gravar'
      ModalResult = 2
      TabOrder = 0
      OnClick = btOkClick
    end
    object btSair: TButton
      Left = 336
      Top = 4
      Width = 65
      Height = 25
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = 'Fechar'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 414
    Top = 172
    object altera: TMenuItem
      Caption = 'Modificar'
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 'Imagens JPEG|*.jpg;*.jpeg'
    Left = 428
    Top = 202
  end
  object PopupMenu2: TPopupMenu
    Left = 374
    Top = 174
    object Modificar1: TMenuItem
      Caption = 'Modificar'
      OnClick = Modificar1Click
    end
  end
end
