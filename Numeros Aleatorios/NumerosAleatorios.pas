unit NumerosAleatorios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  Tnumeros_aleatorios = class(TForm)
    lb_faixa: TLabel;
    lb_gerar: TLabel;
    lb_gerados: TLabel;
    lb_repeticoes: TLabel;
    edit_faixa: TEdit;
    edit_gerar: TEdit;
    edit_repeticoes: TEdit;
    edit_gerados: TEdit;
    barra: TProgressBar;
    btn_gerar: TButton;
    btn_manual: TButton;
    btn_of: TButton;
    memo1: TMemo;
    edit_of: TEdit;
    btn_limpar: TButton;
    btn_sair: TButton;
    procedure btn_manualClick(Sender: TObject);
    procedure btn_ofClick(Sender: TObject);
    procedure btn_gerarClick(Sender: TObject);
    procedure btn_limparClick(Sender: TObject);
    procedure btn_sairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  numeros_aleatorios: Tnumeros_aleatorios;

implementation

{$R *.dfm}

procedure Tnumeros_aleatorios.btn_gerarClick(Sender: TObject);
var auxiliar, qtdnumeros, qtdglobal : Integer;
begin
  if edit_faixa.Text = '' then
  begin
    ShowMessage('Digite um Número Válido');
    edit_faixa.SetFocus;
    Exit;
  end;

  memo1.Clear;
  qtdglobal := 0;
  if edit_gerar.Text = '' then
  begin
    edit_gerar.Text := edit_faixa.Text;
  end;

  if StrToInt(edit_gerar.Text) > StrToInt(edit_faixa.Text) then
  begin
    edit_gerar.Text := edit_faixa.Text;
  end;

  barra.Max := StrToInt(edit_gerar.Text);

  if (StrToInt(edit_gerar.Text) < StrToInt(edit_faixa.Text)) then
  begin
    while ((memo1.Lines.Count < (StrToInt(edit_gerar.Text)))) do
    begin
      qtdglobal := qtdglobal + 1;
      qtdnumeros := (StrToInt(edit_faixa.Text));
      auxiliar := Random(qtdnumeros);
      auxiliar := auxiliar + 1;
      if not ((memo1.Lines.IndexOf(IntToStr(auxiliar)) > - 1) and (memo1.Lines.IndexOf(IntToStr(auxiliar)) < qtdnumeros)) then
      memo1.Lines.Add(IntToStr(auxiliar));
      barra.Position := memo1.Lines.Count;
    end;
  end
  else
  begin
    while ((memo1.Lines.Count < (StrToInt(edit_faixa.Text)))) do
    begin
      qtdglobal := qtdglobal + 1;
      qtdnumeros := (StrToInt(edit_faixa.Text));
      auxiliar := Random(qtdnumeros);
      auxiliar := auxiliar + 1;
      if not ((memo1.Lines.IndexOf(IntToStr(auxiliar)) > - 1) and (memo1.Lines.IndexOf(IntToStr(auxiliar)) < qtdnumeros)) then
      memo1.Lines.Add(IntToStr(auxiliar));
      barra.Position := memo1.Lines.Count;
    end;
  end;

  edit_gerados.Text := IntToStr(memo1.Lines.Count);
  edit_repeticoes.Text := (IntToStr(qtdglobal));
  if edit_gerar.Text = '' then
  begin
    edit_gerar.Text := edit_faixa.Text;
  end;
  if (memo1.Lines.Count = StrToInt(edit_gerar.Text)) then
  begin
    ShowMessage('Lista Gerada Com Sucesso!');
  end;




end;

procedure Tnumeros_aleatorios.btn_limparClick(Sender: TObject);
begin
  edit_faixa.Clear;
  edit_gerar.Clear;
  edit_repeticoes.Clear;
  edit_gerados.Clear;
  edit_of.Clear;
  edit_faixa.SetFocus;
end;

procedure Tnumeros_aleatorios.btn_manualClick(Sender: TObject);
var auxiliar, qtdnumeros : Integer;
begin
  if edit_faixa.Text = '' then
  begin
    ShowMessage('Digite um Número Válido!');
    edit_faixa.SetFocus;
    Exit;
  end;

  barra.Max := StrToInt(edit_faixa.Text);

  if (memo1.Lines.Count < (StrToInt(edit_faixa.Text))) then
  begin
    qtdnumeros := (StrToInt(edit_faixa.Text));
    auxiliar := Random(qtdnumeros);
    auxiliar := auxiliar + 1;
    if not ((memo1.Lines.IndexOf(IntToStr(auxiliar)) > - 1) and (memo1.Lines.IndexOf(IntToStr(auxiliar)) < qtdnumeros)) then
    memo1.Lines.Add(IntToStr(auxiliar));
    edit_gerados.Text := IntToStr(memo1.Lines.Count);
    barra.Position := memo1.Lines.Count;
  end;

end;

procedure Tnumeros_aleatorios.btn_ofClick(Sender: TObject);
begin
  ShowMessage(IntToStr(memo1.Lines.IndexOf(edit_of.Text)));
end;

procedure Tnumeros_aleatorios.btn_sairClick(Sender: TObject);
begin
  Close;
end;

end.
