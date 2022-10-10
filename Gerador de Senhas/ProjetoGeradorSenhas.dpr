program ProjetoGeradorSenhas;

uses
  Vcl.Forms,
  GeradorSenhas in 'GeradorSenhas.pas' {gerador_senhas};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tgerador_senhas, gerador_senhas);
  Application.Run;
end.
