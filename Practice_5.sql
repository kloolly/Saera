-- Practice 5: Group Functions

-- 4. Display the highest, lowest, sum, and average
-- salary of all employees. Label the columns
-- Maximum, Minimum, Sum, and Average,
-- respectively. Round your results to the decimal
-- position.
select
    max(sal) as "Maximum",
    min(sal) as "Minimum",
    sum(sal) as "SumSum",
    round(avg(sal)) as "Average"
from emp;

-- 5. Modify previous command to display the minimum,
-- maximum, sum, and average salary for each job
type.
select
    job,
    max(sal) as "Maximum",
    min(sal) as "Minimum",
    sum(sal) as "SumSum",
    round(avg(sal)) as "Average"
from emp
group by job
order by job;

-- 6. Write a query to display the number of people with
-- the same job.
select job, count(*) from emp group by job;

-- 7. Determine the number of managers without
-- listing them. Label the column Number of
-- Managers.

-- 8. Write a query that will display the difference
-- between the highest and lowest salaries. Label
-- the column DIFFERENCE.
select max(sal)-min(sal) as "DIFFERENCE" from emp;

-- 9. Display the manager number and the salary of
-- the lowest paid employee for that manager.
-- Exclude anyone where the manager id is not
-- known. Exclude any groups where the minimum
-- salary is less than $1000. Sort the output in
-- descending order of salary.
select 
    e.mgr, 
    min(sal)
from emp e where e.mgr is not null
group by e.mgr having min(sal) >1000
order by min(sal) desc;

-- 10. Write a query to display the department name,
-- location name, number of employees, and the
-- average salary for all employees in that
-- department. Label the columns’ dname, loc,
-- Number of People, and Salary, respectively.
select 
 	d.dname,
	d.loc,
	count(e.deptno)as "Number of People",
	round(avg(e.sal),2) as "Salary"
from dept d join emp e on d.deptno = e.deptno
group by d.dname, d.loc
order by d.dname;

-- 11. Create a query that will display the total number
-- of employees and of that total the number
-- who were hired in 1980, 1981, 1982, and
-- 1983, label the columns appropriately.
-- select * from emp;
-- desc emp;
select hiredate from emp where extract(year from hiredate) = 1980;
select distinct
    (select count(empno) from emp) as "TOTAL",
    (select count(empno) from emp where extract(year from hiredate) = 1980) as "1980",
    (select count(empno) from emp where extract(year from hiredate) = 1981) as "1981",
    (select count(empno) from emp where extract(year from hiredate) = 1982) as "1982",
    (select count(empno) from emp where extract(year from hiredate) = 1983) as "1983"
from emp;

-- 12. Create a matrix query to display the job, the
-- salary for that job based upon department
-- number and the total salary for that job for all
-- departments, giving each column an appropriate
-- label.
select job,
    sum(case when deptno =10 then sal else null end) as "Dept 10",
    sum(case when deptno =20 then sal else null end) as "Dept 20",
    sum(case when deptno =30 then sal else null end) as "Dept 30",
    sum(sal) as "TOTAL"
from emp
group by job
order by job asc;

-- CASE
--     WHEN condition1 THEN result1
--     WHEN condition2 THEN result2
--     WHEN conditionN THEN resultN
--     ELSE result
-- END;
