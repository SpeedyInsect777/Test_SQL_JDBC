select *
from employees;

create table address
(
    address_id Integer Primary Key,
    address    varchar(50) not null,
    phone      Integer     not null
);

insert into address (address_id, address, phone)
VALUES (5, '1913 Hanoi way', 28303384);

insert into address(address_id, address, phone)
values (7, '692 Joliet st', 44847719);

insert into address(address_id, address, phone)
VALUES (8, '1566 Inegel manor', 34433443);

insert into address(address_id, address, phone)
VALUES (10, '1788 Santiago', 4555544);

insert into address(address_id, address, phone)
VALUES (11, '900 SanSan way', 4333222);

create table customer
(
    customer_id INTEGER PRIMARY KEY,
    first_name  VARCHAR(50) not null,
    last_name   varchar(50) not null,
    address_id  integer references address (address_id)
);
insert into customer (customer_id, first_name, last_name, address_id) VALUES (1,'Marry','Smith',5);
insert into customer(customer_id, first_name, last_name, address_id) VALUES (2,'Patricia','johnson',null);
insert into customer(customer_id, first_name, last_name, address_id) VALUES (3,'Linda','Williams',7);
insert into customer(customer_id, first_name, last_name, address_id) VALUES (4,'Barbara','Jones',8);
insert into customer(customer_id, first_name, last_name, address_id) VALUES (5,'Elizabeth','Brown',null);




commit work ;

select *from address;
select *from customer;



