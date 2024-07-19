-- Practice 3: Single-Row Functions

-- 1. Write a query to display the current date. Label the column Date.
-- select sysdate from dual;

-- 2. Display the employee number, name, salary, and salary increase by 15% expressed as a
-- whole number. Label the column New Salary. Save your SQL statement to a file named
-- p3q2.sql.
-- select empno, ename, sal, round(sal*1.15) as "New Salary"
-- from emp;

-- 4. Modify your query p3q2.sql to add an additional column that will subtract the old salary from
-- the new salary. Label the column Increase. Rerun your query.
-- select empno, ename, sal, round(sal*1.15) as "New Salary", round(sal*1.15) - sal as "Salary Increase"
-- from emp;

-- 5. Display the employee’s name, hire date, and salary review date, which is the first Monday
-- after six months of service. Label the column REVIEW. Format the dates to appear in the
-- format similar to "Sunday, the Seventh of September, 1981."
-- ไว้ก่อน ติดตรง sp

-- 6. For each employee display the employee name and calculate the number of months between
-- today and the date the employee was hired. Label the column MONTHS_WORKED. Order
-- your results by the number of months employed. Round the number of months up to the
-- closest whole number.
-- select ename, /* hiredate, */
--     ceil(months_between(sysdate, hiredate)) as "MONTHS_WORKED"
-- from emp
-- order by MONTHS_WORKED asc;

-- 7. Write a query that produces the following for each employee:
-- <employee name> earns <salary> monthly but wants <3 times salary>. Label the column
-- Dream Salaries.
-- select ename || 'earns $' || to_char(sal, '9999.99') || ' monthly but wants $' || to_char((sal*3), 99999.99)
--     as "Dream Salaries"
-- from emp;

-- 8. Create a query to display name and salary for all employees. Format the salary to be 15
-- characters long, left-padded with $. Label the column SALARY.
-- LPAD(string, length, lpad_string)
-- select ename, lpad(sal, 15, '$') as "SALARY"
-- from emp;

-- 9.Write a query that will display the employee’s name with the first letter capitalized and all other
-- letters lowercase and the length of their name, for all employees whose name starts with J, A, or M.
-- Give each column an appropriate label.
-- select initcap(ename) as "Name", 
--     length(trim(ename)) as "Length"
-- from emp
-- where ename like 'J%' or ename like 'A%' or ename like 'M%';

-- 10. Display the name, hire date, and day of the week on which the employee started. Label
-- the column DAY. Order the results by the day of the week starting with Monday.
-- select ename, hiredate,
--     to_char(hiredate,'Day') as "DAY"
-- from emp
-- order by to_char(hiredate, 'D');
-- ทำยังไงให้เริ่มต้นด้วยวันจันทร์

-- 11. Create a query that will display the employee name and commission amount. If the employee
-- does not earn commission, put “No Commission”. Label the column COMM.
-- select ename,
-- case when comm is null then 'No Commission'
-- else to_char(comm) end as "COMM"
-- from emp;
