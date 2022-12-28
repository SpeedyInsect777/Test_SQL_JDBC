select * from EMPLOYEES;


--Task How many employees working for each manager in descending order
-- extra : ignore manager ID where employees count smaller than 6

select MANAGER_ID, count(MANAGER_ID) as Employee_Count from EMPLOYEES
where MANAGER_ID is not null   group by MANAGER_ID having count(*)> 6 order by Employee_Count desc ;

--Task How many locations we have for each country?

select *from LOCATIONS;

select COUNTRY_ID, count(COUNTRY_ID) as Locations
from LOCATIONS
group by COUNTRY_ID
having count(COUNTRY_ID) > 2
order by Locations asc;

select COUNTRY_ID, count(COUNTRY_ID) as Locations
from LOCATIONS
group by COUNTRY_ID;

--task Display where location count bigger than 2

select COUNTRY_ID, count(*) from LOCATIONS where
COUNTRY_ID in ('US', 'CA') group by COUNTRY_ID having order by COUNTRY_ID;