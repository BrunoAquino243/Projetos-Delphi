program CalculadoraImc;

uses
  Vcl.Forms,
  uFrmCalculadoraImc in 'uFrmCalculadoraImc.pas' {frmCalculaImc};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmCalculaImc, frmCalculaImc);
  Application.Run;
end.
