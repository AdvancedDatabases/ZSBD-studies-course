-- TRIGGER
CREATE OR REPLACE TRIGGER SMALLER_STOCK_HIGHER_RISE
BEFORE UPDATE OF LIST_PRICE
ON PRODUCTS
FOR EACH ROW
DECLARE
    PRAGMA AUTONOMOUS_TRANSACTION;
    l_prod_quantity INVENTORIES.QUANTITY%TYPE;
    price_diff_ratio PRODUCTS.LIST_PRICE%TYPE;
BEGIN
    select sum(i.QUANTITY) prod_quantity INTO l_prod_quantity
    FROM PRODUCTS p join INVENTORIES i ON p.PRODUCT_ID = i.PRODUCT_ID
    WHERE p.PRODUCT_ID = :OLD.PRODUCT_ID;
    price_diff_ratio := (:NEW.LIST_PRICE - :OLD.LIST_PRICE) / :OLD.LIST_PRICE;
    -- set 50% increase only if changing to bigger price and changing percentage
    -- is less than 50%
    IF (l_prod_quantity < 1000 AND price_diff_ratio > 0 AND price_diff_ratio < 0.5) THEN
        -- 50% increase
        :NEW.LIST_PRICE := :OLD.LIST_PRICE + 0.5 * :OLD.LIST_PRICE;
    COMMIT;
    END IF;
END;

-- UPDATE
/*
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
*/

/*
SAVEPOINT BEFORE_q52;
rollback;
*/


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

-- check top 1000 prods from last three months and their quantity
SELECT p.PRODUCT_ID, prod_cnt, prod_quantity
FROM (SELECT PRODUCT_ID, COUNT(*) as prod_cnt FROM (SELECT p.PRODUCT_ID, p.PRODUCT_NAME, o.ORDER_DATE
    FROM PRODUCTS p JOIN ORDER_ITEMS oi on p.PRODUCT_ID = oi.PRODUCT_ID
        JOIN ORDERS o on oi.ORDER_ID = o.ORDER_ID
    WHERE ROUND(MONTHS_BETWEEN(sysdate, order_date),0) <= 3)
    GROUP BY PRODUCT_ID
    ORDER BY 2 DESC
    FETCH FIRST 1000 ROWS ONLY) p
join (select p.PRODUCT_ID, sum(i.QUANTITY) prod_quantity
FROM PRODUCTS p join INVENTORIES i ON p.PRODUCT_ID = i.PRODUCT_ID
group by p.PRODUCT_ID) i ON p.PRODUCT_ID = i.PRODUCT_ID;

-- try to update price of 8879 by 20% - should increase change to 50%
UPDATE PRODUCTS
SET LIST_PRICE = (LIST_PRICE + LIST_PRICE * 0.2)
WHERE PRODUCT_ID = 8879;

-- try to update price of 8879 by -20% - should NOT increase change to 50%, preserve -20% change
UPDATE PRODUCTS
SET LIST_PRICE = (LIST_PRICE - LIST_PRICE * 0.2)
WHERE PRODUCT_ID = 8879;

-- try to update price of 8879 by +70% - should NOT increase change to 50%, preserve 70% change
UPDATE PRODUCTS
SET LIST_PRICE = (LIST_PRICE + LIST_PRICE * 0.7)
WHERE PRODUCT_ID = 8879;
*/
