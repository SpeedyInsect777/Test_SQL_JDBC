select * from employees;

/*

keyword "like" / "not like"
 % => Any sequence of characters (zero or more )
 _ => Any single character

*contains
*startsWith
*endsWith




*/

--task# Return all employees where FirstName starts with B

select *from EMPLOYEES where FIRST_NAME like 'B%' ;
--^ returns Bruce and Britney !(% explains after letter "B" any sequence of characters  )

select *from EMPLOYEES where FIRST_NAME like 'B____' ;
--^ returns only Bruce ! (each "_" stands for Character)

