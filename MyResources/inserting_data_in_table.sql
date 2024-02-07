CREATE DATABASE college;
USE college;

CREATE TABLE student(
	roll INT primary key,
    name varchar(50)
);

select * from student;

insert into student
(roll, name)
values
(101, "karan"),
(102, "arjun"),
(103, "ram");

insert into student
(roll, name)
values
(104, "tahsin"),
(105, "niloy");


