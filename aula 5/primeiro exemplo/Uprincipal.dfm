object FormPrincipal: TFormPrincipal
  Left = 0
  Top = 0
  Caption = 'Visualproject1'
  ClientHeight = 616
  ClientWidth = 1079
  Color = clTeal
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  TextHeight = 15
  object CLIQUE: TButton
    Left = 424
    Top = 311
    Width = 241
    Height = 145
    Caption = 'Clique Aqui'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = CLIQUEClick
  end
  object Edit1: TEdit
    Left = 242
    Top = 232
    Width = 617
    Height = 36
    Alignment = taCenter
    BiDiMode = bdLeftToRight
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 1
    Text = 'DIGITE O TEXTO'
  end
end
