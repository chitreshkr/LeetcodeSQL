# Write your MySQL query statement below


select u.name as name,coalesce(sum(distance),0) as travelled_distance 
from Users u 
Left Join Rides r
ON u.id = r.user_id
group by u.name
order by travelled_distance DESC , name ASC;
