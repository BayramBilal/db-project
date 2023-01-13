select distinct JOB_ID from EMPLOYEES;

select FIRST_NAME from EMPLOYEES
where JOB_ID = 'ST_CLERK';

select POSTAL_CODE, COUNTRY_ID from LOCATIONS
where COUNTRY_ID = 'JP' OR COUNTRY_ID= 'UK' OR COUNTRY_ID= 'CA';

select CITY from LOCATIONS
where COUNTRY_ID =! 'CH' and 'US';
--get me job_title whose min_salary is more than 4000 and less than 9000

select JOB_TITLE, MIN_SALARY from JOBS
where MIN_SALARY > 4000 and MIN_SALARY <9000;



SELECT JOB_ID, SALARY FROM EMPLOYEES;

create view nameAndSalary as
    select FIRST_NAME, SALARY from EMPLOYEES;

