CREATE OR REPLACE TRIGGER USER_LOGON
AFTER LOGON ON DATABASE
BEGIN
     DBMS_OUTPUT.PUT_LINE(USER);
END;

BEGIN
    DBMS_OUTPUT.ENABLE();
END;
