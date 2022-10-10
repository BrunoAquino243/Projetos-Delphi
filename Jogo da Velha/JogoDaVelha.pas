unit JogoDaVelha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  Tjogo_velha = class(TForm)
    img_tabuleiro: TImage;
    img_x: TImage;
    img_bolinha: TImage;
    img_1: TImage;
    img_2: TImage;
    img_3: TImage;
    img_4: TImage;
    img_5: TImage;
    img_6: TImage;
    img_7: TImage;
    img_8: TImage;
    img_9: TImage;
    btn_reiniciar: TButton;
    img_vazio: TImage;
    procedure FormShow(Sender: TObject);
    procedure img_1Click(Sender: TObject);
    procedure img_2Click(Sender: TObject);
    procedure img_3Click(Sender: TObject);
    procedure img_4Click(Sender: TObject);
    procedure img_5Click(Sender: TObject);
    procedure img_6Click(Sender: TObject);
    procedure img_7Click(Sender: TObject);
    procedure img_8Click(Sender: TObject);
    procedure img_9Click(Sender: TObject);
    procedure btn_reiniciarClick(Sender: TObject);

  private
    { Private declarations }
    vez, velha : Integer;
    xlinha1, xlinha2, xlinha3, xcoluna1, xcoluna2, xcoluna3, xdiagonal1, xdiagonal2 : Integer;
    blinha1, blinha2, blinha3, bcoluna1, bcoluna2, bcoluna3, bdiagonal1, bdiagonal2 : Integer;
  public
    { Public declarations }
  end;

var
  jogo_velha: Tjogo_velha;

implementation

{$R *.dfm}

procedure Tjogo_velha.btn_reiniciarClick(Sender: TObject);
begin
  vez := 0;
  velha := 0;
  xlinha1 := 0;
  xlinha2 := 0;
  xlinha3 := 0;
  xcoluna1 := 0;
  xcoluna2 := 0;
  xcoluna3 := 0;
  xdiagonal1 := 0;
  xdiagonal2 := 0;
  blinha1 := 0;
  blinha2 := 0;
  blinha3 := 0;
  bcoluna1 := 0;
  bcoluna2 := 0;
  bcoluna3 := 0;
  bdiagonal1 := 0;
  bdiagonal2 := 0;
  img_1.Picture := img_vazio.Picture;
  img_2.Picture := img_vazio.Picture;
  img_3.Picture := img_vazio.Picture;
  img_4.Picture := img_vazio.Picture;
  img_5.Picture := img_vazio.Picture;
  img_6.Picture := img_vazio.Picture;
  img_7.Picture := img_vazio.Picture;
  img_8.Picture := img_vazio.Picture;
  img_9.Picture := img_vazio.Picture;
  img_1.Enabled := True;
  img_2.Enabled := True;
  img_3.Enabled := True;
  img_4.Enabled := True;
  img_5.Enabled := True;
  img_6.Enabled := True;
  img_7.Enabled := True;
  img_8.Enabled := True;
  img_9.Enabled := True;
end;

procedure Tjogo_velha.FormShow(Sender: TObject);
begin
  vez := 0;
end;

procedure Tjogo_velha.img_1Click(Sender: TObject);
begin
  velha := velha + 1;
  if vez = 0 then
  begin
    img_1.Picture := img_x.Picture;
    vez := 1;
    xlinha1 := xlinha1 + 1;
    xcoluna1 := xcoluna1 + 1;
    xdiagonal1 := xdiagonal1 + 1;
  end else
  begin
    img_1.Picture := img_bolinha.Picture;
    vez := 0;
    blinha1 := blinha1 + 1;
    bcoluna1 := bcoluna1 + 1;
    bdiagonal1 := bdiagonal1 + 1;
  end;

  img_1.Enabled := False;
  if (xlinha1 = 3) or (xcoluna1 = 3) or (xdiagonal1 = 3) then
  begin
    ShowMessage('Jogador X venceu');
    Exit;
  end;
  if (blinha1 = 3) or (bcoluna1 = 3) or (bdiagonal1 = 3) then
  begin
    ShowMessage('Jogador Bolinha venceu');
    Exit;
  end;
  if velha = 9 then
  begin
    ShowMessage('Deu Velha');
  end;


