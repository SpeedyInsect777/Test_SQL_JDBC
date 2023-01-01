select *
from employees;

create table Developers
(
    Id_Number Integer primary key,
    Names     varchar(30),
    Salary    Integer
);
create table Testers
(
    Id_Number Integer primary key,
    Names     varchar(30),
    Salary    Integer
);

insert into developers
values (1, 'Mike', 155000);
insert into developers
values (2, 'John', 142000);
insert into developers
values (3, 'Steven', 850000);
insert into developers
values (4, 'Maria', 120000);
insert into testers
values (1, 'Steven', 110000);
insert into testers
values (2, 'Adam', 105000);
insert into testers
values (3, 'Lex', 100000);

commit work;

select* from TESTERS;
select *from DEVELOPERS;
/*
UNION
combines result sets of two or more Select statements into a single result set
removes duplicates and sorts ascending
syntax:
SELECT column1, Column2 ... from Table1
UNION
Select column1, Column2 ... from Table2
*/
select *from DEVELOPERS
union
select *
from TESTERS;

--here removes Duplicated values (Steven)
select NAMES from Developers
union
select  NAMES from TESTERS;


--UNION ALL --> Does NOT remove Duplicates and Does NOT sort the result

select *from Developers
union all
select *from TESTERS;

select NAMES from DEVELOPERS
union all
select NAMES from TESTERS
order by Names;

/*
MINUS-> returns only unique Values of the given column !
(Only values that are not presented on the other column)
*/

select *from DEVELOPERS
minus
select *from TESTERS;

select names from Developers
minus
select names from TESTERS;

select Names from TESTERS
minus
select names from Developers;

--intersect -> shows common values

select *from TESTERS
intersect
select  *from Developers;

select Names from TESTERS
intersect
select Names from Developers;




