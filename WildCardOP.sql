
USE LOTUS;

create table employee
(
	empID int,
	empName varchar(100),
	dept varchar(100),
	salary float,
	City varchar(100),
	JoinYear int);


insert into employee values(1005,'Linda','IT',3200,Null,2022);


insert into employee values(1006,'Tony','HR',6700,'Delhi',1990),
(1007,'Joshef','Account', 7800,'Delhi',2020),
(1009,'Alice','Sales',2100,'London',2021),
(1009,'Mangu','IT',2200,NUll,2022),
(1010,'David','HR',1100,'Dhaka',2022),
(1011,'Taylor','Development',78966,'New York',2022),
(1012,'Mikea','Development',7654,'DC',2019),
(1014,'Mac','IT',6886,'Kabul',2018),
(1015,'Minton','IT',6789,'Kabul',2012);

select * from employee;

select * from employee
where City is null;

 select * from employee
 where empName like '[^abcdm]%';


 select * into Emp1 
  from employee where 1=0;

insert into Emp1 select * from employee where  

select * from Emp1

drop table Emp1