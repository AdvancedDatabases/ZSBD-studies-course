alter table usr.COUNTRIES add (GEOM MDSYS.SDO_GEOMETRY);
UPDATE usr.COUNTRIES
SET GEOM = (SELECT GEOMETRY
    FROM WORld_countries__generalized_
    WHERE usr.COUNTRIES.COUNTRY_ID = ISO
        AND FID NOT IN (56, 35, 249, 106, 122));
        
-- fix for UK
UPDATE usr.COUNTRIES
SET GEOM = (SELECT GEOMETRY
    FROM WORld_countries__generalized_
    WHERE ISO = 'GB')
WHERE COUNTRY_ID = 'UK';

/*
-- CHECK:
select * from countries;
*/
