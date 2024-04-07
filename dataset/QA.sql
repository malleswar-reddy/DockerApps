SELECT * FROM products;

DESC order_items;


SELECT c.customer_id, c.name, SUM(oi.quantity * p.list_price) AS total_purchase_price
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY c.customer_id, c.name;

--This query assumes:
--
--customers table has customer_id and name columns.
--orders table has customer_id as a foreign key.
--order_items table has order_id and product_id columns.
--products table has product_id and list_price columns.



SELECT DEPT, COUNT(*) as dept_no FROM Employee GROUP BY DEPT;

SELECT COUNT(*) FROM (SELECT DISTINCT(EmpName) FROM EMPloyee);
