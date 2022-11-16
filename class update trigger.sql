
select * from tblemployee


create table empaudit
(
auditid int primary key identity(1,1),
description varchar(100)
)





CREATE trigger [dbo].[tr_employee_forup]
on [dbo].[tblemployee] after update
as begin
declare @id int
declare @oldname varchar(20),@newname varchar(20)
declare @oldstate varchar(20),@newstate varchar(20)
declare @oldcity varchar(20),@newcity varchar (20)
declare @auditstr varchar(1000)
select * into #TempTable from inserted
while(Exists(select Id from #TempTable))
begin
set @auditstr=''
select Top 1 @id=Id,@newname=Name,@newstate=state, @newcity=city
from #TempTable
select @oldname=Name,@oldstate=state, @oldcity=city
where Id=@id
set @auditstr='emp with id '+ cast(@id as varchar(5))+'change'
if(@oldname<>@newname)
set @auditstr=@auditstr+' old name '+@oldname +'new name '+@newname
if(@oldstate<>@newstate )
set @auditstr=@auditstr+' old state' +@oldstate +'new state'+@newstate
if(@oldcity<>@newcity)
set @auditstr=@auditstr+'old city'+ @oldcity +'new city' +@newcity
insert into empaudit values(@auditstr)
delete from #TempTable where Id=@id
end
End


update tblemployee set name='kiran',state= 'rajasthan',city='jaypur' where id =4