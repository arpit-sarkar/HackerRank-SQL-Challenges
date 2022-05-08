/*
     SKILL: 	SQL (Basic)
DIFFICULTY: 	Easy
 SUBDOMAIN: 	Aggregation
 CHALLENGE: 	Japan Population
*********************************************************************************
*/

SELECT SUM(POPULATION)
FROM CITY
WHERE COUNTRYCODE = 'JPN'
GROUP BY COUNTRYCODE