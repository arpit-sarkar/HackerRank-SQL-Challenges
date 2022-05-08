/*
     SKILL: 	SQL (Basic)
DIFFICULTY: 	Easy
 SUBDOMAIN: 	Aggregation
 CHALLENGE: 	Top Earners
*********************************************************************************
*/

SELECT
salary*months AS Earnings, COUNT(*)
FROM Employee
GROUP BY Earnings
ORDER BY Earnings DESC
LIMIT 1