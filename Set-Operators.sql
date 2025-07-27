
/* SQl set operators
	used to combine the two or more SQL select Statmts
	Joins tends to combine columns from different tables whereas Set combine rows from diffrent queries


	Rules:
		1. All queries must have same no of columns.
		2. datatype of each column must match the data type of its corresponding columns
		3. OrderBy should be part of last Statement.
		4,. record of top query must match the postional ordering of the records form bottom query.
*/

-- 1. UNION - combine two or more result ste into single set, without duplicates.


create table user_1_survey(
name varchar(100),
MobileNo int,
City varchar(50),
Occupation varchar(50),
Salary int);

insert into user_1_survey values('John',2929101,'Noida','Business',2000),
('King-Duplicate',2728377,'Delhi','Self Employed',5000),
('Lee-Duplicate',8888888,'London','Contractor',6000),
('Suzan',3944094,'Braha','Service',5000),
('Mike-Duplicate',3320239,'Kurd','Business',4000);

create table user_2_survey(
Cust_name varchar(100),
Cust_MobileNo int,
City varchar(50),
Occupation varchar(50),
Salary int);

insert into user_1_survey values('Mike John',6666666,'London','Business',2000),
('King-Duplicate',2728377,'Delhi','Self Employed',5000),
('Lee-Duplicate',8888888,'London','Contractor',6000),
('Korner',3944094,'Braha','Service',5000),
('Mike-Duplicate',3320239,'Kurd','Business',4000);

select name, MobileNo, City, Occupation, Salary from user_1_survey
UNION
select Cust_name,Cust_MobileNo,City, Occupation, Salary from user_2_survey


--2. UNION ALL - combine two or more result ste into single set, including duplicates.

select name, MobileNo, City, Occupation, Salary from user_1_survey
UNION ALL
select Cust_name,Cust_MobileNo,City, Occupation, Salary from user_2_survey

-- 3. INTERSECT - Takes the datafrom both result set which are in common.

select name, MobileNo, City, Occupation, Salary from user_1_survey
INTERSECT
select Cust_name,Cust_MobileNo,City, Occupation, Salary from user_2_survey

-- 4.EXCEPT - Takes the data from first result set, but not second (ie no matching to each other)

select name, MobileNo, City, Occupation, Salary from user_1_survey
EXCEPT
select Cust_name,Cust_MobileNo,City, Occupation, Salary from user_2_survey