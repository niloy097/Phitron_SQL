use ph;

create table xtudent
(
	Roll char(4) primary key,
    Name varchar(50) not null,
    Email varchar(60) unique,
    Address varchar(255),
    age int check(age > 10)
    
);

insert into xtudent(Roll, Name, Email, Address, age) values ('0001', 'Niloy', 'niloy@gmail.com', 'savar-Dhaka', 11);
insert into xtudent(Roll, Name, Email, Address, age) values ('0002', 'Niloy', 'piloy@gmail.com', 'savar-Dhaka', 11);
insert into xtudent(Roll, Name, Email, age) values ('0003', 'filoy', 'filoy@gmail.com', 11);
create table xtudent
(
	Roll char(4),
    Name varchar(50) not null,
    Email varchar(60),
    Address varchar(255),
    age int check(age > 10),
    
    primary key(Roll),
    unique(Email),
    check(age > 10)
    
);

create table xtudent
(
	Roll char(4),
    Name varchar(50) not null,
    Email varchar(60),
    Address varchar(255),
    age int check(age > 10),
    
    constraint pk_rule primary key(Roll),
    constraint unique_rule unique(Email),
    constraint checking_rule check(age > 10)
    
);


create table Library

(
	BookName varchar(50) primary key,
    whoHired_Roll char(4),
    foreign key (whoHired_Roll) references xtudent(Roll)
);