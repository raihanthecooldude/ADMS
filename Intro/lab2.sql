1. select empno,ename,salary,round(salary,2) from emp order by salary*12 asc
2. select empno,ename,salary from emp where mgr=7369
3. select * from emp where comm>salary
4. select * from emp where deptno!=20
5. select empno,ename,salary,deptno from emp where deptno=10 order by salary asc
6. select * from emp where salary*12 between 23000 and 40000
7. select * from emp where mgr in (7369,7890,7654,7900)
8. select * from emp where job in ('CLERK','ANALYST') order by salary desc
9. select empno,ename,job,deptno from emp where job in ('MANAGER','ANALYST') and salary between 2000 and 4000
10. select empno,ename,hiredate,salary from emp where hiredate>'31-DEC-1982' and salary>1700 order by hiredate
11. select * from emp where job in ('SALESMAN','ANALYST') and deptno in (10,20) and salary between 1500 and 2800
