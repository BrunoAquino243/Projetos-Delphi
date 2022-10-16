unit uFrmTelaEntrada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.jpeg,
  Vcl.ComCtrls, Vcl.StdCtrls, CommCtrl;

type
  TfrmTelaEntrada = class(TForm)
    Image1: TImage;
    Timer1: TTimer;
    ProgressBar1: TProgressBar;
    Label1: TLabel;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTelaEntrada: TfrmTelaEntrada;

implementation

{$R *.dfm}

uses uFrmTelaLogin;

procedure TfrmTelaEntrada.Timer1Timer(Sender: TObject);
begin
  ProgressBar1.Position := ProgressBar1.Position + 1;
  Label1.Caption := IntToStr(ProgressBar1.Position) + '%';

  if ProgressBar1.Position = 100 then
  begin
    frmTelaEntrada.Destroy;
    frmTelaEntrada.CloseModal;
    frmTelaLogin.Show;
  end;


end;

end.
