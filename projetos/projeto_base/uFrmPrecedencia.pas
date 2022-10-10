unit uFrmPrecedencia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmPrecedencia = class(TForm)
    btnCalculo1: TButton;
    edtResultado: TEdit;
    btnCalcularValorIngresso: TButton;
    grpFaixaEtaria: TGroupBox;
    chkAbaixo10: TCheckBox;
    chk10a30: TCheckBox;
    chk31a60: TCheckBox;
    chk61a100: TCheckBox;
    chkAcima100: TCheckBox;
    rdgEstacao: TRadioGroup;
    Button1: TButton;
    procedure btnCalculo1Click(Sender: TObject);
    procedure btnCalcularValorIngressoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrecedencia: TfrmPrecedencia;

Const
  // VALORES FIXOS DOS INGRESSOS GRAZZIOTIN WORLD
  // ABAIXO DE 10
  C_VLR_ABAIXO_10     : INTEGER = 0;
  C_DESCONTO_ABAIXO10 : INTEGER = 0;
  C_AGIO_ABAIXO10     : INTEGER = 0;
  // 10 A 30
  C_VLR_10A30         : INTEGER = 30;
  C_DESCONTO_10A30    : INTEGER = 10;
  C_AGIO_10A30        : INTEGER = 10;
  // 31 A 60
  C_VLR_31A60         : INTEGER = 60;
  C_DESCONTO_31A60    : INTEGER = 20;
  C_AGIO_31A60        : INTEGER = 20;
  // 61 A 100
  C_VLR_61A100        : INTEGER = 100;
  C_DESCONTO_61A100   : INTEGER = 30;
  C_AGIO_61A100       : INTEGER = 30;
  // ACIMA DE 100
  C_VLR_ACIMA100      : INTEGER = 0;
  C_DESCONTO_ACIMA100 : INTEGER = 0;
  C_AGIO_ACIMA100     : INTEGER = 0;

  // Esta��es
  C_VERAO     : INTEGER = 0;
  C_OUTONO    : INTEGER = 1;
  C_INVERNO   : INTEGER = 2;
  C_PRIMAVERA : INTEGER = 3;

implementation

{$R *.dfm}

procedure TfrmPrecedencia.btnCalculo1Click(Sender: TObject);
var
   fResultado: double;
begin

   fResultado := (1 + 1) + 5 * 10;
   ShowMessage(FloatToStr(fResultado));

   fResultado := ((1 + 1) + 5) * 10 ;
   ShowMessage(FloatToStr(fResultado));

   fResultado := ((1 + 1) + 5) * 10 / 7 ;
   ShowMessage(FloatToStr(fResultado));

   fResultado := ((1 + 1) + 5) * (10 / 7) ;
   ShowMessage(FloatToStr(fResultado));

   edtResultado.Text := FloatToStr(fResultado);

end;

procedure TfrmPrecedencia.Button1Click(Sender: TObject);
var
  Dvaloringresso : double;
  sValorIngresso : string;
