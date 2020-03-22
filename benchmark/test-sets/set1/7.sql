-- for each order item set average price of product among warehouses, whose salesman id has manager that is the first employed employee
UPDATE ORDER_ITEMS
SET QUANTITY =
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