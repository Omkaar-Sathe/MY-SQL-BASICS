create database company;

use company;

create table Employee(
id int,
name varchar(255),
salary varchar(255),
mobilenumber varchar(255),
exprience varchar(255)
);
select *from Employee;

insert into Employee (id,name,salary,mobilenumber,exprience) values (1,'omkaar','25000','9370969122','3');
insert into Employee (id,name,salary,mobilenumber,exprience) values (2,'sagar','25000','9875624138','4');
insert into Employee (id,name,salary,mobilenumber,exprience) values (3,'om','30000','6985423725','5');
insert into Employee (id,name,salary,mobilenumber,exprience) values (4,'rada','22000','5874965826','4');
insert into Employee (id,name,salary,mobilenumber,exprience) values (5,'rupesh','27000','5974861256','3');

select min(salary) from Employee;
select max(salary) from Employee;


select*from employee where salary='25000';
select*from employee where mobilenumber='9370969122';
select*from employee where exprience='4';