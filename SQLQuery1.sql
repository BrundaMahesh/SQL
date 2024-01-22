create database sample1;

use sample1;

create table StudentPD
(
rollno int primary key,
sname nvarchar(20) not null,
mob_no bigint unique
);


select * from INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME='StudentPD';
go

exec sp_help 'StudentPD';
go

select * from StudentPD;
go

alter table StudentPD alter column sname nvarchar(25) not null;
go

--alter table StudentPD drop column mob_no;
--go

--alter table StudentPD rename column mob_no to mobilenumber;

--truncate table StudentPD;

--drop table StudentPD;

--drop database sample1;

insert into StudentPD values(101,'Anu',9878964768);
insert into StudentPD values(102,'Bheem',9833389765);
insert into StudentPD values(103,'Ram',9768673672);
insert into StudentPD (rollno,sname) values(104,'Arjun');

go

select * from StudentPD;
go



