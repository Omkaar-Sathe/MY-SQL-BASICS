create database joinspracticeDB;

use joinspracticeDB;

create table customers(
customer_id varchar(10),
customer_name varchar(100),
region varchar(50)
);

select* from customers;


create table products(
product_id varchar(10),
product_name varchar(100),
category varchar(50)
);

select * from products;

create table orders(
order_id varchar(10),
customer_id varchar(10),
product_id varchar(10),
order_date date,
quantity int,
sales decimal(10,2)
);

select * from orders;

insert into customers values
('c001','alice','east'),
('c002','bob','west'),
('c003','charlie','south');

insert into products values
('p001','chair','furniture'),
('p002','pen','stationery'),
('p003','laptop','technology');

insert into orders values
('o001','c001','p001','2023-01-10',2,400.00),
('o002','c001','p002','2023-01-11',5,25.00),
('o003','c002','p003','2023-02-15',1,1200.00),
('o004','c003','p004','2023-03-05',3,150.00);

-- INNER JOIN – Orders with valid Customer and Product
select o.order_id, c.customer_name, p.product_name, o.sales
from orders o
inner join customers c on o.customer_id = c.customer_id 
inner join products p on o.product_id = p.product_id;

-- LEFT JOIN – All orders, even if product/customer missing
select o. order_id, c.customer_name, p.product_name, o. sales
from orders o
left join customers c on o.customer_id = c.customer_id
left join products p on o.product_id = p.product_id;

-- RIGHT JOIN – All products, even if not ordered
select p.product_name, o.order_id, o.sales
from orders o
right join products p on
o.product_id = p.product_id;

select o.order_id, c.customer_name,p.product_name,o.sales
from orders o
left join customers c on o.customer_id=c.customer_id
left join products p on o.product_id=p.product_id
union
select o.order_id,c.customer_name,p.product_name,o.sales
from orders o
right join customers c on o.customer_id=c.customer_id
right join products p on o.product_id = p.product_id;

-- CROSS JOIN
select c.customer_name,p.product_name
from customers c
cross join products p;