DELETE
FROM ORDER_ITEMS WHERE PRODUCT_ID in (
    SELECT P.PRODUCT_ID
    FROM PRODUCTS P
    WHERE extractValue(P.category, 'category/categoryName') LIKE 'Eye%');

DELETE
FROM INVENTORIES WHERE PRODUCT_ID in (
    SELECT P.PRODUCT_ID FROM PRODUCTS P
    WHERE extractValue(P.category, 'category/categoryName') LIKE 'Eye%');

DELETE
FROM PRODUCTS WHERE PRODUCT_ID in (
    SELECT P.PRODUCT_ID FROM PRODUCTS P
    WHERE extractValue(P.category, 'category/categoryName') LIKE 'Eye%');