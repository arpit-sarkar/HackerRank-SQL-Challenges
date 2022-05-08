/*
     SKILL: 	SQL (Intermediate)
DIFFICULTY: 	Medium
 SUBDOMAIN: 	Aggregation
 CHALLENGE: 	Weather Observation Station 20
*********************************************************************************
*/

SELECT 
    ROUND(LAT_N,4) 
    FROM station AS S 
    WHERE (
        SELECT COUNT(LAT_N) 
        FROM station 
        WHERE Lat_N < S.LAT_N ) = (
                                   SELECT COUNT(Lat_N) 
                                   FROM station 
                                   WHERE Lat_N > S.LAT_N
                                  )
