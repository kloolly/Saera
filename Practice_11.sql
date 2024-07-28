-- Practice 11
-- from new SQL worksheet run <db4010_sql_script01.sql> then <Practice_10.sql> 

-- 1. Add a table level PRIMARY KEY constraint to the EMPLOYEE table using the ID column.
-- The constraint should be enabled at creation.

alter table employee
    add constraint pk_employee_dept_id primary key (DEPT_ID);
desc employee

-- 2. Create a PRIMARY KEY constraint on the DEPARTMENT table using the ID column. The
-- constraint should be enabled at creation.t

alter table department
    add constraint pk_departmentt_id primary key (ID);
desc department

-- 3. Add a foreign key reference on the EMPLOYEE table that will ensure that the employee is
-- not assigned to a nonexistent department.

alter table EMPLOYEE
add constraint EMPLOYEE_DEPT_ID_fk foreign key (DEPT_ID) references dept (deptno);

-- 4. Confirm that the constraints were added by querying USER_CONSTRAINTS. Note the types
-- and names of the constraints. Save your statement text in a file called p11q4.sql.
    
select * from USER_CONSTRAINTS;

-- 5. Display the object names and types from the USER_OBJECTS data dictionary view
-- EMPLOYEE and DEPARTMENT tables. You may want to format the columns for
-- readability. Notice that the new tables and a new index were created.
    
select * from USER_OBJECTS;

-- 6. Modify the EMPLOYEE table. Add a SALARY column of NUMBER data type, precision 7.
select * from EMPLOYEE;
desc EMPLOYEE;
alter table employee
add salary number(7);
