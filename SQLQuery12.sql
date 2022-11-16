create table customerss(
city varchar(10),
country varchar(10),
postalcode decimal(10),
customerid decimal(5)
)
select * from customerss
insert into customerss values('pune','india',121110,23)
insert into customerss values('latur','india',121120,2)
insert into customerss values('rajura','india',121130,22)
insert into customerss values('chandrapur','india',121140,21)
insert into customerss values('mumbai','india',121160,24)
insert into customerss values('nagpur','india',121150,25)
insert into customerss values('sindhewahi','india',121170,26)
insert into customerss values('bhandara','india',121180,27)
insert into customerss values('shirdi','india',121190,28)
insert into customerss values('sheogaon','india',121100,29)
update customerss set country='london' where customerid=24
update customerss set city='uk' where customerid=24
update customerss set city='berlin' where customerid=26
update customerss set city='berlin' where customerid=23
update customerss set country='norway' where customerid=28
update customerss set city='america' where customerid=21
update customerss set city='aurangabad' where customerid=21
update customerss set country='france' where customerid=28




--Write a statement that will select the City column from the Customers table
 select city from customerss

  --que2 Select all the different values from the Country column in the Customers table.
  select country from customerss

  --que 3 Select all records where the City column has the value "London
  select * from customerss where country='london'

 --que 4 Use the NOT keyword to select all records where City is NOT "Berlin".
  select * from Customerss where not City='Berlin'

 --que 5 Select all records where the CustomerID column has the value 23.
 select * from customerss where customerid =23

 --que 6 Select all records where the City column has the value 'Berlin' and the PostalCode column has the value 121110.
 select*from customerss where city='berlin' and postalcode=121110

--que 7 Select all records where the City column has the value 'Berlin' or 'London'.
 select*from customerss where city='berlin' or city='london'

--que 8 Select all records from the Customers table, sort the result alphabetically by the column City.
select * from Customerss order by city

--que 9 Select all records from the Customers table, sort the result reversed alphabetically by the column City.
select * from Customerss order by city Desc
--que 10 Select all records from the Customers table, sort the result alphabetically, first by the column Country, then, by the column City
select * from Customerss order by country,city


--que 11 Select all records from the Customers where the PostalCode column is empty.
select * from Customerss where PostalCode is null

--que 12 Select all records from the Customers where the PostalCode column is NOT empty.
select * from Customerss where PostalCode is not null

--que 13Set the value of the City columns to 'Oslo', but only the ones where the Country column has the value "Norway".
update Customerss set City = 'Oslo' WHERE Country = 'Norway'

--que14 Delete all the records from the Customers table where the Country value is 'Norway'.
delete from Customerss where Country = 'Norway'

--que20Select all records where the value of the City column starts with the letter "a".
select * from Customerss where city like 'a%'

--que 21Select all records where the value of the City column ends with the letter "a".
select * from Customerss where city like '%a'

--que 22Select all records where the value of the City column contains the letter "a".
select * from Customerss where City like '%a%'

--que23Select all records where the value of the City column starts with letter "a" and ends with the letter "b".
select * from Customerss where City like 'a%b'

--que24Select all records where the value of the City column does NOT start with the letter "a".
Select * from Customerss where City not like 'a%'

--que 25Select all records where the second letter of the City is an "a".
Select * from Customerss Where City Like '_a%'

--que 26 Select all records where the first letter of the City is an "a" or a "c" or an "s".
Select * from Customerss Where City like '[acs]%'

--que 27 Select all records where the first letter of the City starts with anything from an "a" to an "f".
Select * from Customerss where City like '[a-f]%'

--que 28 Select all records where the first letter of the City is NOT an "a" or a "c" or an "f".
select * from Customerss where City like'[!acf]%'

--que 29 Use the IN operator to select all the records where the Country is either "Norway" or "France".
Select * From Customerss Where Country IN ('Norway', 'France')

--que 30 Use the IN operator to select all the records where Country is NOT "Norway" and NOT "France
Select * From Customerss Where Country not IN ('Norway', 'France')

--que 31 When displaying the Customers table, make an ALIAS of the PostalCode column, the column should be called Pno instead.

--que 32When displaying the Customers table, refer to the table as Consumers instead of Customers.
Select * from Customerss AS Consumers;

--que 33 List the number of customers in each country.
select COUNT(Customerid), Country from Customerss group by Country;

--que 34 List the number of customers in each country, ordered by the country with the most customers first.
select COUNT(Customerid), Country from Customerss group by Country order by COUNT(Customerid) desc

--que35 Write the correct SQL statement to create a new database called testDB.
create database testDB

--que36Write the correct SQL statement to delete a database named testDB.
drop database testDB





