CREATE OR REPLACE PROCEDURE emp_info
	(emp_name IN employee.fname%type)
AS
BEGIN
	FOR I IN(
	SELECT Dname
	FROM employee NATURAL JOIN department
	WHERE Fname = emp_name)
	LOOP
	dbms_output.put_line(I.dname);
	END LOOP;
END emp_info;
/