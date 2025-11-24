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

//rename
alter table employee rename column joindate to Joindate

//drop
drop table teacher

    
select customer_name from customer //view customer name

update customer set mobile_num="8903686" where customer_name="jagan" //update mobile num one person

delete from customer where zip_code="58766"//delete row

select * from customer where city="pondy" //view pondy tables

select * from customer where customer_id>=2 //greater than equl

alter table customer drop column mobile_num //delete mobile num column

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

CREATE TABLE student (
    id INT AUTO_INCREMENT PRIMARY KEY, //auto set number
    name VARCHAR(100),
    age INT,
    city VARCHAR(100)
);

select sum(age) as totalage from student  //sum total

select max(age) as maxvalue from student //high value give

select min(age) as minvalue from student //low value give 

select avg(age) as avgvalue from student //give average value

select count(age) as totalage from student  //count
select count(name) from student where age="20"

select name,age from student order by age asc  //order 
select count(name),city from student group by city//group
select count(name),city from student group by city order by count(name) desc

select count(*),department from employee group by department //show dpet count and dept name

select avg(salary), department
from employee
group by department
order by department asc///use aggregate function and group by

select avg(salary), department//high salary find desc //low find asc
from employee
group by department
order by avg(salary)asc
limit 1

select
avg(salary),department
from employee
group by department
having avg(salary)<60000 // use having function 
