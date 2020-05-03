/*
Wyświetlenie listy zamówień dotyczących top-5 najpopularniejszych produktów z
każdego miesiąca, których wartość jest większa od średniej wartości zamówienia
 w danym miesiącu. ~ 2500
*/
-- TOP 5 produktów na podstawie sprzedazy dla kazdego miesiaca
WITH top5_prod_per_month AS
(SELECT PRODUCT_ID, PRODUCT_NAME, order_month, monthly_product_income FROM
    (SELECT PRODUCT_ID, PRODUCT_NAME, order_month, monthly_product_income,
           rank() over (partition by order_month order by monthly_product_income desc) product_rank
    FROM (SELECT PRODUCT_ID, PRODUCT_NAME, order_month, SUM(product_income) monthly_product_income
        FROM (SELECT p.PRODUCT_ID, p.PRODUCT_NAME, TO_CHAR( o.ORDER_DATE, 'YYYY-MM' ) order_month,
            TO_NUMBER(XMLQUERY('xs:decimal(sum( for $oi in /orderitems/orderitem
                                               let $i := xs:int($oi/itemId)
                                               where $oi/productId = $pid
                                               return xs:decimal($oi[itemId = $i]/unitPrice) * xs:decimal($oi[itemId = $i]/quantity) ))'
            PASSING o.ORDER_ITEMS, oi.PRODUCT_ID as "pid" RETURNING CONTENT)) as product_income
                    FROM PRODUCTS p JOIN ORDER_ITEMS oi on p.PRODUCT_ID = oi.PRODUCT_ID
                        JOIN ORDERS o on oi.ORDER_ID = o.ORDER_ID)
        GROUP BY PRODUCT_ID, PRODUCT_NAME, order_month))
WHERE product_rank <= 5),
-- srednia wartosci sprzedazy produktu dla kazdego miesiaca
avg_prods_monthly_income AS (
SELECT order_month, AVG(product_income) avg_monthly_product_income
FROM (SELECT p.PRODUCT_ID, p.PRODUCT_NAME, TO_CHAR( o.ORDER_DATE, 'YYYY-MM' ) order_month,
    TO_NUMBER(XMLQUERY('xs:decimal(sum( for $oi in /orderitems/orderitem
                                       let $i := xs:int($oi/itemId)
                                       where $oi/productId = $pid
                                       return xs:decimal($oi[itemId = $i]/unitPrice) * xs:decimal($oi[itemId = $i]/quantity) ))'
    PASSING o.ORDER_ITEMS, oi.PRODUCT_ID as "pid" RETURNING CONTENT)) as product_income
    FROM PRODUCTS p JOIN ORDER_ITEMS oi on p.PRODUCT_ID = oi.PRODUCT_ID
        JOIN ORDERS o on oi.ORDER_ID = o.ORDER_ID)
GROUP BY order_month
 ),
--TOP 5 produktów na podstawie sprzedazy dla kazdego miesiaca o wartosci
-- sprzedazy powyzej sredniej w danym miesiacu
top5_prod_per_month_above_avg AS ( SELECT tp.PRODUCT_ID, tp.PRODUCT_NAME, tp.order_month
    FROM top5_prod_per_month tp JOIN avg_prods_monthly_income ap
        ON tp.order_month = ap.order_month
    WHERE tp.monthly_product_income >= ap.avg_monthly_product_income)
select ORDER_ID, ITEM_ID, q.PRODUCT_ID, p.PRODUCT_NAME, ORDER_DATE
FROM (SELECT o.ORDER_ID, oi.ITEM_ID, o.ORDER_DATE,
             p.PRODUCT_ID, TO_CHAR( o.ORDER_DATE, 'YYYY-MM' ) date_month
    FROM ORDERS o JOIN ORDER_ITEMS oi on o.ORDER_ID = oi.ORDER_ID
        JOIN PRODUCTS p on oi.PRODUCT_ID = p.PRODUCT_ID) q
    JOIN PRODUCTS p on q.PRODUCT_ID = p.PRODUCT_ID
WHERE q.PRODUCT_ID IN (SELECT PRODUCT_ID FROM top5_prod_per_month_above_avg)
order by ORDER_ID, ORDER_DATE, ITEM_ID;


