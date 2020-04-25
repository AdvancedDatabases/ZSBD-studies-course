UPDATE ORDERS
SET SALESMAN_ID =
        (
            SELECT *
            FROM (
                     SELECT E.EMPLOYEE_ID
                     FROM EMPLOYEES E
                              JOIN ORDERS O ON E.EMPLOYEE_ID = O.SALESMAN_ID
                              JOIN ORDER_ITEMS OI ON O.ORDER_ID = OI.ORDER_ID
                              JOIN PRODUCTS P ON OI.PRODUCT_ID = P.PRODUCT_ID
                     WHERE P.PRODUCT_ID IN
                           (
                               SELECT *
                               FROM (
                                        SELECT P2.PRODUCT_ID
                                        FROM PRODUCTS P2
                                                 JOIN INVENTORIES I on P2.PRODUCT_ID = I.PRODUCT_ID
                                        ORDER BY I.QUANTITY DESC
                                    )
                               WHERE ROWNUM <= 1
                           )
                     ORDER BY (P.LIST_PRICE * OI.QUANTITY) DESC
                 )
            WHERE ROWNUM <= 1
        );