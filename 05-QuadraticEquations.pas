(*****************************************************************
 * ���������: ���� ���������������� ������� ��� ����������.      *
 * ���������� ��� ������ � �������� �������� IF... THEN... ELSE. *
 * ��������� ������� ���������� ���������.                       *
 * �����: ������� ��������                                       *
 *****************************************************************)

program QuadraticEquations;
var
  a, b, c, // ����� �, B � C
  d: Real; // ������������

BEGIN
  writeln(
    '��������� ������ ���������� ���������, ���� ���������� �������������. ',
    '��� ����������� ������ ����� A, B � C.'
  );
  write('���������� ������� ����� A: ');
  readln( a );
  write('������ - ����� B: ');
  readln( b );
  write('� �������, ����� C: ');
  readln( c );
  
  d := b * b - 4 * a * c;
  write(
    '�� ����� ��� �����. � = ', a,
    ', B = ', b, ' � C = ', c, '. �� ������ ���� ����� �������� ������������ D = ', d
  );
  if d > 0 then begin
    writeln(', �� ������ ����, ������� ������� ��� �������������� �����.');
    writeln('x1 = ', (-b - sqrt( d )) / (2 * a));
    writeln('x2 = ', (-b + sqrt( d )) / (2 * a));
  end;
  if d = 0 then begin
    writeln(', �� ����� ����, ������� ������� ���� �������������� ������.');
    writeln('x = ', (-b / (2 * a)));
  end;
  if d < 0 then
    writeln(', �� ������ ����, ������� �������������� ������ ���.');
    
  writeln('��� ���������� ��������� - ������� Enter.');
  readln;
END.