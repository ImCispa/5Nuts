CREATE TABLE [dbo].[TMovimenti]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [IdUtente] INT NOT NULL, 
    [IdGioco] INT NOT NULL, 
    [IdOpzioneGioco] INT NOT NULL, 
    [Punti] INT NOT NULL, 
    CONSTRAINT [FK_TMovimenti_TUtenti_IdUtente] FOREIGN KEY ([IdUtente]) REFERENCES [TUtenti]([Id]), 
    CONSTRAINT [FK_TMovimenti_TGiochi_IdGioco] FOREIGN KEY ([IdGioco]) REFERENCES [TGiochi]([Id]), 
    CONSTRAINT [FK_TMovimenti_TOpzioniGiochi_IdOpzioneGioco] FOREIGN KEY ([IdOpzioneGioco]) REFERENCES [TOpzioniGiochi]([Id])
)
