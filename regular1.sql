create database schooldb01;

use schooldb01;

create table students(
studentid int primary key,
name varchar(50),
age int,
city varchar(50)
);

insert into students values
(1,'rahul',20,'mumbai'),
(2,'sneha',22,'pune'),
(3,'aman',21,'kolhapur');

select * from students;

#select
select name,city,studentid from students where age > 20;

#update
update students set city='nashik' where name='sneha';

#delete
delete from students where studentid=3;

#where, like , in
select * from students where city='pune';
select * from students where name like 'r%';
select * from students where name in('aman','sneha');

#sorting order by
select * from students order by age desc;
select * from students order by age asc;

#aggregate function 
select count(*) as count_total from students;
select sum(age) as sum_age from students;
select min(age) as min_age from students;
select avg(age) as avg_age from students;

#Group by
select age,min(age) as mim from students
group by age;











