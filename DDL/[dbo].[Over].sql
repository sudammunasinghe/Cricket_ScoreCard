DROP TABLE IF EXISTS [dbo].[Over]
CREATE TABLE [dbo].[Over](
	[Id]	INT IDENTITY(1,1),
	[Score]	INT,
	[TeamId]	INT,
	[BowlerId]	INT,
	[CreatedDateTime] DATETIME DEFAULT GETDATE(),
	[LastModifiedDateTime] DATETIME DEFAULT GETDATE(),
	CONSTRAINT PK_Over PRIMARY KEY ([Id]),
	CONSTRAINT FK_Over_TeamId FOREIGN KEY([TeamId]) REFERENCES [dbo].[Team]([Id])
)






