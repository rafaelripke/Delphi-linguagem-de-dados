unit Uprincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFormPrincipal = class(TForm)
    CLIQUE: TButton;
    Edit1: TEdit;
    procedure CLIQUEClick(Sender: TObject);        
  private
    function ConverterTextoParaMaiusculo(Atexto: string) : string;
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}
 
 function TFormPrincipal.ConverterTextoParaMaiusculo(Atexto: string): string;
 
begin
  Result := Atexto.ToUpper;
end;

procedure TFormPrincipal.CLIQUEClick(Sender: TObject);

 var
 TextoMaiusculo: string;

begin
  TextoMaiusculo := ConverterTextoParaMaiusculo(Edit1.Text); 
  ShowMessage(TextoMaiusculo);

end;

end.
