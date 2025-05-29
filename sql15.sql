create database dcompany;

use dcompany;

create table home(
id int,
name varchar(50),
age varchar(50),
colour varchar(50),
mobile varchar(50)
);

select *from home;

insert into home(id,name,age,colour,mobile)values(1,'sachin','43','red','9370969122'),
(2,'bebytai','70','white','1254789246'),
(3,'madhuri','38','yello','4857195994'),
(4,'pradhny','13','pink','8547953294'),
(5,'patu','18','green','859764528');