object EscolherDataForm: TEscolherDataForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Escolha a data'
  ClientHeight = 122
  ClientWidth = 243
  Color = clSilver
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 42
    Top = 42
    Width = 27
    Height = 13
    Caption = 'Data:'
  end
  object EditData: TSedDateEdit
    Left = 84
    Top = 40
    Width = 100
    Height = 19
    MaxLength = 10
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 87
    Width = 243
    Height = 35
    Align = alBottom
    BevelOuter = bvNone
    Color = clGray
    ParentBackground = False
    TabOrder = 1
    ExplicitLeft = 4
    ExplicitTop = 86
    ExplicitWidth = 287
    DesignSize = (
      243
      35)
    object btOk: TButton
      Left = 157
      Top = 4
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Ok'
      TabOrder = 0
      OnClick = btOkClick
      ExplicitLeft = 238
    end
    object Button2: TButton
      Left = 81
      Top = 4
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Cancel = True
      Caption = 'Cancelar'
      ModalResult = 2
      TabOrder = 1
      ExplicitLeft = 162
    end
  end
end
