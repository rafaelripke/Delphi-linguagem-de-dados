program Exercicio1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Windows;

const
   MinhaConstante = 'Texto fixo';


var
   MeuNumero: Integer;
   MeuTexto: string;

  procedure ImprimirTexto;
  begin
    Writeln('Meu texto');
  end;

begin
  try
  //   MeuNumero := 1;

  //   Readln(MeuTexto);
   ImprimirTexto;
   ImprimirTexto;
   ImprimirTexto;
  //   Writeln('meu texto é: ' + MeuTexto);
  //   Readln;

  except
      Writeln('Ocorreu um erro. Desculpe.');
  end;
end.
