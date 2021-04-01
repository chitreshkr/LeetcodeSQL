# Write your MySQL query statement below

WITH sess_min AS (
    select session_id,(duration/60) as duration 
    from Sessions
) 

select "[0-5>" as BIN, count(session_id) as TOTAL 
from sess_min
where duration between 0 and 5

union
(
select "[5-10>" as bin, count(session_id) as total 
from sess_min
where duration between 5 and 10
)
union
(
select "[10-15>" as bin, count(session_id) as total 
from sess_min
where duration between 10 and 15
)
union
(
select "15 or more" as bin, count(session_id) as total 
from sess_min
where duration >= 15
);