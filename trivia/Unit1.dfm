object MainForm1: TMainForm1
  Left = 0
  Top = 0
  Caption = 'ANAGRAMA'
  ClientHeight = 693
  ClientWidth = 960
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object PainelSuperior: TPanel
    Left = 0
    Top = 0
    Width = 960
    Height = 121
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 958
    object Contador: TLabel
      AlignWithMargins = True
      Left = 308
      Top = 0
      Width = 50
      Height = 15
      Margins.Left = 300
      Margins.Top = 20
      Margins.Right = 300
      Margins.Bottom = 0
      Alignment = taCenter
      Caption = 'Contador'
    end
    object btnT: TLabel
      AlignWithMargins = True
      Left = 328
      Top = 68
      Width = 14
      Height = 37
      Alignment = taCenter
      Caption = 'T'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = LetraClick
    end
    object btnR: TLabel
      Left = 400
      Top = 68
      Width = 16
      Height = 37
      Alignment = taCenter
      Caption = 'R'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = LetraClick
    end
    object btnO: TLabel
      Left = 456
      Top = 68
      Width = 20
      Height = 37
      Alignment = taCenter
      Caption = 'O'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = LetraClick
    end
    object btnP: TLabel
      Left = 512
      Top = 68
      Width = 15
      Height = 37
      Alignment = taCenter
      Caption = 'P'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = LetraClick
    end
    object btnA: TLabel
      Left = 568
      Top = 68
      Width = 17
      Height = 37
      Alignment = taCenter
      Caption = 'A'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = LetraClick
    end
    object Pesquisa: TEdit
      AlignWithMargins = True
      Left = 100
      Top = 20
      Width = 760
      Height = 45
      Margins.Left = 100
      Margins.Top = 20
      Margins.Right = 100
      Margins.Bottom = 0
      Align = alTop
      Alignment = taCenter
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyDown = PesquisaKeyDown
      ExplicitWidth = 758
    end
    object btnEmbaralhar: TButton
      Left = 760
      Top = 99
      Width = 100
      Height = 25
      Caption = 'Embaralhar'
      TabOrder = 1
      OnClick = btnEmbaralharClick
    end
    object btnLimpar: TButton
      AlignWithMargins = True
      Left = 760
      Top = 68
      Width = 100
      Height = 25
      Caption = 'Limpar'
      TabOrder = 2
      OnClick = btnLimparClick
    end
    object btnVerificar: TButton
      Left = 100
      Top = 83
      Width = 99
      Height = 25
      Caption = 'Verificar'
      TabOrder = 3
      OnClick = btnVerificarClick
    end
  end
  object PainelGlobal: TPanel
    Left = 0
    Top = 121
    Width = 960
    Height = 572
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitWidth = 958
    ExplicitHeight = 564
  end
end
