program Exercicio3;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

Var
 Nome1, Nome2, Nome3 : string;
 Idade1, Idade2, Idade3, Soma : Integer;

begin
   Write ('Informe o primeiro nome:');
   Readln (Nome1);
   Writeln(Format('Informe a idade do %s:',[Nome1]));
   Readln (Idade1);

   Write ('Informe o segundo nome:');
   Readln (Nome2);
   Writeln(Format('Informe a idade do %s:',[Nome2]));
   Readln (Idade2);

   Write ('Informe o terceiro nome:');
   Readln (Nome3);
   Writeln(Format('Informe a idade do %s:',[Nome3]));
   Readln (Idade3);

   Soma := (Idade1 + Idade2 + Idade3) ;

    Writeln(Format('%s tem %d anos', [Nome1, Idade1]));
    Readln;

    Writeln(Format('%s tem %d anos', [Nome2, Idade2]));
    Readln;

    Writeln(Format('%s tem %d anos', [Nome3, Idade3]));
    Readln;

    Writeln(Format('%s, %s, %s juntos tem %d anos', [Nome1, Nome2, Nome3, Soma]));
    Readln;
end.
