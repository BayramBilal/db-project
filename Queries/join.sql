select * from customer;

select * from address;

select first_name,last_name,address,phone
from CUSTOMER join ADDRESS on CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID;

select first_name,last_name,c.address_id,address,phone
from customer c left join address a
on c.address_id = a.address_id;

select first_name,last_name,c.address_id,a.address_id,address,phone
from customer c right join address a
on c.address_id = a.address_id;


select first_name,last_name,c.address_id,a.address_id,address,phone
from customer c full join address a
on c.address_id = a.address_id;

select * from employees;

select * from departments;


select first_name,last_name,department_name
from employees left join departments
on EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID;

