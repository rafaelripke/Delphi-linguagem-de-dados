program exercicio5;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  altura, pesoIdeal: Real;
  sexo: Char;
begin
  Write('Digite a altura (em metros): ');
  ReadLn(altura);

  Write('Digite o sexo (M/F): ');
  ReadLn(sexo);
  sexo := UpCase(sexo);

  if sexo = 'M' then
    pesoIdeal := (72.7 * altura) - 58
  else if sexo = 'F' then
    pesoIdeal := (62.1 * altura) - 44.7
  else
  begin
    WriteLn('Sexo inválido!');
    ReadLn;

  end;
  WriteLn('O peso ideal é: ', FormatFloat('0.00', pesoIdeal), ' kg');
  ReadLn;
end.
