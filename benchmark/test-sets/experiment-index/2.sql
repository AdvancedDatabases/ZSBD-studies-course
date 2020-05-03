SELECT AVG(extractValue(value, '//unitPrice')*extractValue(value, '//quantity')), extractValue(P.category, 'category/categoryName')
FROM PRODUCTS P, (
    SELECT VALUE(oi) value, o.ORDER_ID orderId
    FROM Orders o,
         TABLE(XMLSEQUENCE(EXTRACT(o.order_items, '/orderitems/*'))) oi)
WHERE extractValue(value, '//productId')=p.PRODUCT_ID
AND orderId IN (
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
    WHERE extractValue(W.LOCATION, 'location/country/countryId') LIKE 'DE'
)
GROUP BY extractValue(P.category, 'category/categoryName');