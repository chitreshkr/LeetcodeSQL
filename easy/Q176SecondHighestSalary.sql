SELECT Salary as SecondHighestSalary 
FROM Employee
WHERE Salary = (SELECT MAX(Salary) FROM Employee WHERE Salary < (SELECT MAX(Salary) FROM Employee))

UNION

(SELECT null)
LIMIT 1;