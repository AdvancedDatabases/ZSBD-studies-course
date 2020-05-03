SELECT extractValue(W.LOCATION, 'location/country/countryId'),
       extractValue(P.category, 'category/categoryName'),
       SUM(I.QUANTITY) quantity,
       COUNT(P.PRODUCT_ID) diff_products
FROM WAREHOUSES W
    JOIN INVENTORIES I on W.WAREHOUSE_ID = I.WAREHOUSE_ID
    JOIN PRODUCTS P on I.PRODUCT_ID = P.PRODUCT_ID
WHERE I.WAREHOUSE_ID  between 1 and 250
GROUP BY extractValue(W.LOCATION, 'location/country/countryId') , extractValue(P.category, 'category/categoryName');
