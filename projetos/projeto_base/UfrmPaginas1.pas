unit UfrmPaginas1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TFrmPaginas1 = class(TForm)
    PageControl: TPageControl;
    TabTimer: TTabSheet;
    TabTODO: TTabSheet;
    TabAba3: TTabSheet;
    Timer1: TTimer;
    pmlRelogio: TPanel;
    Label1: TLabel;
    chkPermiteTrocaAba: TCheckBox;
    Button1: TButton;
    btn_IMC: TButton;
    edt_nome: TEdit;
    Label2: TLabel;
    tabMensagens: TTabSheet;
    GroupBox2: TGroupBox;
    edt_texto: TEdit;
    edt_recorte: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    btn_recortar: TButton;
    GroupBox1: TGroupBox;
    btn_confirma: TButton;
    btn_advertenciaAbort: TButton;
    GroupBox3: TGroupBox;
    btn_sorteio: TButton;
    TabSheet1: TTabSheet;
    TMemo: TGroupBox;
    Memo1: TMemo;
    btn_preencheMemo: TButton;
    Exce��es: TTabSheet;
    btn_tratamentoExce��o: TButton;
    procedure Timer1Timer(Sender: TObject);
    procedure TabTimerShow(Sender: TObject);
    procedure PageControlChanging(Sender: TObject; var AllowChange: Boolean);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btn_IMCClick(Sender: TObject);
    procedure btn_confirmaClick(Sender: TObject);
    procedure btn_advertenciaAbortClick(Sender: TObject);
    procedure btn_recortarClick(Sender: TObject);
    procedure btn_sorteioClick(Sender: TObject);
    procedure btn_preencheMemoClick(Sender: TObject);
    procedure btn_tratamentoExce��oClick(Sender: TObject);
  private
    { Private declarations }
    alunos: array[0..8] of string;
  public
    { Public declarations }
  end;

var
  FrmPaginas1: TFrmPaginas1;

implementation

{$R *.dfm}

uses ufrmIMC1, uRotinas;

procedure TFrmPaginas1.btn_advertenciaAbortClick(Sender: TObject);
begin
  //TODO: Adicionar a fun��o advertencia abort antes do showmessage
  // Ela dever� exibir a mensagem: "Opera��o n�o permitida"
  // e dever� abortar a execu��o do showmessage

  advertenciaAbort('Opera��o n�o permitida!');


  ShowMessage('Executou esse comando.');
end;

procedure TFrmPaginas1.btn_confirmaClick(Sender: TObject);
begin
  if (confirma('Deseja excluir?')) then
    ShowMessage('Registro exclu�do com sucesso!')
  else
    ShowMessage('Resgistro N�o foi exclu�do');
end;

procedure TFrmPaginas1.btn_IMCClick(Sender: TObject);
begin
  if (Length(edt_nome.Text) < 4) then
  begin
    ShowMessage('Digite seu Nome!');
    edt_nome.SetFocus;
    CalculadoraIMC.Close;
  end
  else
  begin
    Application.CreateForm(TCalculadoraIMC, CalculadoraIMC);
    CalculadoraIMC.edit_nomePessoa.Text := FrmPaginas1.edt_nome.Text;
    CalculadoraIMC.ShowModal;
    CalculadoraIMC.Free;
  end;
end;

procedure TFrmPaginas1.btn_preencheMemoClick(Sender: TObject);
var
  i, iLimite: INTEGER;
begin
  //Adicionar em cada linha do memo, os registros do array alunos
  i := 0;
  iLimite := 8;

  while i <= iLimite do
  begin
    Memo1.Lines.Add(alunos[i]);
    i := i + 1;
  end;

    sleep(2000);
    //memo1.Clear;
    Memo1.Lines.Delete(6);
    Memo1.Lines.Delete(6);
    Memo1.Lines.Delete(6);
end;

procedure TFrmPaginas1.btn_recortarClick(Sender: TObject);
var
  sTexto, sRecorte: string;

begin
  sTexto := edt_texto.Text;

  //copia os caracteres desejados
  sRecorte := Copy(sTexto, 2, length(stexto) - 4);

  //transforma tudo em mai�sculo
  sRecorte := AnsiUpperCase(sRecorte);

  //transforma tudo em min�sculo
  sRecorte := AnsiLowerCase(sRecorte);

  //sRecorte := sRecorte[1];

  edt_recorte.Text := sRecorte;

end;

procedure TFrmPaginas1.Button1Click(Sender: TObject);
begin
  // TODO: Precisamos implementar nesse bot�o a fun��o de Equa��o Aritm�tica
  // TODO: Tive uma id�ia incrivel de criar um bot�o trabalhar.
end;

procedure TFrmPaginas1.btn_sorteioClick(Sender: TObject);
begin
  alunos[0] := '�nderson';
  alunos[1] := 'Bruno';
  alunos[2] := 'Dener';
  alunos[3] := 'Fabr�cio';
  alunos[4] := 'Franci�li';
  alunos[5] := 'Jonathan';
  alunos[6] := 'Leonardo';
  alunos[7] := 'Matheus';
  alunos[8] := 'P�mela';

  advertencia('Bem vindo ' + alunos[Random(8)] + '!');

end;

procedure TFrmPaginas1.btn_tratamentoExce��oClick(Sender: TObject);
var
  i: Double;
begin
  i:= 10 / 2;
  ShowMessage('O resultado da opera��o �: ' + FloatToStr(i));
  advertencia('Opera��o realizada com sucesso');
end;

procedure TFrmPaginas1.FormShow(Sender: TObject);
begin
  PageControl.ActivePageIndex := 5;

  alunos[0] := '�nderson';
  alunos[1] := 'Bruno';
  alunos[2] := 'Dener';
  alunos[3] := 'Fabr�cio';
  alunos[4] := 'Franci�li';
  alunos[5] := 'Jonathan';
  alunos[6] := 'Leonardo';
  alunos[7] := 'Matheus';
  alunos[8] := 'P�mela';

end;

procedure TFrmPaginas1.PageControlChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  if (chkPermiteTrocaAba.Checked) then
    AllowChange := True
  else
  begin
    AllowChange := False;
    ShowMessage
      ('Voc� n�o est� autorizado pelos org�os de intelig�ncia a trocar de Aba! ');
  end;
end;

procedure TFrmPaginas1.TabTimerShow(Sender: TObject);
begin
  Label1.Caption := DateTimeToStr(Now);
end;

procedure TFrmPaginas1.Timer1Timer(Sender: TObject);
begin
  Label1.Caption := DateTimeToStr(Now);
end;

end.
