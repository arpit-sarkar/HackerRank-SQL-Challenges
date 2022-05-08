/*
     SKILL: 	SQL (Intermediate)
DIFFICULTY: 	Medium
 SUBDOMAIN: 	Advanced Join
 CHALLENGE: 	Symmetric Pairs
*********************************************************************************
*/

SELECT X1,Y1
FROM
(
    SELECT F1.X AS X1, F1.Y AS Y1, F2.X AS X2, F2.Y AS Y2
    FROM Functions F1 JOIN Functions F2
    WHERE F1.X=F2.Y AND F2.X=F1.Y
    AND (F1.X<F1.Y OR F1.X=F1.Y)
) AA
GROUP BY X1,Y1
HAVING COUNT(X1)>1 OR X1<Y1
ORDER BY X1




