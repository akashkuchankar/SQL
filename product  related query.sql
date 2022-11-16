create table product(
name varchar(10),
price decimal(4)
)
insert into product values('mobile',30)
insert into product values('pen',5)
insert into product values('book',10)
insert into product values('remote',15)
insert into product values('laptop',20)
insert into product values('wire',25)
insert into product values('charger',35)
insert into product values('cover',40)
insert into product values('battery',45)
insert into product values('memory',50)
select* from product

--que 15Use the MIN function to select the record with the smallest value of the Price column.
Select MIN(Price) from Product

--que 16Use an SQL function to select the record with the highest value of the Price column.
select MAX(Price) from Product

--que 17Use the correct function to return the number of records that have the Price value set to 20.
Select COUNT(*) from Product where Price = 20

--que 18 Use an SQL function to calculate the average Price of all products.
select AVG(Price) from Product

--que 19Use an SQL function to calculate the sum of all the Price column values in the Products table.
Select SUM(Price) FROM Product

--que 31 Use the BETWEEN operator to select all the records where the value of the Price column is NOT between 10 and 20.
Select * From Product Where Price NOT between 10 and 20

--que 32Use the BETWEEN operator to select all the records where the value of the Price column is between 10 and 20
Select * From Product Where Price  between 10 and 20

--que 33 Use the BETWEEN operator to select all the records where the value of the ProductName column is alphabetically between 'Geitost' and 'Pavlova'.
Select * From Product Where name BETWEEN 'Geitost' AND 'Pavlova'