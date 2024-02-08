create database coll;
use coll;

CREATE TABLE dept(
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE teacher(
	
    id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES dept(id)
);






