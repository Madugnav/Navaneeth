
{{ config(materialized='table') }}
select distinct
CONTINENT,
COUNTRY,
ISLAND,
LOCATION,
PROVINCE,
SPECIAL_STATUS,
TIME_ZONE,
LATITUDE,
LONGITUDE,LOCATION_ISO_CODE
from "FIVETRAN_INTERVIEW_DB"."GOOGLE_SHEETS"."COVID_19_INDONESIA_NAVANEETHKUMAR_MADUGULA"