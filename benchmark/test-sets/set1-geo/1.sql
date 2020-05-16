SELECT COUNT(*), PC.CATEGORY_NAME
FROM CUSTOMERS C
    JOIN ORDERS O on C.CUSTOMER_ID = O.CUSTOMER_ID
    JOIN ORDER_ITEMS OI on O.ORDER_ID = OI.ORDER_ID
    JOIN PRODUCTS P on OI.PRODUCT_ID = P.PRODUCT_ID JOIN PRODUCT_CATEGORIES PC on P.CATEGORY_ID = PC.CATEGORY_ID
WHERE SDO_INSIDE(C.GEO_LOCATION, (SELECT * FROM (
                  SELECT C.GEOM
                  from COUNTRIES C
                  ORDER BY SDO_GEOM.SDO_AREA(C.GEOM, 1, 'unit=SQ_KILOMETER') DESC
) WHERE rownum <2)) = 'TRUE'
GROUP BY PC.CATEGORY_NAME;