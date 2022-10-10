{ Nome: frmMenuPrincipal
  Objetivo: Acessar a telas do sistema

  Data        Nome            Hist�rico
  05/11/2020  Jo�o da Silva   Cria��o.
  06/11/2020  Jos� dos Santos Adicionado menu de la�os de repeti��o.
}
unit frmMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus,
  Vcl.Buttons, System.ImageList, Vcl.ImgList;

type
  TfrmMenuPrincipal = class(TForm)
    mnuMenu: TMainMenu;
    mnuCursoDelphi: TMenuItem;
    mnuCalculadora: TMenuItem;
    mnuPrecedencia: TMenuItem;
    mnuSair: TMenuItem;
    pnlTopo: TPanel;
    btnPrecedencia: TSpeedButton;
    btnCalculadora: TSpeedButton;
    mnuLacosRepeticao: TMenuItem;
    btnLacosRepeticao: TSpeedButton;
    ListaImagens: TImageList;
    btnCalculadoraBasicaFuncao: TSpeedButton;
    btn_paginasRepeticao: TSpeedButton;
    CalculadoraFuno1: TMenuItem;
    Pginas11: TMenuItem;
    Panel1: TPanel;
    chk1: TCheckBox;
    chk2: TCheckBox;
    chk3: TCheckBox;
    chk4: TCheckBox;
    chk5: TCheckBox;
    chk6: TCheckBox;
    chk7: TCheckBox;
    chk8: TCheckBox;
    chk9: TCheckBox;
    chk10: TCheckBox;
    procedure btnCalculadoraClick(Sender: TObject);
    procedure mnuSairClick(Sender: TObject);
    procedure mnuCalculadoraClick(Sender: TObject);
    procedure mnuPrecedenciaClick(Sender: TObject);
    procedure btnPrecedenciaClick(Sender: TObject);
    procedure mnuLacosRepeticaoClick(Sender: TObject);
    procedure btnLacosRepeticaoClick(Sender: TObject);
    procedure btnCalculadoraBasicaFuncaoClick(Sender: TObject);
    procedure chkClick(Sender: TObject);
    procedure btn_paginasRepeticaoClick(Sender: TObject);
    procedure CalculadoraFuno1Click(Sender: TObject);
    procedure Pginas11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMenuPrincipal: TfrmMenuPrincipal;
  dNumCalculado: double = 0;

implementation

{$R *.dfm}

uses ufrmCalculadoraBasica, uFrmPrecedencia, uFrmLacosRepeticao,
  ufrmCalculadoraBasicaFuncao, UfrmPaginas1, ufrmIMC1, uRotinas;

procedure TfrmMenuPrincipal.btnCalculadoraClick(Sender: TObject);
begin
  // Abre o formul�rio de Calculadora B�sica
  // Isto � necess�rio, porque estamos aprendendo sobre coment�rios

  Application.CreateForm(TfrmCalculadoraBasica, frmCalculadoraBasica);
  frmCalculadoraBasica.ShowModal;
  frmCalculadoraBasica.Free;

end;

procedure TfrmMenuPrincipal.btnLacosRepeticaoClick(Sender: TObject);
begin
  Application.CreateForm(tfrmLacosRepeticao, frmLacosRepeticao);
  frmLacosRepeticao.ShowModal;
  frmLacosRepeticao.Free;
end;

procedure TfrmMenuPrincipal.btnPrecedenciaClick(Sender: TObject);
begin
  Application.CreateForm(TfrmPrecedencia, frmPrecedencia);
  frmPrecedencia.ShowModal;
  frmPrecedencia.Free;
end;

procedure TfrmMenuPrincipal.btn_paginasRepeticaoClick(Sender: TObject);
begin
  Application.CreateForm(TFrmPaginas1, FrmPaginas1);
  FrmPaginas1.ShowModal;
  FrmPaginas1.Free;
end;

procedure TfrmMenuPrincipal.CalculadoraFuno1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmCalculadoraBasicaFuncao,
    frmCalculadoraBasicaFuncao);
  frmCalculadoraBasicaFuncao.ShowModal;
  frmCalculadoraBasicaFuncao.Free;
end;

procedure TfrmMenuPrincipal.chkClick(Sender: TObject);
var
  i: integer;
  bAlgumMarcado: Boolean;

begin

  bAlgumMarcado := False;
  i := 0;

  while i <= Self.ComponentCount - 1 do
  begin
    if Self.Components[i].ClassType = TCheckBox then
      if (Self.Components[i] as TCheckBox).Checked then
        if (Self.Components[i] as TCheckBox).Parent = Panel1 then
        begin
          bAlgumMarcado := True;
          i := Self.ComponentCount;
        end;

    Inc(i);
  end;

  if not(bAlgumMarcado) then
    // N�o tem nenhum checkbox marcado
    dNumCalculado := 0
  else
  begin

    if (dNumCalculado = 0) then
      // Marcou o primeiro checkbox
      dNumCalculado := StrToInt(TCheckBox(Sender).Caption)
    else

      if TCheckBox(Sender).Checked then
      // Marcou o segundo checkbx
      dNumCalculado := dNumCalculado * StrToInt(TCheckBox(Sender).Caption)
    else
      // Desmarcou o segundo checkbox
      dNumCalculado := dNumCalculado / StrToInt(TCheckBox(Sender).Caption);
  end;

  ShowMessage(FloatToStr(dNumCalculado));

end;

procedure TfrmMenuPrincipal.mnuCalculadoraClick(Sender: TObject);
begin

  Application.CreateForm(TfrmCalculadoraBasica, frmCalculadoraBasica);
  frmCalculadoraBasica.ShowModal;
  frmCalculadoraBasica.Free;

end;

procedure TfrmMenuPrincipal.mnuLacosRepeticaoClick(Sender: TObject);
begin
  Application.CreateForm(tfrmLacosRepeticao, frmLacosRepeticao);
  frmLacosRepeticao.ShowModal;
  frmLacosRepeticao.Free;
end;

procedure TfrmMenuPrincipal.mnuPrecedenciaClick(Sender: TObject);
begin
  Application.CreateForm(TfrmPrecedencia, frmPrecedencia);
  frmPrecedencia.ShowModal;
  frmPrecedencia.Free;
end;

procedure TfrmMenuPrincipal.mnuSairClick(Sender: TObject);
begin
  close;
end;

procedure TfrmMenuPrincipal.Pginas11Click(Sender: TObject);
begin
  Application.CreateForm(TFrmPaginas1, FrmPaginas1);
  FrmPaginas1.ShowModal;
  FrmPaginas1.Free;
end;

procedure TfrmMenuPrincipal.btnCalculadoraBasicaFuncaoClick(Sender: TObject);
begin
  Application.CreateForm(TfrmCalculadoraBasicaFuncao,
    frmCalculadoraBasicaFuncao);
  frmCalculadoraBasicaFuncao.ShowModal;
  frmCalculadoraBasicaFuncao.Free;
end;

end.