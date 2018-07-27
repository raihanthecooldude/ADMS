select ename, empno , dept.* from emp, dept where emp.deptno=dept.deptno and dname in ('ACCOUNTING','MARKETING') and job in ('MANAGER','CLERK')

select ename,empno,dname,loc from emp,dept where emp.deptno=dept.deptno and loc!='DALLAS'

select dname,loc from emp,dept where emp.deptno=dept.deptno and mgr=(select empno from emp where ename='CLARK')

select dept.* from emp,dept where emp.deptno=dept.deptno and empno in (select mgr from emp)

select emp.*,dname,loc from emp,dept where emp.deptno=dept.deptno and loc='DALLAS'

select empno,ename,dname,sal,loc from emp,dept where emp.deptno=dept.deptno and dname='SALES' and sal=(select max(sal) from emp where dname='SALES')

select emp.*,dname,loc from emp, dept where emp.deptno=dept.deptno and (job=(select job from emp where ename='MILLER') or sal>(select sal from emp where ename='ALLEN'))
