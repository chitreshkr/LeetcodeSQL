# Write your MySQL query statement below



select p.product_name as 'PRODUCT_NAME',sum(o.unit) as 'UNIT'
from Orders o 
inner JOIN Products p 
ON o.product_id = p.product_id
where   MONTH(o.order_date) = 2 AND YEAR(o.order_date) = 2020
group by 1
HAVING UNIT >= 100;

