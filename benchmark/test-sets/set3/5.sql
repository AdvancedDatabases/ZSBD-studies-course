/*
Zwiększenie o 10% ceny takich produktów, które w ciągu ostatnich trzech miesięcy
znajdowały się na liście top 1000 najczęściej zamawianych produktów. ~1000
*/

-- note: cannot use 'with' along with 'update'
-- increase by 10% products with quantity larger than 1000
UPDATE PRODUCTS
SET LIST_PRICE = (LIST_PRICE + LIST_PRICE * 0.1)
WHERE PRODUCT_ID IN
    ((SELECT PRODUCT_ID from (SELECT PRODUCT_ID, COUNT(*) FROM (SELECT p.PRODUCT_ID, p.PRODUCT_NAME, o.ORDER_DATE
    FROM PRODUCTS p JOIN ORDER_ITEMS oi on p.PRODUCT_ID = oi.PRODUCT_ID
        JOIN ORDERS o on oi.ORDER_ID = o.ORDER_ID
    WHERE ROUND(MONTHS_BETWEEN(sysdate, order_date),0) <= 3)
    GROUP BY PRODUCT_ID
    ORDER BY 2 DESC
    FETCH FIRST 1000 ROWS ONLY)) INTERSECT
    (select p.PRODUCT_ID prod_quantity
    FROM PRODUCTS p join INVENTORIES i ON p.PRODUCT_ID = i.PRODUCT_ID
    GROUP BY p.PRODUCT_ID
    HAVING sum(i.QUANTITY) >= 1000));

-- increase by 50% products with quantity smaller than 1000
UPDATE PRODUCTS
SET LIST_PRICE = (LIST_PRICE + LIST_PRICE * 0.5)
WHERE PRODUCT_ID IN
    ((SELECT PRODUCT_ID from (SELECT PRODUCT_ID, COUNT(*) FROM (SELECT p.PRODUCT_ID, p.PRODUCT_NAME, o.ORDER_DATE
    FROM PRODUCTS p JOIN ORDER_ITEMS oi on p.PRODUCT_ID = oi.PRODUCT_ID
        JOIN ORDERS o on oi.ORDER_ID = o.ORDER_ID
    WHERE ROUND(MONTHS_BETWEEN(sysdate, order_date),0) <= 3)
    GROUP BY PRODUCT_ID
    ORDER BY 2 DESC
    FETCH FIRST 1000 ROWS ONLY)) INTERSECT
    (select p.PRODUCT_ID prod_quantity
    FROM PRODUCTS p join INVENTORIES i ON p.PRODUCT_ID = i.PRODUCT_ID
    GROUP BY p.PRODUCT_ID
    HAVING sum(i.QUANTITY) < 1000));


------ CHECKS
/*
-- check change of price for two selected products:
  -- 4531 - quantity == 1002
  -- 8879 - quantity == 999
select PRODUCT_ID, LIST_PRICE
FROM PRODUCTS
    WHERE PRODUCT_ID IN (4531, 8879);

-- check quantity of above checked products
select p.PRODUCT_ID, sum(i.QUANTITY) prod_quantity
FROM PRODUCTS p join INVENTORIES i ON p.PRODUCT_ID = i.PRODUCT_ID
WHERE p.PRODUCT_ID IN (4531, 8879)
group by p.PRODUCT_ID
order by 2 desc;
*/
