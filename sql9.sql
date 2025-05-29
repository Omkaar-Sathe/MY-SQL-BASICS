create database librarymanegment;

use librarymanegment;

create table Books(
id int,
title varchar (20),
author varchar(20),
genre varchar(20),
publish_year varchar(20),
available_copies varchar (15)
);
select * from Books;
  

insert into Books (id,title,author,genre,publish_year,available_copies) values (1,'sparsh','omkaar','collegelife','2005','15'),
(2,'ambika','anmoljagtap','personallife','2004','15'),
(3,'bazzar','sunil','market','2005','15'),
(4,'motivation','drjadhav','giveup','2005','20'),
(5,'cricket','sachin','play','2016','16'),
(6,'nature','rkpatil','tree','2003','15'),
(7,'rich','nilam','lifestayel','2005','15'),
(8,'life','drambetkar','goodhabits','2016','15');

select * from Books where  available_copies= '15';

select * from Books where  title='cricket';

select * from Books where  genre='tree';

select * from Books where  id='4' or id='6';

select * from Books where  not publish_year='2005';

select * from Books where   publish_year='2005' and title='ambika';
