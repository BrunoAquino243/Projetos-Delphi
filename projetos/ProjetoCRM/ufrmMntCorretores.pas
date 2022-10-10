unit ufrmMntCorretores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.WinXCtrls,
  Vcl.Buttons;

type
  TfrmMntCorretores = class(TForm)
    pgCadastro: TPageControl;
    tabConsulta: TTabSheet;
    tabEdicao: TTabSheet;
    lbl_nome: TLabel;
    lbl_codigo: TLabel;
    lbl_celular: TLabel;
    lbl_email: TLabel;
    btnEdicao: TDBNavigator;
    edt_nome: TDBEdit;
    edt_codigo: TDBEdit;
    edt_celular: TDBEdit;
    edt_email: TDBEdit;
    DBGrid1: TDBGrid;
    btnConsulta: TDBNavigator;
    SearchBox1: TSearchBox;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConsultaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure btnEdicaoClick(Sender: TObject; Button: TNavigateBtn);
    procedure SearchBox1Change(Sender: TObject);

 private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMntCorretores: TfrmMntCorretores;

implementation

{$R *.dfm}

uses uDtmCRM1, uRotinas;

procedure TfrmMntCorretores.btnConsultaBeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  if (Button = nbInsert) or (Button = nbEdit) then
  begin
    tabEdicao.Show;
  end
  else
  if (Button = nbDelete) then
  begin
    if not (confirma('Deseja realmente excluir o registro selecionado?')) then
      abort;
  end;
end;

procedure TfrmMntCorretores.btnEdicaoClick(Sender: TObject;
  Button: TNavigateBtn);
begin
  if (Button = nbCancel) then
    tabConsulta.Show;
end;

procedure TfrmMntCorretores.FormCreate(Sender: TObject);
begin
  with dtmCRM do
  begin
    conexao.Disconnect;
    conexao.Connect;
    qryCorretor.Active := False;
    qryCorretor.Active := true;
  end;
end;

procedure TfrmMntCorretores.FormShow(Sender: TObject);
begin
  pgCadastro.ActivePageIndex := 0;
end;

procedure TfrmMntCorretores.SearchBox1Change(Sender: TObject);
begin
  dtmCRM.qryCorretor.Locate('NOME',SearchBox1.Text,[loCaseInsensitive,loPartialKey]);
end;

end.
