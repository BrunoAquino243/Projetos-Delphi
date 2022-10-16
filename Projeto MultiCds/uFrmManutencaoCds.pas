unit uFrmManutencaoCds;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.WinXCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TfrmManutencaodeCds = class(TForm)
    Label1: TLabel;
    SearchBox1: TSearchBox;
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
  frmManutencaodeCds: TfrmManutencaodeCds;

implementation

{$R *.dfm}

uses uFrmMenuPrincipal, udtmProjetoFinal, uFrmCadastrarCds,
  uFrmCadastrarGeneros, uRotinas;

procedure TfrmManutencaodeCds.btnMenuClick(Sender: TObject);
begin
  Application.CreateForm(TfrmMenuPrincipal, frmMenuPrincipal);
  frmMenuPrincipal.ShowModal;
  frmMenuPrincipal.Free;
end;

procedure TfrmManutencaodeCds.DBNavigator1BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  if (Button = nbInsert) or (Button = nbEdit) then
      begin
        frmCadastrarCds.Show;
        frmManutencaodeCds.Close;
      end;

      if (Button = nbRefresh) then
        begin
          frmMenuPrincipal.Show;
          frmManutencaodeCds.Close;
        end

        else if (Button = nbDelete) then
          begin
            if not (confirma('Deseja excluir este registro?')) then
            abort;
        end;
end;

procedure TfrmManutencaodeCds.FormShow(Sender: TObject);
begin
  if dtmProjetoFinal.qryCds.Active = True then
    begin
      dtmProjetoFinal.qryCds.Active := False;
    end;

    dtmProjetoFinal.qryCds.SQL.Clear;
    dtmProjetoFinal.qryCds.SQL.Add('select * from Cds');
    dtmProjetoFinal.qryCds.Open;
end;

end.
