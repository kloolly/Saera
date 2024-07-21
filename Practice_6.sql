-- Practice 6: Sub-queries

-- 1. Write a query to display the employee name
-- and hire date for all employees in the same
-- department as Blake. Exclude Blake.
select ename, hiredate
from emp
where deptno like (
    select deptno
    from emp
    where ename like 'BLAKE%'
)
and ename not like 'BLAKE%';

-- 2. Create a query to display the employee
-- number and name for all employees who earn more
-- than the average salary. Sort the results in
-- descending order of salary.
select 
    empno as "EMPNO",
	ename as "ENAME"
from emp
where sal > (
    select avg(sal)
    from emp
)
    order by sal desc;

-- 3. Write a query that will display the employee
-- number and name for all employees who work in a
-- department with any employee whose name contains
-- a T. Save your SQL statement in a file called
-- p6q3.sql.
select empno, ename
from emp
where deptno in (
    select deptno from emp where ename like '%T%'
);

-- 4. Display the employee name, department
-- number, and job title for all employees whose
-- department location is Dallas.
select ename, deptno, job
from emp
where deptno = (
    select deptno from dept where loc = 'DALLAS'
);

-- 5. Display the employee name and salary of all
-- employees who report to King.
select ename, sal from emp where mgr = '7839';
select ename, sal, mgr
from emp
where mgr in (
    select empno
    from emp
    where ename = 'KING'
);

-- 6. Display the department number, name, and
-- job for all employees in the Sales department.
select deptno, ename, job
from emp where deptno like (
    select deptno from dept where dname like 'SALES%'
);

-- 7. Modify p6q3.sql to display the employee
-- number, name, and salary for all employees who earn
-- more than the average salary and who work in a
-- department with any employee with a T in their
-- name. Resave as p6q7.sql. Rerun your query.
select empno, ename, sal
from emp
where deptno in (
    select deptno from emp where ename like '%T%'
) 
    and sal > (
    select avg(sal) from emp 
    )
order by sal desc
;

