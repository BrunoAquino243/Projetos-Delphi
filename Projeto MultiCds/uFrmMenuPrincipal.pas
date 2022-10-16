unit uFrmMenuPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmMenuPrincipal = class(TForm)
    btnManutencaoPessoa: TButton;
    btnManutencaoGenero: TButton;
    btnManutencaoCd: TButton;
    procedure btnManutencaoPessoaClick(Sender: TObject);
    procedure btnManutencaoGeneroClick(Sender: TObject);
    procedure btnManutencaoCdClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMenuPrincipal: TfrmMenuPrincipal;

implementation

{$R *.dfm}

uses uFrmManutencaodePessoas, uManutencaoGeneros, uFrmManutencaoCds,
  udtmProjetoFinal, uFrmTelaLogin;

procedure TfrmMenuPrincipal.btnManutencaoCdClick(Sender: TObject);
begin
  Application.CreateForm(TfrmManutencaodeCds, frmManutencaodeCds);
  frmManutencaodeCds.ShowModal;
  frmManutencaodeCds.Free;
end;

procedure TfrmMenuPrincipal.btnManutencaoGeneroClick(Sender: TObject);
begin
  Application.CreateForm(TfrmManutencaoGenero, frmManutencaoGenero);
  frmManutencaoGenero.ShowModal;
  frmManutencaoGenero.Free;
end;

procedure TfrmMenuPrincipal.btnManutencaoPessoaClick(Sender: TObject);
begin
  Application.CreateForm(TfrmManutencaoPessoas, frmManutencaoPessoas);
  frmManutencaoPessoas.ShowModal;
  frmManutencaoPessoas.Free;
end;

procedure TfrmMenuPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmTelaLogin.edtUsuario.Text := '';
  frmTelaLogin.edtSenha.Text := '';
  frmTelaLogin.edtUsuario.SetFocus;
end;

end.
