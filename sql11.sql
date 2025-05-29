create database cricket;

use cricket;

create table players(
id int,
name varchar(100),
jerrsy_no varchar(100),
team_name varchar(100),
country varchar(100),
city varchar(100)
);

select * from players;

insert into players (id,name,jerrsy_no,team_name,country, city) values (1,'omkaar','4','rcb','india','kolhapur'),
(2,'om','7','mi','pakistan','joda'),
(3,'saurbh','8','ddg','dubai','raibia'),
(4,'satish','11','rmc','rashiya','turki'),
(5,'ravi','5','ytr','india','satara'),
(6,'sagar','2','kkr','dubai','uae');

select * from players where country='india';

select * from players where  city = 'satara';

select * from players where  id = 3 ;

select * from players where  city='kolhapur' or city = 'uae';

select * from players where  not city ='joda';

select * from players where  country ='rashiya' and city ='turki';