select * from customerss
create procedure spgetcustomer
as
begin
select city,country from customerss
end

 spgetcustomer   --for execution
 --by one varible--
 create procedure spgetcustomerid
 @customerid int
 as
 begin
 select * from customerss where customerid=@customerid 
 end

 spgetcustomerid 2


-- by two variable--

 create procedure spgetcusidname
 @city varchar(30),
 @customerid int
 as 
 begin
 select* from customerss where  city= @city and customerid=@customerid
 end

 spgetcusidname 'latur',2


 -- alter--


 alter procedure spgetcusidname
 @city varchar(30),
 @customerid int
 as 
 begin
 select city,postalcode from customerss where  city= @city and customerid=@customerid
 end
  spgetcusidname 'latur',2 

  sp_helptext  spgetcusidname    -- for show program
  drop procedure spgetcusidname ----- for drop