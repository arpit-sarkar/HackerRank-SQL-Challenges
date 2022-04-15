/*
     SKILL: 	SQL (Basic)
DIFFICULTY: 	Easy
 SUBDOMAIN: 	Basic Select
 CHALLENGE: 	Weather Observation Station 11
*********************************************************************************
*/

SELECT DISTINCT CITY
FROM STATION
WHERE 
(CITY NOT LIKE 'A%' AND CITY NOT LIKE 'E%' AND CITY NOT LIKE 'I%' AND CITY NOT LIKE 'O%' AND CITY NOT LIKE 'U%')
OR
(CITY NOT LIKE '%A' AND CITY NOT LIKE '%E' AND CITY NOT LIKE '%I' AND CITY NOT LIKE '%O' AND CITY NOT LIKE '%U')