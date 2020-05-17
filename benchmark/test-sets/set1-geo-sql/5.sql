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


select WAREHOUSE_ID, WAREHOUSE_NAME,
(
    SELECT COUNT(W2.WAREHOUSE_ID)
    FROM WAREHOUSES W2 join LOCATIONS L2 on W2.LOCATION_ID = L2.LOCATION_ID
    WHERE (p2p_distance(L1.LATITUDE, L1.LONGITUDE, L2.LATITUDE, L2.LONGITUDE)) < 50
) as NeighboursCount
from WAREHOUSES W1 join LOCATIONS L1 on W1.LOCATION_ID = L1.LOCATION_ID
order by NeighboursCount desc;
