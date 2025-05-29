create database e_commers3;

use e_commers3;



-- Create Customers table (no primary key or auto_increment)
CREATE TABLE Customers (
    customer_id INT,
    name VARCHAR(100),
    city VARCHAR(50)
);

-- Create Orders table (no primary key or auto_increment)
CREATE TABLE Orders (
    order_id INT,
    customer_id INT,
    order_amount DECIMAL(10, 2),
    order_date DATE
);

-- Insert sample data into Customers
INSERT INTO Customers (customer_id, name, city) VALUES
(1, 'Alice', 'New York'),
(2, 'Bob', 'Los Angeles'),
(3, 'Charlie', 'Chicago'),
(4, 'David', 'Houston'),
(5, 'Eve', 'Phoenix');

-- Insert sample data into Orders
INSERT INTO Orders (order_id, customer_id, order_amount, order_date) VALUES
(101, 1, 250.50, '2024-12-01'),
(102, 1, 99.99, '2024-12-15'),
(103, 2, 500.00, '2024-11-20'),
(104, 3, 150.75, '2024-10-05'),
(105, 4, 300.40, '2024-11-25'),
(106, 5, 100.00, '2024-12-10'),
(107, 2, 220.60, '2024-12-20');

-- 1. Customers from selected cities (IN)
SELECT * FROM Customers
WHERE city IN ('New York', 'Chicago');

-- 2. Orders between two dates (BETWEEN)
SELECT * FROM Orders
WHERE order_date BETWEEN '2024-11-01' AND '2024-12-31';

-- 3. Count orders per customer
SELECT customer_id, COUNT(*) AS order_count
FROM Orders
GROUP BY customer_id;

-- 4. Average order amount
SELECT AVG(order_amount) AS avg_order
FROM Orders;

-- 5. Total order amount (SUM)
SELECT SUM(order_amount) AS total_sales
FROM Orders;

-- 6. Minimum and maximum order amount
SELECT MIN(order_amount) AS min_order, MAX(order_amount) AS max_order
FROM Orders;

-- 7. Top 3 highest orders (LIMIT)
SELECT * FROM Orders
ORDER BY order_amount DESC
LIMIT 3;
