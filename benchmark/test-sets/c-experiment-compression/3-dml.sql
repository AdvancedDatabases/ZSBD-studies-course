ALTER TABLE ORDER_ITEMS
INMEMORY MEMCOMPRESS FOR DML;
/

SELECT table_name,
       inmemory,
       inmemory_priority,
       inmemory_distribute,
       inmemory_compression,
       inmemory_duplicate
FROM   user_tables
WHERE  table_name = 'ORDER_ITEMS';
/

UPDATE ORDER_ITEMS
SET UNIT_PRICE =
        (
            SELECT MAX(ROUND(AVG(P.LIST_PRICE), 2))
            FROM PRODUCTS P
                     JOIN INVENTORIES I on P.PRODUCT_ID = I.PRODUCT_ID
            GROUP BY I.WAREHOUSE_ID
        )
WHERE ORDER_ID IN
      (
          SELECT O.ORDER_ID
          FROM (
                   SELECT *
                   FROM EMPLOYEES
                   WHERE MANAGER_ID =
                         (
                             SELECT *
                             FROM (
                                      SELECT E.EMPLOYEE_ID
                                      FROM EMPLOYEES E
                                      WHERE E.HIRE_DATE >= TO_DATE('2016-01-01', 'yyyy-MM-dd')
                                      ORDER BY E.HIRE_DATE
                                  )
                             WHERE ROWNUM <= 1
                         )
               ) EMP
              JOIN ORDERS O ON O.SALESMAN_ID = EMP.EMPLOYEE_ID
      );
