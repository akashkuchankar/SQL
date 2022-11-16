-- substring

select SUBSTRING(name,1,3) as Tempname from product 

--concat
select CONCAT(name,' ',price) as tempcol from product
--len
select name,len(name) as LengthOFName from product
--upper
select UPPER(name) from product
select LOWER(name) from product
--' Amol'
select LTRIM(name) from product
--'Amol  '
select RTRIM(name) from product
--'  Amol  '
select TRIM(name) from product

select ROUND(price,2) as Salary from product

select* from product
update product set price=30.84 where name='mobile'



alter function add_discount_price
(
@price decimal
)
returns decimal 
as begin
declare @discountedprice decimal;
set @discountedprice =@price-(@price*0.10)
return @discountedprice
end

select name, price , dbo.add_discount_price(price)as new  from product

 

