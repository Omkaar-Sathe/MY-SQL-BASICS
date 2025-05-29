create database company_tshirt;

use company_tshirt;

create table tshirt(
id int,
name varchar(100),
colour varchar (100),
number varchar(100),
coler varchar(100),
brand varchar(100)
);

select * from tshirt;

insert into tshirt(id,name,colour,number,coler,brand)values
(1,'omkaar','white','4','simple','polo'),
(2,'radha','blue','1','simple','univers'),
(3,'sakshi','pink','7','simple','zudio'),
(4,'om','white','22','simple','use'),
(5,'ashitosh','yello','4','stand','turkey'),
(6,'sanket','red','4','stand','wrogan');

select *from   tshirt  where  id=1;
select *from   tshirt  where  name='radha';
select *from   tshirt  where  coler='stand'  and  brand='turkey';
select *from   tshirt  where  coler ='simple';
select *from   tshirt  where  name='omkaar' or name='sakshi';

