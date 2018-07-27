create table AIUB_YOLO (DEPT_ID number (20), DEPT_CODE varchar (10), DEPT_NAME varchar (100))

insert into AIUB_YOLO values (1, 'Math', 'Mathematics')

insert into AIUB_YOLO values (2, 'CSE', 'Computer Science and Engineering')

insert into AIUB_YOLO values (3, 'BAN', 'Business Administration')

insert into AIUB_YOLO values (4, 'IPE', 'Industrial and Production Engineering')

insert into AIUB_YOLO values (5, 'ENG', 'English')

insert into AIUB_YOLO values (6, 'ChE', 'Chemical Engineering')

select * from AIUB_YOLO

select * from AIUB_YOLO where dept_id>3

select dept_id, dept_name from AIUB_YOLO

select * from AIUB_YOLO where dept_code='CSE'

select * from AIUB_YOLO where dept_id>=4

alter table AIUB_YOLO add CAPACITY number(35)

update AIUB_YOLO set dept_code='Maths' where dept_id=1