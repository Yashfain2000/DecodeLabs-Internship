-- 1. Analyze the total number of orders.
-- This shows the overall order volume in the dataset.
SELECT COUNT(*) AS Total_Orders
FROM dataset;


-- 2. Analyze the total quantity of products sold.
-- This shows the total number of items sold.
SELECT SUM(Quantity) AS Total_Quantity_Sold
FROM dataset;


-- 3. Analyze the average product price.
-- This shows the average price of products.
SELECT AVG(UnitPrice) AS Average_Product_Price
FROM dataset;


-- 4. Analyze orders by product.
-- This shows which products have the highest number of orders.
SELECT Product, COUNT(*) AS Order_Count
FROM dataset
GROUP BY Product
ORDER BY Order_Count DESC;


-- 5. Analyze revenue by product.
-- This shows which products generate the most revenue.
SELECT Product, SUM(TotalPrice) AS Total_Revenue
FROM dataset
GROUP BY Product
ORDER BY Total_Revenue DESC;


-- 6. Analyze the average price by product.
-- This compares the average selling price of each product.
SELECT Product, AVG(UnitPrice) AS Average_Price
FROM dataset
GROUP BY Product
ORDER BY Average_Price DESC;


-- 7. Analyze orders by payment method.
-- This shows which payment method customers use most often.
SELECT PaymentMethod, COUNT(*) AS Order_Count
FROM dataset
GROUP BY PaymentMethod
ORDER BY Order_Count DESC;


-- 8. Analyze orders by order status.
-- This shows the number of orders in each status.
SELECT OrderStatus, COUNT(*) AS Order_Count
FROM dataset
GROUP BY OrderStatus
ORDER BY Order_Count DESC;


-- 9. Analyze the highest-priced products.
-- This ranks products from the highest price to the lowest price.
SELECT Product, UnitPrice
FROM dataset
ORDER BY UnitPrice DESC;


-- 10. Analyze delivered orders by product.
-- This shows which products have the most successfully delivered orders.
SELECT Product, COUNT(*) AS Delivered_Orders
FROM dataset
WHERE OrderStatus = 'Delivered'
GROUP BY Product
ORDER BY Delivered_Orders DESC;