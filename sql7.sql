create database shopeDB;

use shopeDB;

create table product(
id int auto_increment primary key,
name varchar(100),
category varchar(50),
price decimal(10,2),
stock int
);

insert into product (name,category,price,stock) values ('laptop','electronics','999.99','10'),
('phone','electronics','599.99','25'),
('laptop','electronics','999.99','10'),
('table','furniture','149.99','5'),
('chair','furniture','89.99','20'),
('headphone','electronics','199.99','15');

select * from product order by price DESC;

update product set stock = 5 where name='chair';

select * from product order by price DESC limit 3;

delete from product where stock = 0;