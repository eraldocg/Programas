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
    Color = clGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
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
      Left = 426
      Top = 1
      Width = 215
      Height = 13
      Progress = 0
      Visible = False
    end
    object Gauge1: TGauge
      Left = 426
      Top = 16
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
    Color = clSilver
    TabOrder = 0
    DesignSize = (
      794
      95)
    object Image2: TImage
      Left = 553
      Top = 8
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
      ExplicitLeft = 508
    end
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
      Left = 589
      Top = 39
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
      ExplicitLeft = 544
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
      Left = 601
      Top = 65
      Width = 185
      Height = 17
      Anchors = [akTop, akRight]
      BorderStyle = bsNone
      TabOrder = 10
      OnKeyDown = EditConsultaKeyDown
    end
    object CBTipo: TComboBox
      Left = 642
      Top = 36
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
      Left = 476
      Top = -5
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
