select WAREHOUSE_ID, WAREHOUSE_NAME,
(
    SELECT COUNT(W2.WAREHOUSE_ID)
    FROM WAREHOUSES W2 join LOCATIONS L2 on W2.LOCATION_ID = L2.LOCATION_ID
    WHERE (
        select SDO_GEOM.SDO_DISTANCE(
            (L1.GEO_LOCATION),
            (L2.GEO_LOCATION),
            10,
            'unit=KM'
        ) from dual) < 50
) as NeighboursCount
from WAREHOUSES W1 join LOCATIONS L1 on W1.LOCATION_ID = L1.LOCATION_ID
order by NeighboursCount desc;

