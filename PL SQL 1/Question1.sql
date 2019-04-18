DECLARE
sal NUMBER;

BEGIN
SELECT salary INTO sal
FROM employee
WHERE SSN = &SSN;
dbms_output.put_line(sal);
END;
/