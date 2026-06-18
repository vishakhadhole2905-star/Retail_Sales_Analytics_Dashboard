-- Total Sales
SELECT ROUND(SUM(Sales),2) AS Total_Sales
FROM retail_sales;

-- Total Profit
SELECT ROUND(SUM(Profit),2) AS Total_Profit
FROM retail_sales;

-- Sales by Region
SELECT Region,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM retail_sales
GROUP BY Region
ORDER BY Total_Sales DESC;

-- Top 10 Products
SELECT Product_Name,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM retail_sales
GROUP BY Product_Name
ORDER BY Total_Sales DESC
LIMIT 10;