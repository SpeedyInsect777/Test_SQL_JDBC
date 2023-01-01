select * from employees;

select * from EMPLOYEES where ROWNUM <6 order by SALARY desc ;


select * from (select *from EMPLOYEES order by SALARY desc )
where ROWNUM<6;

--display all info who is getting 5th highest salary
select min(salary) from (select distinct SALARY from EMPLOYEES order by  SALARY desc )
        where rownum<6;

select *from EMPLOYEES
where SALARY = (select min(salary) from (select distinct SALARY from EMPLOYEES order by  SALARY desc )
                where rownum<6);


--display all info who is getting 50th highest salary
select *from EMPLOYEES
where SALARY=(select min(SALARY)
from (select distinct SALARY from EMPLOYEES order by SALARY desc )
where rownum<51);

select distinct count(*) from EMPLOYEES;

--display all info who is getting 3th lowest salary