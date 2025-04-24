object MainForm1: TMainForm1
  Left = 0
  Top = 0
  Caption = 'Trivia'
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
      Left = 300
      Top = 85
      Width = 360
      Height = 15
      Margins.Left = 300
      Margins.Top = 20
      Margins.Right = 300
      Margins.Bottom = 0
      Align = alTop
      Alignment = taCenter
      Caption = 'Contador'
      ExplicitWidth = 50
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
      TextHint = 'digite um texto para pesquisar'
      OnKeyDown = PesquisaKeyDown
      ExplicitWidth = 758
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
