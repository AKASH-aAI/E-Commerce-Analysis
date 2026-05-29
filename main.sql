
CREATE DATABASE ecommerce; 

USE ecommerce;

CREATE TABLE ecommerce_data (
    TransactionID VARCHAR(50),
    CustomerID VARCHAR(50),
    ProductID VARCHAR(50),
    ProductCategory VARCHAR(100),
    Quantity INT,
    Price DECIMAL(10,2),
    Discount DECIMAL(5,2),
    TransactionDate DATE,
    PaymentMethod VARCHAR(50),
    CustomerLocation VARCHAR(100),
    CustomerAge INT,
    CustomerGender VARCHAR(20),
    CustomerIncomeGroup VARCHAR(50),
    CustomerLoyaltyScore DECIMAL(5,2)
);


SELECT count(*) FROM ecommerce_data;

SELECT * FROM ecommerce_data 
WHERE Price IS NULL;


SELECT ProductCategory, COUNT(*) AS total_orders
FROM ecommerce_data
GROUP BY ProductCategory
ORDER BY total_orders DESC;



SELECT ProductCategory,
AVG(Price) AS avg_price
FROM ecommerce_data
GROUP BY ProductCategory;

SELECT PaymentMethod,
COUNT(*) AS usage_count
FROM ecommerce_data
GROUP BY PaymentMethod
ORDER BY usage_count DESC;

SELECT ProductID, COUNT(*) AS total_sales
FROM ecommerce_data
GROUP BY ProductID
ORDER BY total_sales DESC;

SELECT * FROM ecommerce_data; 
