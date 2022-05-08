/*
     SKILL: 	SQL (Intermediate)
DIFFICULTY: 	Medium
 SUBDOMAIN: 	Basic Join
 CHALLENGE: 	Contest Leaderboard
*********************************************************************************
*/

SELECT hacker_id, name, SUM(total_score) as sum_score
FROM
(
    SELECT 
    Hackers.hacker_id,
    name,
    challenge_id,
    MAX(score) AS total_score
    FROM Hackers
    LEFT JOIN Submissions ON Hackers.hacker_id=Submissions.hacker_id
    GROUP BY Hackers.hacker_id, challenge_id, name
) AA
GROUP BY hacker_id, name
HAVING SUM(total_score)>0
ORDER BY SUM(total_score) DESC,hacker_id




