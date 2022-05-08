/*
     SKILL: 	SQL (Intermediate)
DIFFICULTY: 	Medium
 SUBDOMAIN: 	Advanced Join
 CHALLENGE: 	Placements
*********************************************************************************
*/

SELECT Name
FROM
STUDENTS S,
FRIENDS F,
PACKAGES P1,
PACKAGES P2
WHERE S.ID=F.ID AND S.ID=P1.ID
AND
F.Friend_ID = P2.ID
AND 
P1.Salary<P2.Salary
ORDER BY P2.Salary




