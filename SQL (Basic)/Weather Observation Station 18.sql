/*
     SKILL: 	SQL (Basic)
DIFFICULTY: 	Medium
 SUBDOMAIN: 	Aggregation
 CHALLENGE: 	Weather Observation Station 18
*********************************************************************************
*/

SELECT
ROUND(ABS(MIN(LAT_N)-MAX(LAT_N)) + ABS(MIN(LONG_W)-MAX(LONG_W)),4)
FROM STATION