program Exercicio12;
{$APPTYPE CONSOLE}

uses SysUtils;


var
  quantidade, codigo, i: Integer;
  total, preco: Real;
begin
  WriteLn('Tabela de preços:');
  WriteLn('1 - Refrigerante: R$ 4,00');
  WriteLn('2 - Água: R$ 2,50');
  WriteLn('3 - Café: R$ 2,00');
  WriteLn('4 - Sanduíche: R$ 5,00');
  WriteLn('5 - Pão de queijo: R$ 3,50');
  WriteLn('6 - Pastel: R$ 4,50');

  Write('Informe a quantidade de itens que deseja comprar: ');
  ReadLn(quantidade);
  total := 0;

  for i := 1 to quantidade do
  begin
    Write('Digite o código do item ', i, ': ');
    ReadLn(codigo);

    case codigo of
      1: preco := 4.00;
      2: preco := 2.50;
      3: preco := 2.00;
      4: preco := 5.00;
      5: preco := 3.50;
      6: preco := 4.50;
    else
      WriteLn('Código inválido, item ignorado.');
      preco := 0;
    end;
    total := total + preco;
  end;

  WriteLn(Format('Valor total da compra: R$ %.2f', [total]));
  ReadLn;
end.
