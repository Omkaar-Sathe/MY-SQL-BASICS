create database bus_booking;

use bus_booking;

create table Tichet( 
id int,
name varchar(250),
age varchar(250),
gender varchar(250),
route varchar(250),
price varchar(250)
);

select *from  Tichet;

insert into Tichet (id,name,age,gender,route,price) values (1,'omkaar','22','male','pune','300');
insert into Tichet (id,name,age,gender,route,price) values (2,'sagar','23','male','pune','400');
insert into Tichet (id,name,age,gender,route,price) values (3,'radha','20','female','mumbai','800');
insert into Tichet (id,name,age,gender,route,price) values (4,'sakshi','21','female','pune','300');
insert into Tichet (id,name,age,gender,route,price) values (5,'digambhar','26','male','latur','1100');




select max(price) from tichet ;
select min(price) from tichet ;


select * from tichet where gender = 'male';

select * from tichet where gender = 'female';

select *from tichet where id =3;

select *from tichet where route = 'pune';

select *from tichet where price ='300';