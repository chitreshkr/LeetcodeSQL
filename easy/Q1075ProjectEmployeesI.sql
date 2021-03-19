# Write your MySQL query statement below

###Approach
#I have selected project_id and calculated the average_years by using round function and decimal points to 2 decimal and group it by project_id 
#THis will give us average employee years on each project_id upto 2 decimal places 


Select p.project_id , round(avg(e.experience_years),2) as average_years
from Project p
Join Employee e
ON p.employee_id = e.employee_id
group by p.project_id;