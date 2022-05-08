/*
     SKILL: 	SQL (Basic)
DIFFICULTY: 	Easy
 SUBDOMAIN: 	Aggregation
 CHALLENGE: 	Weather Observation Station 2
*********************************************************************************
*/

SELECT 
ROUND(SUM(LAT_N),2),
ROUND(SUM(LONG_W),2)
FROM STATION