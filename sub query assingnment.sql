create table emps(
name varchar(10),
salary decimal(20),
dept varchar(10)
)
select*from emps
insert into emps values('akash',120000,'sales')
insert into emps values('prakash',130000,'engineer')
insert into emps values('atul ',140000,'doctor')
insert into emps values('suraj',150000,'helper')
insert into emps values('dinesh',160000,'tester')
insert into emps values('bhushan',170000,'devloper')
insert into emps values('mithun',180000,'manager')
alter table emps add empsid varchar(20)
update emps set empsid=1 where name='akash'
update emps set empsid=2 where name='prakash'
update emps set empsid=3 where name='atul'
update emps set empsid=4 where name='suraj'
update emps set empsid=5 where name='dinesh'
update emps set empsid=6 where name='bhushan'
update emps set empsid=7 where name='mithun'


select* from emps where salary>  --display emps details whose salary is > avg salary of all emps
(select avg(salary) from emps)


select* from emps where salary>   -- display the emp who is taking higher salary than empid =5
(select salary from emps where empsid=5)




