unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, System.Generics.Collections;

type
  TForm1 = class(TForm)
    PainelTopo: TPanel;
    PainelLateralEsquerdo: TPanel;
    PainelLateralDireito: TPanel;
    PainelInferior: TPanel;
    Mulher03: TGroupBox;
    Mulher05: TGroupBox;
    Mulher04: TGroupBox;
    Mulher2: TGroupBox;
    Mulher01: TGroupBox;
    Mulher01Sacola: TComboBox;
    Sacola: TLabel;
    Caixas: TLabel;
    Doce: TLabel;
    Nome: TLabel;
    Idade: TLabel;
    Label6: TLabel;
    Mulher01Caixas: TComboBox;
    Mulher01Doce: TComboBox;
    Mulher01Nome: TComboBox;
    Mulher01Idade: TComboBox;
    Mulher01Profissao: TComboBox;
    Mulher02Sacola: TComboBox;
    Mulher02Caixas: TComboBox;
    Mulher02Doce: TComboBox;
    Mulher02Nome: TComboBox;
    Mulher02Idade: TComboBox;
    Mulher02Profissao: TComboBox;
    Mulher03Sacola: TComboBox;
    Mulher03Caixas: TComboBox;
    Mulher03Doce: TComboBox;
    Mulher03Nome: TComboBox;
    Mulher03Idade: TComboBox;
    Mulher04Sacola: TComboBox;
    Mulher04Caixas: TComboBox;
    Mulher04Doce: TComboBox;
    Mulher04Nome: TComboBox;
    Mulher04Idade: TComboBox;
    Mulher04Profissao: TComboBox;
    Mulher03Profissao: TComboBox;
    Mulher05Sacola: TComboBox;
    Mulher05Caixas: TComboBox;
    Mulher05Doce: TComboBox;
    Mulher05Nome: TComboBox;
    Mulher05Idade: TComboBox;
    Mulher05Profissao: TComboBox;
    Opcao1: TCheckBox;
    Opcao11: TCheckBox;
    Opcao2: TCheckBox;
    Opcao12: TCheckBox;
    opcao3: TCheckBox;
    opcao4: TCheckBox;
    opcao5: TCheckBox;
    opcao6: TCheckBox;
    opcao7: TCheckBox;
    opcao8: TCheckBox;
    opcao9: TCheckBox;
    opcao10: TCheckBox;
    opcao13: TCheckBox;
    opcao14: TCheckBox;
    opcao15: TCheckBox;
    opcao16: TCheckBox;
    opcao17: TCheckBox;
    opcao18: TCheckBox;
    opcao19: TCheckBox;
    opcao20: TCheckBox;
    btnVerificar: TButton;

    procedure FormCreate(Sender: TObject);
    procedure Mulher01SacolaChange(Sender: TObject);
    procedure CheckBoxClick(Sender: TObject);
    procedure btnVerificarClick(Sender: TObject);
  private
    procedure PreencherCombo(Combo: TComboBox; const Valores: array of string);
    procedure ConfigurarCheckBoxes;
    procedure AplicarCorGrupo(Combo: TComboBox; Grupo: TGroupBox);
    function VerificarTodasRespostas: Boolean;
    procedure MostrarMensagemAcerto;
    procedure VerificarPistas;
    function ExtrairNumeroIdade(const Idade: string): Integer;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.AplicarCorGrupo(Combo: TComboBox; Grupo: TGroupBox);
var
  corTexto: string;
begin
  if not Assigned(Combo) or not Assigned(Grupo) then Exit;

  corTexto := LowerCase(Trim(Combo.Text));

  if corTexto = 'vermelha' then
    Grupo.Color := clRed
  else if corTexto = 'verde' then
    Grupo.Color := clGreen
  else if corTexto = 'azul' then
    Grupo.Color := clBlue
  else if corTexto = 'amarela' then
    Grupo.Color := clYellow
  else if corTexto = 'branca' then
    Grupo.Color := clWhite
  else
    Grupo.Color := clBtnFace;

  Grupo.Invalidate;
  VerificarPistas;
