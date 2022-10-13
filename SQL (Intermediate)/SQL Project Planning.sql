/*
     SKILL: 	SQL (Intermediate)
DIFFICULTY: 	Medium
 SUBDOMAIN: 	Advanced Join
 CHALLENGE: 	SQL Project Planning
*********************************************************************************
*/

WITH CTE1 AS 
(
    SELECT Task_ID, Start_Date, End_Date,
    ROW_NUMBER() OVER (ORDER BY End_Date ASC) AS RN
    FROM Projects
),

CTE2 AS(
SELECT *, DATEADD(DAY, -1*RN, End_Date) AS Grouped_Date
FROM CTE1
)

SELECT MIN(Start_Date) AS 'startdate',
MAX(End_Date) AS 'enddate'
FROM CTE2
GROUP BY Grouped_Date
ORDER BY DATEDIFF(DAY, MIN(Start_Date), MAX(End_Date)), startdate