program exercicio8;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  X, i, num, maior, menor: Integer;

begin
  Write('Digite a quantidade de n�meros a serem lidos: ');
  ReadLn(X);
  if X <= 0 then

  begin
    WriteLn('Quantidade inv�lida!');
    ReadLn;

  end;

  Write('Digite um n�mero: ');
  ReadLn(num);
  maior := num;
  menor := num;
  for i := 2 to X do

  begin
    Write('Digite um n�mero: ');
    ReadLn(num);

    if num > maior then
      maior := num;
    if num < menor then
      menor := num;
  end;

  WriteLn(Format('O maior n�mero � %d', [maior]));

  WriteLn(Format('O menor n�mero � %d', [menor]));
  ReadLn;

end.
