create database adityy;

use adityy;

create table employee(
    emp_id int,
    emp_name varchar(20),
    product_sale varchar(20),
    department varchar(20),
    price_p decimal(8,2)
);

select * from employee;
drop table employee;
insert into employee (emp_id, emp_name, product_sale, department, price_p) 
values
(101, 'Rahul', 'Mobile', 'Electronics', 15000.50),
(102, 'Sneha', 'TV', 'Electronics', 32000.00),
(103, 'Amit', 'Shirt', 'Clothing', 899.00),
(104, 'Priya', 'Shoes', 'Footwear', 1999.99),
(105, 'Rohan', 'Laptop', 'Electronics', 55000.00);

create table customer(
emp_id int,
cus_id int,
buy_product varchar(20),
price_p decimal(8,2)
);
select * from customer;
drop table customer;

insert into customer (emp_id, cus_id, buy_product, price_p)
values
(101, 1, 'Mobile', 15000.50),
(102, 2, 'TV', 32000.00),
(103, 3, 'Shirt', 899.00),
(104, 4, 'Shoes', 1999.99),
(105, 5, 'Laptop', 55000.00);


select* from customer where cus_id = 1;
select * from employee where department = 'Electronics';

select sum(price_p) as p_sum from employee;
select min(price_p) as p_min from employee;

select * from  employee order by price_p desc;
select * from employee order by price_p asc;

select *  from employee where emp_name like 'R%';

select avg(price_p) as pricr_pavg from customer;

select product_sale,count(*) as emmpoyee from
employee
group by product_sale;


select e.emp_id,c.cus_id,e.emp_name
from employee e 
inner join 
customer c on e.emp_id=c.emp_id;

select a.emp_id,b.emp_name
from employee a
join 
employee b on a.emp_id=b.emp_id;

select e.emp_id,c.cus_id,e.emp_name
from employee e 
cross join 
customer c on e.emp_id=c.emp_id;


select e.price_p,c.price_p,e.product_sale
from employee e 
left join 
customer c on c.emp_id=e.emp_id;



select e.price_p,c.price_p,e.product_sale
from employee e 
right join 
customer c on c.emp_id=e.emp_id;


select e.price_p,c.price_p,e.product_sale
from employee e 
left join 
customer c on c.emp_id=e.emp_id

union

select e.price_p,c.price_p,e.product_sale
from employee e 
right join 
customer c on c.emp_id=e.emp_id;


select price_p , sum(price_p) as employee_p from employee
group by price_p having sum(price_p) > 1 ;

select price_p , sum(price_p) as employee_p from employee
group by price_p limit 3;