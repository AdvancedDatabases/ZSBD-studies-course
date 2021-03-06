CONNECT usr/pwd@//localhost:1521/pdb;

ALTER TABLE LOCATIONS
ADD LONGITUDE NUMBER(9,6)
ADD LATITUDE NUMBER(9,6)
ADD GEO_LOCATION SDO_GEOMETRY;
ALTER TABLE LOCATIONS
MODIFY CITY VARCHAR2(150);

ALTER TABLE CUSTOMERS
ADD LATITUDE NUMBER(9,6)
ADD LONGITUDE NUMBER(9,6)
ADD GEO_LOCATION SDO_GEOMETRY
ADD COUNTRY_ID CHAR(2);

alter table usr.COUNTRIES
ADD (GEOM MDSYS.SDO_GEOMETRY);

COMMIT;
