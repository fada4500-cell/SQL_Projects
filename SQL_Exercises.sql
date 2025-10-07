USE KxP_store
--SELECT *
--FROM customers
-- WHERE customer_id = 2
--ORDER BY first_name
--select name,unit_price,unit_price *1.1 as new_price
--FROM products
--SELECT *
--FROM orders
--WHERE order_date<= '2018-01-01'
--SELECT *
--FROM order_items
--WHERE order_ID=6 AND unit_price * quantity > 30 
--SELECT *
--FROM products
--WHERE quantity_in_stock in (49,38,2)
--SELECT *
--FROM customers
--where birth_date between '1990.01.01' and '2000.01.01' 
--SELECT *
--FROM customers
--WHERE  address like '%trail%' or  address like '%avenue%' 
--WHERE phone like '%9'
--WHERE phone  not like '%9'
--SELECT *
--FROM orders
--where shipped_date is null
--SELECT * , quantity* unit_price as total_price
--FROM order_items
--where order_id = 2 
--order by total_price desc
--SELECT *
--FROM customers
--ORDER BY POINTS DESC
--OFFSET 0 ROWS FETCH NEXT 3 ROWS ONLY 
SELECT order_id ,oi.product_id,quantity,oi.unit_price
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id

       

