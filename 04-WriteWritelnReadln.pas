(*********************************************************
 * ��������� �� �������� ����� ���������������� �������. *
 * ���������� ���������: Write, writeln, readln.         *
 * �����: ������� ��������                               *
 *********************************************************)

program WriteWritelnReadln;

var
  userName: String;
  userAge: Integer;

BEGIN
  writeln(
    '��������� ��������� ���������� �� �������� ',
    '����� ���������������� �������. ',
    '����� �������������� ���� ������ � ����������. ���� �� ��������, ',
    '����������� ������� BackSpace, ���� ������������� �� ������� �� Enter.'
  );
  write( '������� ���������� ���� ���: ' );
  readln( userName );
  write( '������� ��� ������� ������: ' );
  readln( userAge );
  
  writeln(
    '�� �������, ��� ��� ����� ', userName,
    ' � ��� ', userAge, ' ���.'
  );
  
  readln();
END.