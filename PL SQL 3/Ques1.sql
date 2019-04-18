SET SERVEROUTPUT ON;

DECLARE
n NUMBER := 100;

BEGIN
WHILE (n > 0)
LOOP
dbms_output.put_line(n);
n := n - 1;
END LOOP;
END;
/