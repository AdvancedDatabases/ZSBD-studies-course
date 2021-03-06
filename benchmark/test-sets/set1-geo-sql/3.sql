SELECT AVG(OI.UNIT_PRICE*OI.QUANTITY), PC.CATEGORY_NAME
FROM PRODUCT_CATEGORIES PC
    JOIN PRODUCTS P on PC.CATEGORY_ID = P.CATEGORY_ID
    JOIN ORDER_ITEMS OI on P.PRODUCT_ID = OI.PRODUCT_ID
WHERE ORDER_ID IN (
    SELECT O2.ORDER_ID
    FROM ORDERS O2
    WHERE SALESMAN_ID IN (
        SELECT E.EMPLOYEE_ID
        FROM EMPLOYEES E
        WHERE E.JOB_TITLE LIKE 'Purchasing %' AND MANAGER_ID = 1
    )
) AND P.PRODUCT_ID IN (
    SELECT I.PRODUCT_ID
    FROM INVENTORIES I
             JOIN WAREHOUSES W on I.WAREHOUSE_ID = W.WAREHOUSE_ID
             JOIN LOCATIONS L on W.LOCATION_ID = L.LOCATION_ID
             JOIN COUNTRIES C2 on L.COUNTRY_ID = C2.COUNTRY_ID
    WHERE C2.COUNTRY_NAME LIKE 'Poland'
)
GROUP BY PC.CATEGORY_NAME;