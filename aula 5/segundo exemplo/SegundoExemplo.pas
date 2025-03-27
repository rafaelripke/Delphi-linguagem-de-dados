unit SegundoExemplo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.WinXCalendars, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.CheckLst, Vcl.Samples.Spin, Vcl.FileCtrl,
  Vcl.Mask, Vcl.Imaging.jpeg, Vcl.WinXCtrls;

type
  TForm1 = class(TForm)
    RadioGroup1: TRadioGroup;
    CheckBox1: TCheckBox;
    MeuEdit: TEdit;
    GroupBox1: TGroupBox;
    MonthCalendar1: TMonthCalendar;
    CalendarPicker1: TCalendarPicker;
    GroupBox2: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    CheckBox2: TCheckBox;
    ComboBox1: TComboBox;
    RichEdit1: TRichEdit;
    Memo1: TMemo;
    Button3: TButton;
    CheckListBox1: TCheckListBox;
    Panel1: TPanel;
    ComboBox2: TComboBox;
    ColorBox1: TColorBox;
    ColorListBox1: TColorListBox;
    Item1: TRadioButton;
    DriveComboBox1: TDriveComboBox;
    SpinEdit1: TSpinEdit;
    Item2: TRadioButton;
    Item3: TRadioButton;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    LabeledEdit1: TLabeledEdit;
    MaskEdit1: TMaskEdit;
    Image1: TImage;
    ToggleSwitch1: TToggleSwitch;
    CheckBox7: TCheckBox;
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
