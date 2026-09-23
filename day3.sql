create database db5;
use db5;

create table employees (
emp_id int primary key,
emp_name VARCHAR(30),
manager_id int default 1
);
select * from employees;
insert into employees values
(1, 'shriram',NULL),
(2,'abhishek',1),
(3,'krishna',1),
(4,'sunil',2);
select
e.emp_name AS Employee,
m.emp_name AS Manager
from employees e
left join employees m
on e.manager_id = m.emp_id;

