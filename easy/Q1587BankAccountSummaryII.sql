# Write your MySQL query statement below

select u.name as NAME, sum(amount) as BALANCE 
from Users u 
Join Transactions t
ON u.account = t.account
group by u.account
having balance > 10000;

