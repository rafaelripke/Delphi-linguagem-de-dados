program exercicio3;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

Var
 Idade : Integer;


begin
   Writeln ('Informe a idade do jogador:');
   Readln (Idade);

  if (idade >= 5) and (idade <= 7) then
    WriteLn('Categoria: Infantil A')
  else if (idade >= 8) and (idade <= 10) then
    WriteLn('Categoria: Infantil B')
  else if (idade >= 11) and (idade <= 13) then
    WriteLn('Categoria: Juvenil A')
  else if (idade >= 14) and (idade <= 17) then
    WriteLn('Categoria: Juvenil B')
  else if (idade >= 18) then
    WriteLn('Categoria: Adulto')
  else
    WriteLn('Idade fora da classificação.');
  ReadLn;
end.
