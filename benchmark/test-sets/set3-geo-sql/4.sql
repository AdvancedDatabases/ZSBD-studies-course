create or replace
 function p2p_distance(
             p_latitude1 number,
             p_longitude1 number,
             p_latitude2 number,
             p_longitude2 number) return number deterministic is
   earth_radius  number := 6371;
   pi_approx     number := 3.1415927/180;
   lat_delta     number := (p_latitude2-p_latitude1)*pi_approx;
   lon_delta     number := (p_longitude2-p_longitude1)*pi_approx;
   arc           number := sin(lat_delta/2) * sin(lat_delta/2) +
                                sin(lon_delta/2) * sin(lon_delta/2) * cos(p_latitude1*pi_approx) * cos(p_latitude2*pi_approx);
 begin
   return earth_radius * 2 * atan2(sqrt(arc), sqrt(1-arc));
 end;
select CUSTOMER_ID, AVG(max_prod_dist) avg_dist
from
(select c.CUSTOMER_ID as CUSTOMER_ID,
    MAX(p2p_distance(L.LATITUDE, L.LONGITUDE,
            C.LATITUDE, C.LONGITUDE)) max_prod_dist
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
