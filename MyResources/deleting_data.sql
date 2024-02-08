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

SET SQL_SAFE_UPDATES = 0;

SELECT * FROM student;

DELETE FROM student
WHERE marks < 33;






