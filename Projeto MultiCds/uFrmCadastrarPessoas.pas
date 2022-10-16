unit uFrmCadastrarPessoas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls;

type
  TfrmManutencaoCadastrarPessoas = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBNavigator1: TDBNavigator;
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure btnMenuClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmManutencaoCadastrarPessoas: TfrmManutencaoCadastrarPessoas;

implementation

{$R *.dfm}

uses uFrmManutencaodePessoas, uFrmMenuPrincipal, uFrmTelaLogin,
  udtmProjetoFinal;

procedure TfrmManutencaoCadastrarPessoas.btnMenuClick(Sender: TObject);
begin
  Application.CreateForm(TfrmManutencaoPessoas, frmManutencaoPessoas);
  frmManutencaoPessoas.ShowModal;
  frmManutencaoPessoas.Free;
end;

procedure TfrmManutencaoCadastrarPessoas.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  if (Button = nbCancel) then
    begin
      frmManutencaoPessoas.Show;
      frmManutencaoCadastrarPessoas.Close;
    end;
  if (Button = nbRefresh) then
    begin
      frmMenuPrincipal.Show;
      frmManutencaoCadastrarPessoas.Close;
    end;
end;

end.
