program exercicio6;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  x, y: Integer;

begin
  Write('Digite o primeiro n�mero inteiro (X): ');
  ReadLn(x);

  Write('Digite o segundo n�mero inteiro (Y): ');
  ReadLn(y);

  WriteLn('O valor de X + Y = ', x + y);

  WriteLn('O valor de X - Y = ', x - y);

  WriteLn('O valor de X * Y = ', x * y);

  if y <> 0 then
    WriteLn('O valor de X / Y = ', x / y:0:2)

  else
    WriteLn('Divis�o por zero n�o permitida.');
  ReadLn;

end.
