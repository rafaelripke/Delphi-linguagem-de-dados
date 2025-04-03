object Form1: TForm1
  AlignWithMargins = True
  Left = 0
  Top = 0
  Caption = 'Senha:'
  ClientHeight = 625
  ClientWidth = 1000
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 21
  object Label1: TLabel
    Left = 93
    Top = 254
    Width = 60
    Height = 21
    Alignment = taCenter
    Caption = 'Telefone:'
    Color = clGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clInactiveCaptionText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label2: TLabel
    Left = 93
    Top = 77
    Width = 46
    Height = 21
    Alignment = taCenter
    Caption = 'Nome:'
    Color = clGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clInactiveCaptionText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label3: TLabel
    Left = 93
    Top = 195
    Width = 143
    Height = 21
    Alignment = taCenter
    Caption = 'Data de Nascimento:'
    Color = clGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clInactiveCaptionText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label4: TLabel
    Left = 101
    Top = 139
    Width = 41
    Height = 21
    Alignment = taCenter
    Caption = 'Email:'
    Color = clGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clInactiveCaptionText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object tabela: TStringGrid
    Left = 93
    Top = 360
    Width = 812
    Height = 257
    ColCount = 6
    DefaultColWidth = 134
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goFixedRowDefAlign]
    TabOrder = 9
    StyleName = 'Windows'
  end
  object btnInserir: TButton
    Left = 744
    Top = 270
    Width = 161
    Height = 41
    Caption = 'Inserir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = btnInserirClick
  end
  object edtTelefone: TMaskEdit
    AlignWithMargins = True
    Left = 93
    Top = 281
    Width = 185
    Height = 29
    Alignment = taCenter
    EditMask = '!\(99\)00000-0000;1;_'
    ImeName = 'edt_Telefone'
    MaxLength = 14
    TabOrder = 1
    Text = '(  )     -    '
    StyleName = 'Windows'
  end
  object CadastrodeUsuário: TPanel
    Left = 0
    Top = 0
    Width = 1000
    Height = 49
    HelpType = htKeyword
    HelpKeyword = 'Cadastro de Usu'#225'rio'
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Cadastro de Usu'#225'rio'
    Color = clGradientActiveCaption
    Font.Charset = BALTIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    StyleName = 'Sky'
    ExplicitWidth = 998
  end
  object edtNome: TEdit
    Left = 93
    Top = 104
    Width = 185
    Height = 29
    TabOrder = 3
  end
  object edtEmail: TEdit
    Left = 93
    Top = 160
    Width = 185
    Height = 29
    TabOrder = 4
  end
  object dtNascimento: TCalendarPicker
    Left = 93
    Top = 216
    Width = 185
    Height = 32
    CalendarHeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
    CalendarHeaderInfo.DaysOfWeekFont.Color = clWindowText
    CalendarHeaderInfo.DaysOfWeekFont.Height = -17
    CalendarHeaderInfo.DaysOfWeekFont.Name = 'Segoe UI'
    CalendarHeaderInfo.DaysOfWeekFont.Style = []
    CalendarHeaderInfo.Font.Charset = DEFAULT_CHARSET
    CalendarHeaderInfo.Font.Color = clWindowText
    CalendarHeaderInfo.Font.Height = -25
    CalendarHeaderInfo.Font.Name = 'Segoe UI'
    CalendarHeaderInfo.Font.Style = []
    Color = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    TextHint = 'select a date'
  end
  object Panel1: TPanel
    Left = 336
    Top = 104
    Width = 297
    Height = 122
    Align = alCustom
    AutoSize = True
    BiDiMode = bdLeftToRight
    Color = clSilver
    ParentBiDiMode = False
    ParentBackground = False
    TabOrder = 6
    object Label5: TLabel
      Left = 8
      Top = 16
      Width = 57
      Height = 42
      Alignment = taCenter
      Caption = 'Usu'#225'rio:'#13#10
    end
    object rbNormal: TRadioButton
      Left = 24
      Top = 65
      Width = 113
      Height = 17
      Caption = 'Normal;'
      TabOrder = 0
    end
    object rbAdmin: TRadioButton
      Left = 160
      Top = 65
      Width = 113
      Height = 17
      Caption = 'Administrador;'
      TabOrder = 1
    end
  end
  object edtSenha: TLabeledEdit
    Left = 336
    Top = 281
    Width = 121
    Height = 29
    EditLabel.Width = 46
    EditLabel.Height = 21
    EditLabel.Caption = 'Senha:'
    TabOrder = 7
    Text = ''
  end
  object edtRepetirSenha: TLabeledEdit
    Left = 512
    Top = 281
    Width = 121
    Height = 29
    EditLabel.Width = 104
    EditLabel.Height = 21
    EditLabel.Caption = 'Repita a senha:'
    TabOrder = 8
    Text = ''
  end
end
