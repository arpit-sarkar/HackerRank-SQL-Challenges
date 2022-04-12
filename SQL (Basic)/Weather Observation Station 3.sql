/*
     SKILL: 	SQL (Basic)
DIFFICULTY: 	Easy
 SUBDOMAIN: 	Basic Select
 CHALLENGE: 	Weather Observation Station 3
*********************************************************************************
*/

SELECT DISTINCT CITY
FROM STATION
WHERE MOD(ID,2)=0