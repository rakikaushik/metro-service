-- sqlplus system/password@xe
-- 
-- 
-- create user route identified by password;
-- grant CREATE SESSION, ALTER SESSION, CREATE DATABASE LINK, 
--   CREATE MATERIALIZED VIEW, CREATE PROCEDURE, CREATE PUBLIC SYNONYM, 
--   CREATE ROLE, CREATE SEQUENCE, CREATE SYNONYM, CREATE TABLE, 
--   CREATE TRIGGER, CREATE TYPE, CREATE VIEW, UNLIMITED TABLESPACE 
--   to route;
-- 
-- exit
  

--DROP TABLE ROUTE_STATION;
--DROP TABLE ROUTE;
--DROP TABLE STATION;



CREATE TABLE ROUTE.STATION (
  STATION_ID             NUMBER PRIMARY KEY,
  STATION_NAME           VARCHAR(100),
  LAST_MODIFIED_DATETIME TIMESTAMP  DEFAULT CURRENT_DATE
);

CREATE TABLE ROUTE.ROUTE (
  ROUTE_ID               NUMBER PRIMARY KEY,
  START_STATION_ID       NUMBER NOT NULL,
  END_STATION_ID         NUMBER NOT NULL,
  LAST_MODIFIED_DATETIME TIMESTAMP  DEFAULT CURRENT_DATE
);

CREATE TABLE ROUTE.ROUTE_STATION (
  ROUTE_STATION_ID       NUMBER PRIMARY KEY,
  ROUTE_ID               NUMBER NOT NULL,
  STATION_ORDER          NUMBER NOT NULL,
  STATION_ID             NUMBER NOT NULL,
  LAST_MODIFIED_DATETIME TIMESTAMP  DEFAULT CURRENT_DATE
);

--ALTER TABLE ROUTE         ADD FOREIGN KEY (START_STATION_ID) REFERENCES STATION(STATION_ID);
--ALTER TABLE ROUTE         ADD FOREIGN KEY (END_STATION_ID)   REFERENCES STATION(STATION_ID);

--ALTER TABLE ROUTE_STATION ADD FOREIGN KEY (ROUTE_ID)   REFERENCES ROUTE(ROUTE_ID);
--ALTER TABLE ROUTE_STATION ADD FOREIGN KEY (STATION_ID) REFERENCES STATION(STATION_ID);

---------------------------------------------------------------------------------------------------------
--This sequence is required by Hibernate for AUTO_INCREMENTING columns across the application
CREATE SEQUENCE route.hibernate_sequence
  INCREMENT BY 1
  MINVALUE 1
  MAXVALUE 9999999999999999999
;

CREATE PUBLIC SYNONYM hibernate_sequence FOR ROUTE.hibernate_sequence;
---------------------------------------------------------------------------------------------------------
