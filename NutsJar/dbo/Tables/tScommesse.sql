CREATE TABLE [dbo].[TScommesse]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [IdUtente] INT NOT NULL, 
    [IdGioco] INT NOT NULL, 
    [IdOpzioneGioco] INT NOT NULL, 
    [Punti] INT NOT NULL, 
    CONSTRAINT [FK_TScommessa_TUtenti_IdUtente] FOREIGN KEY ([IdUtente]) REFERENCES [TUtenti]([Id]),
    CONSTRAINT [FK_TScommesse_TGiochi_IdGiochi] FOREIGN KEY ([IdGioco]) REFERENCES [TGiochi]([Id]), 
    CONSTRAINT [FK_TScommesse_TOpzioniGiochi_IdOpzioneGioco] FOREIGN KEY ([IdOpzioneGioco]) REFERENCES [TOpzioniGiochi]([Id])
)
