DROP TABLE IF EXISTS [dbo].[Bowler]
CREATE TABLE [dbo].[Bowler](
	[Id]	INT IDENTITY(1,1),
	[PlayerId]	INT,
	[Wickets]	INT,
	[OversBalled] INT,
	[RunsGiven] INT,
	[CreatedDateTime] DATETIME DEFAULT GETDATE(),
	[LastModifiedDateTime] DATETIME DEFAULT GETDATE(),
	CONSTRAINT PK_Bowler PRIMARY KEY ([Id]),
	CONSTRAINT FK_Bowler_PlayerId FOREIGN KEY([PlayerId]) REFERENCES [dbo].[Player]([Id])
)






