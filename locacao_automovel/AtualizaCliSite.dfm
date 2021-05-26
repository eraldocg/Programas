object AtualizaCliSiteForm: TAtualizaCliSiteForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Atualiza'#231#227'o de Clientes no Servidor Web'
  ClientHeight = 184
  ClientWidth = 405
  Color = clWhite
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
  object Gauge1: TGauge
    Left = 30
    Top = 48
    Width = 353
    Height = 29
    Progress = 0
  end
  object lbNome1: TLabel
    Left = 8
    Top = 128
    Width = 49
    Height = 13
    Caption = 'lbNome1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ckAtivo: TCheckBox
    Left = 30
    Top = 83
    Width = 143
    Height = 17
    Cursor = crHandPoint
    Caption = 'Apenas clientes ativos?'
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 154
    Width = 405
    Height = 30
    Align = alBottom
    BevelOuter = bvNone
    Color = clSilver
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      405
      30)
    object btIniciar: TButton
      Left = 324
      Top = 2
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = 'Iniciar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btIniciarClick
    end
  end
end
