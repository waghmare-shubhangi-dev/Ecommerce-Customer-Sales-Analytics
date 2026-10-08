CREATE DATABASE IF NOT EXISTS ecommerce_analytics;
USE ecommerce_analytics;

CREATE TABLE online_retail (
    InvoiceNo VARCHAR(20),
    StockCode VARCHAR(30),
    Description VARCHAR(255),
    Quantity INT,
    InvoiceDate DATETIME,
    UnitPrice DECIMAL(12,4),
    CustomerID VARCHAR(20),
    Country VARCHAR(100),
    Revenue DECIMAL(14,2)
);

-- After importing cleaned_online_retail.csv:
-- 1. Total revenue
SELECT ROUND(SUM(Revenue),2) AS total_revenue FROM online_retail;

-- 2. Total orders
SELECT COUNT(DISTINCT InvoiceNo) AS total_orders FROM online_retail;

-- 3. Total customers
SELECT COUNT(DISTINCT CustomerID) AS total_customers FROM online_retail;

-- 4. Average Order Value
SELECT ROUND(SUM(Revenue)/COUNT(DISTINCT InvoiceNo),2) AS AOV FROM online_retail;

-- 5. Monthly revenue
SELECT DATE_FORMAT(InvoiceDate,'%Y-%m') AS month, ROUND(SUM(Revenue),2) AS revenue
FROM online_retail GROUP BY month ORDER BY month;

-- 6. Top products
SELECT StockCode, Description, ROUND(SUM(Revenue),2) AS revenue
FROM online_retail GROUP BY StockCode, Description
ORDER BY revenue DESC LIMIT 10;

-- 7. Top countries
SELECT Country, ROUND(SUM(Revenue),2) AS revenue
FROM online_retail GROUP BY Country ORDER BY revenue DESC LIMIT 10;

-- 8. Top customers
SELECT CustomerID, ROUND(SUM(Revenue),2) AS revenue
FROM online_retail GROUP BY CustomerID ORDER BY revenue DESC LIMIT 10;

-- 9. Orders by country
SELECT Country, COUNT(DISTINCT InvoiceNo) AS orders
FROM online_retail GROUP BY Country ORDER BY orders DESC;

-- 10. Repeat customers
SELECT COUNT(*) AS repeat_customers
FROM (
  SELECT CustomerID
  FROM online_retail
  GROUP BY CustomerID
  HAVING COUNT(DISTINCT InvoiceNo) > 1
) x;
