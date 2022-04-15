/*
     SKILL: 	SQL (Basic)
DIFFICULTY: 	Easy
 SUBDOMAIN: 	Basic Select
 CHALLENGE: 	Weather Observation Station 8
*********************************************************************************
*/

SELECT DISTINCT CITY
FROM STATION
WHERE 
(CITY LIKE 'A%' OR CITY LIKE 'E%' OR CITY LIKE 'I%' OR CITY LIKE 'O%' OR CITY LIKE 'U%')
AND 
(CITY LIKE '%A' OR CITY LIKE '%E' OR CITY LIKE '%I' OR CITY LIKE '%O' OR CITY LIKE '%U')