# Write your MySQL query statement below

Select distinct s.product_id, p.product_name
from Product p
Right Join Sales s
On p.product_id = s.product_id
where s.sale_date between '2019-01-01' AND '2019-03-31'
AND s.product_id  NOT IN
     ( Select  s.product_id
      from Product p
      Right Join Sales s
      On p.product_id = s.product_id
      where s.sale_date not between '2019-01-01' AND '2019-03-31');