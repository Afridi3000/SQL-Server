select * from employee;

select dept, sum(salary), avg(salary) as AvgSal, max(salary) as MaxSal, min(salary) as MinSal, Count(salary) as TotalEmpl
from employee
group by dept;

/* 
GROUP BY on multiple columns
Count the employees with similar departments and with similar joining year
*/

CREATE TABLE emp(
    empid INT PRIMARY KEY,
    empName VARCHAR(100),
    deptID INT,
    Salary DECIMAL(10, 2),
    joinyear INT
);

INSERT INTO emp (empid, empName, deptID, Salary, joinyear) VALUES
(1, 'Alice Johnson', 101, 75000.00, 2019),
(2, 'Bob Smith', 102, 68000.00, 2020),
(3, 'Charlie Brown', 103, 72000.00, 2018),
(4, 'David Clark', 101, 80000.00, 2017),
(5, 'Eva Adams', 104, 65000.00, 2021),
(6, 'Frank Wright', 102, 70000.00, 2020),
(7, 'Grace Lee', 105, 78000.00, 2016),
(8, 'Hannah Patel', 101, 73000.00, 2019),
(9, 'Ian Thomas', 103, 69000.00, 2022),
(10, 'Jenna White', 104, 76000.00, 2020),
(11, 'Kevin Hall', 105, 81000.00, 2018),
(12, 'Laura Scott', 102, 77000.00, 2017),
(13, 'Mike Green', 103, 79000.00, 2016),
(14, 'Nina Lopez', 104, 82000.00, 2015),
(15, 'Oscar King', 105, 85000.00, 2014);

select * from emp;


select deptID,joinyear, count(empid) as TotalEMp from emp 
group by deptID,joinyear;


select deptID,joinyear, count(empid) as TotalEMp from emp 
group by deptID,joinyear
order by deptID;

/*
WHERE clause
Find total salary and avg salary in dept 101 & 103
*/

select deptID, sum(salary) as TotalSal from emp 
where deptID in(101,103)
group by deptID;


-- HAVING clause
/*
find the total salary in dept 101 & 102 and group total salary should be
greater than 220000
*/

select deptID, sum(salary) as TotalSal from emp 
where deptID in(101,102)
group by deptID
having SUM(salary) > 220000
