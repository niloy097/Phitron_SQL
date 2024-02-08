create database coll;
use coll;

create table student(
	rollno int primary key,
    name varchar(50),
    marks int not null,
    grade varchar(1),
    city varchar(50)
);

insert into student
(rollno, name, marks, grade, city)
values
(101, "anil", 78, "C", "Pune"),
(102, "bhumika", 93, "A", "Mumbai"),
(103, "chetan", 85, "B", "Mumbai"),
(104, "dhruv", 96, "A", "Delhi"),
(105, "emanuel", 12, "F", "Delhi"),
(106, "farah", 82, "B", "Delhi");
-- select command
select name, marks from student; -- specific cols
select * from student; -- all col
select city from student; -- individul col
select distinct city from student; -- distinct values

-- where clause
select *
from student
where marks > 80;

select *
from student
where city = "Mumbai";

select *
from student
where marks > 80 and city = "Mumbai";

-- using operators in where
-- * artihmectic-->
select *
from student
where marks + 10 > 100;

-- * comparison-->
select *
from student
where marks = 93;

select *
from student
where marks > 90;

-- * Logical -->
select *
from student
where marks > 90 and city = "Mumbai";

select *
from student
where marks > 90 or city = "Mumbai";

-- >selects for a given range
select *
from student
where marks between 80 and 90; 

-- >matches any value in the list
select *
from student
where city in ("Mumbai", "Delhi", "Dhaka");

-- >to negate the condition
select *
from student
where city not in ("Delhi", "Mumbai");

-- LIMIT Clause
select *
from student
limit 3;

select *
from student
where marks > 75
limit 3;


-- Order Clause
select *
from student
order by city asc;

select * 
from student
order by marks desc
limit 3;




