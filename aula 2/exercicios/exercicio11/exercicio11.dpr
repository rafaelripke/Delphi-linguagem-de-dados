program exercicio11;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  sigla, estado, capital: String;
begin
  Write('Digite a sigla do estado (ex: SC): ');
  ReadLn(sigla);
  sigla := UpperCase(sigla);
  estado := '';
  capital := '';

  if sigla = 'AC' then begin estado := 'Acre'; capital := 'Rio Branco'; end
  else if sigla = 'AL' then begin estado := 'Alagoas'; capital := 'Maceió'; end
  else if sigla = 'AP' then begin estado := 'Amapá'; capital := 'Macapá'; end
  else if sigla = 'AM' then begin estado := 'Amazonas'; capital := 'Manaus'; end
  else if sigla = 'BA' then begin estado := 'Bahia'; capital := 'Salvador'; end
  else if sigla = 'CE' then begin estado := 'Ceará'; capital := 'Fortaleza'; end
  else if sigla = 'DF' then begin estado := 'Distrito Federal'; capital := 'Brasília'; end
  else if sigla = 'ES' then begin estado := 'Espírito Santo'; capital := 'Vitória'; end
  else if sigla = 'GO' then begin estado := 'Goiás'; capital := 'Goiânia'; end
  else if sigla = 'MA' then begin estado := 'Maranhão'; capital := 'São Luís'; end
  else if sigla = 'MT' then begin estado := 'Mato Grosso'; capital := 'Cuiabá'; end
  else if sigla = 'MS' then begin estado := 'Mato Grosso do Sul'; capital := 'Campo Grande'; end
  else if sigla = 'MG' then begin estado := 'Minas Gerais'; capital := 'Belo Horizonte'; end
  else if sigla = 'PA' then begin estado := 'Pará'; capital := 'Belém'; end
  else if sigla = 'PB' then begin estado := 'Paraíba'; capital := 'João Pessoa'; end
  else if sigla = 'PR' then begin estado := 'Paraná'; capital := 'Curitiba'; end
  else if sigla = 'PE' then begin estado := 'Pernambuco'; capital := 'Recife'; end
  else if sigla = 'PI' then begin estado := 'Piauí'; capital := 'Teresina'; end
  else if sigla = 'RJ' then begin estado := 'Rio de Janeiro'; capital := 'Rio de Janeiro'; end
  else if sigla = 'RN' then begin estado := 'Rio Grande do Norte'; capital := 'Natal'; end
  else if sigla = 'RS' then begin estado := 'Rio Grande do Sul'; capital := 'Porto Alegre'; end
  else if sigla = 'RO' then begin estado := 'Rondônia'; capital := 'Porto Velho'; end
  else if sigla = 'RR' then begin estado := 'Roraima'; capital := 'Boa Vista'; end
  else if sigla = 'SC' then begin estado := 'Santa Catarina'; capital := 'Florianópolis'; end
  else if sigla = 'SP' then begin estado := 'São Paulo'; capital := 'São Paulo'; end
  else if sigla = 'SE' then begin estado := 'Sergipe'; capital := 'Aracaju'; end
  else if sigla = 'TO' then begin estado := 'Tocantins'; capital := 'Palmas'; end
  else begin
    WriteLn('Sigla inválida!');
    ReadLn;
    Exit;
  end;

  WriteLn(estado, ', ', capital);
  ReadLn;
end.
