/*
     SKILL: 	SQL (Intermediate)
DIFFICULTY: 	Medium
 SUBDOMAIN: 	Basic Join
 CHALLENGE: 	Challenges
*********************************************************************************
*/

WITH tbl_num_challenges AS (
SELECT
    h.hacker_id,
    h.name,
    COUNT(c.challenge_id) as num_challenges
FROM Hackers h
JOIN Challenges c ON c.hacker_id=h.hacker_id
GROUP BY h.hacker_id, h.name
),

tbl_count_challenges AS (
SELECT
    num_challenges,
    COUNT(num_challenges) AS count_challenges
    FROM tbl_num_challenges
    GROUP BY num_challenges
)

SELECT
    tnc.hacker_id,
    tnc.name,
    tnc.num_challenges
FROM tbl_num_challenges tnc
JOIN tbl_count_challenges tcc ON tcc.num_challenges = tnc.num_challenges
WHERE tcc.count_challenges = 1
OR
tnc.num_challenges = 
    (
        SELECT MAX(num_challenges)
        FROM tbl_num_challenges
    )
ORDER BY
        tnc.num_challenges DESC,
        tnc.hacker_id


