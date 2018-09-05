(************************************************************
 * ���������: ���� ���������������� ������� ��� ����������. *
 * ���� While... Do... � ��������� val().                   *
 * ���� 10                                                  *
 * �����: ������� ��������                                  *
 ************************************************************)
 
program PowerFunctionProcedure;

var
  base: Real; // ��������� �������
  index: Integer; // ���������� �������
  r: Real;
  
/// ������� �������� �������������� ����� base � ����� ������� index.  
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

/// ��������� �������� �������������� ����� base � ����� ������� index � ��������� ��������� � ���������� res.  
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
  writeln('��������� �������� �������������� ����� � ����� �������.');
  write('������� ��������� ������� - �������������� �����: ');
  readln( base );
  write('������� ���������� ������� - ����� �����: ');
  readln( index );
  
  r := PowerFunc( base, index );
  writeln( base , ' ^ ', index, ' = ', r, ' - �������� �������.' );
  
  PowerProc( base, index, r );
  writeln( base , ' ^ ', index, ' = ', r, ' - �������� ���������.' );
  
  readln();
END.