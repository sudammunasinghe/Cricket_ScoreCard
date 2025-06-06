DROP TABLE IF EXISTS [dbo].[Team]
CREATE TABLE [dbo].[Team](
	[Id]	INT IDENTITY(1,1),
	[Name]	VARCHAR(100),
	[MatchId]	INT,
	[IsInningCompleted] BIT DEFAULT(0),
	[CreatedDateTime] DATETIME DEFAULT GETDATE(),
	[LastModifiedDateTime] DATETIME DEFAULT GETDATE(),
	CONSTRAINT PK_Team PRIMARY KEY ([Id]),
	CONSTRAINT FK_Team_MatchId FOREIGN KEY([MatchId]) REFERENCES [dbo].[Match]([Id])
)










