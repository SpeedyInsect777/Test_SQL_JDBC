select *from EMPLOYEES;

/*
Aggreate Functions - Multi Rows - Group Functions

*count -> returns number of  rows (ignores NULL value)
*max   -> returns max value
*min   -> returns min value
*sum   -> returns total value
*avg   -> returns average value

Aggreate Functions takes multi row and returns one result

NOTE   -> All aggreate function will ignore NULL Value
*/
--How many Departments do we have ?
select *from DEPARTMENTS;
select count(*) from DEPARTMENTS;

--How many Locations do we have ?
select count(*) from LOCATIONS;

select count(*) from EMPLOYEES where DEPARTMENT_ID is null ;

-- since count() ignores NULL ... result will be
select count(DEPARTMENT_ID) from EMPLOYEES where DEPARTMENT_ID is  null ;

select *from EMPLOYEES;

select count(*) from EMPLOYEES;

select count (DEPARTMENT_ID) from EMPLOYEES where DEPARTMENT_ID is not null ;

--task# return number of unique names
select  count(distinct FIRST_NAME) from  EMPLOYEES;
--task# return number of Employees working in IT_PROG and SA_REP
select count(*) from EMPLOYEES where JOB_ID in ('IT_PROG','SA_REP');
select count(*)from EMPLOYEES where SALARY>=6000;

--MAX() and MIN() > returns maximum or minimum value

select min(salary) from Employees;
select max(salary) from Employees;

--AVG() returns average ;
select avg(SALARY)from EMPLOYEES;

--ROUND() =round(column, number of decimals) -> it will round the number and after comma we can choose number of decimals
select round(avg(SALARY)) from EMPLOYEES; -- returns with NO DECIMALS
select round(avg(SALARY),2)from EMPLOYEES;--returns with 2 DECIMALS

--SUM () -> returns sum of ALL NUMBERS (Total of all numbers)
select sum(SALARY) from EMPLOYEES;

