select *from employees;
/*
 OrderBy
sorts data in by default Ascending order (a-z, 0-9)
For Descending order add "DESC" after column name;
*/
--task# return salary in descending order
select *from Employees order by salary desc ;
--task# return salary in ascending order
select *from EMPLOYEES order by SALARY asc ;

--index starts from 1 and indexes based on column !
select *from EMPLOYEES order by 8 asc ;
select *from EMPLOYEES order by 1 asc ;

--task# return employees smaller than with ID 120 and order them based on salaries

--solution1
select *from EMPLOYEES where EMPLOYEE_ID <120  order by 8 ;
--solution2
select *from EMPLOYEES where EMPLOYEE_ID <120 order by SALARY;

--return from Employee and order them based on firstName ascending
--based on lastName desc.

select *from EMPLOYEES  order by FIRST_NAME  , LAST_NAME desc ;
--first orders firsName, than orders lastName !
