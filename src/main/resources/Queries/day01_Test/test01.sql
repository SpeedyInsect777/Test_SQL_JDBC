select *from EMPLOYEES;

select FIRST_NAME from EMPLOYEES;

SELECT COUNTRY_ID from COUNTRIES;

select LAST_NAME from EMPLOYEES;

select DEPARTMENT_ID from DEPARTMENTS;

select JOB_TITLE from JOBS;

select  JOB_ID from JOBS;

select COUNTRY_ID from COUNTRIES where COUNTRY_ID='US';

select JOB_TITLE from JOBS where JOB_TITLE='President';

select JOB_TITLE from JOBS where JOB_TITLE='Accountant';

select JOB_TITLE from JOBS where JOB_TITLE like '%cc%';

select JOB_TITLE from JOBS where  JOB_TITLE not like '%cc%';

select JOB_TITLE from JOBS where JOB_TITLE like '_____d___';

select JOB_TITLE from JOBS where JOB_ID is null;

select *from JOBS;

select *from JOBS where JOB_TITLE in ('President','Sales Manager');

select JOB_TITLE from  JOBS where MAX_SALARY>20000;

select JOB_TITLE from JOBS where JOB_TITLE like '%resi%';

select JOB_TITLE from JOBS where JOB_TITLE like '%anag%' ;