begin
    if (chkAbaixo10.Checked = true) AND (RdgEstacao.ItemIndex = C_VERAO) then
    begin
        sValorIngresso := IntToStr(C_VLR_ABAIXO_10);
        ShowMessage('O seu ingresso � gr�tis!');
        chkAbaixo10.Checked := false;
    end
    else
       if (Chk10a30.Checked = true) and (RdgEstacao.ItemIndex = C_VERAO) then // Outra op�ao de verificar se ta marcado
    begin
          Dvaloringresso := (C_VLR_10A30 *  (C_AGIO_10A30 /100)) + C_VLR_10A30;
          sValorIngresso := ('O valor do seu ingresso � R$: ' + FloatToStr(Dvaloringresso));
          ShowMessage(sValorIngresso);
          Chk10a30.Checked := false;
     end
     else
     if (Chk10a30.Checked = true) and (RdgEstacao.ItemIndex = C_INVERNO) then // Outra op�ao de verificar se ta marcado
    begin
          Dvaloringresso :=  C_VLR_10A30 - (C_VLR_10A30 *  (C_DESCONTO_10A30 /100)) ;
          sValorIngresso := ('O valor do seu ingresso � R$: ' + FloatToStr(Dvaloringresso));
          ShowMessage(sValorIngresso);
          Chk10a30.Checked := false;
     end
     else
     if (Chk10a30.Checked = true) and (RdgEstacao.ItemIndex = C_OUTONO) then // Outra op�ao de verificar se ta marcado
    begin
          Dvaloringresso := C_VLR_10A30;
          sValorIngresso := ('O valor do seu ingresso � R$: ' + FloatToStr(Dvaloringresso));
          ShowMessage(sValorIngresso);
          Chk10a30.Checked := false;
     end
     else
       if (Chk10a30.Checked = true) and (RdgEstacao.ItemIndex = C_PRIMAVERA) then // Outra op�ao de verificar se ta marcado
    begin
          Dvaloringresso := C_VLR_10A30;
          sValorIngresso := ('O valor do seu ingresso � R$: ' + FloatToStr(Dvaloringresso));
          ShowMessage(sValorIngresso);
          Chk10a30.Checked := false;
     end
     else
        if (Chk31a60.Checked) and (RdgEstacao.ItemIndex = C_VERAO) then
     begin
          Dvaloringresso := (C_VLR_31a60 *  (C_AGIO_31a60 /100)) + C_VLR_31a60;
          sValorIngresso := ('O valor do seu ingresso � R$: ' + FloatToStr(Dvaloringresso));
          ShowMessage(sValorIngresso);
          Chk31a60.Checked := false;
     end
        else
        if (Chk31a60.Checked = true) and (RdgEstacao.ItemIndex = C_INVERNO) then // Outra op�ao de verificar se ta marcado
    begin
          Dvaloringresso :=  C_VLR_31a60 - (C_VLR_31a60 *  (C_DESCONTO_31a60 /100)) ;
          sValorIngresso := ('O valor do seu ingresso � R$: ' + FloatToStr(Dvaloringresso));
          ShowMessage(sValorIngresso);
          Chk31a60.Checked := false;
     end
     else
     if (Chk31a60.Checked = true) and ((RdgEstacao.ItemIndex = C_OUTONO) or (RdgEstacao.ItemIndex = C_PRIMAVERA)) then // Outra op�ao de verificar se ta marcado
    begin
          Dvaloringresso := C_VLR_31a60;
          sValorIngresso := ('O valor do seu ingresso � R$: ' + FloatToStr(Dvaloringresso));
          ShowMessage(sValorIngresso);
          Chk31a60.Checked := false;
     end

      else
          if (Chk61a100.Checked) and (RdgEstacao.ItemIndex = C_VERAO) then
     begin
          Dvaloringresso := (C_VLR_61a100 *  (C_AGIO_61a100 /100)) + C_VLR_61a100;
          sValorIngresso := ('O valor do seu ingresso � R$: ' + FloatToStr(Dvaloringresso));
          ShowMessage(sValorIngresso);
          Chk61a100.Checked := false;
     end
      else
      if (Chk61a100.Checked = true) and (RdgEstacao.ItemIndex = C_INVERNO) then // Outra op�ao de verificar se ta marcado
    begin
          Dvaloringresso :=  C_VLR_61a100 - (C_VLR_31a60 *  (C_DESCONTO_61a100 /100)) ;
          sValorIngresso := ('O valor do seu ingresso � R$: ' + FloatToStr(Dvaloringresso));
          ShowMessage(sValorIngresso);
          Chk61a100.Checked := false;
     end
      else
      if (Chk61a100.Checked = true) and ((RdgEstacao.ItemIndex = C_OUTONO) or (RdgEstacao.ItemIndex = C_PRIMAVERA)) then // Outra op�ao de verificar se ta marcado
    begin
          Dvaloringresso := C_VLR_61a100;
          sValorIngresso := ('O valor do seu ingresso � R$: ' + FloatToStr(Dvaloringresso));
          ShowMessage(sValorIngresso);
          Chk61a100.Checked := false;
     end
     else
      if (chkAcima100.Checked)then
      begin
          sValorIngresso := IntToStr(C_VLR_ACIMA100);
          ShowMessage('O seu ingresso � gr�tis!');
          chkAcima100.Checked := false;
     end;
end;

procedure TfrmPrecedencia.btnCalcularValorIngressoClick(Sender: TObject);
var
   dValorIngresso, dValorAgio, dValorDesconto: Double;
   sMensagem: string;
begin

    if (chkAbaixo10.Checked) then
    begin
        dValorIngresso := C_VLR_ABAIXO_10;
        dValorAgio     := C_AGIO_ABAIXO10;
        dValorDesconto := C_DESCONTO_ABAIXO10;
    end
    else
    if (chk10a30.Checked) then
    begin
        dValorIngresso := C_VLR_10A30;
        dValorAgio     := C_AGIO_10A30;
        dValorDesconto := C_DESCONTO_10A30;
    end
    else
    if (chk31a60.Checked)then
    begin
        dValorIngresso := C_VLR_31A60;
        dValorAgio     := C_AGIO_31A60;
        dValorDesconto := C_DESCONTO_31A60;
    end
    else
    if (chk61a100.Checked) then
    begin
        dValorIngresso := C_VLR_61A100;
        dValorAgio     := C_AGIO_61A100;
        dValorDesconto := C_DESCONTO_61A100;
    end
    else
    if (chkAcima100.Checked) then
    begin
        dValorIngresso := C_VLR_ACIMA100;
        dValorAgio     := C_AGIO_ACIMA100;
        dValorDesconto := C_DESCONTO_ACIMA100;
    end;

    case rdgEstacao.ItemIndex of
        0:// Ver�o - Soma o �gio
        begin
            dValorIngresso := dValorIngresso + (dValorIngresso * dValorAgio / 100);
        end;
        2:// Inverno - Subtrai o desconto
        begin
             dValorIngresso := dValorIngresso - (dValorIngresso * dValorDesconto / 100);
        end;

    end;

    sMensagem := 'O valor do ingresso �: R$ ' + FloatToStr(dValorIngresso);

    ShowMessage(sMensagem);

end;

end.
