create database between_example;

use between_example;

create table Employees(
id int,
name varchar(50),
age int,
department varchar(50),
salary decimal(10,2)
);

select * from Employees;
insert into Employees (id,name,age,department,salary)values
(1, 'Alice', 28, 'HR', 50000),
(2, 'Bob', 35, 'IT', 70000),
(3, 'Charlie', 40, 'Finance', 65000),
(4, 'Diana', 30, 'IT', 72000),
(5, 'Evan', 45, 'HR', 48000);

select name as Employeesname,department as dept from Employees
where department in ('it','finance');

select name as Employeesname,department as dept,salary from Employees where 
department in ('hr','it') and salary between 48000 and 70000;

select name as Employeesname,age,salary from Employees where age
between 30 and 45;