end;

procedure TForm1.CheckBoxClick(Sender: TObject);
begin
  if Sender is TCheckBox then
  begin
    if TCheckBox(Sender).Checked then
      TCheckBox(Sender).Font.Style := [fsStrikeOut]
    else
      TCheckBox(Sender).Font.Style := [];
  end;
end;

procedure TForm1.ConfigurarCheckBoxes;
var
  i: Integer;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    if Components[i] is TCheckBox then
    begin
      TCheckBox(Components[i]).OnClick := CheckBoxClick;
      TCheckBox(Components[i]).Enabled := False;
    end;
  end;
end;

function TForm1.ExtrairNumeroIdade(const Idade: string): Integer;
begin
  Result := StrToIntDef(Copy(Idade, 1, Pos(' ', Idade) - 1), 0);
end;

procedure TForm1.PreencherCombo(Combo: TComboBox; const Valores: array of string);
var
  i: Integer;
begin
  Combo.Items.Clear;
  for i := Low(Valores) to High(Valores) do
    Combo.Items.Add(Valores[i]);
  Combo.ItemIndex := -1;
end;

procedure TForm1.FormCreate(Sender: TObject);
const
  Sacolas: array[0..4] of string = ('Branca', 'Azul', 'Verde', 'Vermelha', 'Amarela');
  Caixas: array[0..4] of string = ('2', '3', '4', '5', '6');
  Doces: array[0..4] of string = ('Bolo', 'Pavê', 'Torta', 'Geleia', 'Mousse');
  Nomes: array[0..4] of string = ('Inês', 'Giovana', 'Silvia', 'Mariana', 'Carla');
  Idades: array[0..4] of string = ('26 Anos', '31 Anos', '37 Anos', '42 Anos', '55 Anos');
  Profissoes: array[0..4] of string = ('Jornalista', 'Garçonete', 'Vendedora', 'Projetista', 'Estilista');
begin
  PreencherCombo(Mulher01Sacola, Sacolas);
  PreencherCombo(Mulher02Sacola, Sacolas);
  PreencherCombo(Mulher03Sacola, Sacolas);
  PreencherCombo(Mulher04Sacola, Sacolas);
  PreencherCombo(Mulher05Sacola, Sacolas);

  PreencherCombo(Mulher01Caixas, Caixas);
  PreencherCombo(Mulher02Caixas, Caixas);
  PreencherCombo(Mulher03Caixas, Caixas);
  PreencherCombo(Mulher04Caixas, Caixas);
  PreencherCombo(Mulher05Caixas, Caixas);

  PreencherCombo(Mulher01Doce, Doces);
  PreencherCombo(Mulher02Doce, Doces);
  PreencherCombo(Mulher03Doce, Doces);
  PreencherCombo(Mulher04Doce, Doces);
  PreencherCombo(Mulher05Doce, Doces);

  PreencherCombo(Mulher01Nome, Nomes);
  PreencherCombo(Mulher02Nome, Nomes);
  PreencherCombo(Mulher03Nome, Nomes);
  PreencherCombo(Mulher04Nome, Nomes);
  PreencherCombo(Mulher05Nome, Nomes);

  PreencherCombo(Mulher01Idade, Idades);
  PreencherCombo(Mulher02Idade, Idades);
  PreencherCombo(Mulher03Idade, Idades);
  PreencherCombo(Mulher04Idade, Idades);
  PreencherCombo(Mulher05Idade, Idades);

  PreencherCombo(Mulher01Profissao, Profissoes);
  PreencherCombo(Mulher02Profissao, Profissoes);
  PreencherCombo(Mulher03Profissao, Profissoes);
  PreencherCombo(Mulher04Profissao, Profissoes);
  PreencherCombo(Mulher05Profissao, Profissoes);

  ConfigurarCheckBoxes;
end;

