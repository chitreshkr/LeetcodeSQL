# Write your MySQL query statement below
# https://leetcode.com/problems/not-boring-movies/
#We will select the columns and use the where clause to filter odd ids and description which is not boring
#Then we will order the rating column in descending order

Select id,movie , description, rating
from cinema
where mod(id,2) <> 0 AND description != 'Boring' 
group by id
order by rating DESC;
