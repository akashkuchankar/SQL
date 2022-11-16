CREATE TABLE Workker (
	WORKER_ID INT NOT NULl,
	FIRST_NAME varchar(30),
	LAST_NAME varchar(30),
	SALARY decimal,
	DEPARTMENT varchar(30)
);

 
	
	insert into workker values(001, 'Monika', 'Arora', 100000,  'HR')
	insert into workker values	(002, 'Niharika', 'Verma', 80000,  'Admin')
		insert into workker values(003, 'Vishal', 'Singhal', 300000, 'HR')
		insert into workker values(004, 'Amitabh', 'Singh', 500000,  'Admin')
		insert into workker values(005, 'Vivek', 'Bhati', 500000,  'Admin')
		insert into workker values(006, 'Vipul', 'Diwan', 200000,  'Account')
		insert into workker values(007, 'Satish', 'Kumar', 75000, 'Account')
		insert into workker values(008, 'Geetika', 'Chauhan', 90000,  'Admin');


select*from workker


CREATE TABLE Bonus (
	WORKER_REF_ID INT,
	BONUS_AMOUNT INT,
	
	
);
	    insert into bonus values(001, 5000 )
	    insert into bonus values(002, 3000 )
		insert into bonus values(003, 4000 )
		insert into bonus values(001, 4500 )
		insert into bonus values(002, 3500 ) ;

		select*from bonus

		CREATE TABLE Title (
	WORKER_REF_ID INT,
	WORKER_TITLE varchar(30),
       
);
select*from title
insert into title values(001,'manager')
insert into title values(002,'executive')
insert into title values(008,'executive')
insert into title values(005,'manager')
insert into title values(004,'asst,manager')
insert into title values(007,'executive')
insert into title values(006,'lead')
insert into title values(003,'lead')

--Q-1. Write an SQL query to fetch “FIRST_NAME” from Worker table using the alias name as <WORKER_NAME>.
Select FIRST_NAME AS WORKER_NAME from Workker 

--Q-2. Write an SQL query to fetch “FIRST_NAME” from Worker table in upper case.
Select upper(FIRST_NAME) from Workker


--Q-3. Write an SQL query to fetch unique values of DEPARTMENT from Worker table.
Select distinct DEPARTMENT from Workker

--Q-4. Write an SQL query to print the first three characters of  FIRST_NAME from Worker table.
Select substring(FIRST_NAME,1,3) from Workker


--Q-11. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending.
select*from workker order by first_name

--Q-12. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending.
Select * from workker order by first_name ,department desc

--Q-13. Write an SQL query to print details for Workers with the first name as “Vipul” and “Satish” from Worker table.
select* from workker where first_name in ('vipul','satish')

--Q-16. Write an SQL query to print details of the Workers whose FIRST_NAME contains ‘a’.
select* from workker where first_name like '%a%'

--Q-18. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.
select *from workker where first_name like '_____h'