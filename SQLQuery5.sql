
--SQL Retail Sales Analysis
 CREATE DATABASE SQL_Project;

 select * from Retail_Sales;

-- 1. write SQL query to retrieve all columns for sales made on '2022-11-05'

SELECT * FROM Retail_sales 
WHERE sale_date = '2022-11-05'

-- 2. Write a SQL query to retreive all transactions where the category is 'clothing' and the quantity sold 
-- in more than 4 in the month of Nov-2022

SELECT * FROM Retail_sales
WHERE category = 'Clothing' AND quantiy >= 4
AND sale_date BETWEEN '2022-11-01' AND '2022-11-30';

-- 3. Wrire a SQL query to calculate the total sales for each category

SELECT category , SUM(total_sale) AS Total_sales
from Retail_sales
GROUP BY category

-- 4. write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.

SELECT AVG(age) AS Avg_Age 
FROM Retail_sales
WHERE category = 'Beauty'
Group by category


--5 .write a SQL query to find all transaction where the total sale is greater than  1000.

SELECT * FROM Retail_sales
WHERE total_sale > 1000

-- 6. write a SQL query to find the total number of transaction(transactions_id)made by each geneder in each category

SELECT category,gender,
COUNT(*) AS Total_transaction FROM Retail_sales
GROUP BY category,gender 
ORDER BY 1

-- 7.Write a SQL query to calculate the avg sale for each month . find out best selling month in each year

SELECT 
      YEAR(sale_date) AS year,
	  MONTH (sale_date) AS month,
	  AVG(total)sale)AS avg_sales
	  FROM Retail_sales
	  GROUP BY YEAR(sale_date) , MONTH (sale_date)c
	  ORDER BY YEAR, MONTH
--- I could not complete question number 7

-- 8. write a SQL query to find the top 5 customers based on the heights total sales.

SELECT TOP 5 customer_id , SUM(total_sale) AS Total_sales
FROM Retail_sales 
GROUP BY customer_id
ORDER BY Total_sales desc

--9.write a SQL query to find the number of unique customers who purchased items from each category


SELECT category , COUNT(DISTINCT customer_id) as total_customers
FROM Retail_sales
GROUP BY category

-- 10. write a SQL query to create each shift and numbers of orders (example morning <=12, afternoon Between 12&17, Evening >17)

SELECT 
 CASE 
 WHEN CAST(sale_time AS time) <='12:00;00' THEN 'MORNING'
 WHEN CAST(sale_time AS time) BETWEEN '12:01:00' AND '17:00:00' THEN 'Afternoon'
 ELSE 'Evening'
 END AS shift,
 COUNT(*) AS Total_orders
 FROM Retail_sales
 GROUP BY 
 CASE
 WHEN CAST(sale_time AS time) <='12:00;00' THEN 'MORNING'
 WHEN CAST(sale_time AS time) BETWEEN '12:01:00' AND '17:00:00' THEN 'Afternoon'
 ELSE 'Evening'
 END
 ORDER BY shift

 





