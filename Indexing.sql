-- Insert 1,000,000 records using WHILE loop
CREATE TABLE Employee2 (
    emp_ID INT PRIMARY KEY,
    emp_name VARCHAR(100),
    salary DECIMAL(10, 2),
    dept_ID INT
);

DECLARE @i INT = 1;

WHILE @i <= 1000000
BEGIN
    INSERT INTO Employee2 (emp_ID, emp_name, salary, dept_ID)
    VALUES (
        @i,
        CONCAT('Employee_', @i),
        ROUND(RAND() * 100000 + 30000, 2), -- salary between 30,000 - 130,000
        (ABS(CHECKSUM(NEWID())) % 10) + 1  -- dept_ID between 1 - 10
    );

    SET @i += 1;
END;


select COUNT(*) from Employee2;

select top 1 * from Employee2 order by emp_ID desc;

--Before Indexing

select * from Employee2 where emp_ID = 1000000

create table employee3(
	emp_id int,
	emp_name varchar(100),
    salary DECIMAL(10, 2),
    dept_ID INT
);

insert into employee3 
select * from employee2

select COUNT(*) from employee3;

select top 1 * from Employee3 order by emp_ID desc;

--Before Indexing

select * from Employee3 where emp_ID = 1000000

create clustered index emp_idx
on employee3(emp_id asc)

-- after indexing 
select * from Employee3 where emp_ID = 1000000