# Write your MySQL query statement below

select w.name as WAREHOUSE_NAME,sum(w.units*p.width*p.length*p.height) as VOLUME
from Warehouse w
Join Products p
ON w.product_id = p.product_id
group by w.name;