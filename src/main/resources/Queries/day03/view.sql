select *from Employees;


create view MyNewView as

select substr(FIRST_NAME,0,1)||'.'||substr(LAST_NAME,0,1)||'.'as initials,
       FIRST_NAME||' makes '|| SALARY as EmployeesSalary from EMPLOYEES;

select *from MYNEWVIEW;

drop view MYNEWVIEW;

select * from EMPLOYEES
where SALARY=(select max(SALARY) from EMPLOYEES);

select * from Employees
where SALARY=(Select min(SALARY) from EMPLOYEES);

select * from EMPLOYEES
where SALARY > (select avg (salary) from Employees);

select * from EMPLOYEES
where SALARY=(select max(SALARY)from EMPLOYEES);

select FIRST_NAME, SALARY from EMPLOYEES
         where SALARY < (select max(SALARY) from EMPLOYEES) order by SALARY desc ;


