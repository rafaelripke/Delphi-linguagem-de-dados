program Exercicio3;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

Var
 Nome : string;
 Idade : Integer ;


begin
    Write ('digite seu nome:');
    Readln(Nome);

    Write ('digite sua idade:');
    Readln(Idade);

    Writeln(Format('Olá %s. Atualmente você possui %d anos. Daqui a 5 anos você terá %d anos', [Nome, Idade, Idade + 5]));
    Readln
end.
