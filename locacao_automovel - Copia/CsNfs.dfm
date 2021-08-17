object CsNfsForm: TCsNfsForm
  Left = 333
  Top = 194
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Consulta de Notas Fiscais de Servi'#231'os Eletr'#244'nicas'
  ClientHeight = 482
  ClientWidth = 996
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
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object SedDBGrid1: TSedDBGrid
    Left = 0
    Top = 99
    Width = 996
    Height = 353
    Align = alClient
    DataSource = BancodeDados.dsNfs
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
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWhite
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    OnDrawColumnCell = SedDBGrid1DrawColumnCell
    OnDblClick = SedDBGrid1DblClick
    OnTitleClick = SedDBGrid1TitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'NFS_ID'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DT_RPS'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COMPETENCIA'
        Title.Caption = 'Compet'#234'ncia'
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NFSE_DT_EMISSAO'
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NFSE_NUMERO'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RPS_PROTOCOLO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_ID'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 270
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CNPJ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SitCalc'
        Width = 116
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_TOTAL'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DT_CAD'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DT_ALT'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OBS2'
        Width = 165
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 452
    Width = 996
    Height = 30
    Align = alBottom
    BevelOuter = bvNone
    Color = clGray
    ParentBackground = False
    TabOrder = 1
    DesignSize = (
      996
      30)
    object lbContadorN: TLabel
      Left = 6
      Top = 8
      Width = 184
      Height = 14
      Caption = 'Registro(s) Encontrado(s): 000000'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Gauge1: TGauge
      Left = 514
      Top = 8
      Width = 241
      Height = 15
      Anchors = [akRight, akBottom]
      Progress = 0
      Visible = False
      ExplicitLeft = 380
    end
    object BtOk: TButton
      Left = 917
      Top = 3
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = '&Ok'
      ModalResult = 1
      TabOrder = 0
    end
    object BtNovo: TButton
      Left = 841
      Top = 3
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = '&Novo'
      TabOrder = 1
      OnClick = BtNovoClick
    end
    object btImprimir: TButton
      Left = 765
      Top = 3
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = '&Imprimir'
      TabOrder = 2
      OnClick = btImprimirClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 996
    Height = 99
    Align = alTop
    BevelOuter = bvNone
    Color = clSilver
    TabOrder = 2
    DesignSize = (
      996
      99)
    object Image2: TImage
      Left = 756
      Top = 6
      Width = 239
      Height = 85
      Anchors = [akTop, akRight]
      AutoSize = True
      Picture.Data = {
        0A544A504547496D616765160F0000FFD8FFE000104A46494600010101004800
        480000FFDB004300010101010101010101010101010101010101010101010101
        0101010101010101010101010101010101010101010101010101010101010101
        0101010101010101FFDB00430101010101010101010101010101010101010101
        0101010101010101010101010101010101010101010101010101010101010101
        01010101010101010101010101FFC0001108005500EF03011100021101031101
        FFC4001E00010002020203010000000000000000000008090607010302040A05
        FFC4004A1000000503010307080705030D000000000002030405010607081197
        D6121518195657581314162194D4D5D709222331375196327677B4B717244125
        33364352556162717581A1B1FFC4001401010000000000000000000000000000
        0000FFC40014110100000000000000000000000000000000FFDA000C03010002
        110311003F00FA0000000000000000000001D2D98359ABBB1A5B921472689B9F
        29636B7265268FDFC5B8730D377CDBF1B2ACD3908B72CE459F9E3074E1A9D764
        EDB394C8A9AA8AC99F61A816A9D0A74DFD8BB8B7B19838F403A14E9BFB17716F
        633071E807429D37F62EE2DEC660E3D00E853A6FEC5DC5BD8CC1C7A01D0A74DF
        D8BB8B7B19838F403A14E9BFB17716F633071E807429D37F62EE2DEC660E3D00
        E853A6FEC5DC5BD8CC1C7A01D0A74DFD8BB8B7B19838F4073D0AB4E1D8BB877A
        F97F8F403A1569C3B1770EF5B2FF001E00742AD38762EE1DEB65FE3C00E855A7
        0EC5DC3BD6CBFC7801D0AB4E1D8BB877AD97F8F003A1569C3B1770EF5B2FF1E0
        0742AD38762EE1DEB65FE3C00E855A70EC5DC3BD6CBFC7801D0AB4E1D8BB877A
        D97F8F0041BD58625B0F0C5EF8B1963B8C95866973DBD90969B6CFAEEBC6E645
        DAF0CF6C72C62C525D53F3656AA35249BF250CCE8DEAA15C9E8B794E4A7C80D2
        800000000000000000003BA07F12F0A7F1BB10FF0051ED7017E4000000000000
        000000000000000000000002AE7E903FC40C19FBB395BF9EC720226800000000
        00000000000E867231F0F7D62497977CCE2E262B30E2B92949491748318E8D8E
        65902DB72F5FBF7AE4E93666C9A3749470E9D3851341BA299D554E4214C6A05C
        CF48DD3D77F18677A1647C7003A46E9EBBF8C33BD0B23E3801D2374F5DFC619D
        E8591F1C00E91BA7AEFE30CEF42C8F8E00748DD3D77F18677A1647C7003A46E9
        EFBF7C35BD0B23E38039E919A7BEFDF0D6F3EC9F8E00748CD3DF7EF86B79F64F
        C7003A4669EFBF7C35BCFB27E3803D536A634EC4354B5CE9892B52D765793906
        D6397FF0724A1886A7FC4B5AD0078F49AD3AF7E789BF5FDB1F1200E935A75EFC
        F137EBFB63E2401D26B4EBDF9E26FD7F6C7C4803A4D69D7BF3C4DFAFED8F8900
        749AD3AF7E789BF5FDB1F1200E935A75EFCF137EBFB63E2401D26B4EBDF9E26F
        D7F6C7C4803A4D69D7BF3C4DFAFED8F8900AF4D67E4AC7B91AFEC3A7B02F7B52
        F42C45B7930B2A6B5E7A327291C67AFAC1AB3A3DAC6B971E6D57546AE7CDFCB7
        23CAF9BADC8E57933EC0AE8BFB581A7CC6D97ECDC0F74644886794AFB4245781
        B70A63285A1A31AF9EAAC64E44BFDC23259CB5FB78F8974B1241EA34F2A8B732
        75298C12459BC41FB645D373D14496250E4353F2AFFF002BF9D007B400000000
        00000003F31DC529714ADA169A2BB466B5E77B59B66A6FDF303CAB58EF4AAE78
        880524548D4DF461DF798A52277446949065E5CE9153AB94A86A9E812E3AB59F
        F7C16A6E5DE7CDC00EAD67FDF05A9B9779F37003AB59FF007C16A6E5DE7CDC00
        EAD67FDF05A9B9779F37003AB59FF7C16A6E5DE7CDC00EAD67FDF05A9B9779F3
        7003AB59FF007C16A6E5DE7CDC00EAD67FDF05A9B9779F37003AB59FF7C16A6E
        5DE7CDC01CF56B3EEF82D5DCC3CF9B601D5ACF7BDFB57730F3E6D00756B3DEF7
        ED5DCC3CF9B401D5ACF7BDFB57730F3E6D00756B3DEF7ED5DCC3CF9B401D5ACF
        7BDFB57730F3E6D00756B3DEF7ED5DCC3CF9B401D5ACF7BDFB57730F3E6D0075
        6B3DEF7ED5DCC3CF9B4023E660C02E34E57559510E2E985BB52BDA1AED7F45E3
        ACA71692F1AADB2EAD844A99AAADDD7415EA4F139F52A6FAAD0C819A936555A2
        B5E407CDEFD2DBA3141DC9AFA82B75CBBB6E3E5A421DF5F17443A6A739581784
        0D13258F97D9512E51FF00C88F48D22AEF493294AFED359DF95E5191A9C04BCF
        A35358B2999ECB91C6B968AD6073D62C784B6328DB4454B548AF8A52D21AED86
        3D0E62BEB62F68CAB69C83926F533772DDD94C4356B536C0B62FBC0720000000
        0000003BA07F12F0A7F1BB10FF0051ED7017E400000000000000000000000000
        0000000002AE7E903FC40C19FBB395BF9EC7202145E16A42DEF6D4CDAB70B16F
        250F391EEE35FB27499556EE1ABC40EDD74954CF4A94E9A8928621CB5A6C314D
        5A7F880F995CB585F24692B3A56F3C66DE5E5722611B7652EE8C866A91CEE352
        7A3A86903C8DE78C92AA5B0B2B96F4DE478E6EAB452310F21398D3CED92353A9
        0C82403E8434E19CED3CFB8B2D2C896949A5270D72C046CE47BB257FCEB2916E
        5591F294AECE42A972AA8AE5350B52AA99E95A7DC037A51F33AD79347281ABB7
        93B0AAA66AEDFCB650D5AFFE807B25394FEB29A95FFA00F20000000001DD03F8
        97853F8DD887FA8F6B80BF2000000000000000000000000000000000001573F4
        81FE2060CFDD9CADFCF639011340689CCD826CDCCAB594E272018CCDC963DD2C
        2F3B44CF241E42A6DA4ADFAD641C2CFA6983966E23E08AC1171E909D571CDCAC
        4D174649076D4E66AA86A3C7962D9F017964A7F852CC753AC6ECB9D69A927728
        49AFECC60E5CEDD02BE658B6CD8D2346CD6D832F4F3964ACD9EA65123A7E691A
        CD9991D81205C43E4A3333796B66D190DA4FACD0D60386342D367FA8731F568E
        DBAA4FD92AA558CAEDAFD635767AC3128EB92512963443183B8E16EA6ADD77AB
        589208CBCAB2B8E3DA1796F0F8F669769E78B4DB62ED704B465794E651B154A4
        3385DC25E6F50DD96A2B71DE50ED26EDFC7196A5983B488AA4EE3713E457CD94
        29CB4352A45DB5B4AA55FC8D4A1B694D4314DB0C5AD281937A31903BA4CD5B9A
        C9BC2C01E8C640EE93356E6B26F0B007A31903BA4CD5B9AC9BC2C01E8C640EE9
        3356E6B26F0B00FC996B1B2248A6D7CDF196788B7AC1F32948E938BC4F95E3A4
        A364A35DA0FE3A423DFB2B69176C9EB27AD9074D9CB755359159222899CA62D2
        A03CB9AF547DA3D6C7B0EA2BDC8039AF547DA3D6C7B0EA2BDC8039AF547DA3D6
        C7B0EA2BDC8073CD9AA4ED1EB5FD83513EE401CD9AA4ED1EB5FD83513EE401CD
        9AA4ED1EB5FD83513EE401CD9AA4ED1EB5FD83513EE401CD9AA4ED1EB5FD8351
        3EE401CD9AA4ED1EB5FD83513EE401CD9AA4ED1EB5FD83513EE401CD9AA4ED1E
        B5FD83513EE401CD9AA4ED1EB5FD83513EE401CD9AA4ED1EB5FD83513EE401CD
        9AA4ED1EB5FD83513EE401CD9AA4ED1EB5FD83513EE401CD9AA4ED1EB5FD8351
        3EE401CD9AA4ED1EB5FD83513EE401CD9AA4ED1EB5FD83513EE4031A938EBF13
        9E86532949E6A7B2FCDD374B669985AE49476302AD0DE907A3E7BF1BA289B92B
        A905CE658E3554A72D855C539354AA0324011C352F7A1EDBB320ED560B91192C
        AB3AF609FAE8AB52BB6D65DAA930939C694314DF6084F4B3F8A62F69B28670CD
        A28D4D5F24B9A860CCF0D5CF07016D9221A9D14A89C8724FC8E47D6E5308EDA6
        A9695A54D4FCBD5B29EAFC804B7752B18DA268E6AAA6447C9275457E553ED796
        5FF0AEDF5FDFB7653D7F77AA94FB82166A51C9256CEACE433E52366A11E34928
        B9262A1D07ED9F46BB4DDB0708384E9CB2ACDDCA292A9D495A6CE4D4B5DA5AEC
        A85877D1EF961C5D12D22CCE5235637BDAD6F647422D037F7289969D6866D74B
        0629FECA2DBD288C98789204AF211A3BAA65F513600B62000000000000000000
        000000000000000000000000000158BF4835765E380F67FB97327F318A004410
        10FB5336996E498C4928E240F171D05755CF68C948553A1DA473BBEE259495A2
        E9F929F58CDA464EDE98872295E4F25D1D02514DBE4CB50DEDA6EC025A91FCBD
        DCB3A748B29431516B454946CF14F318FE49EAA27EB3B6D94DBE4FD46A57D46F
        B804D399B2A124E15CC4A4C916D4AB7311A1922ECF3658A4FB23929B7FDAA168
        6F5FAE802A87361AE58B8FB8211268F1F1235274F1D9916EA188541B6DE572D5
        AD289A65AA872A54A98F4DAA1E84FBEB40160DF466DA92EC6FF55B2C8A892161
        E36B4AD993DA439088CFB96AB5C52ECFEB6DAF2DA3B9CAB75769EB5F2C9A8535
        28729AB50BC8000000000000000000000000000000000000000000000158BF48
        37FA6380FF00ECB993F98C50022080D7F7FDB4D2E1849463211EBCC42CAB1A31
        B8219AAE46AF5E356EB11EC748443B50A74D9DC56F4A24DE6201E9CB5224F5BF
        9BAFB5A3A7243075E25CF09D8D0AB405D8CDF4CF99BF52B4BCA19A39391FB72A
        082091EECB459B477396A4E91240A493AB767236DB85EBE78C25AA8AF44930DD
        BD27B1ED53F2AD9EA3227F2755A8D6290B85FBD3727D752F9B276F6D48E5D95A
        1BCE6A8265AFED9C94DB5A0416CC7A96ADD3386616DD97E9448307A8B8B7B16C
        6396CB9646E448D5331B9B2DDD718D5EC3C4C15BAA99294618F982D312733268
        B634E9D93444C9D0265699B5397B60BB28D1AAE07693572CDBA5A62E59D77925
        54DE49CB3E50CE1E385A85B154D9551750E6E4D0F52969B0A5D85A5280249F58
        B643F0F11DBCE71C0401D62D90FC3C476F39C70100758B643F0F11DBCE71C040
        1D62D90FC3C476F39C70100758B643F0F11DBCE71C0401D62D90FC3C476F39C7
        0100758B643F0F11DBCE71C0401D62D90FC3C476F39C70100758B643F0F11DBC
        E71C0401D62D90FC3C476F39C70100758B643F0F11DBCE71C0401D62D90FC3C4
        76F39C70100758B643F0F11DBCE71C0401D62D90FC3C476F39C70100758B643F
        0F11DBCE71C0401D62D90FC3C476F39C70100758B643F0F11DBCE71C0401D62D
        90FC3C476F39C70100758B643F0F11DBCE71C0401D62D90FC3C476F39C701007
        58B643F0F11DBCE71C0401D62D90FC3C476F39C70100758B643F0F11DBCE71C0
        40342660CEF75EA22E2B1A466B1DB4B0DBD8D1D79B54FC85D0ADC679456EC56D
        353D743DBF094665645B66BEBE539AAF5774A7252F23B540C7400060377637B5
        AF140E59365549D54BB139160AA8CA411F5D0D4AA2EDA9D2709D686294DB48A1
        7D65A00D5C5D3ADB4EBEC25AE5BD6699D4FCB3B294B9A61E3657EB16B42AA938
        7CA915A52A52D7628537AE94A80DC16C5876A59CD48D2DF85651E99294A52A92
        2994FEAFF9A85A54065E00000000000000000000000000000000000000000000
        000003FFD9}
      ExplicitLeft = 622
    end
    object Label4: TLabel
      Left = 792
      Top = 37
      Width = 48
      Height = 14
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = 'Condi'#231#227'o:'
      ExplicitLeft = 782
    end
    object Label2: TLabel
      Left = 814
      Top = 11
      Width = 26
      Height = 14
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = 'Filtro:'
      ExplicitLeft = 804
    end
    object Image1: TImage
      Left = 0
      Top = 0
      Width = 195
      Height = 81
      AutoSize = True
    end
    object Label1: TLabel
      Left = 26
      Top = 9
      Width = 45
      Height = 14
      Alignment = taRightJustify
      Caption = 'Situa'#231#227'o:'
    end
    object Label7: TLabel
      Left = 8
      Top = 31
      Width = 63
      Height = 14
      Alignment = taRightJustify
      Caption = 'Tipo de Data:'
    end
    object Label5: TLabel
      Left = 44
      Top = 52
      Width = 27
      Height = 14
      Alignment = taRightJustify
      Caption = 'Incial:'
    end
    object Label6: TLabel
      Left = 46
      Top = 72
      Width = 25
      Height = 14
      Alignment = taRightJustify
      Caption = 'Final:'
    end
    object BtExecutar1: TSpeedButton
      Left = 176
      Top = 50
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
      OnClick = BtExecutar1Click
    end
    object lbTempoNFS: TLabel
      Left = 931
      Top = 86
      Width = 59
      Height = 14
      Alignment = taRightJustify
      Caption = 'lbTempoNFS'
      Visible = False
    end
    object CBOpcao: TComboBox
      Left = 844
      Top = 9
      Width = 147
      Height = 19
      BevelKind = bkFlat
      BevelOuter = bvNone
      Style = csOwnerDrawFixed
      Anchors = [akTop, akRight]
      Ctl3D = False
      ItemHeight = 13
      ItemIndex = 3
      ParentCtl3D = False
      TabOrder = 0
      Text = 'Cliente'
      Items.Strings = (
        'C'#243'digo RPS'
        'N'#250'mero NFSe.'
        'C'#243'd. Cli.'
        'Cliente')
    end
    object EditConsulta: TEdit
      Left = 804
      Top = 63
      Width = 186
      Height = 17
      Anchors = [akTop, akRight]
      BorderStyle = bsNone
      TabOrder = 1
      OnKeyDown = EditConsultaKeyDown
    end
    object CBTipo: TComboBox
      Left = 844
      Top = 35
      Width = 147
      Height = 19
      BevelKind = bkFlat
      BevelOuter = bvNone
      Style = csOwnerDrawFixed
      Anchors = [akTop, akRight]
      ItemHeight = 13
      ItemIndex = 1
      TabOrder = 2
      Text = 'Contendo...'
      Items.Strings = (
        'Come'#231'ando por...'
        'Contendo...'
        'Igual '#224'...')
    end
    object cbSituacao: TComboBox
      Left = 75
      Top = 4
      Width = 120
      Height = 21
      BevelKind = bkFlat
      Style = csOwnerDrawFixed
      ItemHeight = 15
      ItemIndex = 0
      TabOrder = 3
      Text = 'Todas'
      OnChange = BtExecutar1Click
      Items.Strings = (
        'Todas'
        'Aberta'
        'Fechada'
        'Cancelada'
        'Aguardando proces.'
        'Enviada')
    end
    object cbTipoData: TComboBox
      Left = 75
      Top = 27
      Width = 120
      Height = 21
      BevelKind = bkFlat
      Style = csOwnerDrawFixed
      ItemHeight = 15
      ItemIndex = 1
      TabOrder = 4
      Text = 'Emiss'#227'o RPS'
      OnChange = BtExecutar1Click
      Items.Strings = (
        'Todas'
        'Emiss'#227'o RPS'
        'Emiss'#227'o NFSe'
        'Fechamento'
        'Envio')
    end
    object Dt_Inicial: TSedDateEdit
      Left = 75
      Top = 49
      Width = 100
      Height = 20
      OnAfterAcceptDateTime = Dt_InicialAfterAcceptDateTime
      MaxLength = 10
      TabOrder = 5
    end
    object Dt_Final: TSedDateEdit
      Left = 75
      Top = 70
      Width = 100
      Height = 20
      OnAfterAcceptDateTime = Dt_InicialAfterAcceptDateTime
      MaxLength = 10
      TabOrder = 6
    end
  end
  object memoCorpo: TMemo
    Left = 302
    Top = 302
    Width = 377
    Height = 147
    ScrollBars = ssBoth
    TabOrder = 3
    Visible = False
  end
  object ListBox1: TListBox
    Left = 765
    Top = 312
    Width = 205
    Height = 97
    ItemHeight = 14
    TabOrder = 4
    Visible = False
  end
  object MainMenu1: TMainMenu
    Left = 232
    Top = 204
    object CtrlE1: TMenuItem
      Caption = 'Ctrl+E'
      ShortCut = 16453
      Visible = False
      OnClick = SedDBGrid1DblClick
    end
    object F31: TMenuItem
      Caption = 'F3'
      ShortCut = 114
      Visible = False
      OnClick = BtExecutar1Click
    end
  end
  object PopupMenu1: TPopupMenu
    OnChange = PopupMenu1Change
    Left = 410
    Top = 244
    object Editar1: TMenuItem
      Caption = 'Editar'
      ShortCut = 16453
      OnClick = SedDBGrid1DblClick
    end
    object CadastrodeClientes1: TMenuItem
      Caption = 'Visualizar Cadastro de Cliente'
      OnClick = CadastrodeClientes1Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object FecharNotaFiscal1: TMenuItem
      Caption = 'Fechar Nota Fiscal'
      object Estanota1: TMenuItem
        Caption = 'Registro Atual'
        ShortCut = 16454
        OnClick = Estanota1Click
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object odas1: TMenuItem
        Caption = 'Todas'
        OnClick = odas1Click
      end
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object EfetivarNotaEletrnica1: TMenuItem
      Caption = 'Efetivar Nota Eletr'#244'nica'
      Enabled = False
      OnClick = EfetivarNotaEletrnica1Click
    end
    object ImprimirNota1: TMenuItem
      Caption = 'Imprimir Nota'
      Visible = False
      OnClick = ImprimirNota1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object EnviarNFSe1: TMenuItem
      Caption = 'Enviar NFSe'
      object RegistroAtual1: TMenuItem
        Caption = 'Registro Atual'
        OnClick = RegistroAtual1Click
      end
      object N9: TMenuItem
        Caption = '-'
      end
      object odas2: TMenuItem
        Caption = 'Todas'
        OnClick = odas2Click
      end
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object ImprimirNotaFiscal1: TMenuItem
      Caption = 'Imprimir Nota Fiscal'
      object Apenasestanota1: TMenuItem
        Caption = 'Apenas esta nota'
        OnClick = Apenasestanota1Click
      end
      object N10: TMenuItem
        Caption = '-'
      end
      object odas3: TMenuItem
        Caption = 'Todas'
        OnClick = odas3Click
      end
    end
    object N8: TMenuItem
      Caption = '-'
    end
    object EnviaremailcomNFSe1: TMenuItem
      Caption = 'Enviar e-mail com NFSe'
      OnClick = EnviaremailcomNFSe1Click
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object ReabrirNotaFiscal1: TMenuItem
      Caption = 'Reabrir Nota Fiscal'
      OnClick = ReabrirNotaFiscal1Click
      object Apenasestanota2: TMenuItem
        Caption = 'Registro Atual'
        OnClick = Apenasestanota2Click
      end
      object N13: TMenuItem
        Caption = '-'
      end
      object odas4: TMenuItem
        Caption = 'Todas'
        OnClick = odas4Click
      end
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object CancelarNotaFiscal1: TMenuItem
      Caption = 'Cancelar Nota Fiscal'
      OnClick = CancelarNotaFiscal1Click
    end
    object N11: TMenuItem
      Caption = '-'
    end
    object ModificarIDdoRegistro1: TMenuItem
      Caption = 'Modificar ID do Registro'
      object RegistroAtual2: TMenuItem
        Caption = 'Registro Atual'
        OnClick = RegistroAtual2Click
      end
      object N14: TMenuItem
        Caption = '-'
      end
      object odos1: TMenuItem
        Caption = 'Todos'
        OnClick = odos1Click
      end
    end
    object N12: TMenuItem
      Caption = '-'
    end
    object AtualizarSituaodeNFSe12: TMenuItem
      Caption = 'Atualizar Situa'#231#227'o de NFSe'
      OnClick = AtualizarSituaodeNFSe12Click
    end
    object AtualizarSituaodeNFSe123: TMenuItem
      Caption = '(OFF) Atualizar Situa'#231#227'o de NFSe'
      Enabled = False
      Visible = False
      OnClick = AtualizarSituaodeNFSe123Click
    end
  end
  object _qryNF: TFDQuery
    Connection = BancodeDados.FDConnection1
    ResourceOptions.AssignedValues = [rvParamCreate]
    SQL.Strings = (
      
        'select n.NFS_ID, n.SERIE, n.VL_TOTAL from nfs n where n.SIT in (' +
        '1, 3)')
    Left = 544
    Top = 24
    object _qryNFNFS_ID: TIntegerField
      FieldName = 'NFS_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object _qryNFSERIE: TStringField
      FieldName = 'SERIE'
      Required = True
      FixedChar = True
      Size = 3
    end
    object _qryNFVL_TOTAL: TFloatField
      FieldName = 'VL_TOTAL'
    end
  end
end
