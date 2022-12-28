select * from employees;

--Task# Return Average Salary for IT_Prog
--Solution1
select avg(salary) from EMPLOYEES where JOB_ID in ('IT_PROG');
--Solution2
select avg(salary) from EMPLOYEES where JOB_ID ='IT_PROG';

--Task# Return total number of job id
select count(distinct (JOB_ID)) from EMPLOYEES;


--Group By : Grouping result based on group


select  avg(SALARY) from EMPLOYEES group by JOB_ID;

select  JOB_ID,avg(SALARY) from EMPLOYEES group by JOB_ID;

select  JOB_ID,avg(SALARY),min(SALARY) from EMPLOYEES group by JOB_ID;

select  JOB_ID,avg(SALARY),max(SALARY) from EMPLOYEES group by JOB_ID;

select  JOB_ID,avg(SALARY),min(SALARY),max(SALARY) from EMPLOYEES group by JOB_ID;

select  JOB_ID,avg(SALARY),min(SALARY),max(SALARY), sum(SALARY) from EMPLOYEES group by JOB_ID ;

select  JOB_ID, avg(SALARY),min(SALARY),max(SALARY), sum(SALARY),count(*) from EMPLOYEES group by JOB_ID ;


--Task return total salary for each department from Employees table

select DEPARTMENT_ID, sum(SALARY),count(*) from EMPLOYEES where DEPARTMENT_ID is not null group by DEPARTMENT_ID;


--Task order result based on mas salary in ascending order

select DEPARTMENT_ID,sum(  SALARY ),count(*) from EMPLOYEES where DEPARTMENT_ID is not null group by  DEPARTMENT_ID order by max(SALARY);


select  DEPARTMENT_ID,sum(SALARY),COUNT(*),max(SALARY),MIN(SALARY),ROUND(AVG(SALARY)) FROM EMPLOYEES WHERE DEPARTMENT_ID IS NOT NULL
GROUP BY  DEPARTMENT_ID ORDER BY MAX(SALARY),MIN (SALARY) DESC ;



 --Task display how many departments we have in each locations
 select LOCATION_ID, count(*) from DEPARTMENTS

group by LOCATION_ID

order by count(*) desc ;

--Task# display how many countries we have in each region !

select REGION_ID , count(REGION_ID)  from COUNTRIES

group by REGION_ID

order by REGION_ID desc ;

select 2 , count(*)  from COUNTRIES

group by 2

order by 2 desc ;

select REGION_ID , count(*)  from COUNTRIES

group by REGION_ID

order by count(*) desc;