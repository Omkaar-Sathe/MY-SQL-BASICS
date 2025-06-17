create database carshowroom;

use carshowroom;

create table detail(
id int,
name varchar(50),
model varchar(50),
numberplat varchar(50),
price varchar(50)
);


select * from detail;

insert into detail (id,name,model,numberplat,price) values 
(1,'bmw','ev',4040,111000000),
(2,'suzuki','ex',5540,15000),
(3,'wento','mmm',1111,1100000),
(4,'safari','700',0001,100200),
(5,'maruti','800',4000,10000),
(6,'fourtuner','hybrid',1111,1050000);

update detail set  model = 'mxx' where name='wento';

delete from detail where id='4';

select min(price) as min_price from detail;

select max(price) as max_price from detail;

select count(*) from detail;

select avg(price) from detail;

select sum(price) from detail;

select * from detail limit 2;


