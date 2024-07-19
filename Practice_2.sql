-- Practice 2: Restricting and Sorting Data
-- link YouTube
-- https://youtu.be/jXQwodmp4U0

-- 1. Create a query to display the name and salary of employees earning more than
-- $2850. Save your SQL statement to a file named p2q1.sql. Run your query.
-- select ename, sal
-- from emp 
-- where sal > 2850;

-- 2. Create a query to display the employee name and department number for
-- employee number 7566.
-- select ename, deptno
-- from emp
-- where empno = 7566;

-- 3. Modify p2q1.sql to display the name and salary for all employees whose salary is
-- not in the range of $1500 and $2850. Resave your SQL statement to a file named p2q3.sql.
-- Rerun your query.
-- select ename, sal 
-- from emp
-- where sal not between 1500 and 2850;

-- 4. Display the employee name, job and start date of employees hired between
-- February 20, 1981, and May 1, 1981. Order the query in ascending order of start date.
-- select ename, job, hiredate
-- from emp
-- where hiredate between '20-FEB-81' and '01-MAY-81'
-- order by hiredate asc;

-- 5. Display the employee name and department number of all employees in
-- departments 10 and 30 in alphabetical order by name.
-- select ename, deptno
-- from emp
-- where deptno = '10' or deptno = '30';

-- 6. Modify p2q3.sql to list the name and salary of employees who earn more than
-- $1500 and are in department 10 or 30. Label the columns Employee and Monthly Salary,
-- respectively. Resave your SQL statement to a file named p2q6.sql. Rerun your query.
-- select ename as "Employee", sal as "Monthly Salary"
-- from emp
-- where sal > 1500 and (deptno = '10' or deptno = '30');

-- 7. Display the name and hire date of every employee who was hired in 1982.
-- select ename, hiredate
-- from emp
-- where hiredate between '01-JAN-82' and '31-DEC-82';

-- 8. Display the name and title of all employees who do not have a manager.
-- select ename, job
-- from emp
-- where mgr is null;

-- 9. Display the name, salary, and commission for all employees who earn commissions.
-- Sort data in descending order of salary and commissions.
-- select ename, sal, comm
-- from emp
-- where comm is not null
-- order by sal desc;

-- 10. Display the names of all employees where the third letter of their name is an A.
-- select ename from emp where ename like '__A__';

-- 11. Display the name of all employees that have two Ls in their name and are in
-- department 30 or their manager is 7782.
-- select ename
-- from emp
-- where ename like '%LL%';

