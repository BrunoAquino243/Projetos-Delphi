program projeto_base;

uses
  Vcl.Forms,
  frmMenu in 'frmMenu.pas' {frmMenuPrincipal},
  ufrmCalculadoraBasica in 'ufrmCalculadoraBasica.pas' {frmCalculadoraBasica},
  uFrmPrecedencia in 'uFrmPrecedencia.pas' {frmPrecedencia},
  uFrmLacosRepeticao in 'uFrmLacosRepeticao.pas' {frmLacosRepeticao},
  ufrmCalculadoraBasicaFuncao in 'ufrmCalculadoraBasicaFuncao.pas' {frmCalculadoraBasicaFuncao},
  UfrmPaginas1 in 'UfrmPaginas1.pas' {FrmPaginas1},
  Vcl.Themes,
  Vcl.Styles,
  ufrmIMC1 in 'ufrmIMC1.pas' {CalculadoraIMC},
  uRotinas in 'uRotinas.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Cyan Night');
  Application.CreateForm(TfrmMenuPrincipal, frmMenuPrincipal);
  Application.CreateForm(TCalculadoraIMC, CalculadoraIMC);
  Application.Run;
end.
