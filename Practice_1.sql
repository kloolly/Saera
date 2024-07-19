-- Practice 1
-- link Youtube
-- https://youtu.be/MLUdg7tL67k

-- 3. Will the SELECT statement execute successfully?
-- True/False
-- SELECT rownum, ename, job, sal Salary FROM emp;

-- 4. Will the SELECT statement execute successfully?
-- True/False
-- SELECT * FROM salgrade;

-- 5. There are three coding errors in this statement,. Can you identify them?
-- SELECT empno, ename salary x 12 ANNUAL SALARY FROM emp;

-- 6. Show the structure of the DEPT table. Select all data from the DEPT table.
-- select deptno, dname, loc from dept;

-- 7. Show the structure of the EMP table. Create a query to display the name, job, hire
-- date and employee number for each employee, with employee number appearing first.
-- select empno, ename, job, hiredate from emp;

-- 9. Create a query to display unique jobs from the EMP table.
-- select distinct job from emp;

-- 10. Name the column headings Emp #, Employee, Job, and Hire Date, respectively. Run
-- your query.
-- select empno as "Emp #", ename as "Employee", job as "Job", hiredate as "Hire Date"
-- from emp;

-- 11. Display the name concatenated with the job, separated by a comma and space, and
-- label the column Employee and Title.
-- select ename||','||job as "Employee and Title" from emp;

-- 12. Create a query to display all the data from the EMP table. Separate each column by
-- a comma. Label the column THE_OUTPUT.
-- select empno||','||ename||','||job||','||mgr||','||Hiredate||','||sal||','||comm||','||deptno as "THE_OUTPUT"
-- from emp;
