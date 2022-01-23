CREATE TABLE [dbo].[TGiochi]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [IdTorneo] INT NOT NULL, 
    [Titolo] NVARCHAR(100) NOT NULL, 
    [Descrizione] NVARCHAR(500) NOT NULL, 
    [Stato] INT NOT NULL, 
    [DataApertura] DATETIME2 NOT NULL, 
    [DataChisura] DATETIME2 NOT NULL, 
    [IdOpzioneGiocoVincente] INT NULL, 
    CONSTRAINT [FK_TGiochi_TOpzioniGiochi_IdOpzioneGiocoVincente] FOREIGN KEY ([IdOpzioneGiocoVincente]) REFERENCES [TOpzioniGiochi]([Id])
)
