update LOCATIONS
set COUNTRY_ID = 'CZ',
    GEO_LOCATION = (select SDO_GEOM.SDO_CENTROID(geom, 100) from countries where COUNTRY_ID = 'CZ')
    where LOCATION_ID in (select WAREHOUSE_ID from WAREHOUSES where WAREHOUSE_NAME = 'Freds Inc');
