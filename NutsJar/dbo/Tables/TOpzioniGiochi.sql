CREATE TABLE [dbo].[TOpzioniGiochi]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [IdGioco] INT NOT NULL, 
    [Opzione] NVARCHAR(100) NOT NULL, 
    CONSTRAINT [FK_TOpzioniGioco_TGioco_IdGioco] FOREIGN KEY (IdGioco) REFERENCES [TGiochi]([Id])
)
