unit uRotinas;

interface

uses
  Windows, SysUtils, Classes, Forms;

function MsgErro(Text: String): integer;
function confirma(Text: String): Boolean;
procedure advertenciaAbort(Text: String);
procedure advertencia(Text: String);
procedure advertencia4linhas(linha1, linha2, linha3, linha4: String);
Function testacpf(cpf:string):boolean;


implementation

function MsgErro(Text: String): integer;
VAR
  iRetorno: integer;
begin

  case MessageBox(Application.Handle, Pchar(Text), 'Erro Crítico',
    MB_ABORTRETRYIGNORE + mb_iconHand) of
    IDABORT:
      iRetorno := IDABORT;
    IDRETRY:
      iRetorno := IDRETRY;
    IDIGNORE:
      iRetorno := IDIGNORE;
  end;

  result := iRetorno;

end;

function confirma(Text: String): Boolean;
VAR
  iRetorno: integer;
begin

  iRetorno := MessageBox(Application.Handle, Pchar(Text), 'Erro Crítico',
    MB_YESNO + MB_ICONQUESTION);

  if (iRetorno = ID_YES) then
    result := true
  else
    result := False;

end;

procedure advertenciaAbort(Text: String);
begin

  MessageBox(Application.Handle, Pchar(Text), 'Advertência!',
    MB_OK + MB_ICONEXCLAMATION);

  abort;

end;

procedure advertencia(Text: String);
begin

  MessageBox(Application.Handle, Pchar(Text), 'Advertência!',
    MB_OK + MB_ICONEXCLAMATION);

end;


procedure advertencia4linhas(linha1, linha2, linha3, linha4: String);
var
  sMsg : string;
begin

  sMsg := linha1 + Chr(13) +
          linha2 + Chr(13) +
          linha3 + Chr(13) +
          linha4;

  MessageBox(Application.Handle,
             Pchar(sMsg),
             'Advertência!',
             MB_OK + MB_ICONEXCLAMATION);

end;


 Function testacpf(cpf:string):boolean;
var i:integer;
    Want:char;
    Wvalid:boolean;
    Wdigit1,Wdigit2:integer;
begin
    Wdigit1:=0;
    Wdigit2:=0;
    Want:=cpf[1];//variavel para testar se o cpf é repetido como 111.111.111-11
    Delete(cpf,ansipos('.',cpf),1);  //retira as mascaras se houver
    Delete(cpf,ansipos('.',cpf),1);
    Delete(cpf,ansipos('-',cpf),1);

   //testar se o cpf é repetido como 111.111.111-11
   for i:=1 to length(cpf) do
     begin
       if cpf[i] <> Want then
         begin
            Wvalid:=true;  // se o cpf possui um digito diferente ele passou no primeiro teste
            break
         end;
     end;
       // se o cpf é composto por numeros repetido retorna falso
     if not Wvalid then
       begin
          result:=false;
          exit;
       end;

     //executa o calculo para o primeiro verificador
     for i:=1 to 9 do
       begin
          wdigit1:=Wdigit1+(strtoint(cpf[10-i])*(I+1));
       end;
        Wdigit1:= ((11 - (Wdigit1 mod 11))mod 11) mod 10;
        {formula do primeiro verificador
            soma=1°*2+2°*3+3°*4.. até 9°*10
            digito1 = 11 - soma mod 11
            se digito > 10 digito1 =0
          }

         //verifica se o 1° digito confere
        if IntToStr(Wdigit1) <> cpf[10] then
          begin
             result:=false;
             exit;
          end;


         for i:=1 to 10 do
       begin
          wdigit2:=Wdigit2+(strtoint(cpf[11-i])*(I+1));
       end;
       Wdigit2:= ((11 - (Wdigit2 mod 11))mod 11) mod 10;
         {formula do segundo verificador
            soma=1°*2+2°*3+3°*4.. até 10°*11
            digito1 = 11 - soma mod 11
            se digito > 10 digito1 =0
          }

       // confere o 2° digito verificador
       if IntToStr(Wdigit2) <> cpf[11] then
          begin
             result:=false;
             exit;
          end;

   //se chegar até aqui o cpf é valido
   result:=true;
end;
end.
