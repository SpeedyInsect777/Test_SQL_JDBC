select * from JOBS;

--Task Display Job_ID where their average salary more than 5000
--having
select JOB_ID , avg(SALARY) from EMPLOYEES group by JOB_ID having avg(SALARY)>5000 order by 2 desc ;

select *from EMPLOYEES;

select DEPARTMENT_ID as ME , count(*) as Kokuuu from    EMPLOYEES
group by DEPARTMENT_ID having count(*)>5 order by DEPARTMENT_ID desc ;

select *from EMPLOYEES;


--Task display duplicated names from employee table
select FIRST_NAME,count(FIRST_NAME) from EMPLOYEES group by FIRST_NAME having count(FIRST_NAME)=2 order by FIRST_NAME desc ;

select *from EMPLOYEES;