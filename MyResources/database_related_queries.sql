CREATE DATABASE college;
CREATE DATABASE IF NOT EXISTS college;
USE college;

CREATE TABLE student(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT NOT NULL
);

DROP DATABASE IF EXISTS pd;

INSERT INTO student VALUES(1, 'Naeem Biswass', 23);
INSERT INTO student VALUES(2, 'Shakib', 24);
SELECT * FROM Student;

SHOW DATABASES;
SHOW TABLES;