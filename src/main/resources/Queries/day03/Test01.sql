

    /*
    WarmUp
    1. How many Employees working for each Manager
    2.How many Locations we have in each country
    3.Display ALL Employee salary in following format:
    COLUMN NAME: EMPLOYEES SALARY
    ROWS: FIRSTNAME makes SALARY
    Example: Neenah makes 15000
    */
    --SOLUTION:
select MANAGER_ID, count(FIRST_NAME) as "Employee Numbers" from EMPLOYEES
where MANAGER_ID is not null
group by  MANAGER_ID
order by MANAGER_ID;

select COUNTRY_ID ,count(*) "Number Of Locations"from LOCATIONS
where COUNTRY_ID in ('US','CA')
group by COUNTRY_ID
order by COUNTRY_ID desc ;

select FIRST_NAME ||' makes ' || SALARY as "Employee Salary" from EMPLOYEES;
------------------------------------------------------------------------------