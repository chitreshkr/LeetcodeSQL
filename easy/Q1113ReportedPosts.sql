#SELECT	extra AS report_reason,  COUNT(DISTINCT post_id) AS report_count
#FROM	Actions
#WHERE DATEDIFF('2019-07-05', action_date) = 1 AND  action = 'Report' GROUP BY report_reason ;

# Write your MySQL query statement below
#I was doing mistake while calculating report_count and found out the mistake which I was doing by comparing my answer with the above one
#I have select remove one day from given date and compared the action_date where action type is report and grouped it by report_reason

select extra as report_reason,count(Distinct(post_id)) as report_count
from Actions
where Date(action_date) = Date('2019-07-05' - Interval 1 Day)  AND action = 'report'
group by extra;
