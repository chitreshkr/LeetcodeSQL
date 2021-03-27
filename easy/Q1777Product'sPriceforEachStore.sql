Method 1:
Select 
    product_id,
    SUM(Case when store = 'store1' then price end) as store1,
    SUM(Case when store = 'store2' then price end) as store2,
    SUM(Case when store = 'store3' then price end) as store3
    from 
    Products
    group by product_id;
	

Method 2:
SELECT 
    product_id,
    SUM(IF(store = 'store1', price,Null)) AS store1,
    SUM(IF(store = 'store2', price, Null)) AS store2,
    SUM(IF(store = 'store3', price, Null)) AS store3
FROM
    Products
GROUP BY product_id;