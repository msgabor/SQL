create database if not exists student_db;
drop database student_db;

create schema student_db;
drop schema student_db;
---------------------------------------------
use student_db;
create table student(

SNUMBER int(5),
SNAME varchar(15),
MARKS int(3));

describe student;
---------------------------------------------
insert into student values (101,'KIRAN', 80);
insert into student (SNAME, SNO, MARKS) values ('RAM', 102, 60);
insert into student values (103,'GABI', 85);
insert into student values (104,'LACI', NULL);
commit; 
---------------------------------------------
alter table student add (grade varchar(2));
alter table student drop column grade;
alter table student modify column SNAME varchar(20);
alter table student rename column SNAME to STUNAME;

describe student;
---------------------------------------------
select * from student;
select SNAME from student as Tanuló_Neve;
---------------------------------------------
set autocommit = 0;
set sql_safe_updates =0;

delete from student;
commit;

select * from student;

rollback;
select * from student;
----------------------------------------------
rename table jobs to work; 
----------------------------------------------
create table ship(
shipname varchar(32));
insert into ship values ('regal');
---------------------------------------------
select * from ship; 
---------------------------------------------
truncate table ship;
---------------------------------------------
select * from ship; 
drop table ship;
---------------------------------------------






