-- Practice 11
-- from new SQL worksheet run <db4010_sql_script01.sql> then <Practice_10.sql> 

-- 1. Add a table level PRIMARY KEY constraint to the EMPLOYEE table using the ID column.
-- The constraint should be enabled at creation.

-- alter table employee
--     add constraint pk_employee_dept_id primary key (DEPT_ID);
-- desc employee

-- 2. Create a PRIMARY KEY constraint on the DEPARTMENT table using the ID column. The
-- constraint should be enabled at creation.

select * from department

alter table department
    add constraint pk_departmentt_id primary key (ID);

desc department
