/* 
Working platform:- Oracle
*/
set serveroutput on;
DECLARE
I NUMBER; -- redundant
J NUMBER; -- redundant
BEGIN
FOR I IN REVERSE 1..20
LOOP
    FOR J IN 1..I
    LOOP
    DBMS_OUTPUT.PUT('*') ; -- printing *
    IF J < I THEN
        DBMS_OUTPUT.PUT(' ');
    END IF;
    END LOOP;
    DBMS_OUTPUT.NEW_LINE; -- for new line
END LOOP;
END;
/