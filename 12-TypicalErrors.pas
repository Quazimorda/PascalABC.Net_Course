(************************************************************
 * ���������: ���� ���������������� ������� ��� ����������. *
 * �������� ������ �������� � �������.                      *
 * ���� 12                                                  *
 * �����: ������� ��������                                  *
 ************************************************************)

program TypicalErrors;

const
  N = 10;
  Pi = 3.14;
  S = '������';
  
var
  userAge: Integer; // ������� ������������
  userName: String[30];
  i: Integer;

/// ���� ���������  
procedure ProcName( s: String; var i: Integer );
begin
  
end;  

function FuncName( s: String; i: Integer ): Integer;
var
  nn: Integer;
begin
  
end; 
  
BEGIN
  i := FuncName(S, userAge);
END.