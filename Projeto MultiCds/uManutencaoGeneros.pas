unit uManutencaoGeneros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.WinXCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TfrmManutencaoGenero = class(TForm)
    Label1: TLabel;
    SearchBox1: TSearchBox;
    DBListBox1: TDBListBox;
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
  frmManutencaoGenero: TfrmManutencaoGenero;

implementation

{$R *.dfm}

uses uFrmCadastrarGeneros, uFrmMenuPrincipal, uRotinas, udtmProjetoFinal;

procedure TfrmManutencaoGenero.btnMenuClick(Sender: TObject);
begin
  Application.CreateForm(TfrmMenuPrincipal, frmMenuPrincipal);
  frmMenuPrincipal.ShowModal;
  frmMenuPrincipal.Free;
end;

procedure TfrmManutencaoGenero.DBNavigator1BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  if (Button = nbInsert) or (Button = nbEdit) then
      begin
        frmManutencaoCadastrarGenero.Show;
      end;

      if (Button = nbRefresh) then
        begin
          frmMenuPrincipal.Show;
          frmManutencaoGenero.Close;
        end

        else if (Button = nbDelete) then
          begin
            if not (confirma('Deseja excluir este registro?')) then
            abort;
        end;
end;

procedure TfrmManutencaoGenero.FormShow(Sender: TObject);
begin
  if dtmProjetoFinal.qryGenero.Active = True then
    begin
      dtmProjetoFinal.qryGenero.Active := False;
    end;

    dtmProjetoFinal.qryGenero.SQL.Clear;
    dtmProjetoFinal.qryGenero.SQL.Add('select * from Genero');
    dtmProjetoFinal.qryGenero.Open;
end;

end.
