select *from EMPLOYEES;

--from TableName1 inner join TableName2
--on primaryKeyOfTableName1 = foreignKeyOfTableName2;
--order does not matter
--returns only matching portion of the table


select FIRST_NAME,LAST_NAME,CUSTOMER.CUSTOMER_ID,ADDRESS,PHONE
from ADDRESS
inner join CUSTOMER
on ADDRESS.ADDRESS_ID = CUSTOMER.ADDRESS_ID;

--Table Aliases
--ex: Customer C, Employee E, Address A

select FIRST_NAME,LAST_NAME,C.CUSTOMER_ID,ADDRESS,PHONE
from ADDRESS A
inner join CUSTOMER C
on A.ADDRESS_id=C.ADDRESS_ID;

/*
Left Outer join / Left join
it will give matching part+unique for left table
the order of is important

*/
select FIRST_NAME,LAST_NAME,ADDRESS,PHONE
from CUSTOMER C
left outer join ADDRESS A
on C.ADDRESS_ID = A.ADDRESS_ID;

/*
Right Outer join / Right join
it will give matching part+unique for RIGHT table
the order of is important

*/
select FIRST_NAME,LAST_NAME,ADDRESS,PHONE
from CUSTOMER C
RIGHT OUTER JOIN  ADDRESS A
on C.ADDRESS_ID = A.ADDRESS_ID;

/*
FULL OUTER JOIN

It will all matching + unique for LEFT  + unique for RIGHT

*/

select FIRST_NAME, LAST_NAME, ADDRESS, PHONE
from address a right join CUSTOMER c
    on A.ADDRESS_ID = C.ADDRESS_ID;



