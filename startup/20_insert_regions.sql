CONNECT usr/pwd@//localhost:1521/pdb;

REM INSERTING into REGIONS
SET DEFINE OFF;
INSERT ALL 
	into REGIONS (REGION_ID,REGION_NAME) values (1,'Europe')
	into REGIONS (REGION_ID,REGION_NAME) values (2,'North America')
	into REGIONS (REGION_ID,REGION_NAME) values (3,'South America')
	into REGIONS (REGION_ID,REGION_NAME) values (4,'Asia')
	into REGIONS (REGION_ID,REGION_NAME) values (5,'Middle East')
	into REGIONS (REGION_ID,REGION_NAME) values (6,'Africa')
	into REGIONS (REGION_ID,REGION_NAME) values (7,'Oceania')
SELECT * FROM DUAL;

COMMIT;