end;

procedure Tjogo_velha.img_2Click(Sender: TObject);
begin
  velha := velha + 1;
  if vez = 0 then
  begin
    img_2.Picture := img_x.Picture;
    vez := 1;
    xlinha1 := xlinha1 + 1;
    xcoluna2 := xcoluna2 + 1;
  end else
  begin
    img_2.Picture := img_bolinha.Picture;
    vez := 0;
    blinha1 := blinha1 + 1;
    bcoluna2 := bcoluna2 + 1;
  end;

  img_2.Enabled := False;
  if (xlinha1 = 3) or (xcoluna2 = 3) then
  begin
    ShowMessage('Jogador X venceu');
    Exit;
  end;
  if (blinha1 = 3) or (bcoluna2 = 3) then
  begin
    ShowMessage('Jogador Bolinha venceu');
    Exit;
  end;
  if velha = 9 then
  begin
    ShowMessage('Deu Velha');
  end;

end;

procedure Tjogo_velha.img_3Click(Sender: TObject);
begin
 velha := velha + 1;
 if vez = 0 then
  begin
    img_3.Picture := img_x.Picture;
    vez := 1;
    xlinha1 := xlinha1 + 1;
    xcoluna3 := xcoluna3 + 1;
    xdiagonal2 := xdiagonal2 + 1;
  end else
  begin
    img_3.Picture := img_bolinha.Picture;
    vez := 0;
    blinha1 := blinha1 + 1;
    bcoluna3 := bcoluna3 + 1;
    bdiagonal2 := bdiagonal2 + 1;
  end;

  img_3.Enabled := False;
  if (xlinha1 = 3) or (xcoluna3 = 3) or (xdiagonal2 = 3) then
  begin
    ShowMessage('Jogador X venceu');
    Exit;
  end;
  if (blinha1 = 3) or (bcoluna3 = 3) or (bdiagonal2 = 3) then
  begin
    ShowMessage('Jogador Bolinha venceu');
    Exit;
  end;
  if velha = 9 then
  begin
    ShowMessage('Deu Velha');
  end;
end;

procedure Tjogo_velha.img_4Click(Sender: TObject);
begin
  velha := velha + 1;
  if vez = 0 then
  begin
    img_4.Picture := img_x.Picture;
    vez := 1;
    xlinha2 := xlinha2 + 1;
    xcoluna1 := xcoluna1 + 1;
  end else
  begin
    img_4.Picture := img_bolinha.Picture;
    vez := 0;
    blinha2 := blinha2 + 1;
    bcoluna1 := bcoluna1 + 1;
  end;

  img_4.Enabled := False;
  if (xlinha2 = 3) or (xcoluna1 = 3) then
  begin
    ShowMessage('Jogador X venceu');
    Exit;
  end;
   if (blinha2 = 3) or (bcoluna1 = 3) then
  begin
    ShowMessage('Jogador Bolinha venceu');
    Exit;
  end;
  if velha = 9 then
  begin
    ShowMessage('Deu Velha');
  end;
end;

procedure Tjogo_velha.img_5Click(Sender: TObject);
begin
   velha := velha + 1;
  if vez = 0 then
  begin
    img_5.Picture := img_x.Picture;
    vez := 1;
    xlinha2 := xlinha2 + 1;
    xcoluna2 := xcoluna2 + 1;
    xdiagonal1 := xdiagonal1 + 1;
    xdiagonal2 := xdiagonal2 +1;
  end else
  begin
    img_5.Picture := img_bolinha.Picture;
    vez := 0;
    blinha2 := blinha2 + 1;
    bcoluna2 := bcoluna2 + 1;
    bdiagonal1 := bdiagonal1 + 1;
    bdiagonal2 := bdiagonal2 +1;
  end;

  img_5.Enabled := False;
  if (xlinha2 = 3) or (xcoluna2 = 3) or (xdiagonal1 = 3) or (xdiagonal2 = 3) then
  begin
    ShowMessage('Jogador X venceu');
    Exit;
  end;
  if (blinha2 = 3) or (bcoluna2 = 3) or (bdiagonal1 = 3) or (bdiagonal2 = 3) then
  begin
    ShowMessage('Jogador Bolinha venceu');
    Exit;
  end;
  if velha = 9 then
  begin
    ShowMessage('Deu Velha');
  end;
