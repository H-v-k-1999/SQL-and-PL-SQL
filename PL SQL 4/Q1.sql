SET SERVEROUTPUT ON;

DECLARE
	emp_fname employee.fname%type;
	emp_mname employee.mname%type;
	emp_lname employee.lname%type;
	emp_ssn employee.ssn%type;
	cursor emp_c is SELECT fname, mname, lname, ssn FROM employee;

BEGIN
	OPEN emp_c;
	FOR i IN 1..10 LOOP
		FETCH emp_c INTO emp_fname, emp_mname, emp_lname, emp_ssn;
		DBMS_OUTPUT.PUT_LINE(emp_fname || ' ' || emp_mname || ' ' || emp_lname || ' ' || emp_ssn);
	END LOOP;

	CLOSE emp_c;

END;
/