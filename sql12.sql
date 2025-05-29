create database bank_db;

use bank_db;

create table customers( 
customer_id int,
name varchar(100),
email varchar(100),
phone varchar(15),
address varchar(255)
);
select * from customers;

create table accounts(
acount_id int,
customer_id int,
balance varchar(100)
);

select * from accounts;

create table transaction(
transaction_id int,
account_id int,
amount varchar(100)
);

select * from transaction;


insert into customers(customer_id, name ,email ,phone ,address) values (1,'omkaar','omsathe22@gmail.com','9370969122','ap_kolhapur');
insert into accounts(acount_id,customer_id,balance) values (2,1,'25000');
insert into transaction(transaction_id,account_id,amount) values (3,2,'20000');