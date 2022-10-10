unit UfrmCadastroClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask;

type
  TcadastroClientes = class(TForm)
    PageControl1: TPageControl;
    pgConsultaCliente: TTabSheet;
    pgCadastroCliente: TTabSheet;
    DBGrid1: TDBGrid;
    btnConsulta: TDBNavigator;
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
    procedure btnConsultaClick(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  cadastroClientes: TcadastroClientes;

implementation

{$R *.dfm}

uses uRotinas;

procedure TcadastroClientes.btnConsultaClick(Sender: TObject;
  Button: TNavigateBtn);
begin
  if (Button = nbInsert) or (Button = nbEdit) then
  begin
    pgCadastroCliente.Show;
  end
  else
  if (Button = nbDelete) then
  begin
    if not (confirma('Deseja realmente excluir o registro selecionado?')) then
      abort;
  end;
end;

end.
