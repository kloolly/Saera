-- Practice 5: Group Functions

-- 4. Display the highest, lowest, sum, and average
-- salary of all employees. Label the columns
-- Maximum, Minimum, Sum, and Average,
-- respectively. Round your results to the decimal
-- position.
-- select
--     max(sal) as "Maximum",
--     min(sal) as "Minimum",
--     sum(sal) as "SumSum",
--     round(avg(sal)) as "Average"
-- from emp

    -- 5. Modify previous command to display the minimum,
-- maximum, sum, and average salary for each job
-- type.

-- select * from emp;

-- select
--     job,
--     max(sal) as "Maximum",


--     min(sal) as "Minimum",
--     sum(sal) as "SumSum",
--     round(avg(sal)) as "Average"
-- from emp
-- group by job
-- order by job;

-- 6. Write a query to display the number of people with
-- the same job.

-- select job, count(*) from emp group by job;