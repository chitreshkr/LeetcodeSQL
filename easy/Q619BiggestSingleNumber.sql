# Write your MySQL query statement below

SELECT MAX(NUM) as num
FROM (
    Select num,count(num) as total
    from my_numbers
    group by num
    having total = 1) as c;