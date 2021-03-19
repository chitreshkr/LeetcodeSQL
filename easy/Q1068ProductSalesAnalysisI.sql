# Write your MySQL query statement below
#Table: Sales

#+-------------+-------+
#| Column Name | Type  |
#+-------------+-------+
#| sale_id     | int   |
#| product_id  | int   |
#| year        | int   |
#| quantity    | int   |
#| price       | int   |
#+-------------+-------+
#(sale_id, year) is the primary key of this table.
#product_id is a foreign key to Product table.
#Note that the price is per unit.
 

#Table: Product

#+--------------+---------+
#| Column Name  | Type    |
#+--------------+---------+
#| product_id   | int     |
#| product_name | varchar |
#+--------------+---------+
#product_id is the primary key of this table.
 

#Write an SQL query that reports the product_name, year, and price for each sale_id in the Sales table.

#Return the resulting table in any order.


#From sale_id = 1, we can conclude that Nokia was sold for 5000 in the year 2008.
#From sale_id = 2, we can conclude that Nokia was sold for 5000 in the year 2009.
#From sale_id = 7, we can conclude that Apple was sold for 9000 in the year 2011.


### Approach
# First we will select the items required to extract from derived table by using inner joins on product_id in sale and product table
# Then we will query the product_name , year and price from the derived table


###Solution

select  product_name,year,price
from (
        select s.sale_id,s.year,s.price,p.product_name from
        Sales s Join Product p
        ON s.product_id = p.product_id
        group by s.sale_id) as sale;