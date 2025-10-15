create database otraei;
use otraei;

create table customer(
id int primary key,
name varchar(20),
mobile_no int,
pay_mode varchar(10),
amount decimal(20,2),
countity int
);

select * from customer ;

alter table customer drop  column mobile_no;

alter table customer add column mobile_no bigint; 

insert into customer(id,name,mobile_no,pay_mode,amount,countity) values
(1, 'Ravi', '9235216162', 'Cash', 1200.50, 3),
(2, 'Sneha', '9123456780', 'UPI', 850.00, 2),
(3, 'Amit', '9988776655', 'Card', 2300.75, 5),
(4, 'Priya', '9012345678', 'Cash', 450.00, 1);

select * from customer where amount="850.00";

select * from customer where pay_mode="cash";

select avg(amount) as avg_amount from customer;

select min(countity) as min_cou from customer;

select max(countity) as max_co from customer;

select count(id) as count_id from customer;

select * from  customer limit 2;

delete from customer where amount="850.00"; 

update  customer set pay_mode="online" where id="4";