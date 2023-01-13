-- 1. List all the employees' first and last name with their salary in employees table
select first_name, last_name, salary from employees;
-- 2. how many employees have salary less than 5000?
select count (*) from employees
where salary < 5000;
-- 3. how many employees have salary between 6000 and 7000?
select count (*) from employees
where salary between 6000 and 7000;
-- 4. List all the different region_ids in countries table
select distinct REGION_ID from COUNTRIES;
-- 5. display the salary of the employee Grant Douglas (lastName: Grant,  firstName: Douglas)
select SALARY from EMPLOYEES
where FIRST_NAME='Douglas' and LAST_NAME='Grant';
-- 6. display the maximum salary in employees table
select max(SALARY) from EMPLOYEES;
-- 7. display all informations of the employee who has the highest salary in employees table
select * from EMPLOYEES
where SALARY=(select max(SALARY) from EMPLOYEES);
-- 8. display the the second maximum salary from the employees table
select max(SALARY) from EMPLOYEES
where SALARY < (select max(SALARY) from EMPLOYEES);
select max(SALARY) from EMPLOYEES
where SALARY not in (select max(SALARY) from EMPLOYEES);

-- 9. display all informations of the employee who has the second highest salary
select * from EMPLOYEES
where SALARY = (select max(SALARY) from EMPLOYEES
                where SALARY not in (select max(SALARY) from EMPLOYEES));
-- 10. display the the minimum salary in employees table
select * from EMPLOYEES
where SALARY=  (select min(SALARY) from EMPLOYEES);

-- 11. display all informations of the employee who has the minimum salary in employees table
-- 12. display the second minimum salary from the employees table
select min(SALARY) from EMPLOYEES
where SALARY not in ( (select min(SALARY) from EMPLOYEES));
-- 13. display all informations of the employee who has the second minimum salary
select * from EMPLOYEES
where SALARY = (select min(SALARY) from EMPLOYEES
                where SALARY not in (select min(SALARY) from EMPLOYEES));
-- 14. display the average salary of the employees;
select round(avg(SALARY)) from EMPLOYEES;
-- 15. list all the employees who are making above the average salary;
select * from EMPLOYEES
where SALARY > (select round(avg(SALARY)) from EMPLOYEES);
-- 16. list all the employees who are making less than the average salary
select * from EMPLOYEES
where SALARY < (select round(avg(SALARY)) from EMPLOYEES);
-- 17. count the total numbers of the departments in departs table
select count(*) from DEPARTMENTS;
select count (DEPARTMENT_NAME) from DEPARTMENTS;
-- 18. sort the start_date in ascending order in job_history's table
select START_DATE from JOB_HISTORY
order by START_DATE;

-- 19. sort the start_date in descending order in job_history's table
select START_DATE from JOB_HISTORY
order by START_DATE desc;
-- 20. list all the employees whose first name starts with 'A'
select * from EMPLOYEES
where FIRST_NAME like 'A%';
-- 21. list all the employees whose job_ID contains 'IT'
select * from EMPLOYEES
where JOB_ID like '%IT%';
-- 22. list all the employees whose department id in 50, 80, 100
select *from EMPLOYEES
where DEPARTMENT_ID in (50,80,100);

select DEPARTMENT_ID from EMPLOYEES
where DEPARTMENT_ID not in (100)
order by DEPARTMENT_ID desc ;
-- 7. display employees' full email addresses and full names
-- (assume that the domain of the email is @gmail)
select lower(FIRST_NAME||' '||LAST_NAME) as "full name", lower(EMAIL||'@gmail')
    as "full email" from EMPLOYEES;

-- 8. display full addresses from locations table in a single column
-- (full address: Street_Addtess,  CityName  ZipCode,  Country_id)
select (STREET_ADDRESS||''||CITY||' '||POSTAL_CODE||' '||COUNTRY_ID) as "full address" from LOCATIONS;
-- 9. Display employees' first name, Lastname department id and all departments including those where do not have any employee.
select FIRST_NAME, LAST_NAME, e.DEPARTMENT_ID, d.DEPARTMENT_NAME from EMPLOYEES e
right outer join DEPARTMENTS d on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

-- 10. Display the first name, last name, department number, and name, for all employees who have or have not any department
select FIRST_NAME, LAST_NAME, e.DEPARTMENT_ID, d.DEPARTMENT_NAME from EMPLOYEES e
full outer join DEPARTMENTS d on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

-- 11. Display all employee and their manager's names
select e1.FIRST_NAME||' '||e1.LAST_NAME as "employee name", e2.FIRST_NAME||''||e2.LAST_NAME as "manager name"
from EMPLOYEES e1 join EMPLOYEES e2 on e1.MANAGER_ID=e2.EMPLOYEE_ID;

select e1.employee_id,e1.first_name,e1.last_name,e1.manager_id,e2.employee_id,e2.first_name,e2.last_name
from employees e1 join employees e2 on e1.manager_id = e2.employee_id
order by e1.employee_id;