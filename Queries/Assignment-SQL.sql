-- 1-Can you display sales person names ending with “th”?


-- 2-Can you display company names for company_id 21,32,412,43,25 ?
select DEPARTMENT_NAME, DEPARTMENT_ID from DEPARTMENTS
where DEPARTMENT_ID in (21, 32, 40, 43, 50);

-- 3-How many Sales person we have in total ?

select  count (*) FIRST_NAME
from EMPLOYEES
where FIRST_NAME like '%a%';

-- 4-Can you display the sales person name who made a sale to company name  “Walmart”?



-- 5-Can you display average sales amount for each sales person id?