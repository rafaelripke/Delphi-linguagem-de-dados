program exercicio9;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  Idade, MenorIdade, MaiorIdade, SomaIdades, Quantidade: Integer;
  Media: Real;

begin
  MenorIdade := High(Integer);
  MaiorIdade := Low(Integer);
  SomaIdades := 0;
  Quantidade := 0;

  WriteLn('Digite as idades dos alunos (informe 0 para finalizar):');

  repeat
    Write('Idade: ');
    ReadLn(Idade);

    if Idade <> 0 then
    begin
      SomaIdades := SomaIdades + Idade;
      Inc(Quantidade);

      if Idade < MenorIdade then
        MenorIdade := Idade;

      if Idade > MaiorIdade then
        MaiorIdade := Idade;
    end;

  until Idade = 0;

  if Quantidade > 0 then

  begin
    Media := SomaIdades / Quantidade;
    WriteLn('Menor idade: ', MenorIdade);
    WriteLn('Maior idade: ', MaiorIdade);
    WriteLn('M�dia das idades: ', FormatFloat('0.00', Media));
    Readln;
  end

  else
    WriteLn('Nenhuma idade foi informada.');

  end.
