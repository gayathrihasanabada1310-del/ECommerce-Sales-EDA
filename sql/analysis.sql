
-- E-Commerce Sales Analysis

-- 1. View all orders
SELECT *
FROM ecommerce_sales;

-- 2. Total sales
SELECT SUM(Total_Sales) AS Total_Sales
FROM ecommerce_sales;

-- 3. Total quantity sold
SELECT SUM(Quantity) AS Total_Quantity
FROM ecommerce_sales;

-- 4. Average order value
SELECT AVG(Total_Sales) AS Average_Order_Value
FROM ecommerce_sales;

-- 5. Sales by product
SELECT Product,
       SUM(Total_Sales) AS Total_Sales
FROM ecommerce_sales
GROUP BY Product
ORDER BY Total_Sales DESC;

-- 6. Sales by category
SELECT Category,
       SUM(Total_Sales) AS Total_Sales
FROM ecommerce_sales
GROUP BY Category
ORDER BY Total_Sales DESC;

-- 7. Sales by city
SELECT City,
       SUM(Total_Sales) AS Total_Sales
FROM ecommerce_sales
GROUP BY City
ORDER BY Total_Sales DESC;

-- 8. Quantity sold by product
SELECT Product,
       SUM(Quantity) AS Total_Quantity
FROM ecommerce_sales
GROUP BY Product
ORDER BY Total_Quantity DESC;
