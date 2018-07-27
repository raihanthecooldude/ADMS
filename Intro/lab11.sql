select e.* from emp e, emp m where m.ename='BLAKE' and e.hiredate>m.hiredate

select e.ename, e.salary, dept.dname, salgrade.grade from emp e, emp m, dept, salgrade where e.deptno=dept.deptno and e.salary between salgrade.losal and salgrade.hisal and e.salary>m.salary and m.ename='JONES'

select e.* from emp e, emp m where m.empno=e.mgr and e.salary>m.salary

select m.empno, count(m.empno) from emp e, emp m where m.empno=e.mgr group by m.empno having count(m.empno)>=2

select m.empno, count(m.empno) from emp e, emp m where m.empno=e.mgr and e.job='ANALYST'group by m.empno

select m.empno, count(*) from emp e, emp m where m.empno=e.mgr group by m.empno having count(*)=(select max(count(*)) from emp group by mgr)