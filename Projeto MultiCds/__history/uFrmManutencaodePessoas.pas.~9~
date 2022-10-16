unit uFrmManutencaodePessoas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.DBCtrls,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TfrmManutencaoPessoas = class(TForm)
    SearchBox1: TSearchBox;
    Label1: TLabel;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    procedure btnMenuClick(Sender: TObject);
    procedure DBNavigator1BeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmManutencaoPessoas: TfrmManutencaoPessoas;

implementation

{$R *.dfm}

uses uFrmCadastrarPessoas, uRotinas, uFrmMenuPrincipal, udtmProjetoFinal;

procedure TfrmManutencaoPessoas.btnMenuClick(Sender: TObject);
begin
  Application.CreateForm(TfrmMenuPrincipal, frmMenuPrincipal);
  frmMenuPrincipal.ShowModal;
  frmMenuPrincipal.Free;
end;

procedure TfrmManutencaoPessoas.DBNavigator1BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  if (Button = nbInsert) or (Button = nbEdit) then
      begin
        frmManutencaoCadastrarPessoas.Show;
        frmManutencaoPessoas.Close;
      end;

      if (Button = nbRefresh) then
        begin
          frmMenuPrincipal.Show;
          frmManutencaoPessoas.Close;
        end

        else if (Button = nbDelete) then
          begin
            if not (confirma('Deseja excluir este registro?')) then
            abort;
        end;
end;

procedure TfrmManutencaoPessoas.FormShow(Sender: TObject);
begin
  if dtmProjetoFinal.qryPessoa.Active = True then
    begin
      dtmProjetoFinal.qryPessoa.Active := False;
    end;

    dtmProjetoFinal.qryPessoa.SQL.Clear;
    dtmProjetoFinal.qryPessoa.SQL.Add('select * from Pessoa');
    dtmProjetoFinal.qryPessoa.Open;
end;

end.
