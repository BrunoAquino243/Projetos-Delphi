unit ufrmCalculadoraBasicaFuncao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, StrUtils;

type
  TfrmCalculadoraBasicaFuncao = class(TForm)
    edtValor1: TEdit;
    edtValor2: TEdit;
    edtResultado: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btnSomar: TButton;
    btnSubtrair: TButton;
    btnMultiplicar: TButton;
    btnDividir: TButton;
    btnPercentual: TButton;
    procedure prcBtnCalcular(Sender: TObject);
    procedure prcKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure prcValidaCampos;
    function funCalcula(sValor1, sValor2, sOperacao: string): double;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCalculadoraBasicaFuncao: TfrmCalculadoraBasicaFuncao;

implementation

{$R *.dfm}

procedure TfrmCalculadoraBasicaFuncao.prcBtnCalcular(Sender: TObject);
var
  dResultado: double;
begin
  dResultado := funCalcula(edtValor1.Text, edtValor2.Text,
    TButton(Sender).Caption);
  edtResultado.Text := FloatToStr(dResultado);

end;

procedure TfrmCalculadoraBasicaFuncao.prcKeyPress(Sender: TObject;
  var Key: Char);
begin
  If not(Key in ['0' .. '9', #08]) then
    Key := #0;

end;

procedure TfrmCalculadoraBasicaFuncao.FormShow(Sender: TObject);
begin
  edtValor1.Text := IntToStr(Random(100));

end;

function TfrmCalculadoraBasicaFuncao.funCalcula(sValor1, sValor2,
  sOperacao: string): double;
var
  dResultado: double;
  iValor1, iValor2: Integer;
begin

  prcValidaCampos;

  iValor1 := StrToInt(sValor1);
  iValor2 := StrToInt(sValor2);

  case AnsiIndexStr(sOperacao, ['+', '-', '*', '/', '%']) of
    0:
      dResultado := iValor1 + iValor2;
    1:
      dResultado := iValor1 - iValor2;
    2:
      dResultado := iValor1 * iValor2;
    3:
      dResultado := iValor1 / iValor2;
    4:
      dResultado := iValor1 * (iValor2 / 100);
  end;

  result := dResultado;

end;

procedure TfrmCalculadoraBasicaFuncao.prcValidaCampos;
begin

  if edtValor1.Text = '' then
  begin
    ShowMessage('O campo valor 1 est� vazio.');
    abort;
  end;

  if edtValor2.Text = '' then
  begin
    ShowMessage('O campo valor 2 est� vazio.');
    abort;
  end;

end;

end.
