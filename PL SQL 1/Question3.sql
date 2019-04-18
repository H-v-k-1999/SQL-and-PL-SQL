BEGIN
	DELETE FROM Employee
	WHERE (EXTRACT(year from sysdate) - EXTRACT(year from bdate)) > 60;
END;
/