procedure TForm1.Mulher01SacolaChange(Sender: TObject);
begin
  if Sender = Mulher01Sacola then
    AplicarCorGrupo(Mulher01Sacola, Mulher01)
  else if Sender = Mulher02Sacola then
    AplicarCorGrupo(Mulher02Sacola, Mulher2)
  else if Sender = Mulher03Sacola then
    AplicarCorGrupo(Mulher03Sacola, Mulher03)
  else if Sender = Mulher04Sacola then
    AplicarCorGrupo(Mulher04Sacola, Mulher04)
  else if Sender = Mulher05Sacola then
    AplicarCorGrupo(Mulher05Sacola, Mulher05);
end;

procedure TForm1.VerificarPistas;
var
  Posicoes: array[1..5] of record
    Nome, Sacola, Doce, Profissao: string;
    Idade: Integer;
    Caixas: string;
  end;
  i, j, k: Integer;
begin

  for i := 1 to 5 do
  begin
    case i of
      1: begin
           Posicoes[i].Nome := Mulher01Nome.Text;
           Posicoes[i].Sacola := Mulher01Sacola.Text;
           Posicoes[i].Doce := Mulher01Doce.Text;
           Posicoes[i].Profissao := Mulher01Profissao.Text;
           Posicoes[i].Idade := ExtrairNumeroIdade(Mulher01Idade.Text);
           Posicoes[i].Caixas := Mulher01Caixas.Text;
         end;
      2: begin
           Posicoes[i].Nome := Mulher02Nome.Text;
           Posicoes[i].Sacola := Mulher02Sacola.Text;
           Posicoes[i].Doce := Mulher02Doce.Text;
           Posicoes[i].Profissao := Mulher02Profissao.Text;
           Posicoes[i].Idade := ExtrairNumeroIdade(Mulher02Idade.Text);
           Posicoes[i].Caixas := Mulher02Caixas.Text;
         end;
      3: begin
           Posicoes[i].Nome := Mulher03Nome.Text;
           Posicoes[i].Sacola := Mulher03Sacola.Text;
           Posicoes[i].Doce := Mulher03Doce.Text;
           Posicoes[i].Profissao := Mulher03Profissao.Text;
           Posicoes[i].Idade := ExtrairNumeroIdade(Mulher03Idade.Text);
           Posicoes[i].Caixas := Mulher03Caixas.Text;
         end;
      4: begin
           Posicoes[i].Nome := Mulher04Nome.Text;
           Posicoes[i].Sacola := Mulher04Sacola.Text;
           Posicoes[i].Doce := Mulher04Doce.Text;
           Posicoes[i].Profissao := Mulher04Profissao.Text;
           Posicoes[i].Idade := ExtrairNumeroIdade(Mulher04Idade.Text);
           Posicoes[i].Caixas := Mulher04Caixas.Text;
         end;
      5: begin
           Posicoes[i].Nome := Mulher05Nome.Text;
           Posicoes[i].Sacola := Mulher05Sacola.Text;
           Posicoes[i].Doce := Mulher05Doce.Text;
           Posicoes[i].Profissao := Mulher05Profissao.Text;
           Posicoes[i].Idade := ExtrairNumeroIdade(Mulher05Idade.Text);
           Posicoes[i].Caixas := Mulher05Caixas.Text;
         end;
    end;
  end;


  Opcao1.Checked := (Posicoes[1].Idade = 37) or (Posicoes[5].Idade = 37);

  Opcao2.Checked := False;
  for i := 1 to 4 do
    if (Posicoes[i].Sacola = 'Branca') then
      for j := i+1 to 5 do
        if (Posicoes[j].Profissao = 'Vendedora') then
          Opcao2.Checked := True;

  Opcao3.Checked := (Posicoes[1].Caixas = '5') or (Posicoes[2].Caixas = '5') or
                   (Posicoes[3].Caixas = '5') or (Posicoes[4].Caixas = '5') or
                   (Posicoes[5].Caixas = '5');

  Opcao4.Checked := False;
  for i := 1 to 4 do
    if (Posicoes[i].Sacola = 'Verde') then
      for j := i+1 to 5 do
        if (Posicoes[j].Sacola = 'Azul') then
          Opcao4.Checked := True;

  Opcao5.Checked := False;
  for i := 1 to 4 do
    if (Posicoes[i].Profissao = 'Jornalista') and
       ((Posicoes[i+1].Caixas = '4') or (i > 1) and (Posicoes[i-1].Caixas = '4')) then
      Opcao5.Checked := True;

  Opcao6.Checked := (Posicoes[2].Nome = 'Giovana');

  Opcao7.Checked := False;
  for i := 1 to 4 do
    if ((Posicoes[i].Sacola = 'Verde') and (Posicoes[i+1].Sacola = 'Azul')) or
       ((Posicoes[i].Sacola = 'Azul') and (Posicoes[i+1].Sacola = 'Verde')) then
      Opcao7.Checked := True;

  Opcao8.Checked := False;
  for i := 1 to 5 do
    if (Posicoes[i].Sacola = 'Branca') then
      for j := i+1 to 5 do
        if (Posicoes[j].Idade = 26) then
          Opcao8.Checked := True;


