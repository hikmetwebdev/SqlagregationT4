CREATE DATABASE DEMOAPP2
USE  DEMOAPP2


CREATE TABLE Countries(
Id int PRIMARY KEY IDENTITY,
[Name] NVARCHAR(30) UNIQUE,
Area decimal ,
)
INSERT into Countries Values('Ingiltere',35000),('Isvec',25000)

select * from Countries
CREATE TABLE Cities (
Id int PRIMARY KEY IDENTITY,
[Name] NVARCHAR (30) ,
Area decimal ,
CountryId INT FOREIGN KEY REFERENCES Countries(Id)
)

Insert into Cities values ('Baki',2000,1),('Moskva',15000,2),('Ankara',10000,3),('London',14000,4)

select * from Cities
CREATE TABLE People(
Id int PRIMARY KEY IDENTITY ,
[Name] NVARCHAR (50) NOT NULL,
SurName NVARCHAR (50) NOT NULL,
PhoneNumber int  Unique,
Email NVARCHAR(30),
Age int CHECK (Age>18),
Gender NVARCHAR(10),
HasCitizenship bit,
CityId INT FOREIGN KEY REFERENCES Cities(Id)
) 


insert into People values
('Eli','Xudiyev',0553053232,'khidieff@gmail.com',25,'kisi',1,9),
('Veli','Yamtar',0555555555,'veli@gmail.com',27,'kisi',1,10),
('Memmed','Mamedov',0503053232,'mamed@gmail.com',25,'kisi',1,11),
('Nihad','Asgarov',0703053232,'nihad@gmail.com',22,'kisi',1,12)

Select * from People 

Select * from People as p
Left join Cities as cy
on p.CityId=cy.Id
Left join Countries as ct
on cy.CountryId=ct.Id

Select * from Countries Order by Area

Select * from Cities Order by Name desc

Select   Count(Id) as 'Number of countries' from Countries  where area>20000


Select  MAX(Area) AS 'Max area' from Countries Where name like 'i%'

Select  Name from Countries
Union all
Select Name from Cities


select c.Name as 'City', COUNT(p.Id) as 'People count' from People as p
join Cities c 
on p.CityId=c.Id
GROUP BY C.Name

select c.Name as 'City', COUNT(p.Id) as 'People count' from People as p
join Cities c 
on p.CityId=c.Id
GROUP BY C.Name
Having COUNT(P.Id)>5 