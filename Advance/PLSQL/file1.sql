1.
declare
a number(5):= :Input;

begin

while a>0
loop 
if mod(a, 2)!=0 then
dbms_output.put_line(a);
end if;
a:=a-1;
end loop;
end


2.
declare
a number(5):= :One;
b number(5):= :Two;
c number(5):= :Three;
value number(5);
i number(5);
area float(5);

begin

for i in 1..3 loop
if i=1 then
value:=a;
elsif i=2 then
value:=b;
elsif i=3 then
value:=c;
end if;
area:=3.1416*value*value;
dbms_output.put_line(area);

end loop;

end

