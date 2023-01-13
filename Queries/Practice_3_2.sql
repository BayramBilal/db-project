-- 1. Show all job_id and average salary who work as any of these jobs IT_PROG, SA_REP, FI_ACCOUNT, AD_VP
select JOB_ID, avg(SALARY) AS "AVERAGE SALARY" from EMPLOYEES
GROUP BY JOB_ID
HAVING JOB_ID in ('IT_PROG', 'SA_REP', 'FI_ACCOUNT', 'AD_VP');
-- 2. Show all records whose last name contains 2 lowercase 'a's
select * from EMPLOYEES
where LAST_NAME like '%a%a%';
-- 3. Display max salary For each department
SELECT JOB_ID, MAX(SALARY) FROM EMPLOYEES
GROUP BY JOB_ID;
-- 4. Display total salary for each department except department_id 50, and where total salary >30000
SELECT SUM(SALARY), DEPARTMENT_ID FROM EMPLOYEES
GROUP BY DEPARTMENT_ID
HAVING SUM(SALARY) >30000 AND DEPARTMENT_ID != 50;
-- 5. Write a SQL query that returns first and last name any employees who started job between 1-JAN-2000 and 3-SEP-2007 from the hr database
SELECT FIRST_NAME, LAST_NAME FROM EMPLOYEES
WHERE HIRE_DATE BETWEEN '2000-01-01' AND '2007-09-03';

SELECT FIRST_NAME, LAST_NAME FROM EMPLOYEES
WHERE HIRE_DATE Like '%2007%';

-- 6. Display country_id, country name, region id, region name from hr database
select c.COUNTRY_ID, c.COUNTRY_NAME, c.REGION_ID, r.REGION_NAME from COUNTRIES
c inner join REGIONS R on c.REGION_ID = R.REGION_ID;

-- 7. Display All cities, country names from hr database
select l.CITY, l.COUNTRY_ID, c. COUNTRY_NAME from LOCATIONS l
inner join COUNTRIES c on l.COUNTRY_ID = c.COUNTRY_ID;

-- 8. display the first name, last name, department number, and department name,  for all employees for departments 80 or 40.
select e.FIRST_NAME, e.LAST_NAME, e.DEPARTMENT_ID, d.DEPARTMENT_NAME from EMPLOYEES e
inner join DEPARTMENTS d on e.DEPARTMENT_ID = d.DEPARTMENT_ID
where d.DEPARTMENT_ID in (80, 40);
-- 9. Display employees' first name, Lastname department id and all departments including those where do not have any employee.
select e.FIRST_NAME, e.LAST_NAME, e.DEPARTMENT_ID, d.department_name from DEPARTMENTS d
        left join EMPLOYEES e on d.DEPARTMENT_ID = e.DEPARTMENT_ID;
-- 10. Display the first name, last name, department number, and name, for all employees who have or have not any department
select e.FIRST_NAME, e.LAST_NAME, e.DEPARTMENT_ID, d.department_name from DEPARTMENTS d
right join EMPLOYEES e on d.DEPARTMENT_ID = e.DEPARTMENT_ID;
-- 11. Display all employee and their manager's names
select e1.FIRST_NAME||' '||e1.LAST_NAME as "employee name", e2.FIRST_NAME||' '||e2.LAST_NAME as "manager name"
from EMPLOYEES e1 join EMPLOYEES e2 on e1.MANAGER_ID = e2.EMPLOYEE_ID;

select e1.FIRST_NAME||' '||e1.LAST_NAME as "employee name", e2.FIRST_NAME||' '||e2.LAST_NAME as "manager name"
from EMPLOYEES e1 join EMPLOYEES e2 on e1.EMPLOYEE_ID = e2.MANAGER_ID;