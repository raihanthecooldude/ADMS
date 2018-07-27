create or replace view Dept_10 as select * from emp where deptno=10

create or replace view Emp_V as select emp.empno, emp.ename, emp.sal, dept.dname, salgrade.grade from emp, dept, salgrade where emp.deptno=dept.deptno and emp.sal between salgrade.losal and salgrade.hisal

create or replace view Emp_of_Dhaka as select emp.* from emp, dept where emp.deptno=dept.deptno and dept.loc='DHAKA'

update Dept_10 set comm=500 where comm is NULL