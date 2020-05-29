select CUSTOMER_ID, AVG(max_prod_dist) avg_dist
from
(select c.CUSTOMER_ID as CUSTOMER_ID,
    MAX(SDO_GEOM.SDO_DISTANCE(
                (C.GEO_LOCATION),
                (L.GEO_LOCATION),
                10,
                'unit=KM')) max_prod_dist
    from CUSTOMERS c join ORDERS O on c.CUSTOMER_ID = O.CUSTOMER_ID
    join ORDER_ITEMS OI on O.ORDER_ID = OI.ORDER_ID
    join PRODUCTS P on OI.PRODUCT_ID = P.PRODUCT_ID
    join INVENTORIES I on P.PRODUCT_ID = I.PRODUCT_ID
    join WAREHOUSES W on I.WAREHOUSE_ID = W.WAREHOUSE_ID
    join LOCATIONS L on W.LOCATION_ID = L.LOCATION_ID
    where c.CUSTOMER_ID < 1000
    GROUP BY c.CUSTOMER_ID, O.ORDER_ID, I.PRODUCT_ID)
group by CUSTOMER_ID
order by 1;
