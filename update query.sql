create table tblemployee(
Id int primary key identity(1,1),
name varchar(30)not null,
state varchar(30),
city varchar(30),
salary decimal
)

insert into tblemployee values('prakash','punjab','pathankot',15000)
insert into tblemployee values('rahim','gujrat','valsad',15000)
insert into tblemployee values('sandip','karnataka','harihar',15000)
insert into tblemployee values('heena','gujrat','rajkot',15000)
insert into tblemployee values('mayur','hariyana','sonipat',15000)
insert into tblemployee values('gujrat','gujrat','surat',15000)

select* from tblemployee


create table tblAuditData(
auditid int primary key identity(1,1),
description varchar(100)
)

create trigger tr_test
on tblemployee
for update
as
begin
select * from deleted 
select * from inserted 
end

--date tblemployee set name='kiran',state= 'rajasthan',city='jaypur',salary=7500 where id =4

create trigger tr_tblemployee_forupdate
on tblemployee
for update 
as 
begin
declare @id int
declare @oldname varchar(30)
declare @oldstate varchar(30)
declare @oldcity varchar(20)
declare @oldsalary int


declare @newname varchar(30)
declare @newstate varchar (30)
declare @newcity varchar(20)
declare @newsalary int
declare @Auditstring varchar(2000)
select * into #Temptable from inserted
While(Exists (select ID from #Temptable))
begin
set @auditstring=''
select Top 1
@id=id, @newname=name, @newstate=state, @newcity=city, @newsalary=salary from #Temptable

select @oldname=name, @oldstate=state, @oldcity=city, @oldsalary=salary from deleted 

set @Auditstring ='employee with id'+cast(@id as varchar(5))+'change to'
if(@oldname<>@newname)
set @Auditstring=@Auditstring+'name from'+ @oldname+'to'+ @newname

if(@oldstate<>@newstate)
set @Auditstring=@Auditstring+'state from'+ @oldstate+'to'+ @newstate 

if(@oldcity<>@newcity)
set @Auditstring=@Auditstring+'city from'+ @oldcity+'to'+ @newcity

if(@oldsalary<>@newsalary)
set @Auditstring=@Auditstring+'salary from'+ cast(@oldsalary as varchar(10)) + 'to'+ cast(@newsalary as varchar(10))
set @auditstring=@auditstring+'on'+cast(getDate() as varchar(25))
insert into tblAuditData values (@Auditstring)
delete from	 #Temptable where id=@id

end
end


update tblemployee set name='kiran',state= 'rajasthan',city='jaypur',salary=7500 where id =4