Opcao9.Checked := False;

for i := 1 to 5 do
begin
  if Posicoes[i].Sacola = 'Vermelha' then
  begin

    for j := i+1 to 5 do
    begin
      if Posicoes[j].Profissao = 'Garçonete' then
      begin

        k := i+1;
        while (k < j) and (not Opcao9.Checked) do
        begin
          if Posicoes[k].Profissao = 'Projetista' then
            Opcao9.Checked := True;
          Inc(k);
        end;
        Break;
      end;
    end;
    Break;
  end;
end;
  Opcao10.Checked := (Posicoes[3].Sacola = 'Azul');

  Opcao11.Checked := False;
  for i := 1 to 4 do
    if (Posicoes[i].Doce = 'Bolo') and (Posicoes[i+1].Nome = 'Mariana') then
      Opcao11.Checked := True;

  Opcao12.Checked := False;
  for i := 1 to 4 do
    if (Posicoes[i].Nome = 'Giovana') and
       ((Posicoes[i+1].Caixas = '4') or (i > 1) and (Posicoes[i-1].Caixas = '4')) then
      Opcao12.Checked := True;

  Opcao13.Checked := False;
  for i := 1 to 4 do
    if (Posicoes[i].Sacola = 'Verde') and
       ((Posicoes[i+1].Doce = 'Geleia') or (i > 1) and (Posicoes[i-1].Doce = 'Geleia')) then
      Opcao13.Checked := True;

  Opcao14.Checked := (Posicoes[3].Nome = 'Silvia') and (Posicoes[3].Idade = 42);

  Opcao15.Checked := (Posicoes[4].Profissao = 'Jornalista');

  Opcao16.Checked := False;
  for i := 1 to 4 do
    if (Posicoes[i].Nome = 'Inês') and
       ((Posicoes[i+1].Doce = 'Torta') or (i > 1) and (Posicoes[i-1].Doce = 'Torta')) then
      Opcao16.Checked := True;

  Opcao17.Checked := (Posicoes[1].Caixas = '6');

  Opcao18.Checked := False;
  for i := 1 to 4 do
    if (Posicoes[i].Profissao = 'Projetista') and (Posicoes[i+1].Idade = 42) then
      Opcao18.Checked := True;

  Opcao19.Checked := False;
  for i := 1 to 5 do
    if (Posicoes[i].Sacola = 'Verde') then
      for j := 1 to 5 do
        if (Posicoes[j].Doce = 'Pavê') then
          for k := 1 to 5 do
            if (Posicoes[k].Idade = 55) and (j < i) and (i < k) then
              Opcao19.Checked := True;

   Opcao20.Checked := False;
  for i := 1 to 5 do
  begin
    if Posicoes[i].Caixas = '2' then
    begin
      if (i > 1) and (Posicoes[i-1].Doce = 'Bolo') then
        Opcao20.Checked := True;
      if (i < 5) and (Posicoes[i+1].Doce = 'Bolo') then
        Opcao20.Checked := True;
    end;
  end;


  for i := 1 to 20 do
  begin
    with FindComponent('Opcao' + IntToStr(i)) as TCheckBox do
    begin
      Font.Style := [];
      if Checked then Font.Style := [fsStrikeOut];

      Opcao20.Font.Style := [];
  if Opcao20.Checked then
    Opcao20.Font.Style := [fsStrikeOut];
  Opcao20.Repaint;
    end;
  end;


