select *from employees;

--find the 3rd minimum salary from the Employees table
select *from EMPLOYEES
    where SALARY=(Select min(SALARY) from (select distinct SALARY from  EMPLOYEES order by SALARY  )
        where rownum <4);


--display 3rd highest salary
select *from EMPLOYEES
where SALARY=(select  min(SALARY) from (select distinct SALARY from EMPLOYEES
order by SALARY desc ) where ROWNUM<4);
