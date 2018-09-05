(************************************************************
 * Видеокурс: Язык программирования Паскаль для начинающих. *
 * Типичные ошибки новичков в Паскале.                      *
 * Урок 12                                                  *
 * Автор: Смирнов Владимир                                  *
 ************************************************************)

program TypicalErrors;

const
  N = 10;
  Pi = 3.14;
  S = 'Привет';
  
var
  userAge: Integer; // возраст пользователя
  userName: String[30];
  i: Integer;

/// Наша процедура  
procedure ProcName( s: String; var i: Integer );
begin
  
end;  

function FuncName( s: String; i: Integer ): Integer;
var
  nn: Integer;
begin
  
end; 
  
BEGIN
  i := FuncName(S, userAge);
END.