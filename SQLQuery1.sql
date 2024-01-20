create database sample1;
go

use sample1;
go

create table StudentPD
(
rollno int primary key,
sname nvarchar(20) not null,
mob_no bigint unique
);
go

select * from INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME='StudentPD';
go

exec sp_help 'StudentPD';
go

select * from StudentPD;
go

alter table StudentPD alter column sname nvarchar(25) not null;
go

alter table StudentPD drop column mob_no;
go

--alter table StudentPD rename column mob_no to mobilenumber;

--truncate table StudentPD;

--drop table StudentPD;



