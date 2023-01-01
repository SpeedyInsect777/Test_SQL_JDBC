select *from employees;

/*
crating table syntax:
create table TableName(
colName1 dataType Constraints,
colName2 dataType Constraints (optional),
colName3 dataType Constraints,
...);
*/
--varchar(MaxLengthOfNewVarchar)-String-inside parenthesis we need to specify length of Varchar
--commit or commit work --to push data into DataBase (from local to remote)
--it's like GitHub commit
create table scrumTeam2
(
    EmpID Integer PRIMARY KEY ,
    FirstName varchar(30) not null ,
    JobTitle varchar(20) not null ,
    Age INTEGER,
    Salary INTEGER
);
select *from scrumTeam2;

insert into scrumTeam2(empid, firstname, jobtitle, age, salary)
values (001,'Mike','SDET',34,200000);
commit work ;
insert into scrumTeam2(empid, firstname, jobtitle, age, salary)
values (777,'Mike','SDET',34,200000);


-- it updates entire row of salary
update scrumTeam2

set SALARY = SALARY+5000;

--with "where" condition we can update only given row
update scrumTeam2
set SALARY = 200000
where EMPID=200;

update scrumTeam2
set age = 33
where EMPID=200;
commit ;

--DELETE FROM TableName
--WHERE condition;


--deleting Employer with Employee ID 1
delete from scrumTeam2
where EMPID=1;
select *from scrumTeam2;

--Alter table: needed when we need to edit table
--actions-> add column, drop column, rename column, rename to:

Alter table scrumTeam2
add gender varchar(10);

update scrumTeam2
set gender ='Male'
where EMPID = 777;

update scrumTeam2
set FIRSTNAME='Alice'
where EMPID=200;

update SCRUMTEAM2
set GENDER='Female'
where EMPID=200;
commit ;

select *from SCRUMTEAM2;

--rename column => renames columnName
alter table scrumTeam2
rename column salary to annual_salary;

--drop column => deletes column
alter table scrumTeam2
drop column gender;

select *from scrumTeam2;
commit ;

ALTER table SCRUMTEAM2 rename to AgileTeam;
commit ;
select *from AGILETEAM;

--truncate table = will remove all data from Table
--but not the Table itself

truncate table AGILETEAM;
select *from AGILETEAM;

--drop table = will delete existing table

drop table AGILETEAM;
select *from AgileTeam;
commit ;
