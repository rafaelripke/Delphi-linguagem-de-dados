program exercicio10;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  a, b: Real;
  opcao: Integer;

begin
  Write('Informe o valor de a: ');
  ReadLn(a);
  Write('Informe o valor de b: ');
  ReadLn(b);

  WriteLn('Escolha uma das op��es abaixo:');
  WriteLn('1 - Subtrair o valor b de a.');
  WriteLn('2 - Somar a e b.');
  WriteLn('3 - Multiplicar a e b.');
  WriteLn('4 - Mostrar qual o maior n�mero.');
  Write('Op��o: ');
  ReadLn(opcao);

  case opcao of
    1: WriteLn('Resultado: ', a:0:2, ' - ', b:0:2, ' = ', (a - b):0:2);
    2: WriteLn('Resultado: ', a:0:2, ' + ', b:0:2, ' = ', (a + b):0:2);
    3: WriteLn('Resultado: ', a:0:2, ' * ', b:0:2, ' = ', (a * b):0:2);
    4:
      if a > b then
        WriteLn('O maior n�mero �: ', a:0:2)
      else if b > a then
        WriteLn('O maior n�mero �: ', b:0:2)
      else
        WriteLn('Os n�meros s�o iguais.');

  else
    WriteLn('Op��o inv�lida. Tente novamente.');
    Readln;
  end;
      Readln;
  end.
