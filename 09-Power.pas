(************************************************************
 * ���������: ���� ���������������� ������� ��� ����������. *
 * ��������� ��� ���������� ����� � ����� �������.          *
 * ���� 9                                                   *
 * �����: ������� ��������                                  *
 ************************************************************)
 
program Power;

var
  base: Real; // ��������� �������
  index: Integer; // ���������� �������
  res: Real; // ��� �������� �����������
  i: Integer;
  trigger: ShortInt;

BEGIN
  writeln('��������� �������� �������������� ����� � ����� �������.');
  write('������� ��������� ������� - �������������� �����: ');
  readln( base );
  write('������� ���������� ������� - ����� �����: ');
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
  readln();
END.