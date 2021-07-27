object InforContratosForm: TInforContratosForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cl'#225'usulas Contratuais'
  ClientHeight = 468
  ClientWidth = 511
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Memo2: TMemo
    Left = 0
    Top = 0
    Width = 511
    Height = 438
    Align = alClient
    Lines.Strings = (
      'ALGUMAS CL'#193'USULAS CONTRATUAIS ENTRE SED SOFT LTDA E OS CLIENTES'
      ''
      
        'Cl'#225'usula 4'#170'. Finalizado o processo de implanta'#231#227'o, a SED SOFT LT' +
        'DA far'#225' a manuten'#231#227'o peri'#243'dica'
      
        'do sistema, compreendendo a atualiza'#231#227'o de novas vers'#245'es do sist' +
        'ema, atendimento de suporte '
      
        'aos usu'#225'rios, por telefone ou Internet e visitas necess'#225'rias ref' +
        'erentes '#224's mudan'#231'as'
      'relacionadas ao sistema.'
      
        'Par'#225'grafo '#250'nico. Quando for necess'#225'ria ou solicitada a presen'#231'a ' +
        'de t'#233'cnicos da SED SOFT LTDA'
      
        'nas instala'#231#245'es da CONTRATANTE, as despesas com deslocamento e p' +
        'erman'#234'ncia correr'#227'o por'
      
        'conta da CONTRATANTE, quando a mesma estiver localizada em cidad' +
        'e diferente da'
      'SED SOFT LTDA.'
      ''
      
        'Cl'#225'usula 9'#170'. A responsabilidade da SED SOFT LTDA se restringir a' +
        'o sistema de controle acad'#234'mico'
      
        'SED Escolar, n'#227'o respondendo por problemas relacionados ao ambie' +
        'nte, como redes, sistemas '
      'operacionais, hardware, etc.'
      ''
      
        'Cl'#225'usula 14'#170'. A SED SOFT LTDA n'#227'o se responsabiliza pela atualiz' +
        'a'#231#227'o dos layouts dos boletos'
      
        'banc'#225'rios. Por isto, solicita a CONTRATANTE que valide junto aos' +
        ' bancos o envio destes boletos '
      
        'e informem a SED SOFT LTDA quaisquer modifica'#231#245'es ocorridas nos ' +
        'layouts para que sejam'
      'atualizados no sistema.'
      ''
      
        'Cl'#225'usula 27'#170'. Ser'#227'o de inteira responsabilidade da CONTRATANTE, ' +
        'a confec'#231#227'o e a manuten'#231#227'o'
      
        'de todas as tabelas e cadastros do sistema, n'#227'o se responsabiliz' +
        'ando a SED SOFT LTDA por'
      
        'qualquer erro nos resultados, decorrente de cadastramento inadeq' +
        'uado e/ou desatualizado '
      
        'cabendo a SED SOFT LTDA apenas o apoio t'#233'cnico para coloca'#231#227'o da' +
        's informa'#231#245'es na forma'
      'desejada pela CONTRATANTE.'
      ''
      
        'Cl'#225'usula 30'#170'. Caber'#225' '#224' CONTRATANTE a responsabilidade de efetuar' +
        ' backup peri'#243'dico da base'
      'de dados do sistema.'
      ''
      
        'Cl'#225'usula 33'#170'. Par'#225'grafo s'#233'timo. O atraso do pagamento em mais de' +
        ' 60 (Sessenta) dias implicar'#225' '
      
        'na suspens'#227'o total dos servi'#231'os dando o direito '#224' SED SOFT LTDA ' +
        'de suspender o funcionamento do'
      'sistema.')
    ScrollBars = ssVertical
    TabOrder = 0
    ExplicitTop = 2
  end
  object Panel1: TPanel
    Left = 0
    Top = 438
    Width = 511
    Height = 30
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
    TabOrder = 1
    ExplicitLeft = -201
    ExplicitTop = 470
    ExplicitWidth = 707
    object BtFechar: TButton
      Left = 410
      Top = 1
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Cancel = True
      Caption = '&Fechar'
      DragCursor = crHandPoint
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8454143
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ModalResult = 2
      ParentFont = False
      TabOrder = 0
    end
  end
end
