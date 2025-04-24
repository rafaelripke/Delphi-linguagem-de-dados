program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {MainForm1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm1, MainForm1);
  Application.Run;
end.
