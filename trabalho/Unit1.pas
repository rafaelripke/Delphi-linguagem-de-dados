unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Mask, Vcl.WinXCalendars;

type
  TForm1 = class(TForm)
    btnInserir: TButton;
    edtTelefone: TMaskEdit;
    CadastrodeUsuário: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edtNome: TEdit;
    Label3: TLabel;
    edtEmail: TEdit;
    Label4: TLabel;
    dtNascimento: TCalendarPicker;
    Panel1: TPanel;
    Label5: TLabel;
    rbNormal: TRadioButton;
    rbAdmin: TRadioButton;
    edtSenha: TLabeledEdit;
    edtRepetirSenha: TLabeledEdit;
    tabela: TStringGrid;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    procedure FormCreate(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
  private
    { Private declarations }
    rowIndex: Integer;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin


  tabela.ColCount := 6;
  tabela.RowCount := 1;
  tabela.FixedRows := 1;
  tabela.Options := tabela.Options + [goColSizing, goRowSelect, goVertLine, goHorzLine];
  tabela.DefaultColWidth := 120;
  tabela.ScrollBars := ssVertical;


  tabela.Cells[0, 0] := 'Nome';
  tabela.Cells[1, 0] := 'Email';
  tabela.Cells[2, 0] := 'Data de Nascimento';
  tabela.Cells[3, 0] := 'Telefone';
  tabela.Cells[4, 0] := 'Senha';
  tabela.Cells[5, 0] := 'Tipo de Usuário';
end;

procedure TForm1.btnInserirClick(Sender: TObject);
var
  userType: String;

begin

  if (edtNome.Text = '') or (edtEmail.Text = '') or (edtTelefone.Text = '') or
     (edtSenha.Text = '') or (edtRepetirSenha.Text = '') then
  begin
    ShowMessage('Por favor, preencha todos os campos.');
    Exit;
  end;


  if edtSenha.Text <> edtRepetirSenha.Text then
  begin
    ShowMessage('As senhas não coincidem.');
    Exit;
  end;


  if rbNormal.Checked then
    userType := 'Normal'
  else if rbAdmin.Checked then
    userType := 'Administrador'
  else
  begin
    ShowMessage('Selecione o tipo de usuário.');
    Exit;
  end;


  rowIndex := tabela.RowCount;
  tabela.RowCount := rowIndex + 1;

  tabela.Cells[0, rowIndex] := edtNome.Text;
  tabela.Cells[1, rowIndex] := edtEmail.Text;
  tabela.Cells[2, rowIndex] := DateToStr(dtNascimento.Date);
  tabela.Cells[3, rowIndex] := edtTelefone.Text;
  tabela.Cells[4, rowIndex] := '';
  tabela.Cells[5, rowIndex] := userType;


  tabela.Repaint;


  ShowMessage('Usuário "' + edtNome.Text + '" inserido com sucesso!');
end;

end.
