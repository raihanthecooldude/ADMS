create table pro_details (pid number(5) primary key, pname varchar(10) not null, ptype varchar(10) default 'xyz')

describe pro_details

insert into pro_details (pid, ptype) values (4, 'YOLO')

insert into pro_details (pid, pname) values (4, 'Pen')

insert into pro_details (pid, pname) values (4, 'Book')

select * from pro_details