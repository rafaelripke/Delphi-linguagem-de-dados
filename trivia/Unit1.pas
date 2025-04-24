unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Generics.Collections, IOUtils;

type
  TMainForm1 = class(TForm)
    PainelSuperior: TPanel;
    Pesquisa: TEdit;
    Contador: TLabel;
    PainelGlobal: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure PesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    FPaises: TList<string>;
    FTentativas: Integer;
    procedure CriarObjetosPaises;
    function CriptografarPalavra(APalavra: string): string;
    procedure Pesquisar;
    procedure AtualizarContador;
  public
    { Public declarations }
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
begin
  for var I := 0 to FPaises.Count -1 do
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
    Pais.Hint := FPaises.Items[I];
  end;
end;

function TMainForm1.CriptografarPalavra(APalavra: string): string;
var
  ConjuntoPalavras: TArray<string>;
begin
  Result := '';
  ConjuntoPalavras := APalavra.Trim.Split([' ',  '-']);

  for var Palavra in ConjuntoPalavras do
  begin
    var PalavraCriptografada := UpperCase(Palavra[1]) + string.Empty.PadLeft(Palavra.Length - 1, '?');

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
  ListaPaises := TFile.ReadAllLines('C:\Users\rafae\OneDrive\Área de Trabalho\github\delphi\trivia\Paises.txt');
  FPaises := TList<string>.create(ListaPaises);
  CriarObjetosPaises;
  AtualizarContador;
end;

procedure TMainForm1.PesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Pesquisar;
  end;
end;

procedure TMainForm1.AtualizarContador;
begin
  Contador.Caption := 'Tentativas: ' + FTentativas.ToString;
end;

procedure TMainForm1.Pesquisar;
begin
  var PalavraDigitada := Trim(Pesquisa.Text);
  if PalavraDigitada.IsEmpty then Exit;

  Inc(FTentativas);
  AtualizarContador;

  var Encontrado := False;

  for var I := 0 to PainelGlobal.ControlCount - 1 do
  begin
    if PainelGlobal.Controls[I] is TPanel then
    begin
      var PanelAtual := TPanel(PainelGlobal.Controls[I]);

      for var J := 0 to PanelAtual.ControlCount - 1 do
      begin
        if (PanelAtual.Controls[J] is TLabel) then
        begin
          var LabelPais := TLabel(PanelAtual.Controls[J]);

          if SameText(LabelPais.Hint, PalavraDigitada) then
          begin
            LabelPais.Caption := LabelPais.Hint;
            LabelPais.Font.Color := clGreen;
            Encontrado := True;
          end;
        end;
      end;
    end;
  end;

  if not Encontrado then
    ShowMessage('País não encontrado! Tente novamente.');

  Pesquisa.Clear;
  Pesquisa.SetFocus;
end;

end.
