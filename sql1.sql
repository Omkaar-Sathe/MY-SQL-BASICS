create database College;

use College;

create table Students(

id int,
name varchar(255),
rollnumber varchar(255),
department varchar(255)
);

insert into students(id,name,rollnumber,department) values (1,'omkaar','22','cse');

select * from students;

insert into students(id,name,rollnumber,department) values (2,'karan','23','cse');

insert into students(id,name,rollnumber,department) values (3,'parthmesh','24','cse');

insert into students(id,name,rollnumber,department) values (4,'sagar','25','cse');

insert into students(id,name,rollnumber,department) values (5,'vishu','26','cse');

select * from students;

select * from students  where department='cse';

select*from students where rollnumber='25';

select*from students where name='sagar';

select*from students where id=2;

