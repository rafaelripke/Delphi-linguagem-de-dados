program Exercicio12;
{$APPTYPE CONSOLE}

uses SysUtils;


var
  quantidade, codigo, i: Integer;
  total, preco: Real;
begin
  WriteLn('Tabela de pre�os:');
  WriteLn('1 - Refrigerante: R$ 4,00');
  WriteLn('2 - �gua: R$ 2,50');
  WriteLn('3 - Caf�: R$ 2,00');
  WriteLn('4 - Sandu�che: R$ 5,00');
  WriteLn('5 - P�o de queijo: R$ 3,50');
  WriteLn('6 - Pastel: R$ 4,50');

  Write('Informe a quantidade de itens que deseja comprar: ');
  ReadLn(quantidade);
  total := 0;

  for i := 1 to quantidade do
  begin
    Write('Digite o c�digo do item ', i, ': ');
    ReadLn(codigo);

    case codigo of
      1: preco := 4.00;
      2: preco := 2.50;
      3: preco := 2.00;
      4: preco := 5.00;
      5: preco := 3.50;
      6: preco := 4.50;
    else
      WriteLn('C�digo inv�lido, item ignorado.');
      preco := 0;
    end;
    total := total + preco;
  end;

  WriteLn(Format('Valor total da compra: R$ %.2f', [total]));
  ReadLn;
end.
