CREATE TABLE [dbo].[TUtenti]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Nome] NVARCHAR(50) NOT NULL, 
    [Congome] NVARCHAR(50) NOT NULL, 
    [Email] NVARCHAR(200) NOT NULL, 
    [User] NVARCHAR(50) NOT NULL, 
    [Password] NVARCHAR(50) NOT NULL, 
    [Punti] INT NOT NULL
)
