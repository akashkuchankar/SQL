create table persson(
birthdaydate decimal(20)
)
 select *from persson
--que40 Add a column of type DATE called Birthday.
alter table Persson ADD Birthday date

--que41Delete the column Birthday from the Persons table.
alter table persson drop column birthday 