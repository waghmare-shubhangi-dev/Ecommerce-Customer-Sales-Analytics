\# E-Commerce Sales Analytics Dashboard using MySQL, Python \& Power BI



\## 📌 Project Overview



An end-to-end E-Commerce Sales Analytics project using \*\*Python, MySQL, and Power BI\*\* to analyze sales performance, customer purchasing behavior, product performance, and market trends.



The project follows a complete data analytics workflow:



\*\*Raw Dataset → Python Data Cleaning \& Analysis → MySQL SQL Analysis → Power BI Dashboard → Business Insights\*\*



\---



\## 🎯 Objective



\- Analyze e-commerce sales performance

\- Understand customer purchasing behavior

\- Identify top-performing products

\- Analyze revenue by country and month

\- Create an interactive Power BI dashboard

\- Generate useful business insights



\---



\## 🛠️ Tools \& Technologies



\- \*\*Python\*\*

\- \*\*Pandas\*\*

\- \*\*NumPy\*\*

\- \*\*MySQL\*\*

\- \*\*SQL\*\*

\- \*\*Power BI\*\*

\- \*\*CSV\*\*

\- \*\*Jupyter Notebook / VS Code\*\*



\---



\## 📊 Dataset



\*\*Dataset:\*\* UCI Online Retail Dataset



The original dataset contains approximately \*\*541,909 raw records\*\*.



The cleaned dataset used in this project contains:



\- \*\*392,692 valid sales records\*\*

\- \*\*3,665 products\*\*

\- \*\*18,532 orders\*\*

\- \*\*4,338 customers\*\*



\---



\# 🔹 1. Python Data Cleaning \& Analysis



Python was used for data cleaning, preprocessing, transformation, and exploratory analysis.



\### Data Cleaning



The following steps were performed:



\- Removed duplicate records

\- Removed cancelled invoices

\- Removed non-positive quantities

\- Removed non-positive unit prices

\- Removed records with missing CustomerID / Description

\- Converted InvoiceDate into datetime format

\- Created a Revenue column



\### Revenue Calculation



\*\*Revenue = Quantity × UnitPrice\*\*



\### Python Analysis



Python was used for:



\- Revenue analysis

\- Monthly revenue analysis

\- Order analysis

\- Customer analysis

\- Product analysis

\- Basic exploratory data analysis



\### Final Python KPIs



\- \*\*Valid Sales Records:\*\* 392,692

\- \*\*Revenue:\*\* ₹8,887,208.89

\- \*\*Orders:\*\* 18,532

\- \*\*Customers:\*\* 4,338

\- \*\*Products:\*\* 3,665

\- \*\*Average Order Value:\*\* ₹479.56



\---



\# 🔹 2. MySQL SQL Analysis



The cleaned dataset was imported into \*\*MySQL\*\* for structured SQL analysis.



\### Database



`ecommerce\_db`



\### Main Table



`cleaned\_online\_retail`



\### SQL Analysis Performed



\- Total number of records

\- Total revenue

\- Total orders

\- Total customers

\- Top products by revenue

\- Top products by quantity

\- Revenue by country

\- Monthly revenue

\- Customer-level analysis

\- Aggregation using `GROUP BY`

\- Sorting using `ORDER BY`

\- Revenue analysis using `SUM()`

\- Customer and order counts using `COUNT()` and `COUNT(DISTINCT)`



\### Example SQL Queries



```sql

SELECT

&#x20;   SUM(Revenue) AS Total\_Revenue

FROM cleaned\_online\_retail;



SELECT

&#x20;   COUNT(DISTINCT InvoiceNo) AS Total\_Orders

FROM cleaned\_online\_retail;



SELECT

&#x20;   COUNT(DISTINCT CustomerID) AS Total\_Customers

FROM cleaned\_online\_retail;

```



\---



\# 🔹 3. Power BI Dashboard

The cleaned data was used to build an interactive \*\*Power BI Sales Analytics Dashboard\*\*.



\### Dashboard KPIs



\- Total Revenue

\- Total Orders

\- Total Customers

\- Average Order Value



\### Dashboard Visualizations



\- Monthly Revenue Trend

\- Top 10 Products by Revenue

\- Top 10 Products by Quantity

\- Top 10 Countries by Revenue



\### Dashboard Features



\- Interactive charts

\- KPI cards

\- Data labels

\- Revenue trend analysis

\- Product performance analysis

\- Country-wise revenue analysis



\---



\# 🔹 4. Business Insights



The analysis provided the following key business insights:



\- The \*\*United Kingdom\*\* is the leading market by revenue.

\- \*\*Paper Craft\*\* products have high sales volume based on quantity sold.

\- \*\*November\*\* shows the highest monthly revenue.

\- Product-level analysis helps identify high-performing products.

\- Country-wise analysis helps identify important markets.

\- Monthly revenue analysis helps understand sales trends and seasonality.

\- Customer analysis helps understand purchasing behavior.



These insights can help businesses improve product strategy, marketing decisions, inventory planning, and customer targeting.



\---



\# 🔹 5. Project Files



The project contains the following files:



\- `cleaned\_online\_retail.csv` — Cleaned dataset used for analysis

\- `analysis.py` — Python data cleaning and analysis script

\- `ecommerce\_sql\_analysis.sql` — MySQL SQL analysis queries

\- `analysis\_queries.sql` — Additional SQL queries

\- `top\_products.csv` — Top product analysis

\- `top\_customers.csv` — Top customer analysis

\- `monthly\_revenue.csv` — Monthly revenue analysis

\- `README.md` — Project documentation



\---



\## 🔄 Project Workflow



\*\*Dataset → Python → MySQL → Power BI → Business Insights\*\*



The cleaned e-commerce dataset was analyzed using Python, MySQL, and Power BI as part of an end-to-end analytics workflow.



\---



\# 🔹 6. Conclusion



This project demonstrates an end-to-end approach to \*\*E-Commerce Data Analytics\*\* using Python, MySQL, and Power BI.



The project covers:



\- Data cleaning and preprocessing

\- Exploratory Data Analysis

\- SQL-based business analysis

\- Customer and product analysis

\- Revenue trend analysis

\- Interactive Power BI dashboard

\- Business insight generation



The project helped develop practical skills in \*\*Python, SQL, Power BI, data cleaning, data visualization, and business analytics\*\*.



\---



\## 👩‍💻 Author



\*\*Shubhangi Waghmare\*\*



\*\*B.E. Computer Engineering\*\*



\*\*Savitribai Phule Pune University\*\*



\*\*Skills:\*\* Python | SQL | MySQL | Power BI | Pandas | NumPy | Data Analytics



\---

