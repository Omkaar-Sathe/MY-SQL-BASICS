create database groupby_ex1;

use groupby_ex1;

create table orders(
order_id int,
customer_id int,
employee_id int,
order_date varchar (50),
shipper_id int
);


create table shippers(
shipper_id int,
shipper_name varchar(50)
);

select * from orders;
drop table orders;
select * from shippers;

insert into  orders (order_id,customer_id,employee_id,order_date,shipper_id ) values
(10248,90,5,'1996-07-04',3),
(10249,91,6,'1996-07-05',1),
(10250,94,4,'1996-07-08',2),
(10260,95,6,'1996-07-09',3);
insert into shippers(shipper_id,shipper_name) values
(1,'speedy_express'),
(2,'united_package'),
(3,'fedearl_shipping');

-- --  lists the number of orders sent by each shipper:

select shippers.shipper_name, count(order_id) as numberoforders from orders 
left join shippers on orders.shipper_id = shippers.shipper_id
group by shipper_name;





