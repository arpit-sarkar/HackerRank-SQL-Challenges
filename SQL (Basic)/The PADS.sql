/*
     SKILL: 	SQL (Basic)
DIFFICULTY: 	Medium
 SUBDOMAIN: 	Advanced Select
 CHALLENGE: 	The PADS
*********************************************************************************
*/

SELECT
CONCAT(Name,'(',LEFT(OCCUPATION,1),')')
FROM OCCUPATIONS
ORDER BY Name

SELECT
CONCAT('There are a total of ',COUNT(Occupation),' ',LOWER(Occupation),'s.')
FROM OCCUPATIONS
GROUP BY Occupation
ORDER BY COUNT(Occupation),Occupation