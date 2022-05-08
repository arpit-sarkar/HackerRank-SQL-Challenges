/*
     SKILL: 	SQL (Advanced)
DIFFICULTY: 	Medium
 SUBDOMAIN: 	Alternative Queries
 CHALLENGE: 	Draw The Triangle 2
*********************************************************************************
*/

DECLARE @var int
SET @var=1
WHILE @var<21
BEGIN
    PRINT replicate('* ',@var)
    SET @var=@var+1
END    



