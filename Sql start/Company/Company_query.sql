create database Company

use Company

create table Users (
	Id int,
	[Name] nvarchar(50),
	Surname nvarchar(50),
	Age int,
	Email varchar(100)
);

INSERT INTO Users (Name, Surname, Age, Email)
VALUES 
('Mahmud', 'Rahimli', 19, 'mahmud@example.com'),
('Alikram', 'Isgenderov', 20, 'alikram@example.com'),
('Aksin', 'Huseynov', 20, 'aksin@example.com'),
('Nurlana', 'Ismayilova', 19, 'nurlana@example.com'),
('Orxan', 'Rahimov', 25, 'orxan@example.com');

UPDATE Users SET Id = 1 WHERE Name = 'Mahmud';
UPDATE Users SET Id = 2 WHERE Name = 'Alikram';
UPDATE Users SET Id = 3 WHERE Name = 'Aksin';
UPDATE Users SET Id = 4 WHERE Name = 'Nurlana';
UPDATE Users SET Id = 5 WHERE Name = 'Orxan';


SELECT * FROM Users;


select * from Users
where Age < 20;