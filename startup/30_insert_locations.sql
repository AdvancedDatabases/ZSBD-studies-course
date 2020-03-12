CONNECT usr/pwd@//localhost:1521/pdb;

REM INSERTING into LOCATIONS
SET DEFINE OFF;
Insert into LOCATIONS (LOCATION_ID,ADDRESS,POSTAL_CODE,CITY,STATE,COUNTRY_ID) values (1,'1297 Via Cola di Rie','00989','Roma',null,'IT');
Insert into LOCATIONS (LOCATION_ID,ADDRESS,POSTAL_CODE,CITY,STATE,COUNTRY_ID) values (2,'93091 Calle della Testa','10934','Venice',null,'IT');
Insert into LOCATIONS (LOCATION_ID,ADDRESS,POSTAL_CODE,CITY,STATE,COUNTRY_ID) values (3,'2017 Shinjuku-ku','1689','Tokyo','Tokyo Prefecture','JP');
Insert into LOCATIONS (LOCATION_ID,ADDRESS,POSTAL_CODE,CITY,STATE,COUNTRY_ID) values (4,'9450 Kamiya-cho','6823','Hiroshima',null,'JP');
Insert into LOCATIONS (LOCATION_ID,ADDRESS,POSTAL_CODE,CITY,STATE,COUNTRY_ID) values (5,'2014 Jabberwocky Rd','26192','Southlake','Texas','US');
Insert into LOCATIONS (LOCATION_ID,ADDRESS,POSTAL_CODE,CITY,STATE,COUNTRY_ID) values (6,'2011 Interiors Blvd','99236','South San Francisco','California','US');
Insert into LOCATIONS (LOCATION_ID,ADDRESS,POSTAL_CODE,CITY,STATE,COUNTRY_ID) values (7,'2007 Zagora St','50090','South Brunswick','New Jersey','US');
Insert into LOCATIONS (LOCATION_ID,ADDRESS,POSTAL_CODE,CITY,STATE,COUNTRY_ID) values (8,'2004 Charade Rd','98199','Seattle','Washington','US');
Insert into LOCATIONS (LOCATION_ID,ADDRESS,POSTAL_CODE,CITY,STATE,COUNTRY_ID) values (9,'147 Spadina Ave','M5V 2L7','Toronto','Ontario','CA');
Insert into LOCATIONS (LOCATION_ID,ADDRESS,POSTAL_CODE,CITY,STATE,COUNTRY_ID) values (10,'6092 Boxwood St','YSW 9T2','Whitehorse','Yukon','CA');
Insert into LOCATIONS (LOCATION_ID,ADDRESS,POSTAL_CODE,CITY,STATE,COUNTRY_ID) values (11,'40-5-12 Laogianggen','190518','Beijing',null,'CN');
Insert into LOCATIONS (LOCATION_ID,ADDRESS,POSTAL_CODE,CITY,STATE,COUNTRY_ID) values (12,'1298 Vileparle (E)','490231','Bombay','Maharashtra','IN');
Insert into LOCATIONS (LOCATION_ID,ADDRESS,POSTAL_CODE,CITY,STATE,COUNTRY_ID) values (13,'12-98 Victoria Street','2901','Sydney','New South Wales','AU');
Insert into LOCATIONS (LOCATION_ID,ADDRESS,POSTAL_CODE,CITY,STATE,COUNTRY_ID) values (14,'198 Clementi North','540198','Singapore',null,'SG');
Insert into LOCATIONS (LOCATION_ID,ADDRESS,POSTAL_CODE,CITY,STATE,COUNTRY_ID) values (15,'8204 Arthur St',null,'London',null,'UK');
Insert into LOCATIONS (LOCATION_ID,ADDRESS,POSTAL_CODE,CITY,STATE,COUNTRY_ID) values (16,'Magdalen Centre, The Oxford Science Park','OX9 9ZB','Oxford','Oxford','UK');
Insert into LOCATIONS (LOCATION_ID,ADDRESS,POSTAL_CODE,CITY,STATE,COUNTRY_ID) values (17,'9702 Chester Road','09629850293','Stretford','Manchester','UK');
Insert into LOCATIONS (LOCATION_ID,ADDRESS,POSTAL_CODE,CITY,STATE,COUNTRY_ID) values (18,'Schwanthalerstr. 7031','80925','Munich','Bavaria','DE');
Insert into LOCATIONS (LOCATION_ID,ADDRESS,POSTAL_CODE,CITY,STATE,COUNTRY_ID) values (19,'Rua Frei Caneca 1360 ','01307-002','Sao Paulo','Sao Paulo','BR');
Insert into LOCATIONS (LOCATION_ID,ADDRESS,POSTAL_CODE,CITY,STATE,COUNTRY_ID) values (20,'20 Rue des Corps-Saints','1730','Geneva','Geneve','CH');
Insert into LOCATIONS (LOCATION_ID,ADDRESS,POSTAL_CODE,CITY,STATE,COUNTRY_ID) values (21,'Murtenstrasse 921','3095','Bern','BE','CH');
Insert into LOCATIONS (LOCATION_ID,ADDRESS,POSTAL_CODE,CITY,STATE,COUNTRY_ID) values (22,'Pieter Breughelstraat 837','3029SK','Utrecht','Utrecht','NL');
Insert into LOCATIONS (LOCATION_ID,ADDRESS,POSTAL_CODE,CITY,STATE,COUNTRY_ID) values (23,'Mariano Escobedo 9991','11932','Mexico City','Distrito Federal,','MX');

COMMIT;
