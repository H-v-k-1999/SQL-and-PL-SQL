DECLARE
sub1 NUMBER;
sub2 NUMBER;
sub3 NUMBER;
total NUMBER;

BEGIN

sub1 := &sub1;
sub2 := &sub2;
sub3 := &sub3;

total := (sub1 + sub2 + sub3)/3;

CASE
	WHEN (total > 90) THEN
	dbms_output.put_line('Grade A');
	WHEN (total > 80) THEN
	dbms_output.put_line('Grade B');
	WHEN (total > 70) THEN
	dbms_output.put_line('Grade C');
	WHEN (total > 60) THEN
	dbms_output.put_line('Grade D');
	WHEN (total > 50) THEN
	dbms_output.put_line('Grade E');
	ELSE
	dbms_output.put_line('Grade F');
END CASE;
END;
/