end;

procedure Tjogo_velha.img_6Click(Sender: TObject);
begin
   velha := velha + 1;
  if vez = 0 then
  begin
    img_6.Picture := img_x.Picture;
    vez := 1;
    xlinha2 := xlinha2 + 1;
    xcoluna3 := xcoluna3 + 1;
  end else
  begin
    img_6.Picture := img_bolinha.Picture;
    vez := 0;
    blinha2 := blinha2 + 1;
    bcoluna3 := bcoluna3 + 1;
  end;

  img_6.Enabled := False;
  if (xlinha2 = 3) or (xcoluna3 = 3) then
  begin
    ShowMessage('Jogador X venceu');
    Exit;
  end;
  if (blinha2 = 3) or (bcoluna3 = 3) then
  begin
    ShowMessage('Jogador Bolinha venceu');
    Exit;
  end;
  if velha = 9 then
  begin
    ShowMessage('Deu Velha');
  end;


end;
procedure Tjogo_velha.img_7Click(Sender: TObject);
begin
   velha := velha + 1;
  if vez = 0 then
  begin
    img_7.Picture := img_x.Picture;
    vez := 1;
    xlinha3 := xlinha3 + 1;
    xcoluna1 := xcoluna1 + 1;
    xdiagonal2 := xdiagonal2 + 1;
  end else
  begin
    img_7.Picture := img_bolinha.Picture;
    vez := 0;
    blinha3 := blinha3 + 1;
    bcoluna1 := bcoluna1 + 1;
    bdiagonal2 := bdiagonal2 + 1;
  end;

  img_7.Enabled := False;
  if (xlinha3 = 3) or (xcoluna1 = 3) or (xdiagonal2 = 3) then
  begin
    ShowMessage('Jogador X venceu');
    Exit;
  end;
  if (blinha3 = 3) or (bcoluna1 = 3) or (bdiagonal2 = 3) then
  begin
    ShowMessage('Jogador Bolinha venceu');
    Exit;
  end;
  if velha = 9 then
  begin
    ShowMessage('Deu Velha');
  end;
end;

procedure Tjogo_velha.img_8Click(Sender: TObject);
begin
   velha := velha + 1;
  if vez = 0 then
  begin
    img_8.Picture := img_x.Picture;
    vez := 1;
    xlinha3 := xlinha3 + 1;
    xcoluna2 := xcoluna2 + 1;
  end else
  begin
    img_8.Picture := img_bolinha.Picture;
    vez := 0;
    blinha3 := blinha3 + 1;
    bcoluna2 := bcoluna2 + 1;
  end;

  img_8.Enabled := False;
  if (xlinha3 = 3) or (xcoluna2 = 3) then
  begin
    ShowMessage('Jogador X venceu');
    Exit;
  end;
  if (blinha3 = 3) or (bcoluna2 = 3) then
  begin
    ShowMessage('Jogador Bolinha venceu');
    Exit;
  end;
  if velha = 9 then
  begin
    ShowMessage('Deu Velha');
  end;
end;

procedure Tjogo_velha.img_9Click(Sender: TObject);
begin
   velha := velha + 1;
  if vez = 0 then
  begin
    img_9.Picture := img_x.Picture;
    vez := 1;
    xlinha3 := xlinha3 + 1;
    xcoluna3 := xcoluna3 + 1;
    xdiagonal1 := xdiagonal1 + 1;
  end else
  begin
    img_9.Picture := img_bolinha.Picture;
    vez := 0;
    blinha3 := blinha3 + 1;
    bcoluna3 := bcoluna3 + 1;
    bdiagonal1 := bdiagonal1 + 1;
  end;

  img_9.Enabled := False;
  if (xlinha3 = 3) or (xcoluna3 = 3) or (xdiagonal1 = 3) then
  begin
    ShowMessage('Jogador X venceu');
    Exit;
  end;
  if (blinha3 = 3) or (bcoluna3 = 3) or (bdiagonal1 = 3) then
  begin
    ShowMessage('Jogador Bolinha venceu');
    Exit;
  end;
  if velha = 9 then
  begin
    ShowMessage('Deu Velha');
  end;
end;

end.
