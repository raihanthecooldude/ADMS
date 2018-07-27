1.
declare
cid number(5):= :CustomerID;
cursor c is select productid from sales where customerid=cid;
begin
for i in c loop
dbms_output.put_line(i.productid);
end loop;
end;

2.
declare
cid number(5):= :CustomerID;
coun number(2):=0;
cursor c is select productid from sales where customerid=cid;
begin
for i in c loop
coun:=coun+1;
end loop;
dbms_output.put_line(coun);
end;

3.
declare
cursor c is select * from product order by productid asc;
begin
for i in c loop
dbms_output.put_line('ID: ' || i.productid || '  Price: ' || i.price);
end loop;
end;

4.
declare
cursor c is select * from sales order by customerid desc;
begin
for i in c loop
dbms_output.put_line('CID: ' || i.customerid || '  PID: ' || i.productid || ' Quantity: ' || i.quantity);
end loop;
end;