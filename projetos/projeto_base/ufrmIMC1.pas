unit ufrmIMC1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Math;

type
  TCalculadoraIMC = class(TForm)
    btn_calcular: TButton;
    edit_altura: TEdit;
    edit_peso: TEdit;
    edit_imc: TEdit;
    edit_resultado: TEdit;
    lb_altura: TLabel;
    lb_peso: TLabel;
    lb_imc: TLabel;
    lb_resultado: TLabel;
    btn_sair: TButton;
    btn_limpar: TButton;
    edit_nomePessoa: TEdit;
    procedure btn_calcularClick(Sender: TObject);
    procedure btn_sairClick(Sender: TObject);
    procedure btn_limparClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    nomePessoa: string;
  end;

var
  CalculadoraIMC: TCalculadoraIMC;

implementation

{$R *.dfm}

uses UfrmPaginas1, uRotinas;

procedure TCalculadoraIMC.btn_calcularClick(Sender: TObject);
var
  peso, altura, imc: Real;
begin

  //MsgErro('Ocorreu um erro!');

  altura := StrToFloat(edit_altura.Text);
  peso := StrToFloat(edit_peso.Text);
  imc := peso / (altura * altura);
  imc := RoundTo(imc, -2);

  if (imc < 17) then
  begin
    edit_resultado.Text := ('Muito Abaixo do Peso');
    edit_imc.Text := FloatToStr(imc);
  end;

  if (imc >= 17) and (imc <= 18.49) then
  begin
    edit_resultado.Text := ('Abaixo do Peso');
    edit_imc.Text := FloatToStr(imc);
  end;

  if (imc >= 18.5) and (imc <= 24.99) then
  begin
    edit_resultado.Text := ('Peso Normal');
    edit_imc.Text := FloatToStr(imc);
  end;

  if (imc >= 25) and (imc <= 29.99) then
  begin
    edit_resultado.Text := ('Acima do Peso');
    edit_imc.Text := FloatToStr(imc);
  end;

  if (imc >= 30) and (imc <= 34.99) then
  begin
    edit_resultado.Text := ('Obesidade I');
    edit_imc.Text := FloatToStr(imc);
  end;

  if (imc >= 35) and (imc <= 39.99) then
  begin
    edit_resultado.Text := ('Obesidade II [Severa]');
    edit_imc.Text := FloatToStr(imc);
  end;

  if (imc >= 40) then
  begin
    edit_resultado.Text := ('Obesidade III [Mórbida]');
    edit_imc.Text := FloatToStr(imc);
  end;

end;

procedure TCalculadoraIMC.btn_limparClick(Sender: TObject);
begin
  edit_altura.Clear;
  edit_peso.Clear;
  edit_resultado.Clear;
  edit_imc.Clear;
  edit_altura.SetFocus;
end;

procedure TCalculadoraIMC.btn_sairClick(Sender: TObject);
begin
  Close;
end;

end.
