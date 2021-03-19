# Write your MySQL query statement below


Select c.Name as Customers
from Customers c
Left Join Orders o
On c.Id = o.CustomerId
where o.CustomerId is Null;