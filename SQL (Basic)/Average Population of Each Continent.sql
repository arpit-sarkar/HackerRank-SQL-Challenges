/*
     SKILL: 	SQL (Basic)
DIFFICULTY: 	Easy
 SUBDOMAIN: 	Basic Join
 CHALLENGE: 	Average Population of Each Continent
*********************************************************************************
*/

SELECT COUNTRY.Continent, CEILING(AVG(CITY.POPULATION))
FROM COUNTRY
LEFT JOIN CITY
ON CITY.CountryCode = COUNTRY.Code
WHERE CITY.POPULATION IS NOT NULL
GROUP BY COUNTRY.Continent