create database xyz;
use xyz;
create table employee(
	id int primary key,
    name varchar(50),
    salary double
);

insert into employee
(id, name, salary)
values
(1, "Niloy", 100.23),
(2, "Ramanujun", 234.23),
(3, "Kaliya", 23.3);

select * from employee