(************************************************************
 * Видеокурс: Язык программирования Паскаль для начинающих. *
 * Цикл While... Do... и процедура val().                   *
 * Урок 10                                                  *
 * Автор: Смирнов Владимир                                  *
 ************************************************************)
 
program PowerFunctionProcedure;

var
  base: Real; // Основание степени
  index: Integer; // Показатель степени
  r: Real;
  
/// Функция возводит действительное число base в целую степень index.  
function PowerFunc( base: Real; index: Integer ): Real;
var
  i: Integer;
  trigger: ShortInt;
begin
  if index = 0 then
    result := 1
  else begin
    
    if index < 0 then
      trigger := -1
    else
      trigger := 1;
    
    result := 1;
    for i := 1 to index * trigger do
      result := result * base;
      
    if index < 0 then
      result := 1 / result;  
  end;
end;

/// Процедура возводит действительное число base в целую степень index и сохраняет результат в переменную res.  
procedure PowerProc( base: Real; index: Integer; res: Real );
var
  i: Integer;
  trigger: ShortInt;
begin
  if index = 0 then
    res := 1
  else begin
    
    if index < 0 then
      trigger := -1
    else
      trigger := 1;
    
    res := 1;
    for i := 1 to index * trigger do
      res := res * base;
      
    if index < 0 then
      res := 1 / res;  
  end;
end;

BEGIN
  writeln('Программа возводит действительные числа в целые степени.');
  write('Введите основание степени - действительное число: ');
  readln( base );
  write('Введите показатель степени - целое число: ');
  readln( index );
  
  r := PowerFunc( base, index );
  writeln( base , ' ^ ', index, ' = ', r, ' - работала функция.' );
  
  PowerProc( base, index, r );
  writeln( base , ' ^ ', index, ' = ', r, ' - работала процедура.' );
  
  readln();
END.