CONNECT usr/pwd@//localhost:1521/pdb

REM INSERTING into COUNTRIES
SET DEFINE OFF
INSERT ALL 
	into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('CN','China',4)
	into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('IN','India',4)
	into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('SG','Singapore',4)
	into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('JP','Japan',4)
	into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('MY','Malaysia',4)
	into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('TH','Thailand',4)
	into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('ID','Indonesia',4)
	into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('VN','Viet Nam',4)
	into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('IL','Israel',5)
	into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('KW','Kuwait',5)
	into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('EG','Egypt',5)
	into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('JO','Jordan',5)
	into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('SA','Saudi Arabia',5)
	into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('AR','Argentina',3)
	into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('BR','Brazil',3)
	into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('CO','Colombia',3)
	into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('CL','Chile',3)
	into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('BE','Belgium',1)
	into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('CH','Switzerland',1)
	into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('DE','Germany',1)
	into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('DK','Denmark',1)
	into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('FR','France',1)
	into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('IT','Italy',1)
	into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('NL','Netherlands',1)
	into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('PL','Poland',1)
	into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('PT','Portugal',1)
	into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('RO','Romania',1)
	into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('RU','Russian Federation',1)
	into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('ES','Spain',1)
	into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('CZ','Czech Republic',1)
	into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('UK','United Kingdom',1)
	into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('NG','Nigeria',6)
	into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('ZM','Zambia',6)
	into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('ZA','South Africa',6)
	into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('DZ','Algeria',6)
	into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('MA','Morocco',6)
	into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('BW','Botswana',6)
	into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('CA','Canada',2)
	into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('US','United States of America',2)
	into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('MX','Mexico',2)
	into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('PA','Panama',2)
	into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('AU','Australia',7)
	into COUNTRIES (COUNTRY_ID,COUNTRY_NAME,REGION_ID) values ('NZ','New Zealand',7)
SELECT * FROM DUAL;

COMMIT;
