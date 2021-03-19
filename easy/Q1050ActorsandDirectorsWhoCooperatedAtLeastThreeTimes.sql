# Write your MySQL query statement below

#select the actor_id and director_id
#Develop a subquery where we will count the timestamp when they work together
# Group by actor_id,director_id and then filter the time having more than or equal to 3; 

Select actor_id ,director_id
from    (
        Select actor_id , director_id , count(timestamp) as time
        from ActorDirector
        group by actor_id,director_id
        having time >= 3) as ad;