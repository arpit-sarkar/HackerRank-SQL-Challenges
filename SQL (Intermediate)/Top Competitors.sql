/*
     SKILL: 	SQL (Intermediate)
DIFFICULTY: 	Medium
 SUBDOMAIN: 	Basic Join
 CHALLENGE: 	Top Competitors
*********************************************************************************
*/

SELECT hacker_id, name
FROM
(
    SELECT      H.hacker_id, H.name, COUNT(*) AS ct
    FROM        Hackers H
    LEFT JOIN   Submissions S
    ON          S.hacker_id=H.hacker_id
    LEFT JOIN   Challenges C
    ON          S.challenge_id = C.challenge_id 
    LEFT JOIN   Difficulty D
    ON          D.difficulty_level = C.difficulty_level
    WHERE       S.score=D.score     
    GROUP BY    H.hacker_id, H.name
) temp
WHERE ct>1
ORDER BY ct DESC, hacker_id ASC