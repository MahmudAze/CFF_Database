create database Practice

use Practice

create table Users (
	Id int,
	[Name] nvarchar(50),
	Surname nvarchar(50),
	Age int,
	Email varchar(100)
);

INSERT INTO Users (Id, [Name], Surname, Age, Email)
VALUES 
(1,'Mahmud', 'Rahimli', 19, 'mahmud@example.com'),
(2,'Alikram', 'Isgenderov', 20, 'alikram@example.com'),
(3,'Aksin', 'Huseynov', 20, 'aksin@example.com'),
(4,'Nurlana', 'Ismayilova', 19, 'nurlana@example.com'),
(5,'Orxan', 'Rahimov', 25, 'orxan@example.com');


SELECT * FROM Users;


select * from Users
where Age < 20;