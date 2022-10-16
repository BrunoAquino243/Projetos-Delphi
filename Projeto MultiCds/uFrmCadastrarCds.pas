unit uFrmCadastrarCds;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls;

type
  TfrmCadastrarCds = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBNavigator1: TDBNavigator;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastrarCds: TfrmCadastrarCds;

implementation

{$R *.dfm}

uses uFrmManutencaoCds, udtmProjetoFinal, uFrmMenuPrincipal;

procedure TfrmCadastrarCds.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  if (Button = nbCancel) then
    begin
      frmManutencaodeCds.Show;
      frmCadastrarCds.Close;
    end;
  if (Button = nbRefresh) then
    begin
      frmMenuPrincipal.Show;
      frmCadastrarCds.Close;
    end;
end;

end.
