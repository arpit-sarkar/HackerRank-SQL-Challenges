/*
     SKILL: 	SQL (Advanced)
DIFFICULTY: 	Medium
 SUBDOMAIN: 	Alternative Queries
 CHALLENGE: 	Draw The Triangle 1
*********************************************************************************
*/

DECLARE @var int
SET @var = 20
WHILE @var > 0                 
BEGIN                          
PRINT replicate('* ', @var)    
SET @var = @var - 1            
END 



