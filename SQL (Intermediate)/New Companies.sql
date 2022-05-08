/*
     SKILL: 	SQL (Intermediate)
DIFFICULTY: 	Medium
 SUBDOMAIN: 	Advanced Select
 CHALLENGE: 	New Companies
*********************************************************************************
*/

SELECT      DISTINCT C.company_code,
            C.founder,    
            COUNT(DISTINCT L.lead_manager_code),
            COUNT(DISTINCT S.senior_manager_code),
            COUNT(DISTINCT M.manager_code),
            COUNT(DISTINCT E.employee_code)
FROM        Company C
LEFT JOIN   Lead_Manager L
            ON C.company_code = L.company_code
LEFT JOIN   Senior_Manager S
            ON S.lead_manager_code = L.lead_manager_code
LEFT JOIN   Manager M
            ON M.senior_manager_code = S.senior_manager_code
LEFT JOIN   Employee E
            ON E.manager_code = M.manager_code
GROUP BY    C.company_code, C.founder
ORDER BY    C.company_code ASC
