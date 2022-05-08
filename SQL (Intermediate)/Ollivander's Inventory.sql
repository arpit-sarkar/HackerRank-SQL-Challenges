/*
     SKILL: 	SQL (Intermediate)
DIFFICULTY: 	Medium
 SUBDOMAIN: 	Basic Join
 CHALLENGE: 	Ollivander's Inventory
*********************************************************************************
*/

SELECT WW.id, T1.Age, T1.mincoins, T1.Power
FROM
(
    SELECT P.Age, P.Code, W.Power ,MIN(W.coins_needed) AS mincoins
    FROM Wands W
    LEFT JOIN Wands_Property P
    ON W.Code = P.Code
    WHERE P.is_evil=0
    GROUP BY P.Age, P.Code, W.Power 
) T1
LEFT JOIN Wands WW
ON T1.Power = WW.Power AND T1.mincoins = WW.coins_needed AND T1.Code = WW.Code
ORDER BY T1.Power DESC, T1.Age DESC