unit uFrmCadastrarGeneros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Mask;

type
  TfrmManutencaoCadastrarGenero = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBNavigator1: TDBNavigator;
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure btnMenuClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmManutencaoCadastrarGenero: TfrmManutencaoCadastrarGenero;

implementation

{$R *.dfm}

uses uManutencaoGeneros, uFrmMenuPrincipal, udtmProjetoFinal;

procedure TfrmManutencaoCadastrarGenero.btnMenuClick(Sender: TObject);
begin
  Application.CreateForm(TfrmManutencaoGenero, frmManutencaoGenero);
  frmManutencaoGenero.ShowModal;
  frmManutencaoGenero.Free;
end;

procedure TfrmManutencaoCadastrarGenero.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  if (Button = nbCancel) then
    begin
      frmManutencaoGenero.Show;
      frmManutencaoCadastrarGenero.Close;
    end;
  if (Button = nbRefresh) then
    begin
      frmMenuPrincipal.Show;
      frmManutencaoCadastrarGenero.Close;
    end;
end;

end.
