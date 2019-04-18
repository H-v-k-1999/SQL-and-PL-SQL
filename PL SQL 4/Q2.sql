SET SERVEROUTPUT ON;

DECLARE
	cursor emp_c is SELECT * FROM employee NATURAL JOIN department;
	emp_record emp_c%rowtype;

BEGIN
	OPEN emp_c;
	FOR i IN 1..10 LOOP
		FETCH emp_c INTO emp_record;
		DBMS_OUTPUT.PUT_LINE(i || ' Name : ' || emp_record.fname || ' ' || emp_record.mname || ' ' || emp_record.lname);
		DBMS_OUTPUT.PUT_LINE(i || ' SSN : ' || emp_record.ssn);
		DBMS_OUTPUT.PUT_LINE(i || ' Department : ' || emp_record.dnumber || ' ' || emp_record.dname);
	END LOOP;

	CLOSE emp_c;

END;
/