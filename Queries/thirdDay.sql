/*
create table syntax:
    create table TableName(
        colName1 DataType Constraints,
        colName2 DataType Constraints(optional)
        colName3 DataType Constraints,
        ...
    );
*/
CREATE TABLE SCRUMTEAM_bilal(
            EMP_ID Integer Primary Key,
            FirstName varchar(30) not null,
            LastName varchar(30),
            JobTitle varchar(20)

);
select * from SCRUMTEAM_bilal;
/*
INSERT INTO tableName (column1, column2,…)
VALUES (value1, value2 … );
*/

INSERT INTO SCRUMTEAM_bilal (EMP_ID,FirstName, LastName, JobTitle)
VALUES (1,'KENAN','EVNİ','QA');

INSERT INTO SCRUMTEAM_bilal VALUES (2,'Tom', 'Gray','Developer');
INSERT INTO SCRUMTEAM_bilal VALUES (3,'Bill', 'Green','SDET');
INSERT INTO SCRUMTEAM_bilal VALUES (4,'Celil', 'Bal','PO');
INSERT INTO SCRUMTEAM_bilal VALUES (5,'Tarik', 'Koc','SM');

--how to update data
/*
UPDATE table_name
SET column1 = value1,
column2 = value2 , …
WHERE condition;
*/

UPDATE SCRUMTEAM_bilal
SET jobtitle = 'Tester'
WHERE emp_id = 4;

UPDATE SCRUMTEAM_bilal
SET FirstName = 'Burhan'
WHERE emp_id = 5;

DELETE FROM SCRUMTEAM_bilal
WHERE EMP_ID = 4;

UPDATE SCRUMTEAM_bilal
SET EMP_ID = 4
WHERE emp_id = 5;

--saving changes
commit;


ALTER TABLE SCRUMTEAM_bilal ADD Salary INTEGER;

UPDATE SCRUMTEAM_bilal
SET Salary = 100000
WHERE emp_id = 1;

UPDATE SCRUMTEAM_bilal
SET Salary = 102000
WHERE emp_id = 2;

UPDATE SCRUMTEAM_bilal
SET Salary = 110000
WHERE emp_id = 3;
UPDATE SCRUMTEAM_bilal
SET Salary = 130000
WHERE emp_id = 4;


--rename the column

alter table SCRUMTEAM_bilal rename column Salary to Annual_salary;

--delete, drop column
ALTER TABLE SCRUMTEAM_bilal DROP COLUMN Annual_salary;

*
create table syntax:
create table TableName(
                          colName1 DataType Constraints,
                          colName2 DataType Constraints(optional)
                              colName3 DataType Constraints,
    ...
);
*/
CREATE TABLE SCRUMTEAM_bilal(
                                EMP_ID Integer Primary Key,
                                FirstName varchar(30) not null,
                                LastName varchar(30),
                                JobTitle varchar(20)

);
select * from SCRUMTEAM_bilal;
/*
INSERT INTO tableName (column1, column2,…)
VALUES (value1, value2 … );
*/

INSERT INTO SCRUMTEAM_bilal (EMP_ID,FirstName, LastName, JobTitle)
VALUES (1,'KENAN','EVNİ','QA');

INSERT INTO SCRUMTEAM_bilal VALUES (2,'Tom', 'Gray','Developer');
INSERT INTO SCRUMTEAM_bilal VALUES (3,'Bill', 'Green','SDET');
INSERT INTO SCRUMTEAM_bilal VALUES (4,'Celil', 'Bal','PO');
INSERT INTO SCRUMTEAM_bilal VALUES (5,'Tarik', 'Koc','SM');

--how to update data
/*
UPDATE table_name
SET column1 = value1,
column2 = value2 , …
WHERE condition;
*/

UPDATE SCRUMTEAM_bilal
SET jobtitle = 'Tester'
WHERE emp_id = 4;

UPDATE SCRUMTEAM_bilal
SET FirstName = 'Burhan'
WHERE emp_id = 5;

DELETE FROM SCRUMTEAM_bilal
WHERE EMP_ID = 4;

UPDATE SCRUMTEAM_bilal
SET EMP_ID = 4
WHERE emp_id = 5;

--saving changes
commit;


ALTER TABLE SCRUMTEAM_bilal ADD Salary INTEGER;

UPDATE SCRUMTEAM_bilal
SET Salary = 100000
WHERE emp_id = 1;

UPDATE SCRUMTEAM_bilal
SET Salary = 102000
WHERE emp_id = 2;

UPDATE SCRUMTEAM_bilal
SET Salary = 110000
WHERE emp_id = 3;
UPDATE SCRUMTEAM_bilal
SET Salary = 130000
WHERE emp_id = 4;


--rename the column

alter table SCRUMTEAM_bilal rename column Salary to Annual_salary;

--delete, drop column
ALTER TABLE SCRUMTEAM_bilal DROP COLUMN Annual_salary;


--how to change table name ?
ALTER TABLE SCRUMTEAM_bilal RENAME TO agileteam_bilal;

select * from agileteam_bilal;

commit;


--truncate, if we want to delete all data from the table, but still keep the table structure, we use truncate

TRUNCATE TABLE agileteam_bilal;

--If we want to delete the table and data together
DROP table agileteam_bilal;


CREATE TABLE laptop(
                       id Integer Primary Key,
                       brand varchar(25),
                       color varchar(25),
                       price Integer
);