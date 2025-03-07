program Exercicio2;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

Var
   Valor1, Valor2, Valor3, Media: Real;

begin
  Write('digite o primeiro valor ');
  Readln(Valor1);

  Write('digite o segundo valor ');
  Readln(Valor2);

  Write('digite o terceiro valor ');
  Readln(Valor3);

  media := (Valor1 + Valor2 + Valor3) / 3;

  Writeln(Format('A média é: %.4f', [Media]));

  Readln;


end.
