Create Database LoginDemoDB
Go

use logindemodb
go

Create Table Users (
	Email nvarchar(100) PRIMARY KEY,
	[Password] nvarchar(20) NOT NULL,
	PhoneNumber nvarchar(20) NULL,
	BirthDate DATETIME NULL,
	[Status] int NULL,
	[Name] nvarchar(50) NOT NULL
)
Go

Create Table Grades(
DateofTest DateTime NULL,
subjectName nvarchar (20) NULL,
Grade int NOT NULL,
Email nvarchar(100) FOREIGN KEY REFERENCES Users(Email)
)
GO


INSERT INTO dbo.Users VALUES ('ofer@ofer.com', '1234', '+972526344450','15-nov-1972',1,'Ofer Zadikario')
Go

Insert INTO dbo.Grades VALUES('2014-4-5', 'Math', 99, 'ofer@ofer.com')
Go

SELECT * FROM Grades
--scaffold-DbContext "Server = (localdb)\MSSQLLocalDB;Initial Catalog=LoginDemoDB;Integrated Security=True;Persist Security Info=False;Pooling=False;Multiple Active Result Sets=False;Encrypt=False;Trust Server Certificate=False;Command Timeout=0" Microsoft.EntityFrameworkCore.SqlServer -OutPutDir Models -Context LoginDemoDbContext -DataAnnotations -force