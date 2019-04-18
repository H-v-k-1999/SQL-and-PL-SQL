BEGIN
	DELETE
	FROM employee
	WHERE SSN = &SSN;
END;
/