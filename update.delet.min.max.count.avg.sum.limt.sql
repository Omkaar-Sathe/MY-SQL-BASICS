create database company4;

use company4;

create table employee(
emp_id int,
name varchar(50),
department varchar(50),
salary int,
experience int
);

select * from employee;

insert into employee (emp_id, name, department, salary, experience) values
(101, 'Alice', 'HR', 40000, 3),
(102, 'Bob', 'IT', 55000, 5),
(103, 'Charlie', 'Finance', 47000, 4),
(104, 'David', 'IT', 60000, 6),
(105, 'Eva', 'HR', 42000, 2),
(106, 'Frank', 'Marketing', 39000, 1),
(107, 'Grace', 'Finance', 51000, 3),
(108, 'Hannah', 'IT', 58000, 4),
(109, 'Ian', 'Marketing', 45000, 2),
(110, 'Jack', 'HR', 41000, 3);




#Update salary of employee
update employee set salary = 46000 where name ='eva';

#Delete an employee from IT department
delete from employee where department ='it';

#Minimum salary
select min(salary) as min_salary from employee;

#Maximum salary
select max(salary) as max_salary from employee;

#Count number of employees in HR
select count(*) as hr_count from employee where department ='hr';

# Average salary
select avg(salary) as avg_salary from employee;

#total salary expense
select sum(salary) as total_salary from employee;

#Show first 5 employees
select * from employee limit 5;