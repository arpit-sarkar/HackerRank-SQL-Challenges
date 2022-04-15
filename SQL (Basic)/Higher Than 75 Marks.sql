/*
     SKILL: 	SQL (Basic)
DIFFICULTY: 	Easy
 SUBDOMAIN: 	Basic Select
 CHALLENGE: 	Higher Than 75 Marks
*********************************************************************************
*/

SELECT Name
FROM STUDENTS
WHERE Marks>75
ORDER BY RIGHT(Name,3), ID 