program exercicio8;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  X, i, num, maior, menor: Integer;

begin
  Write('Digite a quantidade de números a serem lidos: ');
  ReadLn(X);
  if X <= 0 then

  begin
    WriteLn('Quantidade inválida!');
    ReadLn;

  end;

  Write('Digite um número: ');
  ReadLn(num);
  maior := num;
  menor := num;
  for i := 2 to X do

  begin
    Write('Digite um número: ');
    ReadLn(num);

    if num > maior then
      maior := num;
    if num < menor then
      menor := num;
  end;

  WriteLn(Format('O maior número é %d', [maior]));

  WriteLn(Format('O menor número é %d', [menor]));
  ReadLn;

end.
