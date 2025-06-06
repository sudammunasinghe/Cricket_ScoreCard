DROP TABLE IF EXISTS [dbo].[Batsman]
CREATE TABLE [dbo].[Batsman](
	[Id]	INT IDENTITY(1,1),
	[PlayerId]	INT,
	[NoOfBallsFaced]	INT,
	[CreatedDateTime] DATETIME DEFAULT GETDATE(),
	[LastModifiedDateTime] DATETIME DEFAULT GETDATE(),
	CONSTRAINT PK_Batsman PRIMARY KEY ([Id]),
	CONSTRAINT FK_Batsman_PlayerId FOREIGN KEY([PlayerId]) REFERENCES [dbo].[Player]([Id])
)






