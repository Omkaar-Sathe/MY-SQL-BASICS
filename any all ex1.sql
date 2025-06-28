CREATE DATABASE SchoolDB;
USE SchoolDB;

CREATE TABLE Students (
    StudentID INT,
    Name VARCHAR(50),
    Marks INT
);

INSERT INTO Students VALUES
(1, 'Anita', 85),
(2, 'Rahul', 70),
(3, 'Sneha', 90),
(4, 'Amit', 60),
(5, 'Neha', 75);

Select * from Students;

select * from students
where marks > any(
select marks from students where marks < 70);

select * from students
where marks > all (
select marks from students where marks <70
);



