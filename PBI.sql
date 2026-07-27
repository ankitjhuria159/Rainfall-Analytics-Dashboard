 CREATE OR REPLACE STORAGE INTEGRATION PBI_Integration
  TYPE = EXTERNAL_STAGE
  STORAGE_PROVIDER = 'S3'
  ENABLED = TRUE
  STORAGE_AWS_ROLE_ARN = 'arn:aws:iam::559987920007:role/powerbi.role'
  STORAGE_ALLOWED_LOCATIONS = ('s3://powerbiankit.project /')
  COMMENT = 'Optional Comment'


  //description Integration Object
  desc integration PBI_Integration;

//drop integration PBI_Integration
//drop integration PBI_Integration

CREATE DATABASE PowerBI;

CREATE SCHEMA PBI_Data;

CREATE TABLE PBI_Dataset (
    Year INT,
    Location STRING,
    Area INT,
    Rainfall FLOAT,
    Temperature FLOAT,
    Soil_type STRING,
    Irrigation STRING,
    yields INT,
    Humidity FLOAT,
    Crops STRING,
    price INT,
    Season STRING
);

SELECT * FROM PBI_Dataset;

-- DROP DATABASE test;
CREATE STAGE PowerBI.PBI_Data.pbi_stage
URL = 's3://powerbiankit.project/'
STORAGE_INTEGRATION = PBI_Integration;

DESC INTEGRATION PBI_Integration;

CREATE OR REPLACE STAGE PowerBI.PBI_Data.pbi_stage
URL = 's3://powerbiankit.project/'
STORAGE_INTEGRATION = PBI_INTEGRATION;

LIST @PowerBI.PBI_Data.pbi_stage;
DROP STAGE IF EXISTS PowerBI.PBI_Data.pbi_stage;

SHOW INTEGRATIONS;
DESC STAGE PowerBI.PBI_Data.pbi_stage;
USE DATABASE PowerBI;
USE SCHEMA PBI_Data;

CREATE OR REPLACE STAGE pbi_stage
URL = 's3://powerbiankit.project/'
STORAGE_INTEGRATION = PBI_Integration;

SHOW STAGES;

DESC INTEGRATION PBI_INTEGRATION;

CREATE OR REPLACE STORAGE INTEGRATION PBI_INTEGRATION
TYPE = EXTERNAL_STAGE
STORAGE_PROVIDER = 'S3'
ENABLED = TRUE
STORAGE_AWS_ROLE_ARN = 'arn:aws:iam::559987920007:role/powerbi-role'
STORAGE_ALLOWED_LOCATIONS = ('s3://powerbiankit.project/')
COMMENT = 'Optional Comment';

COPY INTO PBI_Dataset
FROM @pbi_stage
FILE_FORMAT = (
    TYPE = CSV
    FIELD_DELIMITER = ','
    SKIP_HEADER = 1
)
ON_ERROR = 'CONTINUE';

LIST @pbi_stage;

DESC INTEGRATION PBI_INTEGRATION;
CREATE OR REPLACE STORAGE INTEGRATION PBI_INTEGRATION
TYPE = EXTERNAL_STAGE
STORAGE_PROVIDER = 'S3'
ENABLED = TRUE
STORAGE_AWS_ROLE_ARN = 'arn:aws:iam::559987920007:role/powerbi.role'
STORAGE_ALLOWED_LOCATIONS = ('s3://powerbiankit.project/')
COMMENT = 'PowerBI S3 Integration';

DESC INTEGRATION PBI_INTEGRATION;

LIST @pbi_stage;


create table agriculture as
select * from pbi_dataset;


select * from agriculture;


update agriculture
set rainfall = 1.1*rainfall;

update agriculture
set area = 0.9*area;

select * from agriculture;


//Year 2004 & 2009 - Y1
//Year 2010 & 2015 - Y2
//Year 2016 & 2019 - Y3

ALTER TABLE Agriculture
add Year_Group String;

select * from agriculture;

//1st update
update agriculture
set year_group = 'Y1'
where year >=2004 and year<=2009

//2nd update
update agriculture
set year_group = 'Y2'
where year >=2010 and year<=2015


//3rd Update
update agriculture
set year_group = 'Y3'
where year >=2016 and year<=2019


select * from agriculture;

//Rainfall_Groups
//Min 255 Max 4103

//rainfall 255 & 1200 - Low
//rainfall 1200 2800 - Medium
//Rainfall 2800 & 4103 - High

alter table agriculture
add rainfall_groups string;

select * from agriculture;

//1st Update
update agriculture
set rainfall_groups = 'Low'
where rainfall>=255 and rainfall<1200

//2nd update
update agriculture
set rainfall_groups = 'Medium'
where rainfall >=1200 and rainfall<2800

//3rd update
update agriculture
set rainfall_groups='High'
where rainfall >=2800

select * from agriculture;