end;


function TForm1.VerificarTodasRespostas: Boolean;
begin
  Result := False;


  if (Mulher01Sacola.Text <> 'Vermelha') or
     (Mulher01Caixas.Text <> '6') or
     (Mulher01Doce.Text <> 'Pavê') or
     (Mulher01Nome.Text <> 'Carla') or
     (Mulher01Idade.Text <> '37 Anos') or
     (Mulher01Profissao.Text <> 'Estilista') then
    Exit;


  if (Mulher02Sacola.Text <> 'Verde') or
     (Mulher02Caixas.Text <> '3') or
     (Mulher02Doce.Text <> 'Mousse') or
     (Mulher02Nome.Text <> 'Giovana') or
     (Mulher02Idade.Text <> '31 Anos') or
     (Mulher02Profissao.Text <> 'Projetista') then
    Exit;


  if (Mulher03Sacola.Text <> 'Azul') or
     (Mulher03Caixas.Text <> '4') or
     (Mulher03Doce.Text <> 'Geleia') or
     (Mulher03Nome.Text <> 'Silvia') or
     (Mulher03Idade.Text <> '42 Anos') or
     (Mulher03Profissao.Text <> 'Garçonete') then
    Exit;


  if (Mulher04Sacola.Text <> 'Branca') or
     (Mulher04Caixas.Text <> '5') or
     (Mulher04Doce.Text <> 'Bolo') or
     (Mulher04Nome.Text <> 'Inês') or
     (Mulher04Idade.Text <> '55 Anos') or
     (Mulher04Profissao.Text <> 'Jornalista') then
    Exit;


  if (Mulher05Sacola.Text <> 'Amarela') or
     (Mulher05Caixas.Text <> '2') or
     (Mulher05Doce.Text <> 'Torta') or
     (Mulher05Nome.Text <> 'Mariana') or
     (Mulher05Idade.Text <> '26 Anos') or
     (Mulher05Profissao.Text <> 'Vendedora') then
    Exit;

  Result := True;
end;

procedure TForm1.MostrarMensagemAcerto;
begin
  ShowMessage('Parabéns! Você resolveu o Racha Cuca com perfeição!' + sLineBreak +
              'Todas as informações estão corretas!');
end;

procedure TForm1.btnVerificarClick(Sender: TObject);
begin
  if VerificarTodasRespostas then
  begin

    PainelLateralEsquerdo.Color := clGreen;
    PainelLateralDireito.Color := clGreen;
    PainelTopo.Color := clGreen;
    PainelInferior.Color := clGreen;


    PainelLateralEsquerdo.BevelOuter := bvRaised;
    PainelLateralDireito.BevelOuter := bvRaised;
    PainelTopo.BevelOuter := bvRaised;
    PainelInferior.BevelOuter := bvRaised;


    MostrarMensagemAcerto;
  end
  else
  begin

    PainelLateralEsquerdo.Color := clBtnFace;
    PainelLateralDireito.Color := clBtnFace;
    PainelTopo.Color := clBtnFace;
    PainelInferior.Color := clBtnFace;

    ShowMessage('Ainda não... Continue tentando!' + sLineBreak +
                'Verifique suas respostas novamente.');
  end;


  VerificarPistas;
end;

end.
