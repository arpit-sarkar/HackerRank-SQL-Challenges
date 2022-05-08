/*
     SKILL: 	SQL (Basic)
DIFFICULTY: 	Easy
 SUBDOMAIN: 	Aggregation
 CHALLENGE: 	Weather Observation Station 14
*********************************************************************************
*/

SELECT ROUND(MAX(LAT_N),4)
FROM STATION
WHERE LAT_N<137.2345