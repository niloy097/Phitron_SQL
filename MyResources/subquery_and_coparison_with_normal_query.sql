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

UPDATE student
SET marks = 90
WHERE rollno = 105;

SELECT * FROM student;

-- subqueries
-- break down of sub queries - 1
SELECT AVG(marks)
FROM student;

SELECT name, marks
FROM student
WHERE marks > 87.6667;

-- actual one is-->
SELECT name, marks
FROM student
WHERE marks > (
	
    SELECT AVG(marks)
    FROM student
);
-- break down of sub queries - 2(1)
SELECT rollno, name
FROM student
WHERE rollno % 2 = 0;

-- break down of sub queries - 2(2)
SELECT rollno
FROM student
WHERE rollno % 2 = 0;

SELECT name, rollno
FROM student
WHERE rollno IN (102, 104, 106);

-- actual subquery - 2
SELECT name, rollno
FROM student
WHERE rollno IN (
	SELECT rollno
	FROM student
	WHERE rollno % 2 = 0
);

-- actual subquery with FROM - 3
SELECT MAX(marks)
FROM(
	SELECT * FROM student
    WHERE city = "Delhi"
) as temp;

-- without subquery - 3
SELECT MAX(marks)
FROM student
WHERE city = "Mumbai";
