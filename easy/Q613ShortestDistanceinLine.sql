# Write your MySQL query statement below

SELECT MIN(ABS(p2.x - p1.x)) AS shortest FROM point AS p1, point AS p2 WHERE p1.x <> p2.x;
