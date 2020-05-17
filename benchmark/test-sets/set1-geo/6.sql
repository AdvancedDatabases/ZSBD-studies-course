update CUSTOMERS C
set GEO_LOCATION =
    (select geo
    from (
        select L.GEO_LOCATION geo,
               SDO_GEOM.SDO_DISTANCE(
                (C.GEO_LOCATION),
                (L.GEO_LOCATION),
                10,
                'unit=KM') wd
        from WAREHOUSES W join LOCATIONS L on W.LOCATION_ID = L.LOCATION_ID
        where L.COUNTRY_ID = C.COUNTRY_ID
        order by wd asc)
    where ROWNUM < 2)
where CUSTOMER_ID between 1 and 20;
