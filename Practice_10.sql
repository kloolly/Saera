-- Practice 10:Database Tables

-- 1. Create the DEPARTMENT table based on the table instance chart given below. Enter the
-- syntax in a script called p10q1.sql, then execute the script to create the table. Confirm that
-- the table is created.
create table department (
    ID NUMBER(7),
    NAME VARCHAR2(25)
);

-- 2. Populate the DEPARTMENT table with data from the DEPT table. Include only columns that
-- you need.
insert into department(id, name)
    select deptno, dname from dept

-- 3. Create the EMPLOYEE table based on the table instance chart given below. Confirm that the
-- table is created.
create table employee (
    ID NUMBER(7),
    LAST_NAME VARCHAR2(25),
    FIRST_NAME VARCHAR2(25),
    SAL NUMBER(6,2),
    DEPT_ID NUMBER(7)
);

-- 4. Modify the EMPLOYEE table to allow for longer employee last names. Confirm your
-- modification.
alter table employee
modify (LAST_NAME VARCHAR2(50));
alter table employee
modify DEPT_ID NUMBER(7) default 10;

-- 5. Confirm that both the DEPARTMENT and EMPLOYEE tables are stored in the data
-- dictionary. (Hint: USER_TABLES)
select * from user_tables;
select * from user_tables where table_name in ('DEPARTMENT', 'EMPLOYEE');
select table_name from user_tables where table_name in ('DEPARTMENT', 'EMPLOYEE');

-- 6. Create the EMPLOYEE2 table based on the structure of the EMP table, include only the
-- EMPNO, ENAME and DEPTNO columns. Name the columns in your new table ID,
-- LAST_NAME and DEPT_ID, respectively.
create table EMPLOYEE2 as 
    select empno , ename as "LAST_NAME", deptno as "DEPT_ID"
    from emp
    where 1=2;
-- ยังงง where 1=2 อยู่ มันมีหลายแบบนะ มี 1=1, 1=0

-- 7. Drop the EMPLOYEE table.
drop table EMPLOYEE;

-- 8. Rename the EMPLOYEE2 table to EMPLOYEE.
rename EMPLOYEE2 to EMPLOYEE;

-- 9. Add a comment to the DEPARTMENT and EMPLOYEE table definitions describing the
-- tables. Confirm your additions in the data dictionary.
-- ทำไม่เป็น


-- select * from dept;
-- select * from department;
-- desc department;
-- drop table department;
-- desc employee;
-- select * from employee;
-- select * from emp;
-- desc employee2;