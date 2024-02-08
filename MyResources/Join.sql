create database coll;
use coll;

CREATE TABLE student(
	
	id INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO student
VALUES
(101, "adam"),
(102, "bob"),
(103, "casey");

CREATE TABLE course(
	id INT PRIMARY KEY,
    course VARCHAR(50)
);

INSERT INTO course
(id, course)
VALUES
(102, "english"),
(105, "math"),
(103, "science"),
(107, "cse");

select * from student;
select * from course;

-- Inner Join sql

SELECT *
FROM student as s
INNER JOIN course as c
ON s.id = c.id;

-- Left Join sql

SELECT *
FROM student as s
LEFT JOIN course as c
ON s.id = c.id;

-- Right Join sql

SELECT *
FROM student as s
RIGHT JOIN course as c
ON s.id = c.id;

-- Full Join sql

SELECT * 
FROM student
LEFT JOIN course
ON student.id = course.id
UNION
SELECT *
FROM student
RIGHT JOIN course
ON student.id = course.id;

-- Left Exclusive Join sql
SELECT *
FROM student as a
LEFT JOIN course as b
ON a.id = b.id
WHERE b.id IS NULL;

-- Right Exclusive Join sql
SELECT * 
FROM student as a
RIGHT JOIN course as b
ON a.id = b.id
WHERE a.id IS NULL;

-- Full Exclusive Join sql
SELECT *
FROM student
LEFT JOIN course
ON student.id = course.id
WHERE course.id IS NULL
UNION
SELECT*
FROM student
RIGHT JOIN course
ON student.id = course.id
WHERE student.id IS NULL;

-- SELF JOIN SQL
CREATE TABLE employee(

	id INT PRIMARY KEY,
    name VARCHAR(50),
    manager_id INT

);

INSERT INTO employee(id, name, manager_id)
VALUES
(101, "adam", 103),
(102, "bob", 104),
(103, "casey", NULL),
(104, "donald", 103);

SELECT * FROM employee;

SELECT a.name as manager_name, b.name
FROM employee as a
JOIN employee as b
ON a.id = b.manager_id;



