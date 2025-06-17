create database bikeshowroom;

use bikeshowroom;


create table showroom(
id int,
name varchar(50),
model varchar(50),
numberplat varchar(50),
price varchar(50)
);

select * from showroom;

insert into showroom (id,name,model,numberplat,price) values 
(1,'yamaha','mt',4040,222000),
(2,'splender','hero',5540,100000),
(3,'suzuki','100',1111,11000),
(4,'honda','fashion',4545,115000),
(5,'royal','bullet',4000,250000),
(6,'baja','pulser',1111,180000);



update showroom set  model = 'mt' where name='rx100';

delete from showroom  where name='honda';

select min(price) as min_price from showroom;

select max(price) as max_price from showroom;

select count(*) from showroom;

select avg(price) from showroom;

select sum(price) from showroom;

select * from showroom limit 4;