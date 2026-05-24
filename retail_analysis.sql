create database Retail_Project;
use Retail_Project;
select * from omnichannel_retail_cleaned;

## ✔ Remove duplicates
SELECT COUNT(*) - COUNT(DISTINCT OrderID)
AS Duplicate_Records
FROM omnichannel_retail_cleaned;

###✔ Check NULL values
SELECT *
FROM omnichannel_retail_cleaned
WHERE Product IS NULL
OR Region IS NULL;

### Total Revenue
SELECT SUM(TotalPrice) AS Total_Revenue
FROM omnichannel_retail_cleaned;

###Average Order Value
SELECT AVG(TotalPrice) AS Avg_Order_Value
FROM omnichannel_retail_cleaned;

### Top Products
SELECT Product,
SUM(Quantity) AS Units_Sold
FROM omnichannel_retail_cleaned
GROUP BY Product
ORDER BY Units_Sold DESC;

### Revenue by Region
SELECT Region,
SUM(TotalPrice) AS Revenue
FROM omnichannel_retail_cleaned
GROUP BY Region
ORDER BY Revenue DESC;

### Sales by Customer Type
SELECT CustomerType,
SUM(TotalPrice) AS Revenue
FROM omnichannel_retail_cleaned
GROUP BY CustomerType;

### Most Used Payment Method
SELECT PaymentMethod,
COUNT(*) AS Total_Orders
FROM omnichannel_retail_cleaned
GROUP BY PaymentMethod
ORDER BY Total_Orders DESC;

### Monthly Sales Trend
SELECT OrderDate
FROM omnichannel_retail_cleaned
LIMIT 10;

SELECT 
MONTH(STR_TO_DATE(OrderDate, '%d-%m-%Y')) AS Month,
SUM(TotalPrice) AS Revenue
FROM omnichannel_retail_cleaned
GROUP BY MONTH(STR_TO_DATE(OrderDate, '%d-%m-%Y'))
ORDER BY Month;

