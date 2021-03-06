/*
Zwiększenie o 10% ceny takich produktów, które w ciągu ostatnich trzech miesięcy
znajdowały się na liście top 1000 najczęściej zamawianych produktów. ~1000
*/

UPDATE PRODUCTS
SET LIST_PRICE = (LIST_PRICE + LIST_PRICE * 0.1)
WHERE PRODUCT_ID IN
    (SELECT PRODUCT_ID from (SELECT PRODUCT_ID, COUNT(*) FROM (SELECT p.PRODUCT_ID, p.PRODUCT_NAME, o.ORDER_DATE
    FROM PRODUCTS p JOIN ORDER_ITEMS oi on p.PRODUCT_ID = oi.PRODUCT_ID
        JOIN ORDERS o on oi.ORDER_ID = o.ORDER_ID
    WHERE ROUND(MONTHS_BETWEEN(sysdate, order_date),0) <= 3)
    GROUP BY PRODUCT_ID
    ORDER BY 2 DESC
    FETCH FIRST 1000 ROWS ONLY));

-- check before and after update
/*
SELECT p.PRODUCT_ID, p.LIST_PRICE FROM
(SELECT PRODUCT_ID, COUNT(*) FROM (SELECT p.PRODUCT_ID, p.PRODUCT_NAME, o.ORDER_DATE
FROM PRODUCTS p JOIN ORDER_ITEMS oi on p.PRODUCT_ID = oi.PRODUCT_ID
    JOIN ORDERS o on oi.ORDER_ID = o.ORDER_ID
WHERE ROUND(MONTHS_BETWEEN(sysdate, order_date),0) <= 3)
GROUP BY PRODUCT_ID
ORDER BY 2 DESC
FETCH FIRST 10 ROWS ONLY) q JOIN PRODUCTS p
ON q.PRODUCT_ID = p.PRODUCT_ID;
 */
