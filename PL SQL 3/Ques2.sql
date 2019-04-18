SET SERVEROUTPUT ON;

DECLARE
n NUMBER;
sum NUMBER;

BEGIN
n := &n;
dbms_output.put_line('The sum of the series is : ' || n*n);
END;
/