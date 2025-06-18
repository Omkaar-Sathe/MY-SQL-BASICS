create database join_example;

use join_example;

create table students(
student_id int,
name varchar(50),
class_id int
);

create table classes(
class_id int,
class_name varchar(50),
teacher_name varchar(50)
);

select * from students;

select * from classes;

insert into students (student_id,name,class_id) values
(1,'alice',101),
(2,'bob',102),
(3,'charlie',103),
(4,'david',null);

insert into classes (class_id,class_name,teacher_name) values
(101,'math','mr.singh'),
(102,'science','mrs.roy'),
(104,'history','ms.das');

--  1. inner join(Only matching rows)

select s.student_id, s.name, c.class_name, c.teacher_name
from students s
inner join classes c on s.class_id = c.class_id;

-- 2. left join (All students, even if no class match)

select s.student_id, s.name, c.class_name, c.teacher_name
from students s
left join classes c on s.class_id = c.class_id;

-- full outer join (not directly supported in mysql — use union)
select s.student_id, s.name, c.class_name, c.teacher_name
from students s
left join classes c on s.class_id = c.class_id

union
select s.student_id, s.name, c.class_name, c.teacher_name
from students s
right join classes c on s.class_id = c.class_id;



