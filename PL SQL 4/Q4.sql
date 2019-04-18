SET SERVEROUTPUT ON;

DECLARE
num NUMBER;
fact NUMBER;

FUNCTION factorial(num NUMBER)
RETURN NUMBER IS
	fact NUMBER;

BEGIN
	IF num = 0 THEN
		fact := 1;
	ELSE
		fact := num * factorial(num - 1);
	END IF;

	RETURN fact;
END;

BEGIN
	num := &num;
	fact := factorial(num);
	dbms_output.put_line('Factorial of ' || num || ' is ' || fact);
END;
/