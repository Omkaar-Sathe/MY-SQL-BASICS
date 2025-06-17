create database ecommerce4;

use ecommerce4;

create table customers (
customer_id int,
name varchar(50),
city varchar(50)
);

create table orders(
order_id int,
customer_id int,
product varchar(50),
quantity int,
price decimal(10,2)
);

-- Insert into customers
insert into customers values
(101, 'Alice', 'Mumbai'),
(102, 'Bob', 'Delhi'),
(103, 'Charlie', 'Mumbai'),
(104, 'David', 'Bangalore'),
(105, 'Eva', 'Hyderabad'),
(106, 'Fiona', 'Pune'),
(107, 'George', 'Delhi'),
(108, 'Helen', 'Kolkata'),
(109, 'Ivy', 'Mumbai'),
(110, 'Jack', 'Chennai');

-- Insert into orders
insert into orders values
(201, 101, 'Laptop', 1, 50000.00),
(202, 102, 'Mouse', 2, 500.00),
(203, 103, 'Keyboard', 1, 1500.00),
(204, 101, 'Monitor', 2, 12000.00),
(205, 104, 'Laptop', 1, 55000.00),
(206, 105, 'Tablet', 3, 15000.00),
(207, 106, 'Mouse', 5, 300.00),
(208, 107, 'Keyboard', 2, 1600.00),
(209, 108, 'Monitor', 1, 13000.00),
(210, 109, 'Laptop', 1, 60000.00);

select * from customers;

select * from orders;

-- Update Quantity
update orders set quantity = 4 where order_id =207;

-- Delete an Order
delete from orders where order_id='207';

-- Count Number of Orders
select count(*) as total_orders from orders;

-- Sum of Prices
select sum(price) as total_sales from orders;

--  Average Price
select avg(price) as avg_price from orders;

-- Maximum Price
select max(price) as max_price from orders;

-- minumum Price
select min(price) as min_price from orders;

-- Orders from Mumbai Customers
select * from customers where city='mumbai';

-- Customers whose names start with 'A'
select * from customers where name like 'a%';

-- Customers whose names end with 'a'
select * from customers
where  name like '%a';

-- Customers whose names contain 'vi'
select * from customers where name like '%vi';

-- Customers whose names have 5 letters only
select * from customers where name like '_____';

-- Products that start with 'L' and end with 'p'
select * from customers where name like 'l%p';

-- Products containing the letter 'o' in the middle
select * from orders where product like '_o%';

--  Customers from cities starting with 'M' or 'D'
select * from customers where city like 'm%' or city like 'd%';
