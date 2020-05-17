UPDATE LOCATIONS
SET
COUNTRY_ID = 'CZ',
LATITUDE =  (dbms_random.value * (50.277040 - 49.0754)) + 49.0754,
LONGITUDE = (dbms_random.value * (18.000134 - 13.020202)) + 13.020202
WHERE LOCATION_ID IN (Select WAREHOUSE_ID FROM WAREHOUSES WHERE WAREHOUSE_NAME = 'Freds Inc');