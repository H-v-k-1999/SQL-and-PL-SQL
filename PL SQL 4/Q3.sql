SET SERVEROUTPUT ON;

DECLARE
num NUMBER;
total NUMBER;
t NUMBER;

FUNCTION count_employee(dnum NUMBER)
RETURN NUMBER IS
	t NUMBER;

BEGIN
	SELECT COUNT(*)
	INTO t
	FROM Department
	WHERE Dnumber = dnum;
	RETURN t;
END;

BEGIN
	num := &num;
	total := count_employee(num);
	dbms_output.put_line('Number of employees in department number ' || num || ' is ' || total);
END;
/