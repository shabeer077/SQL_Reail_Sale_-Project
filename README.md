# SQL_Reail_Sale_-Project
Database Creation

CREATE DATABASE SQL_Project; → This creates a database named SQL_Project.
Table Query

SELECT * FROM Retail_Sales; → This retrieves all data from the Retail_Sales table.
Specific Queries

Sales on a Specific Date (2022-11-05)
sql
Copy
Edit
SELECT * FROM Retail_sales WHERE sale_date = '2022-11-05';
Filtering by Category and Quantity
sql
Copy
Edit
SELECT * FROM Retail_sales 
WHERE category = 'Clothing' AND quantiy >= 4 
AND sale_date BETWEEN '2022-11-01' AND '2022-11-30';
