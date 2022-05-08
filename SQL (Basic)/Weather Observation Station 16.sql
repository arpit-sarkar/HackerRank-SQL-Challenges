/*
     SKILL: 	SQL (Basic)
DIFFICULTY: 	Easy
 SUBDOMAIN: 	Aggregation
 CHALLENGE: 	Weather Observation Station 16
*********************************************************************************
*/

SELECT ROUND(MIN(LAT_N),4)
FROM STATION
WHERE LAT_N>38.7780