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



SELECT DEPT, COUNT(*) as dept_no FROM Employee GROUP BY DEPT HAVING COUNT(*) > 2 ;



SELECT COUNT(*) FROM (SELECT DISTINCT(EmpName) FROM EMPloyee);

SELECT * FROM Employee;


 -- My Stuff 


ALTER TABLE Employee
ADD Salary DECIMAL(10, 2); -- Assuming salary is stored as a decimal number

UPDATE Employee
SET Salary = ROUND(DBMS_RANDOM.VALUE(30000, 100000)) -- Generates a random salary between 30000 and 100000
WHERE EmpID <= 100; -- Assuming you want to update the first 100 records

COMMIT;


SELECT * FROM ADDRESS WHERE STATE LIKE 'State%';

UPDATE address SET city = 'Amaravati' where State = 'andhra pradesh';



SELECT A.STATE,E.GENDER,COUNT(E.EMPID) AS EMPCOUNT FROM EMPLOYEE E  JOIN ADDRESS A ON E.EMPID = A.EMPLOYEEID GROUP BY E.GENDER,A.STATE;


-- column using a CASE expression

SELECT emp.*,
       CASE
           WHEN Age >= 18 THEN 'Adult'
           ELSE 'Not Adult'
       END AS adult_status
FROM Employee emp;


SELECT empid,empname,employee.salary, DENSE_RANK() OVER (ORDER BY Salary DESC) AS SalaryRank
    FROM Employee;
    

SELECT *
FROM (
    SELECT empid,empname,employee.salary, DENSE_RANK() OVER (ORDER BY Salary DESC) AS SalaryRank
    FROM Employee
) ranked_employees
WHERE SalaryRank = 4;




