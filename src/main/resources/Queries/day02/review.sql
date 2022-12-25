select *from EMPLOYEES;

--return job titles that ends with manager
select *from JOBS where JOB_TITLE like '%_Manager';


--return all employees except names which starts with D
select *from EMPLOYEES where FIRST_NAME not like 'D%';


--return all employees except names which start with D and has 5 letters
select *from EMPLOYEES where FIRST_NAME like 'D____' order by FIRST_NAME desc ;
select *from EMPLOYEES where FIRST_NAME like 'D____' order by FIRST_NAME asc ;


--return all countries where Region ID is 1 and country name is not Belgium
select *from COUNTRIES where REGION_ID=1 and COUNTRY_NAME != 'Belgium';
select *from COUNTRIES where REGION_ID=1 and COUNTRY_NAME <> 'Belgium';
select *from COUNTRIES where REGION_ID=1 and COUNTRY_NAME not in 'Belgium';

--keyword count(column) counts number of rows !
select count(*)from EMPLOYEES where FIRST_NAME like 'D____' order by FIRST_NAME desc ;
