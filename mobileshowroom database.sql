create database mobileshowroom1;

use mobileshowroom1;

create table orders(
cutomer_id int,
name varchar(50),
model varchar(20),
emi_no varchar(20),
company varchar(20),
price varchar(20)
);

select * from orders;


insert into orders (cutomer_id,name,model,emi_no,company,price) values
(25,'omkaar','s22',25145,'samsung',25000),
(26,'om','a23',274745,'samsung',27000),
(27,'sakshi','17',2578945,'iq',28000),
(28,'patu','92',25369,'moto',15000),
(29,'shambho','32',21542,'mi',12000),
(30,'amey','xv2',2178512,'vivo',24000),
(31,'anu','ss',222545,'intel',55000);


update orders set   price='17000' where name='patu';

delete from orders where name='patu';

select min(price) as min_price from orders;

create database mobileshowroom;

use mobileshowroom;

create table orders(
cutomer_id int,
name varchar(50),
model varchar(20),
emi_no varchar(20),
company varchar(20),
price varchar(20)
);

select * from orders;


insert into orders (cutomer_id,name,model,emi_no,company,price) values
(25,'omkaar','s22',25145,'samsung',25000),
(26,'om','a23',274745,'samsung',27000),
(27,'sakshi','17',2578945,'iq',28000),
(28,'patu','92',25369,'moto',15000),
(29,'shambho','32',21542,'mi',12000),
(30,'amey','xv2',2178512,'vivo',24000),
(31,'anu','ss',222545,'intel',55000);


update orders set   price='17000' where name='patu';

delete from orders  where name ='patu';

select min(price) as min_price from orders;

select max(price) as max_price from orders;

select count(*) from orders;

select sum( price) from orders;

select avg(price) from orders;


select * from orders where  name  like 'a%' ;

select * from orders where  name  like '%r' ;

select * from orders where  name  like '_a%' ;

select * from orders where  name  like '__' ;

select * from orders where  name  like '%' ;