/*

-- CHECK 1: (SQL) monthly product income
-- product_income (for product_id = 1) for:
--     "ORDER_MONTH" == "2019-04": 31202.6
--     "ORDER_MONTH" == "2019-06": 36363.98
SELECT PRODUCT_ID, PRODUCT_NAME, order_month, SUM(product_income) monthly_product_income
        FROM (SELECT p.PRODUCT_ID, p.PRODUCT_NAME, TO_CHAR( o.ORDER_DATE, 'YYYY-MM' ) order_month,
            oi.quantity * oi.unit_price product_income
            FROM PRODUCTS p JOIN ORDER_ITEMS oi on p.PRODUCT_ID = oi.PRODUCT_ID
                JOIN ORDERS o on oi.ORDER_ID = o.ORDER_ID)
WHERE PRODUCT_ID = 1 AND order_month IN ('2019-04', '2019-06')
GROUP BY PRODUCT_ID, PRODUCT_NAME, order_month
ORDER BY 3;

-- CHECK 1: (XML) monthly product income
-- product_income (for product_id = 1) for:
--     "ORDER_MONTH" == "2019-04": 31202.6
--     "ORDER_MONTH" == "2019-06": 36363.98
SELECT PRODUCT_ID, PRODUCT_NAME, order_month, SUM(product_income) monthly_product_income
        FROM (SELECT p.PRODUCT_ID, p.PRODUCT_NAME, TO_CHAR( o.ORDER_DATE, 'YYYY-MM' ) order_month,
            TO_NUMBER(XMLQUERY('xs:decimal(sum( for $oi in /orderitems/orderitem
                                               let $i := xs:int($oi/itemId)
                                               where $oi/productId = $pid
                                               return xs:decimal($oi[itemId = $i]/unitPrice) * xs:decimal($oi[itemId = $i]/quantity) ))'
    PASSING o.ORDER_ITEMS, oi.PRODUCT_ID as "pid" RETURNING CONTENT)) as product_income
            FROM PRODUCTS p JOIN ORDER_ITEMS oi on p.PRODUCT_ID = oi.PRODUCT_ID
                JOIN ORDERS o on oi.ORDER_ID = o.ORDER_ID)
WHERE PRODUCT_ID = 1 AND order_month IN ('2019-04', '2019-06')
GROUP BY PRODUCT_ID, PRODUCT_NAME, order_month
ORDER BY 3;

-- CHECK 2: (SQL) average monthly product income for:
--     "ORDER_MONTH" == "2019-04": 25610.14
--     "ORDER_MONTH" == "2019-06": 25164.22
SELECT order_month, AVG(product_income) avg_monthly_product_income
FROM (SELECT p.PRODUCT_ID, p.PRODUCT_NAME, TO_CHAR( o.ORDER_DATE, 'YYYY-MM' ) order_month,
    oi.quantity * oi.unit_price product_income
    FROM PRODUCTS p JOIN ORDER_ITEMS oi on p.PRODUCT_ID = oi.PRODUCT_ID
        JOIN ORDERS o on oi.ORDER_ID = o.ORDER_ID)
WHERE order_month IN ('2019-04', '2019-06')
GROUP BY order_month
order by 1;

-- CHECK 2: (XML) average monthly product income for:
--     "ORDER_MONTH" == "2019-04": 25610.14
--     "ORDER_MONTH" == "2019-06": 25164.22
SELECT order_month, AVG(product_income) monthly_product_income
FROM (SELECT p.PRODUCT_ID, p.PRODUCT_NAME, TO_CHAR( o.ORDER_DATE, 'YYYY-MM' ) order_month,
    TO_NUMBER(XMLQUERY('xs:decimal(sum( for $oi in /orderitems/orderitem
                                       let $i := xs:int($oi/itemId)
                                       where $oi/productId = $pid
                                       return xs:decimal($oi[itemId = $i]/unitPrice) * xs:decimal($oi[itemId = $i]/quantity) ))'
    PASSING o.ORDER_ITEMS, oi.PRODUCT_ID as "pid" RETURNING CONTENT)) as product_income
    FROM PRODUCTS p JOIN ORDER_ITEMS oi on p.PRODUCT_ID = oi.PRODUCT_ID
        JOIN ORDERS o on oi.ORDER_ID = o.ORDER_ID)
WHERE order_month IN ('2019-04', '2019-06')
GROUP BY order_month
order by 1;

*/