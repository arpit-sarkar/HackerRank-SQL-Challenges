/*
     SKILL: 	SQL (Intermediate)
DIFFICULTY: 	Easy
 SUBDOMAIN: 	Basic Select
 CHALLENGE: 	Weather Observation Station 5
*********************************************************************************
*/

SELECT TOP 1
CITY,LEN(CITY)
FROM STATION
ORDER BY LEN(CITY) ASC, CITY ASC

SELECT TOP 1
CITY,LEN(CITY)
FROM STATION
ORDER BY LEN(CITY) DESC, CITY ASC