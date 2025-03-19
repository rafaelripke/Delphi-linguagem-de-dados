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
    WriteLn('3 - Pesquisar produto pelo código');
    WriteLn('4 - Excluir um produto');
    WriteLn('5 - Sair do sistema');
    Write('Escolha uma opção: ');
    ReadLn(opcao);

    case opcao of
      1: begin // Cadastro de produto
        if TotalProdutos < 100 then
        begin
          Write('Digite o código do produto: ');
          ReadLn(codigoBusca);
          encontrado := False;
          for i := 1 to TotalProdutos do
            if Produtos[i].Codigo = codigoBusca then
              encontrado := True;
          if encontrado then
            WriteLn('Código já cadastrado!')
          else
          begin
            Inc(TotalProdutos);
            Produtos[TotalProdutos].Codigo := codigoBusca;
            Write('Digite a descrição do produto: ');
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
            WriteLn(Format('Código: %d - Descrição: %s - Valor: R$ %.2f', [Produtos[i].Codigo, Produtos[i].Descricao, Produtos[i].Valor]));
        end;
      end;

      3: begin // Pesquisar produto pelo código
        Write('Digite o código do produto: ');
        ReadLn(codigoBusca);
        encontrado := False;
        for i := 1 to TotalProdutos do
          if Produtos[i].Codigo = codigoBusca then
          begin
            WriteLn(Format('Código: %d - Descrição: %s - Valor: R$ %.2f', [Produtos[i].Codigo, Produtos[i].Descricao, Produtos[i].Valor]));
            encontrado := True;
            Break;
          end;
        if not encontrado then
          WriteLn('Produto não encontrado!');
      end;

      4: begin // Excluir produto
        Write('Digite o código do produto a ser excluído: ');
        ReadLn(codigoBusca);
        encontrado := False;
        for i := 1 to TotalProdutos do
          if Produtos[i].Codigo = codigoBusca then
          begin
            Produtos[i] := Produtos[TotalProdutos];
            Dec(TotalProdutos);
            WriteLn('Produto excluído com sucesso!');
            encontrado := True;
            Break;
          end;
        if not encontrado then
          WriteLn('Produto não encontrado!');
      end;

      5: WriteLn('Saindo do sistema...');
    else
      WriteLn('Opção inválida!');
    end;
  until opcao = 5;
end.

