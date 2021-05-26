object ProgressoEmailForm: TProgressoEmailForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Enviando email...'
  ClientHeight = 93
  ClientWidth = 375
  Color = clWindow
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbTamanho: TLabel
    Left = 28
    Top = 32
    Width = 52
    Height = 13
    Caption = 'lbTamanho'
  end
  object Gauge1: TGauge
    Left = 28
    Top = 58
    Width = 319
    Height = 17
    Progress = 0
  end
end
