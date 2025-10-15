create database shope;
use shope;

CREATE TABLE shopp (
emp_id INT PRIMARY KEY,
stock INT,
sale INT,
amount DECIMAL(20,2),
product VARCHAR(50),
sell_id int
);

CREATE TABLE customer(
cus_id INT PRIMARY KEY,
buy_product varchar(50),
payment DECIMAL(20,2),
sell_id int
);

select * from shopp;

select * from customer;

insert into shopp (emp_id,stock,sale,amount,product,sell_id) values
(1, 100, 20, 25000.50, 'Mobile', 101),
(2, 60, 15, 40000.00, 'Laptop', 102),
(3, 200, 35, 1500.75, 'Headphones', 103),
(4, 80, 10, 9000.00, 'Smartwatch', 104),
(5, 50, 8, 18000.00, 'Tablet', 105);

insert into customer(cus_id,buy_product,payment,sell_id)values
(201, 'Mobile', 25000.50, 101),
(202, 'Laptop', 40000.00, 102),
(203, 'Headphones', 1500.75, 103),
(204, 'Smartwatch', 9000.00, 104),
(205, 'Tablet', 18000.00, 105);

#inner join
select s.product,c.buy_product,c.payment
from shopp s
inner join customer c on s.sell_id=c.sell_id;

select s.emp_id,s.amount,c.cus_id,c.payment
from shopp s 
inner join customer c on s.sell_id=c.sell_id;


select s.emp_id,s.stock,s.product,c.buy_product
from shopp s
inner join customer c on s.sell_id=c.sell_id;

#left join
select s.stock,c.payment,s.emp_id,c.buy_product
from shopp s 
left join customer c on s.sell_id=c.sell_id;

#right join
select c.payment,c.buy_product,s.product,s.stock
from customer c
right join shopp s on c.sell_id=s.sell_id;

#full join (outer join)
select c.payment,s.stock
from customer c
left join shopp s on c.sell_id=s.sell_id

union

select c.payment,s.stock
from customer c
right join shopp s on c.sell_id=s.sell_id;

#colum add
alter table shopp add online_id int;

#update
update shopp set stock = null where emp_id=4;

update customer set payment =250000 where cus_id=203;

#self join 
select s.stock,c.buy_product
from shopp s
join customer c on s.sell_id=c.sell_id;

select * from shopp where stock ='60';
select * from customer where payment=250000;

#sorting (order by)
select * from shopp order by stock asc;
select * from customer order by payment desc;

# group by 
select stock,avg(stock) as avg from shopp group by stock;