Create database Company

use Company

create table Countries (
	Id int primary key identity(1,1),
	[Name] varchar(50) not null
)

create table Cities (
	Id int primary key identity(1,1),
	[Name] varchar(50) not null,
	CountryId int foreign key references Countries(Id)
)


create table Employees (
	Id int primary key identity(1,1),
	[Name] varchar(50) not null,
	Surname varchar(50) not null,
	Age int not null,
	Salary money not null,
	Position varchar(50) not null,
	IsDeleted bit not null,
	CityId int foreign key references Cities(Id)
);

Insert into Countries([Name])
Values ('Russia'),('Germany')

Insert into Cities([Name],CountryId)
Values ('Berlin',2), ('Moskva',1), ('Sankt Peterburq',1)

Insert into Employees (Name, Surname, Age, Salary, Position, IsDeleted, CityId)
Values 
('Aslan', 'Mammadov', 20, 2000, 'Developer', 0, 1),
('Mahmud', 'Rahimli', 19, 2200, 'Pentester', 0, 2),
('Camal', 'Quliyev', 21, 2500, 'Scrum Master', 1, 3);


select e.Name, e.Surname, c.Name AS City, co.Name AS Country
from Employees e
join Cities c ON e.CityId = c.Id
join Countries co ON c.CountryId = co.Id

select e.Salary, e.Name, e.Surname, co.Name AS Country
from Employees e
join Cities c ON e.CityId = c.Id
join Countries co ON c.CountryId = co.Id
WHERE e.Salary > 2000

select c.Name AS CITY, co.Name AS Country
FROM Cities c
JOIN Countries co ON c.CountryId = co.Id


select e.Name, e.Surname, e.Age, e.Position, e.IsDeleted, e.Salary
FROM Employees e
WHERE e.Position = 'Reseption'


select e.Name, e.Surname, c.Name AS City, co.Name AS Country
from Employees e
join Cities c ON e.CityId = c.Id
join Countries co ON c.CountryId = co.Id
WHERE e.IsDeleted = 'True'