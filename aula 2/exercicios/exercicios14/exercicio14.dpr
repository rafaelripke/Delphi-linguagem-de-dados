program exercicio14;

{$APPTYPE CONSOLE}
uses SysUtils;
type
  TProduto = record
    Codigo: Integer;
    Descricao: String;
    Valor: Real;
  end;
var
  Produtos: array[1..100] of TProduto;
  TotalProdutos, i, codigoBusca, opcao: Integer;
  encontrado: Boolean;
begin
  TotalProdutos := 0;
  repeat
    WriteLn('Menu:');
    WriteLn('1 - Cadastrar um novo produto');
    WriteLn('2 - Listar produtos cadastrados');
    WriteLn('3 - Pesquisar produto pelo c�digo');
    WriteLn('4 - Excluir um produto');
    WriteLn('5 - Sair do sistema');
    Write('Escolha uma op��o: ');
    ReadLn(opcao);

    case opcao of
      1: begin // Cadastro de produto
        if TotalProdutos < 100 then
        begin
          Write('Digite o c�digo do produto: ');
          ReadLn(codigoBusca);
          encontrado := False;
          for i := 1 to TotalProdutos do
            if Produtos[i].Codigo = codigoBusca then
              encontrado := True;
          if encontrado then
            WriteLn('C�digo j� cadastrado!')
          else
          begin
            Inc(TotalProdutos);
            Produtos[TotalProdutos].Codigo := codigoBusca;
            Write('Digite a descri��o do produto: ');
            ReadLn(Produtos[TotalProdutos].Descricao);
            Write('Digite o valor do produto: ');
            ReadLn(Produtos[TotalProdutos].Valor);
            WriteLn('Produto cadastrado com sucesso!');
          end;
        end
        else
          WriteLn('Limite de produtos atingido!');
      end;

      2: begin // Listar produtos
        if TotalProdutos = 0 then
          WriteLn('Nenhum produto cadastrado!')
        else
        begin
          WriteLn('Lista de produtos:');
          for i := 1 to TotalProdutos do
            WriteLn(Format('C�digo: %d - Descri��o: %s - Valor: R$ %.2f', [Produtos[i].Codigo, Produtos[i].Descricao, Produtos[i].Valor]));
        end;
      end;

      3: begin // Pesquisar produto pelo c�digo
        Write('Digite o c�digo do produto: ');
        ReadLn(codigoBusca);
        encontrado := False;
        for i := 1 to TotalProdutos do
          if Produtos[i].Codigo = codigoBusca then
          begin
            WriteLn(Format('C�digo: %d - Descri��o: %s - Valor: R$ %.2f', [Produtos[i].Codigo, Produtos[i].Descricao, Produtos[i].Valor]));
            encontrado := True;
            Break;
          end;
        if not encontrado then
          WriteLn('Produto n�o encontrado!');
      end;

      4: begin // Excluir produto
        Write('Digite o c�digo do produto a ser exclu�do: ');
        ReadLn(codigoBusca);
        encontrado := False;
        for i := 1 to TotalProdutos do
          if Produtos[i].Codigo = codigoBusca then
          begin
            Produtos[i] := Produtos[TotalProdutos];
            Dec(TotalProdutos);
            WriteLn('Produto exclu�do com sucesso!');
            encontrado := True;
            Break;
          end;
        if not encontrado then
          WriteLn('Produto n�o encontrado!');
      end;

      5: WriteLn('Saindo do sistema...');
    else
      WriteLn('Op��o inv�lida!');
    end;
  until opcao = 5;
end.

