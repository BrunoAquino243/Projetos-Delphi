unit GeradorSenhas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.ComCtrls;

type
  Tgerador_senhas = class(TForm)
    radio_opcoes: TRadioGroup;
    edit_caracter: TEdit;
    edit_senha: TEdit;
    UpDown1: TUpDown;
    btn_gerar: TButton;
    lb_gerado: TLabel;
    btn_limpar: TButton;
    btn_sair: TButton;
    procedure btn_gerarClick(Sender: TObject);
    procedure btn_limparClick(Sender: TObject);
    procedure btn_sairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  gerador_senhas: Tgerador_senhas;

implementation

{$R *.dfm}

procedure Tgerador_senhas.btn_gerarClick(Sender: TObject);
var
i : Integer;
const
numeros = '1234567890';
LetrasMin = 'abcdefghijklmnopqrstuvwxyz';
LetrasMai = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
LetrasMinNum = LetrasMin + numeros;
LetrasMaiNum = LetrasMai + numeros;
Todos = LetrasMai + LetrasMin + numeros;
begin
 edit_senha.Text := '';
 //numeros
 if radio_opcoes.ItemIndex = 0 then
 begin
   for i := 0 to StrToInt(edit_caracter.Text) - 1 do
   begin
     edit_senha.Text := edit_senha.Text + numeros [Random(Length(numeros)) + 1];
   end;

   if StrToInt(edit_caracter.Text) > 0 then
   begin
     ShowMessage('Senha Gerada Com Sucesso');
   end;

 end;

 //letras minusculas
 if radio_opcoes.ItemIndex = 1 then
 begin
   for i := 0 to StrToInt(edit_caracter.Text) - 1 do
   begin
     edit_senha.Text := edit_senha.Text + LetrasMin [Random(Length(LetrasMin)) + 1];
   end;

   if StrToInt(edit_caracter.Text) > 0 then
   begin
     ShowMessage('Senha Gerada Com Sucesso');
   end;
 end;

 //letras maiusculas
 if radio_opcoes.ItemIndex = 2 then
 begin
   for i := 0 to StrToInt(edit_caracter.Text) - 1 do
   begin
     edit_senha.Text := edit_senha.Text + LetrasMai [Random(Length(LetrasMai)) + 1];
   end;

   if StrToInt(edit_caracter.Text) > 0 then
   begin
     ShowMessage('Senha Gerada Com Sucesso');
   end;

 end;

 //letras minusculas e numeros
 if radio_opcoes.ItemIndex = 3 then
 begin
   for i := 0 to StrToInt(edit_caracter.Text) - 1 do
   begin
     edit_senha.Text := edit_senha.Text + LetrasMinNum [Random(Length(LetrasMinNum)) + 1];
   end;

   if StrToInt(edit_caracter.Text) > 0 then
   begin
     ShowMessage('Senha Gerada Com Sucesso');
   end;
 end;

 //letras maiusculas e numeros
 if radio_opcoes.ItemIndex = 4 then
 begin
   for i := 0 to StrToInt(edit_caracter.Text) - 1 do
   begin
     edit_senha.Text := edit_senha.Text + LetrasMaiNum [Random(Length(LetrasMaiNum)) + 1];
   end;

   if StrToInt(edit_caracter.Text) > 0 then
   begin
     ShowMessage('Senha Gerada Com Sucesso');
   end;
 end;

 //letras maiusculas, minusculas e numeros
 if radio_opcoes.ItemIndex = 5 then
 begin
   for i := 0 to StrToInt(edit_caracter.Text) - 1 do
   begin
     edit_senha.Text := edit_senha.Text + Todos [Random(Length(Todos)) + 1];
   end;

   if StrToInt(edit_caracter.Text) > 0 then
   begin
     ShowMessage('Senha Gerada Com Sucesso');
   end;
 end;
end;

procedure Tgerador_senhas.btn_limparClick(Sender: TObject);
begin
  edit_caracter.Text := '0';
  edit_senha.Clear;
  edit_caracter.SetFocus;
end;

procedure Tgerador_senhas.btn_sairClick(Sender: TObject);
begin
  Close;
end;

end.
