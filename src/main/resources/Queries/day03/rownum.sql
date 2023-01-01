select *from Employees;

select *from EMPLOYEES
where SALARY < (select min(SALARY) from EMPLOYEES)
where rownum=5;
