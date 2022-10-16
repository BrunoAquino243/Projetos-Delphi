program pMultiCds;

uses
  Vcl.Forms,
  uFrmTelaLogin in 'uFrmTelaLogin.pas' {frmTelaLogin},
  uFrmMenuPrincipal in 'uFrmMenuPrincipal.pas' {frmMenuPrincipal},
  uFrmManutencaodePessoas in 'uFrmManutencaodePessoas.pas' {frmManutencaoPessoas},
  uFrmCadastrarPessoas in 'uFrmCadastrarPessoas.pas' {frmManutencaoCadastrarPessoas},
  uRotinas in 'uRotinas.pas',
  uManutencaoGeneros in 'uManutencaoGeneros.pas' {frmManutencaoGenero},
  uFrmCadastrarGeneros in 'uFrmCadastrarGeneros.pas' {frmManutencaoCadastrarGenero},
  udtmProjetoFinal in 'udtmProjetoFinal.pas' {dtmProjetoFinal: TDataModule},
  uFrmManutencaoCds in 'uFrmManutencaoCds.pas' {frmManutencaodeCds},
  uFrmCadastrarCds in 'uFrmCadastrarCds.pas' {frmCadastrarCds},
  uFrmTelaEntrada in 'uFrmTelaEntrada.pas' {frmTelaEntrada};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmTelaEntrada, frmTelaEntrada);
  Application.CreateForm(TfrmTelaLogin, frmTelaLogin);
  Application.CreateForm(TdtmProjetoFinal, dtmProjetoFinal);
  Application.Run;
end.
