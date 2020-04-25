--names of top3 customers that had biggest sales in each category
SELECT * FROM(
    SELECT CU.NAME name,
           extractValue(P.category, 'category/categoryName') category,
           SUM(P.LIST_PRICE * OI.QUANTITY) sum,
           RANK() OVER (PARTITION BY extractValue(P.category, 'category/categoryName') ORDER BY SUM(P.LIST_PRICE * OI.QUANTITY)) rank
    FROM CUSTOMERS CU
        JOIN ORDERS O on CU.CUSTOMER_ID = O.CUSTOMER_ID
        JOIN ORDER_ITEMS OI on O.ORDER_ID = OI.ORDER_ID
        JOIN PRODUCTS P on OI.PRODUCT_ID = P.PRODUCT_ID
    GROUP BY CU.NAME, extractValue(P.category, 'category/categoryName')) tab
WHERE rank <= 3;