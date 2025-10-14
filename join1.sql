create database companydb3;
use companydb3;

create table employee(
emp_id int primary key,
emp_name varchar(50),
dept_id int,
salary int
);

create table department(
dept_id int primary key,
deptname varchar(50),
location varchar(50)
);

insert into employee values
(1,'rahul',101,50000),
(2,'sneha',102,60000),
(3,'aman',103,55000),
(4,'priya',101,70000),
(5,'rohan',null,45000);

insert into department values
(101,'hr','mumbai'),
(102,'it','pune'),
(103,'finance','delhi'),
(104,'marketing','bangalore');

select * from employee;
select * from department;

#inner join 
select e.emp_name,d.deptname,d.location
from employee e
inner join department d on e.dept_id = d.dept_id;

#left join
select e.emp_name,d.deptname
from employee e
left join department d on e.dept_id=d.dept_id;

#right join
select e.emp_name,d.deptname
from employee e 
right join department d on e.dept_id = d.dept_id;

#full join(outer join)
select e.emp_name,d.deptname
from employee e
left join department d on e.dept_id = d.dept_id

union

select e.emp_name,d.deptname
from employee e
right join department d on e.dept_id=d.dept_id;

#self join 
#(colum add)
alter table employee add manger_id int;
#( data update)
update employee set manger_id = null where emp_id=1;
update employee set manger_id = 1 where emp_id=1;
update employee set manger_id = 1 where emp_id=1;
update employee set manger_id = 2 where emp_id=1;
update employee set manger_id = 3 where emp_id=1;

select e.emp_name as employee, m.emp_name as manger
from employee e 
left join employee m on e.manger_id = e.emp_id;

#cross join 
select e.emp_name, d.deptname
from employee e 
cross join department d;










