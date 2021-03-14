(************************************************************
 * Видеокурс: Язык программирования Паскаль для начинающих. *
 * Тип данных Char.                                         *
 * Урок 16                                                  *
 * Автор: Смирнов Владимир                                  *
 ************************************************************)

program TypeChar;

var
  hello: String;
  i, j: Byte;
  alpha: Char;
  rusAlphabet: String;

BEGIN
  hello := 'Привет, мир!';
  rusAlphabet := 'абвгдеёжзийклмнопрстуфхцчшщьыъэюя';
  
 
  writeln(
    'Выводим на экран символы строки "',
    hello,
    '" и их коды с явным преобразованием к типу Char.'
  );
  for i := 1 to length(hello) do begin
    alpha := hello[i];
    writeln( alpha, ' (', ord(alpha), ')' );
  end;
  readln;

  writeln(
    'Выводим на экран символы строки "',
    hello,
    '" и их коды без преобразования к типу Char.'
  );
  for i := 1 to length(hello) do begin
    writeln( hello[i], ' (', ord(hello[i]), ')' );
  end;
  readln;

  
  writeln('Выводим на экран коды ASCII и символы им соответствующие');
  j := 1;
  for i := 33 to 127 do begin
    write(i, ' (', chr(i), ')');
    
    if j mod 5 = 0 then
      write(chr(10))
    else
      write(chr(9));
      
    inc(j);
  end;
  readln;
  
  writeln('Выводим на экран буквы русского алфавита и их коды');
  j := 1;
  for i := 1 to length(rusAlphabet) do begin
    write(uppercase(rusAlphabet[i]), ' (', ord(uppercase(rusAlphabet[i])), ')');
    
    if j mod 5 = 0 then
      write(chr(10))
    else
      write(chr(9));
      
    inc(j);
  end;
  
  writeln;
  writeln;
  
  j := 1;
  for i := 1 to length(rusAlphabet) do begin
    write(rusAlphabet[i], ' (', ord(rusAlphabet[i]), ')');
    
    if j mod 5 = 0 then
      write(chr(10))
    else
      write(chr(9));
      
    inc(j);
  end;
  readln;
  
END.