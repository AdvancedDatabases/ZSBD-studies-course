INSERT INTO user_sdo_geom_metadata
    (TABLE_NAME,
     COLUMN_NAME,
     DIMINFO,
     SRID)
  VALUES (
  'customers',
  'geo_location',
  SDO_DIM_ARRAY(   -- 20X20 grid
    SDO_DIM_ELEMENT('X', -180,180,0.05),
    SDO_DIM_ELEMENT('Y', -90,90,0.05)
     ),
  8307   -- SRID
);
/

INSERT INTO user_sdo_geom_metadata
    (TABLE_NAME,
     COLUMN_NAME,
     DIMINFO,
     SRID)
  VALUES (
  'locations',
  'geo_location',
  SDO_DIM_ARRAY(   -- 20X20 grid
    SDO_DIM_ELEMENT('X', -180,180,0.05),
    SDO_DIM_ELEMENT('Y', -90,90,0.05)
     ),
  8307   -- SRID
);
/

CREATE INDEX customer_spatial_idx
   ON CUSTOMERS(GEO_LOCATION)
   INDEXTYPE IS MDSYS.SPATIAL_INDEX PARALLEL;
/

CREATE INDEX location_spatial_idx
   ON LOCATIONS(GEO_LOCATION)
   INDEXTYPE IS MDSYS.SPATIAL_INDEX PARALLEL;
/

select * from CUSTOMERS;
/

select * from LOCATIONS;

DROP INDEX location_spatial_idx;
DROP INDEX customer_spatial_idx;
DROP INDEX location_spatial_idx;