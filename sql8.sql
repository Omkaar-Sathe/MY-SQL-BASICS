create database airportDB;

use airportDB;

create table flights(
flight_code varchar(10),
destination varchar(100),
departure_time time,
gate varchar(6),
status varchar(20)
);

select * from flights;

insert into flights (flight_code,destination,departure_time,gate,status) values('AA101','New York','08:30:00','A1','On Time'),
('BA202','Londan','09:15:00','B3','Delayed'),
('CA303','Toronto','07:45:00','C2','On time'),
('DA404', 'Dubai', '10:00:00', 'D1', 'Cancelled'),
('EA505', 'Tokyo', '11:20:00', 'E4', 'On Time');

select * from flights order by departure_time DESC;

update flights set gate ='A2' where flight_code = 'AA101';

select * from flights order by departure_time ASC limit 3;

delete from flights where status = 'cancelled';