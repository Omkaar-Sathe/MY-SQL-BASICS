create database bankDB;

use bankDB;

create table acounts(
name varchar(100),
addhr_id int,
pan_id int,
acount_id int,
acount_name varchar(100),
ifsc_code int,
password varchar(100)
);
select * from acounts;

insert into acounts(name,addhr_id,pan_id,acount_id,acount_name,ifsc_code,password)values
('om','2222','2244','1','saving','0044','o12345674'),
('nikhil','4455','5544','2','saving','0055','n156531'),
('atual','3323','3788','3','saving','0055','atual555'),
('yash','3423','7788','4','saving','0088','y555'),
('aryan','3333','3337','5','current','0045','mmml555'),
('kiran','3040','7878','6','saving','0055','12345674');


-- total acount name saving:
select * from acounts where acount_name='saving';

-- total acount name current:
select * from acounts where acount_name='current';

--  where addhr id no 2222:
select * from acounts where addhr_id='2222';

-- where ifsc code 0055 :
select * from acounts where ifsc_code='0055';

-- total count of the table use count function:
select count(*) as count_total from acounts;


