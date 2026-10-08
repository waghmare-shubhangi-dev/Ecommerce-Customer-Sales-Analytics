USE ecommerce_db;

SELECT COUNT(*) AS total_records
FROM cleaned_online_retail;

SELECT *
FROM cleaned_online_retail
LIMIT 10;

SELECT 
    SUM(Revenue) AS Total_Revenue
FROM cleaned_online_retail;

SELECT COUNT(DISTINCT InvoiceNo) AS Total_Orders
FROM cleaned_online_retail;

SELECT COUNT(DISTINCT CustomerID) AS Total_Customers
FROM cleaned_online_retail;

SELECT
    Description,
    SUM(Revenue) AS Total_Revenue
FROM cleaned_online_retail
GROUP BY Description
ORDER BY Total_Revenue DESC
LIMIT 10;

SELECT
    Description,
    SUM(Quantity) AS Total_Quantity
FROM cleaned_online_retail
GROUP BY Description
ORDER BY Total_Quantity DESC
LIMIT 10;

SELECT
    Country,
    SUM(Revenue) AS Total_Revenue
FROM cleaned_online_retail
GROUP BY Country
ORDER BY Total_Revenue DESC
LIMIT 10;

SELECT
    MONTHNAME(InvoiceDate) AS Month,
    SUM(Revenue) AS Total_Revenue
FROM cleaned_online_retail
GROUP BY MONTH(InvoiceDate), MONTHNAME(InvoiceDate)
ORDER BY MONTH(InvoiceDate);



