program exercicio7;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  A, B, C: Integer;

begin
  Write('Informe o valor de A: ');
  ReadLn(A);

  Write('Informe o valor de B: ');
  ReadLn(B);

  Write('Informe o valor de C: ');
  ReadLn(C);

  WriteLn(Format('%d + %d + %d = %d', [A, B, C, A + B + C]));
  WriteLn(Format('%d - %d + %d = %d', [A, B, C, A - B + C]));
  WriteLn(Format('%d - (%d + %d) = %d', [A, B, C, A - (B + C)]));
  WriteLn(Format('(%d * 2) + (%d - %d) = %d', [A, B, C, (A * 2) + (B - C)]));
  WriteLn(Format('(%d * 4) + (%d / 2) - (%d + 8) = %.2f', [A, C, B, (A * 4) + (C / 2) - (B + 8)]));
  WriteLn(Format('(%d / 2) + (%d / 2) + (%d / 2) = %.2f', [A, B, C, (A / 2.0) + (B / 2.0) + (C / 2.0)]));
  WriteLn(Format('(%d^2) + (%d^2) = %d', [A, B, (A * A) + (B * B)]));
  WriteLn(Format('(%d^2) + (3 * %d) = %d', [C, B, (C * C) + (3 * B)]));
  WriteLn(Format('%d MOD 2 = %d', [A, A MOD 2]));
  WriteLn(Format('%d MOD 2 = %d', [B, B MOD 2]));
  WriteLn(Format('%d MOD 2 = %d', [C, C MOD 2]));

  ReadLn;
end.
