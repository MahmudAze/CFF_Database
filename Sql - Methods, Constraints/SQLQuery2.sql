create database Course

use Course

create table Teachers (
	Id int primary key identity(1,1),
	[Name] nvarchar(50) not null,
	Surname nvarchar(50) not null,
	Email varchar(50) unique,
	Age int,
	Salary money
)

insert into Teachers ([Name], Surname, Email, Age, Salary)
Values ('Emil', 'Abdullayev', 'emil@code.edu.az', 24, 5000),
('Omar', 'Imanov', 'omar@mail.ru',22, 2000),
('Shahla', 'Mirzayeva', 'shahla@code.edu.az', 30, 4000),
('Elman', 'Alizade', 'elman@code.edu.az', 24, 5000),
('Ilkin', 'Zulfuqarli', 'ilkin@code.edu.az', 24, 900)



select * from Teachers
where Age > (select AVG(Age) from Teachers)


select * from Teachers
where Salary > 1000 AND Salary < 3000;


select * from Teachers
where Email Like '%mail.ru'

select * from Teachers
where [Name] like 'C%'