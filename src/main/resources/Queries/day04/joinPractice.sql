select *from employees;
/*
--1. Display all first_name and department_name
--2.Display all first_name and department_name including the  department without employee
--3.Display all first_name and department_name including the  employee without department
--4.Display all first_name and department_name
--including the  department without employee  and  employees  without departments
--5.Display All cities and related country names
--6.Display All cities and related country names  including with countries without city
--7.Display all department name and  street adresss
--8.Display first_name,last_name and department_name,city for all employees
--9.Display first_name,last_name and department_name,city,country_name for all employees

*/

--Solution 1

select FIRST_NAME, DEPARTMENT_NAME
from EMPLOYEES E inner join DEPARTMENTS D on E.DEPARTMENT_ID = D.DEPARTMENT_ID
order by FIRST_NAME;

--solution2
--with right join
select FIRST_NAME,DEPARTMENT_NAME from EMPLOYEES e right join DEPARTMENTS d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID;
--with left join
select FIRST_NAME,DEPARTMENT_NAME from DEPARTMENTS d left join EMPLOYEES e
    on d.DEPARTMENT_ID=    e.DEPARTMENT_ID;

--solution3
select DEPARTMENT_NAME, count(*) from DEPARTMENTS d left join EMPLOYEES e
    on d.DEPARTMENT_ID = e.DEPARTMENT_ID group by DEPARTMENT_NAME;


