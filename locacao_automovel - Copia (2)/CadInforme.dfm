object CadInformeForm: TCadInformeForm
  Left = 487
  Top = 206
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Informativo'
  ClientHeight = 239
  ClientWidth = 310
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
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Label2: TLabel
    Left = 4
    Top = 2
    Width = 25
    Height = 14
    Caption = 'Data:'
  end
  object Label3: TLabel
    Left = 4
    Top = 39
    Width = 146
    Height = 14
    Caption = 'Coment'#225'rio (max. 250 carac.):'
  end
  object EditData: TSedDbDateEdit
    Left = 4
    Top = 15
    Width = 100
    Height = 20
    DataField = 'DATA'
    AutoSelect = False
    MaxLength = 10
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 209
    Width = 310
    Height = 30
    Align = alBottom
    BevelOuter = bvNone
    Color = clGray
    ParentBackground = False
    TabOrder = 2
    object BtGravar: TButton
      Left = 230
      Top = 3
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = '&Gravar <F11>'
      TabOrder = 0
    end
    object Button2: TButton
      Left = 154
      Top = 3
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object EditComenta: TDBMemo
    Left = 4
    Top = 53
    Width = 303
    Height = 151
    DataField = 'INFORM'
    TabOrder = 1
  end
  object Button1: TButton
    Left = 816
    Top = 158
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 3
  end
  object PopupMenu1: TPopupMenu
    Left = 172
  end
  object MainMenu1: TMainMenu
    Left = 220
    Top = 12
    object Gravar1: TMenuItem
      Caption = 'Gravar'
      ShortCut = 122
      Visible = False
    end
  end
end
