unit uFrmTelaLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmTelaLogin = class(TForm)
    lbMultiCds: TLabel;
    lbUsuario: TLabel;
    edtUsuario: TEdit;
    lbSenha: TLabel;
    edtSenha: TEdit;
    btnEntrar: TButton;
    lbSejaBemVindo: TLabel;
    procedure btnEntrarClick(Sender: TObject);
    procedure lbUsuarioClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
     tentativas: SmallInt;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTelaLogin: TfrmTelaLogin;

implementation

{$R *.dfm}

uses uFrmMenuPrincipal, udtmProjetoFinal, uRotinas, uFrmTelaEntrada;

procedure TfrmTelaLogin.btnEntrarClick(Sender: TObject);
begin

  dtmProjetoFinal.qryPessoa.SQL.Clear;
  dtmProjetoFinal.qryPessoa.SQL.Add('select * from Pessoa where usuario = ''' + edtUsuario.Text + ''' and senha = ''' + edtSenha.Text + '''');
  dtmProjetoFinal.qryPessoa.Open;

  if edtUsuario.Text = '' then   //verifica se o campo usuario esta vazio
  begin
    advertencia('Digite seu usu�rio!');
    edtUsuario.SetFocus;
    abort;
  end;

  if edtSenha.Text = '' then     //verifica se o campo senha esta vazio
  begin
    advertencia('Digite sua senha!');
    edtSenha.SetFocus;
    abort;
  end;

  if dtmProjetoFinal.qryPessoa.RecordCount = 0 then
    begin
      advertencia('Usu�rio ou Senha Incorreta(o)!');
      edtUsuario.SetFocus;
      abort;
    end;

  if not dtmProjetoFinal.qryPessoa.Eof then
  begin

    Application.CreateForm(TFrmMenuPrincipal, FrmMenuPrincipal);
    FrmMenuPrincipal.ShowModal;
    FrmMenuPrincipal.Free;
    frmTelaEntrada.Close;

  end;

end;

procedure TfrmTelaLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmTelaEntrada.Close;
end;

procedure TfrmTelaLogin.lbUsuarioClick(Sender: TObject);
begin
  edtUsuario.Text := '388164';
  edtSenha.Text := '388164';
end;

end.
