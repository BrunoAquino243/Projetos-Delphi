unit uFrmLacosRepeticao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmLacosRepeticao = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    btnFibonacci: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure btnFibonacciClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLacosRepeticao: TfrmLacosRepeticao;

Const
  C_LIMITEFINAL: INTEGER = 30000;

implementation

{$R *.dfm}

procedure TfrmLacosRepeticao.Button1Click(Sender: TObject);
var
  i, iLimite: INTEGER;
begin

  i := 1;
  iLimite := 3;

  while i <= iLimite do
  begin
    ShowMessage('O �ndice atual �: ' + IntToStr(i));
    i := i + 1;
  end;

end;

procedure TfrmLacosRepeticao.Button2Click(Sender: TObject);
var
  i, iLimite: INTEGER;
begin

  i := 1;
  iLimite := 3;

  repeat
    ShowMessage('O �ndice atual �: ' + IntToStr(i));
    i := i + 1;
  until i >= 1;

end;

procedure TfrmLacosRepeticao.Button3Click(Sender: TObject);
var
  i, j, iLimite: INTEGER;
begin

  i := 1;
  iLimite := 3;

  // La�o crescente
  for j := i to iLimite do
  begin
    ShowMessage('O �ndice atual �: ' + IntToStr(j));
  end;

  // La�o decrescente
  for j := iLimite downto i do
  begin
    ShowMessage('O �ndice atual �: ' + IntToStr(j));
  end;

end;

procedure TfrmLacosRepeticao.btnFibonacciClick(Sender: TObject);
var

  iContador, iVlrAnterior, iVlrAtual, iVlrNovo: INTEGER;
  sSequencia: string;

begin

  sSequencia := '0, 1';

  iVlrAtual := 0;
  iVlrNovo := 1;

  iContador := 0;

  while iVlrNovo <= C_LIMITEFINAL do
  begin
    iContador := iContador + 1;

    // S� altera os valores se j� passou a primeira vez no la�o

    iVlrAnterior := iVlrAtual;
    iVlrAtual := iVlrNovo;

    iVlrNovo := iVlrAtual + iVlrAnterior;

    if iVlrNovo > C_LIMITEFINAL then
      Break;

    sSequencia := sSequencia + ', ' + IntToStr(iVlrNovo);

  end;

  ShowMessage('A sequ�ncia de Fibonnacci �: ' + #13 + sSequencia + '.');

end;

end.
