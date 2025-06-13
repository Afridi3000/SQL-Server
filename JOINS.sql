create table emp(
emp_id int primary key,
emp_name varchar(100));


insert into emp values(1,'Anil'),
(2,'Suresh'),
(3,'Mahesh'),
(4,'Mohan'),
(5,'Sohan');


create table emp_details(
emp_id int not null,
emp_age int not null,
emp_address char(100) null,
emp_salary decimal(8,2));

insert into emp_details values(1,33,'Delhi',2923.90),
(2,43,'NCR',3444.90),
(3,22,'Haryana',3456.90),
(4,65,'UP',5433.90),
(8,34,'Delhi',4222.90),
(10,32,'Delhi',4554.90);

select * from emp;
select * from emp_details;


-- INNER JOIN

SELECT E.emp_id,E.emp_name,ED.emp_age,ED.emp_address,ED.emp_salary FROM emp E
INNER JOIN emp_details ED
ON E.emp_id = ED.emp_id


-- LEFT JOIN

SELECT E.emp_id,E.emp_name,ED.emp_age,ED.emp_address,ED.emp_salary FROM emp E
LEFT JOIN emp_details ED
ON E.emp_id = ED.emp_id

-- RIGHT JOIN

SELECT E.emp_id,E.emp_name,ED.emp_age,ED.emp_address,ED.emp_salary FROM emp E
RIGHT JOIN emp_details ED
ON E.emp_id = ED.emp_id

-- FULL JOIN

SELECT E.emp_id,E.emp_name,ED.emp_age,ED.emp_address,ED.emp_salary FROM emp E
FULL JOIN emp_details ED
ON E.emp_id = ED.emp_id

-- CROSS JOIN

SELECT E.emp_id,E.emp_name,ED.emp_age,ED.emp_address,ED.emp_salary FROM emp E
CROSS JOIN emp_details ED;

-- SELF JOIN

CREATE TABLE Company(
emp_id int,
emp_name varchar(100),
mgr_id int,
city varchar(50));


insert into Company values(1,'Anil',6,'Delhi'),
(2,'Suresh',2,'Delhi'),
(3,'Mahesh',4,'Delhi'),
(4,'Mohan',3,'Delhi'),
(5,'Sohan',1,'Delhi'),
(6,'Kumar',8,'Delhi'),
(7,'Arjun',7,'Delhi'),
(8,'Rajesh',5,'Delhi');

select * from Company;

select a.emp_id as EMPID, a.emp_name as EmpName, b.emp_id as MgrID, b.emp_name as MgrName from Company a, Company b
where a.mgr_id = b.emp_id;

SELECT 
    a.emp_id AS EMPID, 
    a.emp_name AS EmpName, 
    b.emp_id AS MgrID, 
    b.emp_name AS MgrName
FROM 
    Company a
JOIN 
    Company b ON a.mgr_id = b.emp_id;