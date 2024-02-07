CREATE DATABASE college;

USE college;

CREATE TABLE student(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT NOT NULL
);

INSERT INTO student VALUES(1, 'Naeem Biswass', 23);
INSERT INTO student VALUES(2, 'Shakib', 24);


SELECT * FROM Student;