--for each order set id of salesman that had the biggest sale of products that have the biggest stock
UPDATE CUSTOMERS
SET CREDIT_LIMIT = (SELECT MAX(CUST2.CREDIT_LIMIT) FROM CUSTOMERS CUST2)
WHERE CUSTOMER_ID IN
        (
            SELECT O.CUSTOMER_ID
            FROM CUSTOMERS CUST
                     JOIN
                 (
                     SELECT *
                     FROM ORDERS
                     WHERE TO_DATE(ORDER_DATE, 'yyyy-MM-dd') >= TO_DATE('2017-01-01', 'yyyy-MM-dd')
                 ) O ON CUST.CUSTOMER_ID = O.CUSTOMER_ID
                     JOIN ORDER_ITEMS OI on O.ORDER_ID = OI.ORDER_ID
                     JOIN PRODUCTS P on OI.PRODUCT_ID = P.PRODUCT_ID
                     JOIN
                 (
                     SELECT CUSTOMER_ID, COUNT(*)
                     FROM CONTACTS
                     GROUP BY CUSTOMER_ID
                     HAVING COUNT(CUSTOMER_ID) >= 1
                 ) CONTACT ON CUST.CUSTOMER_ID = CONTACT.CUSTOMER_ID
                     AND LIST_PRICE * QUANTITY > 2000
            GROUP BY O.CUSTOMER_ID
        );
