-- 1. List all the employees' first and last name with their salary in employees table
select FIRST_NAME, LAST_NAME, salary from EMPLOYEES;

-- 2. how many employees have salary less than 5000?
select count (*) from EMPLOYEES
where SALARY < 5000;
-- 3. how many employees have salary between 6000 and 7000?
select count (*) from EMPLOYEES
where SALARY between 6000 and 7000;
-- 4. List all the different region_ids in countries table
select distinct REGION_ID from COUNTRIES;
-- 5. display the salary of the employee Grant Douglas (lastName: Grant,  firstName: Douglas)
select SALARY from EMPLOYEES
where FIRST_NAME = 'Douglas' and LAST_NAME = 'Grant';

-- 6. display the maximum salary in employees table
select max(salary) from EMPLOYEES;

-- 7. display all informations of the employee who has the highest salary in employees table
select * from EMPLOYEES
where salary = (select max(salary) from EMPLOYEES);
-- 8. display the the second maximum salary from the employees table
select max(salary) from EMPLOYEES
where SALARY not in (select max(salary) from EMPLOYEES);
-- 9. display all informations of the employee who has the second highest salary
select max(SALARY) from EMPLOYEES
where salary = (select max(salary) from EMPLOYEES
where SALARY not in (select max(salary) from EMPLOYEES));
-- 10. display the the minimum salary in employees table
select min(SALARY) from EMPLOYEES;
-- 11. display all informations of the employee who has the minimum salary in employees table
select  * from EMPLOYEES
    where salary = (select min(SALARY) from EMPLOYEES);
-- 12. display the second minimum salary from the employees table
select min(SALARY) from EMPLOYEES
where SALARY not in ( (select min(SALARY) from EMPLOYEES));
-- 13. display all informations of the employee who has the second minimum salary
select * from EMPLOYEES
where SALARY = (select min(SALARY) from EMPLOYEES
                where SALARY not in ( (select min(SALARY) from EMPLOYEES)));
-- 14. display the average salary of the employees;
select avg(SALARY) from EMPLOYEES;
-- 15. list all the employees who are making above the average salary;
-- 16. list all the employees who are making less than the average salary
-- 17. count the total numbers of the departments in departs table
-- 18. sort the start_date in ascending order in job_history's table
-- 19. sort the start_date in descending order in job_history's table
-- 20. list all the employees whose first name starts with 'A'
-- 21. list all the employees whose job_ID contains 'IT'
-- 22. list all the employees whose department id in 50, 80, 100
