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

  WriteLn('Escolha uma das opções abaixo:');
  WriteLn('1 - Subtrair o valor b de a.');
  WriteLn('2 - Somar a e b.');
  WriteLn('3 - Multiplicar a e b.');
  WriteLn('4 - Mostrar qual o maior número.');
  Write('Opção: ');
  ReadLn(opcao);

  case opcao of
    1: WriteLn('Resultado: ', a:0:2, ' - ', b:0:2, ' = ', (a - b):0:2);
    2: WriteLn('Resultado: ', a:0:2, ' + ', b:0:2, ' = ', (a + b):0:2);
    3: WriteLn('Resultado: ', a:0:2, ' * ', b:0:2, ' = ', (a * b):0:2);
    4:
      if a > b then
        WriteLn('O maior número é: ', a:0:2)
      else if b > a then
        WriteLn('O maior número é: ', b:0:2)
      else
        WriteLn('Os números são iguais.');

  else
    WriteLn('Opção inválida. Tente novamente.');
    Readln;
  end;
      Readln;
  end.
