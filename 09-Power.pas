(************************************************************
 * Видеокурс: Язык программирования Паскаль для начинающих. *
 * Программа для возведения чисел в целые степени.          *
 * Урок 9                                                   *
 * Автор: Смирнов Владимир                                  *
 ************************************************************)
 
program Power;

var
  base: Real; // Основание степени
  index: Integer; // Показатель степени
  res: Real; // Для хранения результатов
  i: Integer;
  trigger: ShortInt;

BEGIN
  writeln('Программа возводит действительные числа в целые степени.');
  write('Введите основание степени - действительное число: ');
  readln( base );
  write('Введите показатель степени - целое число: ');
  readln( index );
  
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
  
  writeln( base , ' ^ ', index, ' = ', res );
  readln;
END.