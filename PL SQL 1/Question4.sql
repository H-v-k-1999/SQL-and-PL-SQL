SET SERVEROUTPUT ON

DECLARE
	value NUMBER(9);

BEGIN
	for c in (SELECT SSN INTO value
		FROM Employee
		WHERE salary > 60000)

	LOOP
		value := c.SSN;
		dbms_output.put_line(value);

	END LOOP;
END;
/