create database ANDORandNOTOperators;

use ANDORandNOTOperators;

create table customer(
id int,
name varchar(250),
address varchar (250),
city varchar(250),
postcode varchar(250),
country varchar(250)
);


select * from customer;

insert into customer (id,name,address,city,postcode,country) values (1,'om','ap bidri','kolhapur','416208','india');
insert into customer (id,name,address,city,postcode,country) values (2,'omkaar','ap borawde','kolhapur','416308','india');
insert into customer (id,name,address,city,postcode,country) values (3,'patu','ap kagal','sangli','546208','india');
insert into customer (id,name,address,city,postcode,country) values (4,'sanket','ap kagl','kolhapur','636208','india');
insert into customer (id,name,address,city,postcode,country) values (5,'adi','ap ambap','bidh','556208','india');
insert into customer (id,name,address,city,postcode,country) values (6,'viren','ap kolhapur','kolhapur','446208','india');
insert into customer (id,name,address,city,postcode,country) values (7,'saurbh','ap mudal','satara','466208','india');
insert into customer (id,name,address,city,postcode,country) values (8,'sakshi','ap pune','pune','666208','india');
insert into customer (id,name,address,city,postcode,country) values (9,'anu','ap latur','dharshiv','466208','india');
insert into customer (id,name,address,city,postcode,country) values (10,'amey','ap pandharpur','bidh','123456','india');

select * from customer where city='kolhapur' AND city='pune';

select * from customer where country='india';

select * from customer where not city='kolhapur';