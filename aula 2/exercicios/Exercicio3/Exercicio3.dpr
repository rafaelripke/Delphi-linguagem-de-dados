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

    Writeln(Format('Ol� %s. Atualmente voc� possui %d anos. Daqui a 5 anos voc� ter� %d anos', [Nome, Idade, Idade + 5]));
    Readln
end.
