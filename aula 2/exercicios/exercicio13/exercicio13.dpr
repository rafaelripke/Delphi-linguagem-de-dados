program exercicio13;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  N, i: Integer;
  precoCusto, precoVenda: Real;
begin
  Write('Digite a quantidade de produtos produzidos: ');
  ReadLn(N);

  for i := 1 to N do
  begin
    WriteLn('Produto ', i, ':');
    WriteLn('Digite o pre�o de custo: ');
    ReadLn(precoCusto);
    WriteLn('Digite o pre�o de venda: ');
    ReadLn(precoVenda);
    WriteLn(Format('Produto %d - Custo: R$ %.2f, Venda: R$ %.2f', [i, precoCusto, precoVenda]));
    ReadLn;
  end;

  if precoCusto > precoVenda then
  WriteLn('Preju�zo')
  else if precoCusto < precoVenda then
  WriteLn('Lucro')
  else
  WriteLn('Empate');
  Readln;

  end.