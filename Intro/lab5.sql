1. select * from emp where sal+nvl(comm,0)>2000
2. select max(hiredate), min(hiredate) from emp
3. select * from emp where (sal<2500 or sal>5000) and deptno in (10,20)
4. select avg(sal) from emp where job in ('CLERK','ANALYST') and deptno in (10,20)
5. select sum(sal), round(avg(sal),2) from emp where empno!=6288
6. select sum(sal) from emp where job in ('MANAGER','ANALYST') and sal>2000
7. select count(*) from emp where job='ANALYST'
8. select deptno, count(*) from emp where job in ('ANALYST','MANAGER') group by deptno
9. select deptno, count(empno) from emp group by deptno having count(empno)<3
10. select deptno, count(empno) from emp where job='MANAGER' group by deptno having count(empno)>3
11. select deptno, sum(sal) from emp where job in ('SALESMAN', 'MANAGER') group by deptno having avg(sal)>2500
