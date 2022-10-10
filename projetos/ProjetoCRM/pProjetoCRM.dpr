program pProjetoCRM;

uses
  Vcl.Forms,
  UMenuPrincipal in 'UMenuPrincipal.pas' {frmMenuPrincipal},
  ufrmMntCorretores in 'ufrmMntCorretores.pas' {frmMntCorretores},
  Vcl.Themes,
  Vcl.Styles,
  uDtmCRM1 in 'uDtmCRM1.pas' {dtmCRM: TDataModule},
  uRotinas in 'uRotinas.pas',
  UfrmCadastroClientes in 'UfrmCadastroClientes.pas' {cadastroClientes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMenuPrincipal, frmMenuPrincipal);
  Application.CreateForm(TdtmCRM, dtmCRM);
  Application.CreateForm(TcadastroClientes, cadastroClientes);
  Application.Run;
end.
