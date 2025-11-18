create schema collage

use collage //select database

create table teacher(
name varchar(50),
age int,
salary int,
department varchar(50)
)

//add new coloumn
alter table teacher add coloumn drgree varchar(50)

//change table name
alter table teacher change department dept varchar(50)

//drop
drop table teacher

//truncate
truncate table teacher

select * from teacher //see insert value in the table 

//insert value in table
insert into student (name , age , dept) 
values("aswin",21,"cse"),
("jagan",23,"eee");

SET SQL_SAFE_UPDATES = 0;

//update table
update  student
set age=25
where name="jhon"

//delete  the row 
delete from student where dept="com"
