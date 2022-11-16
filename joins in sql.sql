create table employee_tbl(
empid int unique not null,
emp_name varchar (20) not null,
email varchar(30)not null,
designation varchar(50)not null
)
select*from employee_tbl
insert into employee_tbl values(11,'akash','kuchanakrakash@gmail.com','manager')
insert into employee_tbl values(12,'prakash','kuchanakrprakash@gmail.com','data operator')
insert into employee_tbl values(13,'suraj','kuchanakrsuraj@gmail.com','it incharge')
insert into employee_tbl values(14,'amit','kuchanakaramit@gmail.com','sales manager')
insert into employee_tbl values(15,'mithun','kuchanakarmitthun@gmail.com','operator')

create table department(
deptid int unique not null,
deptname varchar(50) not null,
deptsalary varchar(50)not null,
empid int unique not null
)
select*from employee_tbl
select* from department
insert into department values(111,'adminastration',120000,13)
insert into department values(222,'accounts',130000,12)
insert into department values(333,'it',140000,11)
insert into department values(444,'academic',150000,14)
insert into department values(555,'sport',160000,17)
--inner join
select * from employee_tbl as A  -- sare table
inner join department as B
on A.empid=B.empid;

select A.emp_name,A.designation,B.deptname,B.deptsalary from employee_tbl as A   --inner join ke liye dono table me ek to bhi coloum data same hona chahiye
inner join department as B
on A.empid=B.empid


select A.emp_name,A.designation,B.deptname,B.deptsalary from employee_tbl as A   --left join left ka extra row column display hoga likhine 
																						--second table ki value null dikhayegi
left join department as B
on A.empid=B.empid

select A.emp_name,A.designation,B.deptname,B.deptsalary from employee_tbl as A   																
right join department as B
on A.empid=B.empid

select A.emp_name,A.designation,B.deptname,B.deptsalary from employee_tbl as A   																
full outer  join department as B
on A.empid=B.empid

--self join--
create table employee_manager(
empid int primary key,
emp_name varchar(50)not null,
managerid int 
)
select*from employee_manager
insert into employee_manager values(1,'akash',4)
insert into employee_manager values(2,'prakash',4)
insert into employee_manager values(3,'sunil',5)
insert into employee_manager values(4,'hritik',6)
insert into employee_manager values(5,'salman',1)
insert into employee_manager values(6,'ajay',1)					--self join hamesha ekach table madhe hote 
select*from employee_manager
select A.emp_name as employee, B.emp_name as manager from employee_manager as A
inner join employee_manager as B
on A.managerid=B.empid


select* from   employee_tbl cross join department    -- cross join for all table


select A.empid, A.emp_name as name,B.deptname as department
   from employee_tbl A cross join department B   -- cross join for selected table
   --or--
  select A.empid, A.emp_name as name,B.deptname as department
   from employee_tbl A , department B   --  without cross join key for selected table

  

