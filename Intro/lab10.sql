select ename, empno , dept.* from emp, dept where emp.deptno=dept.deptno and dname in ('ACCOUNTING','MARKETING') and job in ('MANAGER','CLERK')

select ename,empno,dname,loc from emp,dept where emp.deptno=dept.deptno and loc!='DALLAS'

select dname,loc from emp,dept where emp.deptno=dept.deptno and mgr=(select empno from emp where ename='CLARK')

select dept.* from emp,dept where emp.deptno=dept.deptno and empno in (select mgr from emp)

select emp.*,dname,loc from emp,dept where emp.deptno=dept.deptno and loc='DALLAS'

select empno,ename,dname,sal,loc from emp,dept where emp.deptno=dept.deptno and dname='SALES' and sal=(select max(sal) from emp where dname='SALES')

select emp.*,dname,loc from emp, dept where emp.deptno=dept.deptno and (job=(select job from emp where ename='MILLER') or sal>(select sal from emp where ename='ALLEN'))





select empno,ename,loc,sal,dname from emp,dept where emp.deptno=dept.deptno and emp.deptno=(select deptno from emp where ename='KING') and ename!='KING'

select sum(sal+nvl(comm,0)) from emp,dept where emp.deptno=dept.deptno and job='SALESMAN' and dname='SALES'

select empno,ename,sal,dname from emp,dept where emp.deptno=dept.deptno and job='ANALYST' and loc in ('NEW YORK','DALLAS') and hiredate<'01-JAN-10' and comm is NULL and empno in (select mgr from emp) order by loc asc
