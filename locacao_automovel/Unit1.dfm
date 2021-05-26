object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 231
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 24
    Top = 26
    Width = 75
    Height = 25
    Caption = '1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 24
    Top = 57
    Width = 75
    Height = 25
    Caption = '2'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 24
    Top = 88
    Width = 75
    Height = 25
    Caption = '3'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 24
    Top = 119
    Width = 75
    Height = 25
    Caption = '4'
    TabOrder = 3
    OnClick = Button4Click
  end
  object Memo1: TMemo
    Left = 118
    Top = 24
    Width = 185
    Height = 89
    TabOrder = 4
  end
  object Memo2: TMemo
    Left = 118
    Top = 119
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo2')
    TabOrder = 5
  end
  object Memo3: TMemo
    Left = 312
    Top = 24
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo3')
    TabOrder = 6
  end
  object Memo4: TMemo
    Left = 312
    Top = 119
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo4')
    TabOrder = 7
  end
end
