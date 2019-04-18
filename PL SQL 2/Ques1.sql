DECLARE
a NUMBER;
b NUMBER;
c NUMBER;

BEGIN
a := &a;
b := &b;
c := &c;
IF (a > b AND a > c) THEN
DBMS_OUTPUT.PUT_LINE('The greatest number is : ');
DBMS_OUTPUT.PUT_LINE(a);
ELSIF b > c THEN
DBMS_OUTPUT.PUT_LINE('The greatest number is : ');
DBMS_OUTPUT.PUT_LINE(b);
ELSE
DBMS_OUTPUT.PUT_LINE('The greatest number is : ');
DBMS_OUTPUT.PUT_LINE(c);
END IF;
END;
/