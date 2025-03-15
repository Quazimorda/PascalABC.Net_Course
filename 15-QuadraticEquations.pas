(************************************************************
 * Видеокурс: Язык программирования Паскаль для начинающих. *
 * Программа решения квадратных уравнений.                  *
 * Переписываем программу, используя процедуры и функции.   *
 * Урок 15                                                  *
 * Автор: Смирнов Владимир                                  *
 ************************************************************)

program QuadraticEquations;

procedure inputNumber(S: String; var Number: Real);
begin
  write(S);
  readln( Number );
end;

/// Передай в процедуру три переменных типа Real.
/// В них будут храниться числа a, b и c - для решения квадратного уравнения.
procedure readingNumbers(var a, b, c: Real);
begin
  writeln();
  inputNumber('Пожалуйста введите число A: ', a);
  inputNumber('Теперь - число B: ', b);
  inputNumber('И наконец, число C: ', c);
end;

/// Вычисляем дискриминант на основе чисел a, b и c.
function determinant(var a, b, c: Real): Real;
begin
  Result := b * b - 4 * a * c;
end;

/// Вычисляем корни квадратного уравнения и выводим их на экран.
procedure outputRoots(var a, b, c, d: Real);
begin
  write(
    'Вы ввели три числа. А = ', a,
    ', B = ', b, ' и C = ', c, '. На основе этих чисел вычислен дискриминант D = ', d
  );
  if d > 0 then begin
    writeln(', он больше нуля, поэтому имеются два действительных корня.');
    writeln('x1 = ', (-b - sqrt( d )) / (2 * a));
    writeln('x2 = ', (-b + sqrt( d )) / (2 * a));
  end;
  if d = 0 then begin
    writeln(', он равен нулю, поэтому имеется один действительный корень.');
    writeln('x = ', (-b / (2 * a)));
  end;
  if d < 0 then
    writeln(', он меньше нуля, поэтому действительных корней нет.');
end;


var
  a, b, c, // Числа А, B и C
  d: Real; // дискриминант

BEGIN
  writeln(
    'Программа решает квадратные уравнения, путём вычисления дискриминанта. ',
    'Вам потребуется ввести числа A, B и C.'
  );
  
  repeat
    readingNumbers(a, b, c);
    d := determinant(a, b, c);
    outputRoots(a, b, c, d);
    
    writeln();
    inputNumber('Если хотите решить ещё одно уравнение, введите 1 и нажмите на Enter, иначе введите любое другое число.', a);
  until a <> 1;

END.