unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  System.Generics.Collections, System.IOUtils;

type
  TMainForm1 = class(TForm)
    PainelSuperior: TPanel;
    Pesquisa: TEdit;
    Contador: TLabel;
    PainelGlobal: TPanel;
    btnT: TLabel;
    btnR: TLabel;
    btnO: TLabel;
    btnP: TLabel;
    btnA: TLabel;
    btnLimpar: TButton;
    btnVerificar: TButton;
    btnEmbaralhar: TButton;

    procedure FormCreate(Sender: TObject);
    procedure LetraClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure btnVerificarClick(Sender: TObject);
    procedure btnEmbaralharClick(Sender: TObject);
    procedure PesquisaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PesquisaKeyPress(Sender: TObject; var Key: Char);
  private
    FPaises: TList<string>;
    FTentativas: Integer;
    FAcertos: Integer;
    procedure CriarObjetosPaises;
    function CriptografarPalavra(APalavra: string): string;
    procedure Pesquisar;
    procedure AtualizarContador;
    procedure AtivarLetras;
    procedure VerificarParabens;
  public
  end;

var
  MainForm1: TMainForm1;

implementation

{$R *.dfm}

procedure TMainForm1.CriarObjetosPaises;
const
  PALAVRAS_POR_PANEL = 25;
var
  Panel: TPanel;
  Pais: TLabel;
  I: Integer;
begin
  // Cria os labels dos países embaralhados no painel
  for I := 0 to FPaises.Count - 1 do
  begin
    if (I = 0) or ((I + 1) mod PALAVRAS_POR_PANEL = 0) then
    begin
      Panel := TPanel.Create(Self);
      Panel.Parent := PainelGlobal;
      Panel.Align := alLeft;
      Panel.Width := 240;
    end;
    Pais := TLabel.Create(Self);
    Pais.Parent := Panel;
    Pais.Align := alTop;
    Pais.Alignment := taCenter;
    Pais.Font.Size := 8;
    Pais.Caption := CriptografarPalavra(FPaises.Items[I]);
    Pais.Hint := FPaises.Items[I]; // Guarda o nome verdadeiro no Hint
  end;
end;

function TMainForm1.CriptografarPalavra(APalavra: string): string;
var
  ConjuntoPalavras: TArray<string>;
  Palavra: string;
  PalavraCriptografada: string;
begin
  // Criptografa o país: mostra só a primeira letra, o resto vira "?"
  Result := '';
  ConjuntoPalavras := APalavra.Trim.Split([' ', '-']);

  for Palavra in ConjuntoPalavras do
  begin
    PalavraCriptografada := UpperCase(Palavra[1]) + StringOfChar('?', Palavra.Length - 1);
    if Result.IsEmpty then
      Result := PalavraCriptografada
    else
      Result := Result + ' ' + PalavraCriptografada;
  end;
end;

procedure TMainForm1.FormCreate(Sender: TObject);
var
  ListaPaises: TArray<string>;
begin
  FTentativas := 0;
  FAcertos := 0;

  // Carrega o arquivo de países
  ListaPaises := TFile.ReadAllLines('C:\Users\rafae\OneDrive\Área de Trabalho\github\delphi\trivia\Paises.txt');
  FPaises := TList<string>.Create(ListaPaises);

  CriarObjetosPaises;
  AtualizarContador;

  // Configura eventos de clique nos botões de letra
  btnT.OnClick := LetraClick;
  btnR.OnClick := LetraClick;
  btnO.OnClick := LetraClick;
  btnP.OnClick := LetraClick;
  btnA.OnClick := LetraClick;

  // Bloqueia digitação no teclado
  Pesquisa.OnKeyPress := PesquisaKeyPress;
end;

procedure TMainForm1.LetraClick(Sender: TObject);
var
  Letra: TLabel;
begin
  // Ao clicar numa letra, ela sobe para o campo de texto
  if Sender is TLabel then
  begin
    Letra := TLabel(Sender);
    Pesquisa.Text := Pesquisa.Text + Letra.Caption;
    Letra.Enabled := False;
    Letra.Font.Color := clGray;
  end;
end;

procedure TMainForm1.AtivarLetras;
begin
  // Reativa as letras após limpar ou embaralhar
  btnT.Enabled := True;
  btnR.Enabled := True;
  btnO.Enabled := True;
  btnP.Enabled := True;
  btnA.Enabled := True;

  btnT.Font.Color := clWindowText;
  btnR.Font.Color := clWindowText;
  btnO.Font.Color := clWindowText;
  btnP.Font.Color := clWindowText;
  btnA.Font.Color := clWindowText;
end;

procedure TMainForm1.btnLimparClick(Sender: TObject);
begin
  Pesquisa.Text := '';
  AtivarLetras;
end;

procedure TMainForm1.btnVerificarClick(Sender: TObject);
begin
  Pesquisar;
end;

procedure TMainForm1.btnEmbaralharClick(Sender: TObject);
var
  Letras: TArray<string>;
  temp: string;
  i, j: Integer;
begin
  Letras := TArray<string>.Create('T', 'R', 'O', 'P', 'A');
  Randomize;
  for i := High(Letras) downto 1 do
  begin
    j := Random(i + 1);
    temp := Letras[i];
    Letras[i] := Letras[j];
    Letras[j] := temp;
  end;

  btnT.Caption := Letras[0];
  btnR.Caption := Letras[1];
  btnO.Caption := Letras[2];
  btnP.Caption := Letras[3];
  btnA.Caption := Letras[4];

  AtivarLetras;
end;

procedure TMainForm1.PesquisaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  // Desativa ENTER para não usar o teclado
  Key := 0;
end;

procedure TMainForm1.PesquisaKeyPress(Sender: TObject; var Key: Char);
begin
  // Bloqueia qualquer digitação no Edit
  Key := #0;
end;

procedure TMainForm1.AtualizarContador;
begin
  Contador.Caption := 'Tentativas: ' + FTentativas.ToString;
end;

procedure TMainForm1.VerificarParabens;
begin
  if FAcertos >= FPaises.Count then
    ShowMessage('Parabéns! Você encontrou todas as combinações!');
end;

procedure TMainForm1.Pesquisar;
var
  PalavraDigitada: string;
  I, J: Integer;
  Encontrado: Boolean;
  PanelAtual: TPanel;
  LabelPais: TLabel;
begin
  PalavraDigitada := Trim(Pesquisa.Text);
  if PalavraDigitada.IsEmpty then Exit;

  Inc(FTentativas);
  AtualizarContador;

  Encontrado := False;

  for I := 0 to PainelGlobal.ControlCount - 1 do
  begin
    if PainelGlobal.Controls[I] is TPanel then
    begin
      PanelAtual := TPanel(PainelGlobal.Controls[I]);

      for J := 0 to PanelAtual.ControlCount - 1 do
      begin
        if (PanelAtual.Controls[J] is TLabel) then
        begin
          LabelPais := TLabel(PanelAtual.Controls[J]);

          if SameText(LabelPais.Hint, PalavraDigitada) and
             (LabelPais.Caption <> LabelPais.Hint) then
          begin
            LabelPais.Caption := LabelPais.Hint;
            LabelPais.Font.Color := clGreen;
            Encontrado := True;
            Inc(FAcertos);
          end;
        end;
      end;
    end;
  end;

  if not Encontrado then
    ShowMessage('Palavra não encontrada! Tente novamente.');

  Pesquisa.Clear;
  AtivarLetras;
  VerificarParabens;
end;

end.

