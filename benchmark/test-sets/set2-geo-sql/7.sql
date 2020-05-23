update LOCATIONS
set
COUNTRY_ID = 'CZ',
LATITUDE =  (dbms_random.value * (50.277040 - 49.0754)) + 49.0754,
LONGITUDE = (dbms_random.value * (18.000134 - 13.020202)) + 13.020202
where LOCATION_ID in (select WAREHOUSE_ID from WAREHOUSES where WAREHOUSE_NAME = 'Freds Inc');
