select * from employees;

select * from EMPLOYEES where FIRST_NAME='David';
--String will be Varchar in SQL DATABASE
--keyword "where" acts like If statement or filter in stream in Java

select FIRST_NAME,LAST_NAME,SALARY from EMPLOYEES where FIRST_NAME='Peter';


--keyword "and" acts like && in Java
select FIRST_NAME,LAST_NAME,SALARY from EMPLOYEES where FIRST_NAME='David' and LAST_NAME = 'Austin';

select * from EMPLOYEES where SALARY>6000;

select EMAIL from EMPLOYEES where SALARY<6000;
--task# return Employees who is salary greater than 6000 and Department ID = 60;
select * from EMPLOYEES where SALARY > 6000 and DEPARTMENT_ID=60;

--display all info from employees where salary equal or more than 3000 and salary equals or less than 7000
select * from   EMPLOYEES where SALARY >= 3000 and SALARY <=7000;

--keyword "between" lower "and" upper : returns value within given range
select * from EMPLOYEES where SALARY between 3000 and 7000;

--task# return all employee info where employee ID between 100 and 120
select * from EMPLOYEES where EMPLOYEE_ID between 100 and 120;

--task# return all employee who is working IT or Marketing
--OR logic
select * from EMPLOYEES where JOB_ID='IT_PROG' or JOB_ID='MK_MAN';

--keyword "IN" (value1,value2) checks values inside parentheses to check if condition matches
--it uses OR Logic
select * from EMPLOYEES where JOB_ID in ('IT_PROG','MK_MAN');
--Task# return Employees with ID number 121,143,156,134
--solution1
select * from EMPLOYEES where EMPLOYEE_ID in (121,143,156,134);
--solution2
select * from EMPLOYEES where EMPLOYEE_ID=121 or EMPLOYEE_ID=143 or EMPLOYEE_ID=156 or EMPLOYEE_ID=134;

--Task return where Country_ID is US and IT
select *from COUNTRIES where COUNTRY_ID='US' or COUNTRY_ID='IT';
select *from COUNTRIES where COUNTRY_ID in ('US','IT');

--keyword "IS NOT"
--Task return where Country_ID is NOT US and IT
select *from COUNTRIES where COUNTRY_ID not in ('US','IT');

--keyword "is NULL" and "is not Null"
--Task select Employees where Department_ID is NULL
select  *from EMPLOYEES where DEPARTMENT_ID is null;
select *from EMPLOYEES where DEPARTMENT_ID is not null;

