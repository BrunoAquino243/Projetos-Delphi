unit CalculadoraIMC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  Tcalculadora_imc = class(TForm)
    edit_altura: TEdit;
    edit_peso: TEdit;
    edit_resultado: TEdit;
    edit_imc: TEdit;
    lb_altura: TLabel;
    lb_peso: TLabel;
    lb_imc: TLabel;
    btn_calcular: TButton;
    btn_limpar: TButton;
    btn_sair: TButton;
    procedure btn_calcularClick(Sender: TObject);
    procedure btn_sairClick(Sender: TObject);
    procedure btn_limparClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  calculadora_imc: Tcalculadora_imc;

implementation

{$R *.dfm}

procedure Tcalculadora_imc.btn_calcularClick(Sender: TObject);
var
peso, altura, imc : Real;
begin
  altura := StrToFloat(edit_altura.Text);
  peso := StrToFloat(edit_peso.Text);
  imc := peso / (altura * altura);
    if imc < 17 then
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

    if (imc >= 35) and (imc <= 39.99)then
    begin
      edit_resultado.Text := ('Obesidade II [Severa]');
      edit_imc.Text := FloatToStr(imc);
    end;

    if (imc >= 40) then
    begin
      edit_resultado.Text := ('Obesidade III [M�rbida]');
      edit_imc.Text := FloatToStr(imc);
    end;

end;

procedure Tcalculadora_imc.btn_limparClick(Sender: TObject);
begin
  edit_altura.Clear;
  edit_peso.Clear;
  edit_resultado.Clear;
  edit_imc.Clear;
  edit_altura.SetFocus;
end;

procedure Tcalculadora_imc.btn_sairClick(Sender: TObject);
begin
  Close;
end;

end.
