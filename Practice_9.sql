Practice 9: DML and Database Transactions
Insert data into the MYEMP table.
1. Run the script below to build the MYEMP table (from EMP) that will be used for the lab.

create table MYEMP
as select * from emp where 1=2;

2. Add the 4 rows of data to the MYEMP table from the sample data below.
insert into myemp
values (1, 'RALPH'	, 'MANAGER'	, null	, to_date('18-FEB-21', 'DD-MON-YY')	, 1500	, null	, 10);
insert into myemp
values (2, 'BETTY'	, null		, 1		, to_date('18-FEB-21', 'DD-MON-YY')	, 1100	, null	, 20);
insert into myemp
values (3, 'BEN'	, null		, 2		, to_date('18-FEB-21', 'DD-MON-YY')	, 800	, null	, 10);
insert into myemp
values (4, 'NEWMAN'	, null		, 1		, to_date('18-FEB-21', 'DD-MON-YY')	, 750	, null	, 20);

3. Change the last name of employee ID=2 to Drexler.

update myemp
set ename = 'Drexler'
where empno = 2;

4. Change the salary to 1000 for all employees with a salary less than 900.

update myemp
set sal = 1000
where sal < 900;

5. Verify your changes to the table.
select * from myemp order by empno;

6. Delete NEWMAN from the MYEMP table.
delete from myemp
    where ename like 'NEWMAN%'

7. Confirm your changes to the table.
select * from myemp order by empno;

8. ใน MYEMP ให้ย้าย BEN ไปแผนก 30 และเปลี่ยนตำแหน่ง (JOB) ให้เป็นตำแหน่งเดียวกับ RALPH
update myemp
set deptno = 30, job = (
    select job from myemp where ename = 'RALPH'
)
where ename = 'BEN';

คำสั่ง
1. เริ่ม transaction ใหม่
2. เพิ่มเงินเดือนให้พนง คนละ 20%
3. set savepoint A
4. ย้ายพนง แผนก 10 ไป 40
5. set savepoint B
6. ลบ commission ออกให้มีค่าเป็น Null ทุกรายการ
7. select ข้อมูล EMP ปัจจุบัน
8. rollback ไป savepoint B
9. select ข้อมูล EMP ปัจจุบัน
10. rollback ไป savepoint A
11. select ข้อมูล EMP ปัจจุบัน
12. rollback ไปจุดเริ่มต้น
13. select ข้อมูล EMP ปัจจุบัน
