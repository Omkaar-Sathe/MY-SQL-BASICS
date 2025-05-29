create database between_example2;

use between_example2;

create table products(
product int,
productname varchar(100),
category varchar(50),
price decimal(8,2),
stock int
);

select * from products;


insert into products(product,productname,category,price,stock)values
(1, 'Laptop', 'Electronics', 999.99, 25),
(2, 'Headphones', 'Electronics', 199.99, 100),
(3, 'Office Chair', 'Furniture', 149.99, 40),
(4, 'Desk Lamp', 'Furniture', 39.99, 70),
(5, 'Notebook', 'Stationery', 3.49, 500),
(6, 'Pen Pack', 'Stationery', 5.99, 300);

select productname as name, category as type from products where category
in('electronics','furniture');

select productname as name,price,stock from products where price
between 100 and 1000;

select productname as name , category as type ,price from products
where category in ('stationery','furniture') and price between
3 and 150;


