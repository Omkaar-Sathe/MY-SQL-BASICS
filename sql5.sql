create database laybiry;

use laybiry;

create table users(
id int,
name varchar(100),
password varchar(100),
fee varchar(100),
book varchar(100),
tableno varchar(100)
);

select * from users;

insert into users(id,name,password,fee,book,tableno)values(1,'omkaar','123','500','camlin','38');
insert into users(id,name,password,fee,book,tableno)values(2,'om','122','500','data','18');
insert into users(id,name,password,fee,book,tableno)values(3,'sakshi','143','500','rich','4');
insert into users(id,name,password,fee,book,tableno)values(4,'amey','12345','500','classment','28');

select*from users where fee='500';