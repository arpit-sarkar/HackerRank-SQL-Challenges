/*
     SKILL: 	SQL (Basic)
DIFFICULTY: 	Easy
 SUBDOMAIN: 	Advanced Select
 CHALLENGE: 	Type of Triangle
*********************************************************************************
*/

SELECT 
CASE
WHEN 
    (A+B)>C AND (B+C)>A AND (C+A)>B
THEN
    (
        CASE
        WHEN 
            A=B AND B=C 
        THEN 'Equilateral'
        WHEN 
            (A=B AND B<>C) OR (B=C AND A<>B) OR (A=C AND A<>B)
        THEN 'Isosceles'
        WHEN
            A<>B AND B<>C AND C<>A
        THEN 'Scalene'
        END
    )
ELSE
'Not A Triangle'
END
FROM TRIANGLES 