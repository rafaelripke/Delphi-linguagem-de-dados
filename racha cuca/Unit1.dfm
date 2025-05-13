object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 708
  ClientWidth = 986
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  DesignSize = (
    986
    708)
  TextHeight = 15
  object Sacola: TLabel
    Left = 47
    Top = 87
    Width = 139
    Height = 20
    Alignment = taCenter
    Anchors = [akTop]
    AutoSize = False
    Caption = 'Sacola'
  end
  object Caixas: TLabel
    Left = 47
    Top = 135
    Width = 139
    Height = 20
    Alignment = taCenter
    Anchors = [akTop]
    AutoSize = False
    Caption = 'Caixas'
  end
  object Doce: TLabel
    Left = 47
    Top = 178
    Width = 139
    Height = 20
    Alignment = taCenter
    Anchors = [akTop]
    AutoSize = False
    Caption = 'Doce'
  end
  object Nome: TLabel
    Left = 47
    Top = 220
    Width = 139
    Height = 20
    Alignment = taCenter
    Anchors = [akTop]
    AutoSize = False
    Caption = 'Nome'
  end
  object Idade: TLabel
    Left = 47
    Top = 264
    Width = 139
    Height = 20
    Alignment = taCenter
    Anchors = [akTop]
    AutoSize = False
    Caption = 'Idade'
  end
  object Label6: TLabel
    Left = 47
    Top = 307
    Width = 139
    Height = 20
    Alignment = taCenter
    Anchors = [akTop]
    AutoSize = False
    Caption = 'Profiss'#227'o'
  end
  object PainelTopo: TPanel
    Left = 0
    Top = 0
    Width = 986
    Height = 41
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    OnClick = btnVerificarClick
    ExplicitWidth = 984
  end
  object PainelLateralEsquerdo: TPanel
    Left = 0
    Top = 41
    Width = 41
    Height = 626
    Align = alLeft
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    OnClick = btnVerificarClick
    ExplicitHeight = 618
  end
  object PainelLateralDireito: TPanel
    Left = 944
    Top = 41
    Width = 42
    Height = 626
    Align = alRight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    OnClick = btnVerificarClick
    ExplicitLeft = 942
    ExplicitHeight = 618
  end
  object PainelInferior: TPanel
    Left = 0
    Top = 667
    Width = 986
    Height = 41
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 3
    OnClick = btnVerificarClick
    ExplicitTop = 659
    ExplicitWidth = 984
    DesignSize = (
      986
      41)
    object btnVerificar: TButton
      Left = 333
      Top = 8
      Width = 233
      Height = 25
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = 'Verificar'
      TabOrder = 0
      OnClick = btnVerificarClick
      ExplicitWidth = 231
    end
  end
  object Mulher03: TGroupBox
    AlignWithMargins = True
    Left = 489
    Top = 47
    Width = 145
    Height = 314
    Anchors = [akTop]
    Caption = 'Mulher03'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 4
    ExplicitLeft = 488
    object Mulher03Sacola: TComboBox
      Left = 9
      Top = 40
      Width = 126
      Height = 23
      TabOrder = 0
      OnChange = Mulher01SacolaChange
    end
    object Mulher03Caixas: TComboBox
      Left = 9
      Top = 85
      Width = 126
      Height = 23
      TabOrder = 1
    end
    object Mulher03Doce: TComboBox
      Left = 9
      Top = 128
      Width = 126
      Height = 23
      TabOrder = 2
    end
    object Mulher03Nome: TComboBox
      Left = 9
      Top = 170
      Width = 126
      Height = 23
      TabOrder = 3
    end
    object Mulher03Idade: TComboBox
      Left = 9
      Top = 214
      Width = 126
      Height = 23
      TabOrder = 4
    end
    object Mulher03Profissao: TComboBox
      Left = 9
      Top = 257
      Width = 126
      Height = 23
      TabOrder = 5
    end
  end
  object Mulher05: TGroupBox
    AlignWithMargins = True
    Left = 792
    Top = 47
    Width = 146
    Height = 314
    Anchors = [akTop]
    Caption = 'Mulher05'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 5
    ExplicitLeft = 790
    object Mulher05Sacola: TComboBox
      Left = 9
      Top = 40
      Width = 126
      Height = 23
      TabOrder = 0
      OnChange = Mulher01SacolaChange
    end
    object Mulher05Caixas: TComboBox
      Left = 9
      Top = 85
      Width = 126
      Height = 23
      TabOrder = 1
      OnChange = Mulher01SacolaChange
    end
    object Mulher05Doce: TComboBox
      Left = 9
      Top = 128
      Width = 126
      Height = 23
      TabOrder = 2
    end
    object Mulher05Nome: TComboBox
      Left = 9
      Top = 170
      Width = 126
      Height = 23
      TabOrder = 3
    end
    object Mulher05Idade: TComboBox
      Left = 9
      Top = 214
      Width = 126
      Height = 23
      TabOrder = 4
      OnChange = Mulher01SacolaChange
    end
    object Mulher05Profissao: TComboBox
      Left = 9
      Top = 257
      Width = 126
      Height = 23
      TabOrder = 5
    end
  end
  object Mulher04: TGroupBox
    AlignWithMargins = True
    Left = 640
    Top = 47
    Width = 146
    Height = 314
    Anchors = [akTop]
    Caption = 'Mulher04'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 6
    ExplicitLeft = 639
    object Mulher04Sacola: TComboBox
      Left = 9
      Top = 40
      Width = 126
      Height = 23
      TabOrder = 0
      OnChange = Mulher01SacolaChange
    end
    object Mulher04Caixas: TComboBox
      Left = 9
      Top = 85
      Width = 126
      Height = 23
      TabOrder = 1
    end
    object Mulher04Doce: TComboBox
      Left = 9
      Top = 128
      Width = 126
      Height = 23
      TabOrder = 2
    end
    object Mulher04Nome: TComboBox
      Left = 9
      Top = 170
      Width = 126
      Height = 23
      TabOrder = 3
    end
    object Mulher04Idade: TComboBox
      Left = 9
      Top = 214
      Width = 126
      Height = 23
      TabOrder = 4
    end
    object Mulher04Profissao: TComboBox
      Left = 9
      Top = 257
      Width = 126
      Height = 23
      TabOrder = 5
      OnChange = Mulher01SacolaChange
    end
  end
  object Mulher2: TGroupBox
    AlignWithMargins = True
    Left = 337
    Top = 47
    Width = 146
    Height = 314
    Anchors = [akTop]
    Caption = 'Mulher02'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 7
    ExplicitLeft = 336
    object Mulher02Sacola: TComboBox
      Left = 11
      Top = 40
      Width = 126
      Height = 23
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = Mulher01SacolaChange
    end
    object Mulher02Caixas: TComboBox
      Left = 11
      Top = 85
      Width = 126
      Height = 23
      TabOrder = 1
      OnChange = Mulher01SacolaChange
    end
    object Mulher02Doce: TComboBox
      Left = 11
      Top = 128
      Width = 126
      Height = 23
      TabOrder = 2
      OnChange = Mulher01SacolaChange
    end
    object Mulher02Nome: TComboBox
      Left = 11
      Top = 170
      Width = 126
      Height = 23
      TabOrder = 3
      OnChange = Mulher01SacolaChange
    end
    object Mulher02Idade: TComboBox
      Left = 11
      Top = 214
      Width = 126
      Height = 23
      TabOrder = 4
      OnChange = Mulher01SacolaChange
    end
    object Mulher02Profissao: TComboBox
      Left = 11
      Top = 257
      Width = 126
      Height = 23
      TabOrder = 5
      OnChange = Mulher01SacolaChange
    end
  end
  object Mulher01: TGroupBox
    AlignWithMargins = True
    Left = 185
    Top = 47
    Width = 146
    Height = 314
    Anchors = [akTop]
    Caption = 'Mulher01'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 8
    ExplicitLeft = 184
    object Mulher01Sacola: TComboBox
      Left = 7
      Top = 37
      Width = 126
      Height = 23
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = Mulher01SacolaChange
    end
    object Mulher01Caixas: TComboBox
      Left = 9
      Top = 85
      Width = 126
      Height = 23
      TabOrder = 1
      OnChange = Mulher01SacolaChange
    end
    object Mulher01Doce: TComboBox
      Left = 9
      Top = 128
      Width = 126
      Height = 23
      TabOrder = 2
      OnChange = Mulher01SacolaChange
    end
    object Mulher01Nome: TComboBox
      Left = 9
      Top = 170
      Width = 126
      Height = 23
      TabOrder = 3
      OnChange = Mulher01SacolaChange
    end
    object Mulher01Idade: TComboBox
      Left = 9
      Top = 214
      Width = 126
      Height = 23
      TabOrder = 4
      OnChange = Mulher01SacolaChange
    end
    object Mulher01Profissao: TComboBox
      Left = 9
      Top = 257
      Width = 126
      Height = 23
      TabOrder = 5
      OnChange = Mulher01SacolaChange
    end
  end
  object Opcao1: TCheckBox
    AlignWithMargins = True
    Left = 47
    Top = 367
    Width = 445
    Height = 26
    AllowGrayed = True
    Anchors = []
    Caption = 'A mulher de 37 anos est'#225' em uma das pontas.'
    TabOrder = 9
    ExplicitLeft = 46
    ExplicitTop = 363
  end
  object Opcao11: TCheckBox
    AlignWithMargins = True
    Left = 493
    Top = 367
    Width = 445
    Height = 33
    Anchors = []
    Caption = 'Mariana est'#225' exatamente '#224' direita de quem vai fazer um bolo.'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 10
    ExplicitLeft = 492
    ExplicitTop = 363
  end
  object Opcao2: TCheckBox
    AlignWithMargins = True
    Left = 47
    Top = 399
    Width = 445
    Height = 33
    AllowGrayed = True
    Anchors = []
    Caption = 
      'A Vendedora est'#225' em algum lugar '#224' direita da mulher da sacola Br' +
      'anca.'
    TabOrder = 11
    ExplicitLeft = 46
    ExplicitTop = 394
  end
  object Opcao12: TCheckBox
    AlignWithMargins = True
    Left = 493
    Top = 399
    Width = 445
    Height = 33
    Anchors = []
    Caption = 'Giovana est'#225' ao lado de quem comprar'#225' 4 caixas de morango.'
    TabOrder = 12
    ExplicitLeft = 492
    ExplicitTop = 394
  end
  object opcao3: TCheckBox
    AlignWithMargins = True
    Left = 47
    Top = 429
    Width = 445
    Height = 33
    AllowGrayed = True
    Anchors = []
    Caption = 'In'#234's comprar'#225' 5 caixas de morango.'
    TabOrder = 13
    ExplicitLeft = 46
    ExplicitTop = 424
  end
  object opcao4: TCheckBox
    AlignWithMargins = True
    Left = 47
    Top = 460
    Width = 440
    Height = 33
    AllowGrayed = True
    Anchors = []
    Caption = 
      'A mulher da sacola Verde est'#225' em'#13#10'algum lugar '#224' esquerda damulhe' +
      'r da sacola Azul.'
    TabOrder = 14
    ExplicitLeft = 46
    ExplicitTop = 455
  end
  object opcao5: TCheckBox
    AlignWithMargins = True
    Left = 47
    Top = 499
    Width = 445
    Height = 25
    AllowGrayed = True
    Anchors = []
    Caption = 'A Jornalista est'#225' ao lado de quem comprar'#225' 4 caixas de morango.'
    TabOrder = 15
    ExplicitLeft = 46
    ExplicitTop = 493
  end
  object opcao6: TCheckBox
    AlignWithMargins = True
    Left = 47
    Top = 522
    Width = 445
    Height = 33
    Anchors = []
    Caption = 'Giovana est'#225' na segunda posi'#231#227'o.'
    TabOrder = 16
    ExplicitLeft = 46
    ExplicitTop = 516
  end
  object opcao7: TCheckBox
    AlignWithMargins = True
    Left = 47
    Top = 553
    Width = 445
    Height = 33
    AllowGrayed = True
    Anchors = []
    Caption = 'As mulheres das sacolas Verde e Azul est'#227'o lado a lado.'
    TabOrder = 17
    ExplicitLeft = 46
    ExplicitTop = 547
  end
  object opcao8: TCheckBox
    AlignWithMargins = True
    Left = 47
    Top = 584
    Width = 445
    Height = 33
    AllowGrayed = True
    Anchors = []
    Caption = 
      'A mulher mais nova est'#225' em algum lugar '#224' direita da mulher da sa' +
      'cola Branca.'
    TabOrder = 18
    ExplicitLeft = 46
    ExplicitTop = 577
  end
  object opcao9: TCheckBox
    AlignWithMargins = True
    Left = 47
    Top = 617
    Width = 445
    Height = 44
    AllowGrayed = True
    Anchors = []
    Caption = 
      'A Projetista est'#225' em algum lugar entre'#13#10' a mulher da sacola Verm' +
      'elha e a Gar'#231'onete, nessa ordem.'
    TabOrder = 19
    ExplicitLeft = 46
    ExplicitTop = 610
  end
  object opcao10: TCheckBox
    AlignWithMargins = True
    Left = 493
    Top = 429
    Width = 445
    Height = 16
    Anchors = []
    Caption = 'A mulher da sacola Azul est'#225' na terceira posi'#231#227'o.'
    TabOrder = 20
    ExplicitLeft = 492
    ExplicitTop = 424
  end
  object opcao13: TCheckBox
    AlignWithMargins = True
    Left = 493
    Top = 451
    Width = 445
    Height = 21
    Anchors = []
    Caption = 
      'A dona da sacola Verde est'#225' ao lado de quem vai fazer Geleia de ' +
      'morango.'
    TabOrder = 21
    ExplicitLeft = 492
    ExplicitTop = 446
  end
  object opcao14: TCheckBox
    AlignWithMargins = True
    Left = 493
    Top = 478
    Width = 445
    Height = 15
    Anchors = []
    Caption = 'Silvia tem 42 anos.'
    TabOrder = 22
    ExplicitLeft = 492
    ExplicitTop = 473
  end
  object opcao15: TCheckBox
    AlignWithMargins = True
    Left = 493
    Top = 499
    Width = 445
    Height = 17
    Anchors = []
    Caption = 'A Jornalista est'#225' na quarta posi'#231#227'o.'
    TabOrder = 23
    ExplicitLeft = 492
    ExplicitTop = 493
  end
  object opcao16: TCheckBox
    AlignWithMargins = True
    Left = 493
    Top = 522
    Width = 445
    Height = 25
    Anchors = []
    Caption = 'In'#234's est'#225' ao lado de quem vai fazer Torta de morango.'
    TabOrder = 24
    ExplicitLeft = 492
    ExplicitTop = 516
  end
  object opcao17: TCheckBox
    AlignWithMargins = True
    Left = 493
    Top = 553
    Width = 445
    Height = 16
    Anchors = []
    Caption = 'Na primeira posi'#231#227'o est'#225' a mulher que deseja comprar 6 caixas.'
    TabOrder = 25
    ExplicitLeft = 492
    ExplicitTop = 547
  end
  object opcao18: TCheckBox
    AlignWithMargins = True
    Left = 493
    Top = 575
    Width = 445
    Height = 18
    Anchors = []
    Caption = 'A Projetista est'#225' exatamente '#224' esquerda da mulher de 42 anos.'
    TabOrder = 26
    ExplicitLeft = 492
    ExplicitTop = 568
  end
  object opcao19: TCheckBox
    AlignWithMargins = True
    Left = 493
    Top = 599
    Width = 445
    Height = 26
    Anchors = []
    Caption = 
      'A mulher da sacola Verde est'#225' em algum lugar entre quem '#13#10'vai fa' +
      'zer Pav'#234' de morango e quem tem 55 anos, nessa ordem.'
    TabOrder = 27
    ExplicitLeft = 492
    ExplicitTop = 592
  end
  object opcao20: TCheckBox
    AlignWithMargins = True
    Left = 493
    Top = 635
    Width = 445
    Height = 26
    Anchors = []
    Caption = 
      'Quem comprar'#225' duas caixas est'#225' ao lado de quem vai fazer Bolo de' +
      ' morango.'
    TabOrder = 28
    ExplicitLeft = 492
    ExplicitTop = 628
  end
end
