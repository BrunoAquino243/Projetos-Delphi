program ProjetoNumerosAleatorios;

uses
  Vcl.Forms,
  NumerosAleatorios in 'NumerosAleatorios.pas' {numeros_aleatorios};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tnumeros_aleatorios, numeros_aleatorios);
  Application.Run;
end.
