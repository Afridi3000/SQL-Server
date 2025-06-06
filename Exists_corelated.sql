select * from employee;

insert into employee values(1013,'Susan','Welfare',7538,'London',2022);


create table #temp(
ID int );

--insert into #temp values (1);
select * from employee where exists (select ID from #temp);
drop table #temp;

select * from employee where exists(select empID from employee where salary>17000);

update employee
set salary = 7896
where empID = 1011;


/* 
	EXISTS CORRELATED SUBQUERY
*/
select * from employee where exists(select empID from employee where salary>7000);

select * from employee emp where exists (select * from employee
where 
empID = emp.empid and salary > 7000);