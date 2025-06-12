create table employee2(
empID int primary key,
date_of_join datetime not null,
first_name varchar(50) not null,
last_name varchar(50) not null,
salary decimal(10,2)not null);

--drop table employee2;
INSERT INTO employee2(empid, date_of_join, first_name, last_name, salary) VALUES
(101, '2020-01-15 09:00:00', 'John',     'Doe',      55000.00),
(102, '2019-03-20 10:30:00', 'Jane',     'Smith',    62000.00),
(103, '2021-07-01 08:45:00', 'Robert',   'Brown',    48000.00),
(104, '2022-11-12 11:00:00', 'Emily',    'Davis',    71000.00),
(105, '2018-05-05 09:15:00', 'Michael',  'Johnson',  53000.00),
(106, '2023-01-25 13:20:00', 'Olivia',   'Wilson',   68000.00),
(107, '2020-06-18 14:10:00', 'William',  'Moore',    59000.00),
(108, '2017-09-30 15:45:00', 'Sophia',   'Taylor',   75000.00),
(109, '2019-12-10 08:00:00', 'David',    'Anderson', 47000.00),
(110, '2024-04-03 10:05:00', 'Ava',      'Thomas',   64000.00);

INSERT INTO employee2(empid, date_of_join, first_name, last_name, salary) VALUES
(111, '2019-12-10 07:00:00', 'David',    'Anderson', 47000.00),
(112, '2024-04-03 10:08:00', 'Ava',      'Thomas',   64000.00);


select * from employee2;

select empId, cast(date_of_join as varchar) as join_date,first_name,last_name from employee2;

select empId, convert(varchar,date_of_join) as join_date,first_name,last_name from employee2;

-- if you wwant to see 10 charachtes

select empId, cast(date_of_join as varchar(10)) as join_date,first_name,last_name from employee2;
select empId, convert(varchar(10),date_of_join) as join_date,first_name,last_name from employee2;

-- try to join columns with different datatypes
select first_name+'-'+empID,last_name from employee2;

select first_name+'-'+cast(empID as varchar),last_name from employee2;

-- ek hi date par kitne logo ne join kiya??

select count(empId) from employee2 group by date_of_join;

select count(empId) from employee2 group by cast(date_of_join as date);

select count(empId) from employee2 group by CONVERT(DATE,date_of_join);

/* CONVERT
	CONVERT (datatype [ ( len) ], expression['style])

8 -- hh:mm:ss
101 -- mm/dd/yyyy
102 -- yyyy.mm.dd
103 -- dd/mm/yyyy
104 -- dd.mm.yyyy
*/

select empId, convert(varchar,date_of_join) as join_date,first_name,last_name from employee2;

select empId, convert(varchar,date_of_join,8) as join_date_onlyTime,first_name,last_name from employee2;


select empId, convert(varchar,date_of_join,101) as join_date_onlyTime,first_name,last_name from employee2;


select empId, convert(varchar,date_of_join,102) as join_date_onlyTime,first_name,last_name from employee2;


select empId, convert(varchar,date_of_join,103) as join_date_onlyTime,first_name,last_name from employee2;