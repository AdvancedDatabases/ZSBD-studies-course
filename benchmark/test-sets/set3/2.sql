/*
Wygenerowanie listy kategorii produktów (Product_categories) z liczbą
zamówień (Orders) produktów tej kategorii oraz procentowym udziałem liczby
zamówień tych kategorii w liczbie wszystkich zamówień. ~5
*/

SELECT  pc.CATEGORY_NAME, COUNT(distinct o.ORDER_ID) number_of_orders,
  COUNT(distinct o.ORDER_ID) / (select count(*) from ORDERS) ratio
FROM Product_categories pc
  JOIN Products p ON pc.CATEGORY_ID = p.category_id
  JOIN Order_items oi ON p.PRODUCT_ID = oi.product_id
  JOIN Orders o ON oi.ORDER_ID = o.ORDER_ID
GROUP BY pc.CATEGORY_NAME;
