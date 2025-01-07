-- query for creating a database
create database exampleDatabase;



-- query for creating table
create table Person(
	P_Id int,
	FirstName varchar(200),
	LastName varchar(200),
	Address varchar(200),
	City varchar(200)
);

-- displaying all records of table
select * from Person;

-- inserting records into the table
insert into Person values (1, 'Siam', 'Ansary', 'Rampura', 'Dhaka');
insert into Person values (2, 'Shaila', 'Keya', 'Mirpur', 'Dhaka');
insert into Person values (3, 'Amit', 'Ansary', 'Court Para', 'Kushtia');
insert into Person values (4, 'Seum', 'Ashek', 'Mohammadpur', 'Dhaka');

insert into Person (P_Id, FirstName, LastName, Address, City) values 
	(5, 'Faiza', 'Omar', 'Baily Road', 'Dhaka');
insert into Person (P_Id, FirstName, Address) values 
	(6, 'Misty', 'Mirpur');
insert into Person (P_Id, LastName, City) values 
	(7, 'Gasly', 'Paris');
insert into Person (P_Id, FirstName) values 
	(8, 'Shawon');

-- displaying records of table
select * from Person;
select FirstName from Person;
select FirstName, LastName from Person;
select City from Person;
select distinct City from Person;

-- where clause 
select * from Person where city = 'Dhaka';
select FirstName, LastName,city from Person where city = 'Dhaka';
select * from person where City='barishal';
select P_Id, FirstName, LastName ,city from Person where city = 'Dhaka' and P_Id >= 4;
select P_Id, FirstName, LastName, City from Person where city = 'Dhaka' or P_Id >= 4;

select P_Id, FirstName, LastName, City from Person where 
	P_Id>=4 and (Address='Mirpur' or Address='Mohammadpur') ;


select P_Id,firstname,lastname,city from Person where (P_Id<=2 and P_Id>=0)and (Address='Mirpur' or Address='Mohammadpur');

select * from Person where P_Id = 2 or P_Id = 5;
select * from Person where P_Id in (2,5);
select * from Person where City in ('Dhaka');

select * from Person where P_Id between 2 and 5;

select * from Person where FirstName like 'S%m';
select * from Person where Address like '%pur';
select * from person where lastname like '%y';

-- altering the table 
alter table Person add age int;
select * from Person;

insert into Person (P_Id, FirstName, LastName, Address, City, age) values 
	(9, 'Raidah', 'Omar', 'Baily Road', 'Dhaka', 25);
select * from Person;

alter table Person drop column age;
select * from Person;


-- Updating records
Update Person 
	set LastName = 'Samia' where FirstName = 'Misty';
select * from Person;

Update Person 
	set Address ='Court Para', City='Kushtia' where P_Id=1;
select * from Person;

-- deleting records
delete from Person where P_Id = 1;
select * from Person;

delete from Person where Address = 'Court Para' or City ='Paris';
select * from Person;

-- select into 
select * into PersonCopy1 from Person;

select * from Person;
select * from PersonCopy1;

select FirstName, LastName into PersonCopy2 from Person;

select * from Person;
select * from PersonCopy2;

-- deleting all records from the table 
truncate table Person;
select * from Person;

-- dropping the table
drop table Person;
select * from Person;

-- query for dropping a database
drop database exampleDatabase;