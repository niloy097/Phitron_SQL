create database xyz;
use xyz;
create table temp1(
	id int unique
);

insert into temp1 values(101);
insert into temp1 values(101); -- error statement

select * from temp1;

create table temp2(
	id int,
    name varchar(50),
    age int,
    city varchar(50),
    primary key(id, name)
);

create table emp(
	id int,
    salary int default 25000
);

insert into emp(id) values (101);
select * from emp;

create table city(
	id int primary key,
    city varchar(50),
    age int,
    constraint age_chekc check (age >= 18 and city = "Delhi")
);

insert into city(id, city, age) values (101, "Delhi", 90);
insert into city(id, city, age) values (101, "Pelhi", 90);
insert into city(id, city, age) values (101, "Delhi", 9);

select * from city;
