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
SELECT * FROM student;

ALTER TABLE student
ADD COLUMN age INT;

ALTER TABLE student
DROP COLUMN age;

ALTER TABLE student
ADD COLUMN age INT NOT NULL DEFAULT 19;

ALTER TABLE student
MODIFY COLUMN age VARCHAR(2);

ALTER TABLE student
CHANGE age stu_age INT;

INSERT INTO student
(rollno, name, marks, stu_age)
VALUES
(107, "Niloy", 99, 100);

ALTER TABLE student
DROP COLUMN stu_age;

SELECT * FROM student;

ALTER TABLE student
RENAME TO stu;

CREATE TABLE XS(
	
    name VARCHAR(50),
    city VARCHAR(50)

);

INSERT INTO XS
(name, city)
VALUES
("Niloy", "Dhaka"),
("Piloy", "Phaka");

SELECT * FROM  XS;
TRUNCATE TABLE XS;









