program ProjetoCalculadoraIMC;

uses
  Vcl.Forms,
  CalculadoraIMC in 'CalculadoraIMC.pas' {calculadora_imc};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tcalculadora_imc, calculadora_imc);
  Application.Run;
end.
