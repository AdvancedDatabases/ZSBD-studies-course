/*
 Dodanie nowego magazynu w lokalizacji w której znajduje się największy
 magazyn (na podstawie sumarycznej liczby jednostek przechowywanych produktów),
 z takimi samymi produktami jak ten magazyn, z początkową ilością wszystkich
 produktów ustaloną na 10.
 */

 -- insert second warehouse with name and location of biggest warehouse
 INSERT INTO WAREHOUSES(WAREHOUSE_ID, WAREHOUSE_NAME, LOCATION_ID)
 SELECT (SELECT MAX(WAREHOUSE_ID) + 1 FROM WAREHOUSES) WAREHOUSE_ID,
        WAREHOUSE_NAME || ' - 2' WAREHOUSE_NAME, LOCATION_ID
 FROM WAREHOUSES
 WHERE WAREHOUSE_ID = (SELECT WAREHOUSE_ID FROM (SELECT W.WAREHOUSE_ID, SUM(I.QUANTITY)
     FROM WAREHOUSES W
         JOIN INVENTORIES I on W.WAREHOUSE_ID = I.WAREHOUSE_ID
     GROUP BY W.WAREHOUSE_ID
     ORDER BY 2 DESC
     FETCH FIRST 1 ROWS ONLY));


-- insert new inventory entries for new warehouse with entries from biggest warehouse
INSERT INTO INVENTORIES(PRODUCT_ID, WAREHOUSE_ID, QUANTITY)
SELECT PRODUCT_ID, (SELECT MAX(WAREHOUSE_ID) FROM WAREHOUSES) WAREHOUSE_ID, QUANTITY FROM INVENTORIES
WHERE WAREHOUSE_ID = (SELECT WAREHOUSE_ID FROM (SELECT W.WAREHOUSE_ID, SUM(I.QUANTITY)
    FROM WAREHOUSES W
        JOIN INVENTORIES I on W.WAREHOUSE_ID = I.WAREHOUSE_ID
    GROUP BY W.WAREHOUSE_ID
    ORDER BY 2 DESC
    FETCH FIRST 1 ROWS ONLY));
