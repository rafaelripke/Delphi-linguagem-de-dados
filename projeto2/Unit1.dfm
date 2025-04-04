object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'programa'
  ClientHeight = 545
  ClientWidth = 640
  Color = clAqua
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 15
  object Timer: TTimer
    OnTimer = TimerTimer
    Left = 560
    Top = 48
  end
end
