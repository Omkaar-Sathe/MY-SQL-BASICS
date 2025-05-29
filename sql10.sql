create database hospital;

use hospital;

create table patients(
id int,
name varchar (100),
age varchar (100),
gender varchar (100),
diagnosis varchar (100),
admission_data varchar (100)
);

select * from patients;

insert into patients(name,age,gender,diagnosis,admission_data) values('om','8','male','Madhumeh','1.12.2005'),
('patu','5','male','Highblood','2.12.2005'),
('radha','9','male','Kshayrog','4.1.2004'),
('sakshi','7','male','Damā','1.12.2016'),
('gaytri','8','male','Alparaktata','5.12.2014');

select * from patients where age='8';

select * from patients where admission_data='5.12.2014';

select * from patients where age='9'and age='7';

select * from patients where age='9'or age='7';

select * from patients where not age ='9';

select * from patients where name='om'  or name='patu';

select * from patients where age='5'  and age='9';

