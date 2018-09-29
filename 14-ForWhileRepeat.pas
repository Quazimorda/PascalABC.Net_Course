(************************************************************
 * Видеокурс: Язык программирования Паскаль для начинающих. *
 * Циклы for, while, repeat.                                *
 * Урок 14                                                  *
 * Автор: Смирнов Владимир                                  *
 ************************************************************)

program ForWhileRepeat;

var
  i, sum: Integer;

BEGIN
  sum := 0;
  for i := 1 to 10 do 
    sum += sqr( i );
  writeln('Сумма квадратов чисел от 1 до 10 равна ', sum);
  
  i := 1;
  sum := 0;
  while i <= 10 do begin
    sum += sqr( i );
    inc(i);
  end;
  writeln('Сумма квадратов чисел от 1 до 10 равна ', sum);
  
  i := 1;
  sum := 0;
  repeat
    sum += sqr( i );
    inc(i);
  until i > 10;
  writeln('Сумма квадратов чисел от 1 до 10 равна ', sum);
  
  readln;
END.