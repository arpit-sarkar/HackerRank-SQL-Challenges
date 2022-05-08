/*
     SKILL: 	SQL (Basic)
DIFFICULTY: 	Easy
 SUBDOMAIN: 	Aggregation
 CHALLENGE: 	Weather Observation Station 17
*********************************************************************************
*/

SELECT ROUND(LONG_W,4)
FROM STATION 
WHERE LAT_N>38.7780
ORDER BY LAT_N ASC
LIMIT 1