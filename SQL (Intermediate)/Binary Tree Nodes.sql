/*
     SKILL: 	SQL (Intermediate)
DIFFICULTY: 	Medium
 SUBDOMAIN: 	Advanced Select
 CHALLENGE: 	Binary Tree Nodes
*********************************************************************************
*/

SELECT B.N,
CASE
WHEN B.P IS NULL THEN 'Root'
WHEN EXISTS (SELECT B2.P FROM BST B2 WHERE B2.P=B.N) THEN 'Inner'
WHEN NOT EXISTS (SELECT B2.P FROM BST B2 WHERE B2.P=B.N) THEN 'Leaf'
END
FROM BST B
ORDER BY B.N