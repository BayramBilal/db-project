-get me first_name,last_name and department name for all employees

select * from employees;

select * from departments;

select first_name,last_name,department_name
from employees e left join departments d
on e.department_id = d.department_id
where e.department_id is null;
--get me first_name,last_name and department_name,city for all employees

select first_name,last_name,department_name
from employees e join departments d
on e.department_id = d.department_id;

select first_name,last_name,department_name
from employees e left join departments d
on e.department_id = d.department_id
where e.DEPARTMENT_ID is null;


select first_name,last_name,department_name
from employees e left join departments d
on e.department_id = d.department_id;


select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME,CITY
FROM EMPLOYEES E JOIN DEPARTMENTS D on E.DEPARTMENT_ID = D.DEPARTMENT_ID
JOIN LOCATIONS L on D.LOCATION_ID = L.LOCATION_ID;

select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME,CITY,COUNTRY_NAME
FROM EMPLOYEES E JOIN DEPARTMENTS D on E.DEPARTMENT_ID = D.DEPARTMENT_ID
JOIN LOCATIONS L on D.LOCATION_ID = L.LOCATION_ID
JOIN COUNTRIES C2 on L.COUNTRY_ID = C2.COUNTRY_ID;

select E1.EMPLOYEE_ID,E1.FIRST_NAME, E1.LAST_NAME,E1.MANAGER_ID,E2.EMPLOYEE_ID,E2.FIRST_NAME,E2.LAST_NAME
FROM EMPLOYEES E1 LEFT JOIN EMPLOYEES E2 ON E1.MANAGER_ID = E2.EMPLOYEE_ID
ORDER BY E1.EMPLOYEE_ID;