USE SQLRetailSalesAnalysis;

-- Display Data
SELECT * FROM [Retail_Sales_Analysis_utf ];

-- Display top 10 rows.
SELECT Top 10 * FROM [Retail_Sales_Analysis_utf ];

-- Display total number of rows in the table.
SELECT COUNT(*) FROM [Retail_Sales_Analysis_utf ];

-- DATA CLEANING
-- Check if the row has NULL Values.
SELECT * FROM [Retail_Sales_Analysis_utf ] WHERE transactions_id is NULL OR sale_date is NULL OR sale_time is NULL OR gender is NULL OR category is NULL OR quantiy is NULL OR cogs is NULL OR total_sale is NULL;

--	Delete NULL values.
DELETE FROM [Retail_Sales_Analysis_utf ] WHERE transactions_id is NULL OR sale_date is NULL OR sale_time is NULL OR gender is NULL OR category is NULL OR quantiy is NULL OR cogs is NULL OR total_sale is NULL;

-- DATA EXPLORATION
-- How many sales we have?
SELECT COUNT(*) as total_sale FROM [Retail_Sales_Analysis_utf ];

-- How many unique customers we have?
SELECT COUNT(DISTINCT customer_id) as total_sale FROM [Retail_Sales_Analysis_utf ];

-- How many categories we have?
SELECT COUNT(DISTINCT category) as total_sale FROM [Retail_Sales_Analysis_utf ];

-- DATA ANALLYSIS & BUSINESS KEY PROBLEMS
-- Retrieve all columns for sales made on '2022-11-05'.

SELECT * FROM [Retail_Sales_Analysis_utf ] WHERE sale_date = '2022-11-05';

-- Retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 4 in the month of Nov-2022.
SELECT * from [Retail_Sales_Analysis_utf ] WHERE category = 'Clothing' AND FORMAT(sale_date, 'yyyy-MM') = '2022-11' AND quantiy >= 4;

-- Calculate the total Sales for each category.
SELECT category, SUM(total_sale) AS net_sale, COUNT(*) AS total_orders FROM [Retail_Sales_Analysis_utf ] GROUP BY category;

-- Find the average age of customers who purchased items from the 'Beauty' category.
SELECT category, AVG(age) AS avg_age FROM [Retail_Sales_Analysis_utf ] WHERE category = 'Beauty' GROUP BY category;

-- Find all transactions where the total_sale is greater than 1500.
SELECT * from [Retail_Sales_Analysis_utf ] WHERE total_sale > 1500;

-- Find the total number of transactions made by each gender in each category.
SELECT category, gender, COUNT(*) AS total_transactions FROM [Retail_Sales_Analysis_utf ] GROUP BY category, gender ORDER BY total_transactions DESC;

-- Calculate the average sale for each month. Find out best selling month in each year.
SELECT Year, Month, AvgSaLes FROM (SELECT year(sale_date) AS Year, month(sale_date) AS Month, AVG(total_sale) AS AvgSaLes, RANK() OVER(partition by year(sale_date) ORDER BY AVG(total_sale) DESC) AS rank FROM [Retail_Sales_Analysis_utf ] GROUP BY year(sale_date), month(sale_date)) AS T1 WHERE rank = 1;

-- Find the top 5 customers based on the highest total sales.
SELECT TOP 5 customer_id, SUM(total_sale) as TotalSales FROM [Retail_Sales_Analysis_utf ] GROUP BY customer_id ORDER BY SUM(total_sale) DESC;

-- Find the number of unique customers who purchased items from each category.
SELECT category, COUNT(DISTINCT customer_id) AS TotalCustomers FROM [Retail_Sales_Analysis_utf ] GROUP BY category;

-- Create each shift and numbers of orders (Example Morning <= 12, Afternoon Between 12 & 17, Evening > 17).
WITH hourly_sale AS (select *, DATEPART(HOUR, sale_time) AS Hour, CASE WHEN DATEPART(HOUR, sale_time) < 12 THEN 'Morning' WHEN DATEPART(HOUR, sale_time) BETWEEN 12 AND 17 THEN 'Afternoon' ELSE 'Evening' END AS shift FROM [Retail_Sales_Analysis_utf ]) SELECT shift, COUNT(*) AS TotalOrders FROM hourly_sale GROUP BY shift;

-- END OF PROJECT