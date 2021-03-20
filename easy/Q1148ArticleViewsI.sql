# Write your MySQL query statement below

Select Distinct viewer_id as id
from (
    Select article_id, author_id,viewer_id 
    from Views
    where author_id = viewer_id ) as t
order by id;