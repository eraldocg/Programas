object CsGrade_FinanceiraForm: TCsGrade_FinanceiraForm
  Left = 264
  Top = 183
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta de Grade Financeira'
  ClientHeight = 399
  ClientWidth = 502
  Color = 7562340
  Ctl3D = False
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  KeyPreview = True
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 291
    Top = 42
    Width = 48
    Height = 14
    Alignment = taRightJustify
    Caption = 'Condi'#231#227'o:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 313
    Top = 10
    Width = 26
    Height = 14
    Alignment = taRightJustify
    Caption = 'Filtro:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Image2: TImage
    Left = 0
    Top = 8
    Width = 104
    Height = 83
    AutoSize = True
    Picture.Data = {
      0A544A504547496D616765A2370000FFD8FFE000104A46494600010101012C01
      2C0000FFE13222687474703A2F2F6E732E61646F62652E636F6D2F7861702F31
      2E302F003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
      4D304D7043656869487A7265537A4E54637A6B633964223F3E0A3C783A786D70
      6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
      786D70746B3D2241646F626520584D5020436F726520352E332D633031312036
      362E3134353636312C20323031322F30322F30362D31343A35363A3237202020
      2020202020223E0A2020203C7264663A52444620786D6C6E733A7264663D2268
      7474703A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D
      73796E7461782D6E7323223E0A2020202020203C7264663A4465736372697074
      696F6E207264663A61626F75743D22220A202020202020202020202020786D6C
      6E733A786D703D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F
      312E302F223E0A2020202020202020203C786D703A43726561746F72546F6F6C
      3E41646F62652046697265776F726B7320435336202857696E646F7773293C2F
      786D703A43726561746F72546F6F6C3E0A2020202020202020203C786D703A43
      7265617465446174653E323032312D30352D32375432303A30363A34315A3C2F
      786D703A437265617465446174653E0A2020202020202020203C786D703A4D6F
      64696679446174653E323032312D30352D33305430303A30333A32355A3C2F78
      6D703A4D6F64696679446174653E0A2020202020203C2F7264663A4465736372
      697074696F6E3E0A2020202020203C7264663A4465736372697074696F6E2072
      64663A61626F75743D22220A202020202020202020202020786D6C6E733A6463
      3D22687474703A2F2F7075726C2E6F72672F64632F656C656D656E74732F312E
      312F223E0A2020202020202020203C64633A666F726D61743E696D6167652F6A
      7065673C2F64633A666F726D61743E0A2020202020203C2F7264663A44657363
      72697074696F6E3E0A2020203C2F7264663A5244463E0A3C2F783A786D706D65
      74613E0A20202020202020202020202020202020202020202020202020202020
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
      202020202020202020202020202020202020200A3C3F787061636B657420656E
      643D2277223F3EFFDB0043000202020202020202020203020202040504020204
      05060505050505060706060606060607070808090808070A0A0B0B0A0A0E0E0E
      0E0E0E0E0E0E0E0E0E0E0E0EFFDB0043010303030605060B07070B0E0C0A0C0E
      111010101011110E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
      0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0EFFC000110800530068030111000211
      01031101FFC4001B000100020301010000000000000000000000050701040603
      02FFC4003A100001030202050906040700000000000001000203040506111215
      162154133132415191A1A2D22255617172B11433358123263443526373FFC400
      17010101010100000000000000000000000000010205FFC40016110101010000
      0000000000000000000000000111FFDA000C03010002110311003F00A5D74997
      D35A5C435A3373B7008270618BE1008A1DC79BDB67A9346765EF9C0F9E3F529A
      1B2F7CE07CF1FA934365EF9C0F9E3F52686CBDF381F3C7EA4D0D97BE703E78FD
      49A1B2F7CE07CF1FA934365EF9C0F9E3F5268F19F0FDE29A274D35196C6CE910
      E69F004ABA219010104CD869BF1575A566FD169D2765F04A2E09E78A96274F33
      F422674DCB0223696CDC637C55C19DA5B3718DF14C0DA5B3718DF14C0DA5B371
      8DF14C0DA5B3718DF14C0DA5B3718DF14C18DA5B3718DF14C1339B2A22CDA74A
      395BB9DF02A0A42BE9CD2D65440411A0E397C96C69A020EDF05D36954D45491F
      96DD169F9A947498AE6E46D328CB3E54E8A82A45A040404040404175D926FC45
      AE8E4CB2F600CBE4B22BFC5F4FC95D39519E550D049F88560E5151E82295C349
      B13DCDFF00200A0B4F09533A9ED61EF6963E771241F059A34B1ACC5B494D10E6
      95DBFF006560AD5504040404040416B611A8335B340FF61DA392CD1A98D295D2
      52D35431AE7185D910067B8A415C3A3919D38DCCCF9B3192D0EF30F5F2921A3A
      3B7181F2548711B9B9F49C4E7E2A0EFC0E6FB2C8D7A8A3A6ABD11510B65D0E8E
      6106AEA7B6707177054353DB3838BB8206A7B6707177040D4F6CE0E2EE081A9E
      D9C1C5DC10353DB3838BB8206A7B6705177041B74F4B4F4AD2CA789B134F3808
      3D9D96473198EC415BE24BC52D5C3F848E07C53C6FF6B4865964AC1E98258D33
      56B8B469343745C9458CB20A8202020202020C20CA830A8AC71A65AC29F20067
      1EF3FBAB06E608FCCAEF93528E8B12D74F416D7494E746591DA224EB19F5A904
      7612BA4F591CF4D5321964877B643CF91568FBC5B5D57474D4E29A5741CA3BDB
      7B79F7290705AEEEDEF09BBD68675DDDBDE1377A06BBBB7BC26EF40D7776F784
      DDE831AEEEDEF09BBD0595866B2A2B6D8C92A5C5F235E5BCA1EB0B346AE2BB9C
      D434D0C54EF314B39FCC1D40241ED85EE53D7D0B854B8BE580E5CA7684A396C6
      9FA853FF00CCFDD5834B0DDDA3B655B84E3F8353907BFB3B128ECF15C52545A7
      4E11CA06383DDF4A9045E0AA5918CA9AC70CA39326B3E392B44D56DDAC354D7D
      355CCC91A0EF69ED0A08ACF087FAFC5033C21DB1A067843B6340CF0876C681FC
      A1DB1F8A099A3BB595BC8D2524CC68E68E3082231A52C925353D4B0173602794
      CBA81EB560F5C210BE9EDB354CC0B1929CDBF21D6A51C7E21BA4774AD1242CD1
      8E11A2D71EB5A82099D367D43EE82F88407411B48CC168CC2C8CB6364516846D
      0C601B9A14146D5FF5551F59FBAD8D640404040412567FD4E8FEB0945D6E6324
      61648D0F63BA4D2B23C6A1AD6D2CAD680D6869C82828A7F49DF35B06901CD279
      8104A0B8A9AF96B74109156D6EEE89E7591E92DF6D4C8DEE356C200E61CE9829
      DA8789279646F45EE242D0F14040404041BD6D96382BE96594E8C6C702E282EB
      8E7864635EC9039AE1EC9581AB70ABA7A7A39E49640D668A0A49C737388E6256
      C7CA0202020202020202020202020FFFD9}
  end
  object Label5: TLabel
    Left = 110
    Top = 37
    Width = 170
    Height = 21
    Alignment = taRightJustify
    Caption = 'Consulta de Grade Financeira'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Franklin Gothic Medium Cond'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 368
    Width = 502
    Height = 31
    Align = alBottom
    BevelOuter = bvNone
    Color = 7562340
    ParentBackground = False
    TabOrder = 4
    ExplicitTop = 388
    object BtOk: TButton
      Left = 422
      Top = 3
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = '&Ok'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ModalResult = 1
      ParentFont = False
      TabOrder = 0
    end
    object BtCancelar: TButton
      Left = 343
      Top = 3
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Cancel = True
      Caption = '&Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ModalResult = 2
      ParentFont = False
      TabOrder = 1
    end
    object BtNovo: TButton
      Left = 264
      Top = 3
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = '&Novo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BtNovoClick
    end
  end
  object DBGrid1: TSedDBGrid
    Left = -2
    Top = 95
    Width = 504
    Height = 276
    DataSource = BancodeDados.DSGrade
    FixedColor = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick]
    ParentFont = False
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    OnDblClick = DBGrid1DblClick
    OnEditButtonClick = DBGrid1DblClick
    OnTitleClick = DBGrid1TitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'GRADE_ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Visible = True
      end>
  end
  object CBOpcao: TComboBox
    Left = 345
    Top = 7
    Width = 145
    Height = 21
    Style = csOwnerDrawFixed
    Ctl3D = False
    ItemHeight = 15
    ItemIndex = 1
    ParentCtl3D = False
    TabOrder = 0
    Text = 'Descri'#231#227'o'
    Items.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
  end
  object EditConsulta: TEdit
    Left = 280
    Top = 72
    Width = 208
    Height = 20
    TabOrder = 2
    OnKeyDown = EditConsultaKeyDown
  end
  object CBTipo: TComboBox
    Left = 345
    Top = 39
    Width = 147
    Height = 21
    Style = csOwnerDrawFixed
    ItemHeight = 15
    ItemIndex = 0
    TabOrder = 1
    Text = 'Come'#231'ando por...'
    Items.Strings = (
      'Come'#231'ando por...'
      'Contendo...'
      'Igual '#224'...')
  end
  object MainMenu1: TMainMenu
    Left = 86
    Top = 44
    object CtrlDel1: TMenuItem
      Caption = 'Ctrl Del'
      ShortCut = 16430
      Visible = False
    end
    object Editar2: TMenuItem
      Caption = 'Editar'
      ShortCut = 16453
      Visible = False
      OnClick = DBGrid1DblClick
    end
    object Novo2: TMenuItem
      Caption = 'Novo'
      ShortCut = 16462
      Visible = False
      OnClick = BtNovoClick
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 58
    Top = 44
    object Editar1: TMenuItem
      Caption = '&Editar'
      ShortCut = 16453
      OnClick = DBGrid1DblClick
    end
    object Excluir1: TMenuItem
      Caption = 'E&xcluir'
      ShortCut = 16430
      OnClick = Excluir1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Novo1: TMenuItem
      Caption = '&Novo'
      ShortCut = 16462
      OnClick = BtNovoClick
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Definirpadro1: TMenuItem
      Caption = 'Definir padr'#227'o'
      Visible = False
    end
  end
end
