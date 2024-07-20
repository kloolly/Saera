Practice 4: Joins
select * from emp;
select * from dept;

1. Write a query to display the name,
department number, and department name
for all employees.
select emp.ename, emp.deptno, dept.dname
from emp, dept
where emp.deptno = dept.deptno;

2. Create a unique listing of all jobs that are in
department 30.
select distinct emp.job, dept.loc 
from emp, dept
where emp.deptno = dept.deptno and dept.deptno = 30;

3. Write a query to display the employee name,
department name, and location of all
employees who earn a commission.
select emp.ename, dept.dname, dept.loc
from emp join dept on emp.deptno = dept.deptno
where comm is not null;

4. Display the employee name and department
name for all employees who have an A in
their name.
select emp.ename, dept.dname
from emp inner join dept on emp.deptno = dept.deptno
where emp.ename like '%A%';

5. Write a query to display the name, job,
department number, and department name
for all employees who work in DALLAS. dallas คือ deptno 20
select emp.ename, emp.job, dept.deptno, dept.dname
from emp inner join dept on emp.deptno = dept.deptno
where dept.deptno = 20;

6. Display the employee name and employee
number along with their manager’s name and
manager number. Label the columns
Employee, Emp#, Manager, and Mgr#,
respectively.
select e1.ename as "Employee", 
    e1.empno as "Emp#",
	m1.ename as "Manager", 
    m1.empno as "Mgr#"
from emp e1 join emp m1 on e1.mgr = m1.empno
order by m1.empno;
เขียนได้ query ออก แต่ก็ยังงง self join อยู่ดี

7. Modify previous command to display all
employees including King, who has no
manager.
select e1.ename as "Employee", 
    e1.empno as "Emp#",
	m1.ename as "Manager", 
    m1.empno as "Mgr#"
from emp e1 left join emp m1 on e1.mgr = m1.empno
order by m1.empno;

8. Create a query that will display the employee
name, department number, and all the employees
that work in the same department as a given
employee. Give each column an appropriate label.
select * from emp;
select 
    e.deptno as "DEPARTMENT",
	e.ename as "EMPLOYEE",
	c.ename as "COLLEAGUE"
from emp e join emp c on e.deptno = c.deptno
order by e.deptno;

9. Show the structure of the SALGRADE table.
Create a query that will display the name, job,
department name, salary, and grade for all
employees.
select * from salgrade;
select * from emp;
select * from dept;

desc salgrade;

select e.ename, e.job, d.dname, e.sal, s.grade
from emp e join dept d on e.deptno = d.deptno
join salgrade s on e.sal between s.losal and s.hisal;

10. Create a query to display the name and hire
date of any employee hired before employee Blake.
select * from emp;
select * from emp where ename = 'BLAKE';

select ename, hiredate
from emp 
where hiredate < (
    select hiredate
    from emp
    where ename = 'BLAKE'
)
    order by hiredate asc;

11. Display all employees’ names and hire dates
along with their manager’s name and hire date
for all employees who were hired before their
managers. Label the columns Employee, Emp
Hiredate, Manager, and Mgr Hiredate, respectively.
select * from emp;
select 
    e.ename as "Employee",
	e.hiredate as "Emp Hiredate",
    m.ename as "Manager",
	m.hiredate as "Mgr Hiredate"
from emp e
join emp m on e.mgr = m.empno
where e.hiredate < m.hiredate
order by m.hiredate asc;
ทำไมมันเรียงไม่เหมือนในโจทย์ ต้อง order by e.hiredate asc ด้วย ทำไง

12. Create a query that displays the employees
name and the amount of the salaries of the
employees are indicated through asterisks.
Each asterisk signifies a hundred dollars.
Sort the data in descending order of salary.
Label the column
select ename || lpad(' ', sal/100, '*') as "EMPLOYEE_AND_THEIR_SALARIES"
from emp;
LPAD(string, length, lpad_string)
