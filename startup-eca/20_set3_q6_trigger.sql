CREATE TABLE EX_EMPLOYEES
  (
    employee_id NUMBER,
    first_name VARCHAR( 255 ) NOT NULL,
    last_name  VARCHAR( 255 ) NOT NULL,
    email      VARCHAR( 255 ) NOT NULL,
    phone      VARCHAR( 50 ) NOT NULL ,
    hire_date  DATE NOT NULL          ,
    manager_id NUMBER( 12, 0 )        ,
    job_title  VARCHAR( 255 ) NOT NULL);


CREATE OR REPLACE TRIGGER LOG_DISMISSED_EMP
BEFORE DELETE
ON EMPLOYEES
FOR EACH ROW
DECLARE
    PRAGMA AUTONOMOUS_TRANSACTION;
BEGIN
    INSERT INTO EX_EMPLOYEES
    SELECT * FROM EMPLOYEES
    WHERE EMPLOYEE_ID = :OLD.EMPLOYEE_ID;
    COMMIT;
END;

----- CHECK
-- 2266 employees
-- 246, 251 will be deleted
-- 247 wont be deleted
/*
DELETE
FROM EMPLOYEES e
WHERE ROUND(MONTHS_BETWEEN(sysdate, e.HIRE_DATE),0) <= 12
    AND e.EMPLOYEE_ID IN (SELECT SALESMAN_ID FROM (
            SELECT SALESMAN_ID, COUNT(*) ORDERS_NUMBER
            FROM ORDERS GROUP BY SALESMAN_ID)
        WHERE ORDERS_NUMBER < 3);


SELECT * FROM EMPLOYEES
WHERE EMPLOYEE_ID IN (246, 251, 247);

SELECT * FROM EX_EMPLOYEES
WHERE EMPLOYEE_ID IN (246, 251, 247);
*/
