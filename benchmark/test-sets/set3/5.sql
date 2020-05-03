UPDATE PRODUCTS
SET LIST_PRICE = (LIST_PRICE + LIST_PRICE * 0.5)
WHERE PRODUCT_ID = 8879;

UPDATE ORDER_ITEMS
SET UNIT_PRICE = (UNIT_PRICE + UNIT_PRICE * 0.5)
where order_id in
(select o.order_id from orders o join ORDER_ITEMS oi on o.ORDER_ID = oi.ORDER_ID
join PRODUCTS p on oi.PRODUCT_ID = p.PRODUCT_ID
where p.PRODUCT_ID in
(select PRODUCT_ID from Products
WHERE PRODUCT_ID = 8879));

/*
------ CHECKS
-- check in products
select PRODUCT_ID, LIST_PRICE
FROM PRODUCTS
    WHERE PRODUCT_ID = 8879;

-- check in order_items
-- these prices should change by 50%
select oi.order_id, oi.UNIT_PRICE from orders o join ORDER_ITEMS oi on o.ORDER_ID = oi.ORDER_ID
join PRODUCTS p on oi.PRODUCT_ID = p.PRODUCT_ID
where p.PRODUCT_ID = 8879
order by 1;
*/