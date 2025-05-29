create database wildcard1;
use wildcard1;

create table sum_data1(
id int,
name varchar(50)
);

insert into sum_data1 (id,name) values (1,'alice'),
(2,'alicia'),
(3,'bob'),
(4,'charlie'),
(5,'aline');

select * from sum_data1;

select * from sum_data1 where name like '_____';

select * from sum_data1 where name like '_l%';

select * from sum_data1 where name like'__i%'; 


