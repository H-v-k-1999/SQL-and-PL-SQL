BEGIN
	DELETE
	FROM employee
	WHERE salary < &salary;
END;
/