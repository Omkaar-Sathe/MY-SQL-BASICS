create database mobileshope;


use mobileshope;


create table customer(
id int,
name varchar(200),
mobile varchar(200),
price varchar(200),
payment varchar(200)
);

select*from customer;

insert into customer (id,name,mobile,price,payment) values (1,'omkaar','samsung','20000','19000');
insert into customer (id,name,mobile,price,payment) values (2,'saurabh','iphonr','60000','59000');
insert into customer (id,name,mobile,price,payment) values (1,'omk','ximo','30000','29000');
insert into customer (id,name,mobile,price,payment) values (2,'sagar','vivo','60000','59000');

select*from customer where price = '30000';