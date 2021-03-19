# Write your MySQL query statement below
#Select project_id
#from(
#    Select project_id,max(total)
#        from (
#            Select project_id,count(employee_id) as total
#            from project
#            group by project_id) as p
#        ) as proj;


SELECT project_id
FROM project
GROUP BY project_id
HAVING COUNT(employee_id) =
(
    SELECT count(employee_id)
    FROM project
    GROUP BY project_id
    ORDER BY count(employee_id) desc
    LIMIT 1
)