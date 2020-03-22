-- select countries with at least ten warehouses
select C.COUNTRY_NAME, count(W.WAREHOUSE_ID)
from COUNTRIES C join LOCATIONS L on C.COUNTRY_ID = L.COUNTRY_ID join WAREHOUSES W on L.LOCATION_ID = W.LOCATION_ID
group by C.COUNTRY_NAME
having count(W.WAREHOUSE_ID) > 10;
