(************************************************************
 * ���������: ���� ���������������� ������� ��� ����������. *
 * ���� While... Do... � ��������� val().                   *
 * ���� 11                                                  *
 * �����: ������� ��������                                  *
 ************************************************************)
 
program WhileDoAndVal;
var
  userAge: Integer; // ������� ������������
  error: Integer; // ��� ����� ������
  s: String; // ��� ����� �������� � ����������
BEGIN
  userAge := 0;
  while (userAge < 5) do begin
    writeln('������� ���������� ��� ������� - ���������� ������ ���. � ����� ��������� ������ ����������� �� �������� ����� ���� �����.');
    readln( s );
    val( s, userAge, error );
    if (error=0) and (userAge<5) then
      writeln('�������, ��� ����� ����� �����, �� � ����� ��������� ������ ����������� �� �������� ����� ���� �����.');
  end;
  writeln('�� �������, ��� ��� ������� - ', userAge, ' ���. �������!');
  readln;
END.