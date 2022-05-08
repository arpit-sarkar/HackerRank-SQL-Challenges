/*
     SKILL: 	SQL (Intermediate)
DIFFICULTY: 	Medium
 SUBDOMAIN: 	Basic Join
 CHALLENGE: 	The Report
*********************************************************************************
*/

SELECT 
IIF (Grade>7, Name, NULL), Grade, Marks
FROM 
Students S,
Grades G 
WHERE S.Marks BETWEEN G.Min_Mark AND G.Max_Mark
ORDER BY Grade DESC, Name ASC
