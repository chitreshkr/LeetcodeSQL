# Write your MySQL query statement below

select activity_date as day,count(Distinct user_id) as active_users
from Activity
where DateDiff('2019-07-27',activity_date)+1 <= 30
group by activity_date;