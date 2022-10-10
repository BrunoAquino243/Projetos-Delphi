unit uRotinas;

interface

uses
  Windows, SysUtils, Classes, Forms;

function MsgErro(Text: String): integer;
function confirma(Text: String): Boolean;
function advertenciaAbort(Text: String): Boolean;
procedure advertencia(Text: String);

implementation

function MsgErro(Text: String): integer;
VAR
  iRetorno: integer;
begin

    case MessageBox(Application.Handle,Pchar(Text), 'Erro Crítico', MB_ABORTRETRYIGNORE + mb_iconHand) of
      IDABORT : iRetorno := IDABORT;
      IDRETRY : iRetorno := IDRETRY;
      IDIGNORE : iRetorno := IDIGNORE;
    end;

    result := iRetorno;

end;

function confirma(Text: String): Boolean;
VAR
  iRetorno: integer;
begin

    iRetorno := MessageBox(Application.Handle,Pchar(Text), 'Erro Crítico', MB_YESNO + MB_ICONQUESTION);

    if (iRetorno = ID_YES) then
      result := true
    else
      result := False;

end;

function advertenciaAbort(Text: String): Boolean;
var
  iMensagem: Integer;
begin
  iMensagem := MessageBox(Application.Handle,Pchar(Text), 'AdvertênciaAbort!', MB_OK + MB_ICONEXCLAMATION);
  abort
end;

procedure advertencia(Text: String);
begin
  MessageBox(Application.Handle,Pchar(Text), 'Advertência!', MB_OK + MB_ICONEXCLAMATION);
  abort
end;


end.

