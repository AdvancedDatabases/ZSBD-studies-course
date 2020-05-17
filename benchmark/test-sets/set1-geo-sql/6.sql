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
update CUSTOMERS C
set (LONGITUDE, LATITUDE) =
        (select lon, lat
        from (
            select L.LONGITUDE lon, L.LATITUDE lat,
                   p2p_distance(L.LATITUDE, L.LONGITUDE, C.LATITUDE, C.LONGITUDE) wd
            from WAREHOUSES W join LOCATIONS L on W.LOCATION_ID = L.LOCATION_ID
            where L.COUNTRY_ID = C.COUNTRY_ID
            order by wd asc)
        where ROWNUM < 2)
where CUSTOMER_ID between 1 and 20;
