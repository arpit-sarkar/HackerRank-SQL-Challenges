/*
     SKILL: 	SQL (Basic)
DIFFICULTY: 	Easy
 SUBDOMAIN: 	Aggregation
 CHALLENGE: 	The Blunder
*********************************************************************************
*/

SELECT 
CEILING(AVG(Salary) - AVG(REPLACE(Salary,0,'')))
FROM EMPLOYEES 