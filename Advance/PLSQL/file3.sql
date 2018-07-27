1.
create or replace procedure p(d in dept.deptno%type, n out dept.dname%type, l out dept.loc%type, noe out number)
is
begin
select dname, loc into n, l from dept where deptno=d;
select count(*) into noe from emp where deptno=d group by deptno;
end;

declare
d dept.deptno%type:= :DeptNo;
n dept.dname%type;
l dept.loc%type;
noe number(5);
begin
p(d, n, l, noe);
dbms_output.put_line('Name: ' || n);
dbms_output.put_line('Locatoion: ' || l);
dbms_output.put_line('No of Emp: ' || noe);
end;


2.
create or replace procedure p(n in emp.ename%type, s out emp.sal%type, c out emp.comm%type, so out number)
is
begin
select sal, nvl(comm, 0) into s, c from emp where ename=n;
so:=s+c;
end;

declare
n emp.ename%type:= :EmpName;
s emp.sal%type;
c emp.comm%type;
so number(5);
begin
p(n,s,c,so);
dbms_output.put_line('Sal: ' || s);
dbms_output.put_line('Comm: ' || c);
dbms_output.put_line('Sum+Comm: ' || so);
end;

3.
--function
create or replace function f(d emp.deptno%type)
return boolean 
is
cursor c is select deptno from emp;

begin
for i in c loop
if(i.deptno=d)then
return true;
end if;
end loop;
return false;
end;


--Procedure
create or replace procedure p (empn in emp.empno%type, enam in emp.ename%type, jo in emp.job%type, mg in emp.mgr%type, hiredat emp.hiredate%type, sa in emp.sal%type, com in emp.comm%type, deptn in emp.deptno%type)
is

begin
if (f(deptn)) then
insert into emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) values (empn, enam, jo, mg, hiredat, sa, com, deptn);
end if;
end;

declare
empn emp.empno%type:= :EmpNo;
enam emp.ename%type:= :EmpName;
jo emp.job%type:= :Job;
mg emp.mgr%type:= :MGR;
hiredat emp.hiredate%type:= :hiredate;
sa emp.sal%type:= :Sal;
com emp.comm%type:= :Comm;
deptn emp.deptno%type:= :DeptNo;

begin
p(empn, enam, jo, mg, hiredat, sa, com, deptn);
dbms_output.put_line('Done');
end;