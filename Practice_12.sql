-- Practice 12: Views

-- 1. Create a view called EMP_VU2030 based on the employee number, employee name, and
-- department number from the EMP table. Change the heading for the employee name to
-- EMPLOYEE.

select * from emp;
create view EMP_VU2030 as
select empno, ename as "EMPLOYEE", deptno
from emp;

-- 2. Display the content’s of the EMP_VU2030 view.

select * from emp_vu2030;

-- 3. Select the view_name and text from the data dictionary USER_VIEWS.

select * from USER_VIEWS;

-- 4. Using your view EMP_VU, enter a query to display all employee names and department numbers.

select employee, deptno from EMP_VU2030;

-- 5. Create a view named VDEPT20 that contains the employee number, employee name, and
-- department number for all employees in department 20. Do not allow an employee to be
-- reassigned to another department through the view.
select * from emp, dept;
create or replace view VDEPT20 as
select e.empno, e.ename, e.deptno, d.dname
from emp e, dept d
where e.deptno = '20' and e.deptno = d.deptno
with check option;

-- 6. Display the structure and contents of the VDEPT20 view.

desc VDEPT20;
select * from VDEPT20;

-- 7. Attempt to reassign Smith to department 30.
update VDEPT20
set deptno = '30'
where ename = 'SMITH';

select * from VDEPT20;

-- 8. Create a view called SALARY_VU based on the employee name, department name, salary
-- and salary grade for all employees. Label the columns Employee, Department, Salary and
-- Grade, respectively.

select * from emp;
select * from dept;
select * from salgrade;

create or replace view SALARY_VU as
select e.ename as "Employee", d.dname as "Department", e.sal as "Salary", s.grade as "Grade"
from emp e
join dept d on e.deptno = d.deptno
join salgrade s on e.sal between s.losal and s.hisal;

select * from SALARY_VU;
