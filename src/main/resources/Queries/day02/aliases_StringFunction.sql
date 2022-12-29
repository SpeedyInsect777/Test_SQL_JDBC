select *from EMPLOYEES;

/*
1. Column Aliases
its temporary name to show in display

2. Table aliases --> before joins
*/
select FIRST_NAME from EMPLOYEES;

-- it makes column name to UPPERCASE (SPACE can not accept)
select FIRST_NAME as myGivenName from EMPLOYEES;
--it show column name as it is (SPACE accepted)
select FIRST_NAME as "my Given Name" from EMPLOYEES;

--task Display annual salary for all employees as annual salary

select FIRST_NAME,salary, SALARY*12 as annual_salary from EMPLOYEES;

--String Functions
--      ||' '|| -> Works like Java's String concatenation = ex: str1+" "+str2
-- concat (value1, value2) -> Works like Java's String concat () method

-- Task return all email addresses with @gmail.com attached from Employees
select FIRST_NAME ||'@'||LAST_NAME as fullname from EMPLOYEES;
select  CONCAT (FIRST_NAME,CONCAT (' ', LAST_NAME)) AS FULLNAME FROM EMPLOYEES;
select distinct * from jobs;
select JOB_TITLE from JOBS;
select JOB_ID from JOBS;

select JOB_ID from JOBS ;