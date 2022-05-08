/*
     SKILL: 	SQL (Basic)
DIFFICULTY: 	Easy
 SUBDOMAIN: 	Aggregation
 CHALLENGE: 	Weather Observation Station 15
*********************************************************************************
*/

SELECT ROUND(LONG_W,4)
FROM STATION
WHERE LAT_N<137.2345
ORDER BY LAT_N DESC
LIMIT 1