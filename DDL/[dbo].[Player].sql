DROP TABLE IF EXISTS [dbo].[Player]
CREATE TABLE [dbo].[Player](
	[Id]	INT IDENTITY(1,1),
	[TeamId]	INT,
	[FirstName]	VARCHAR(100),
	[LastName]	VARCHAR(100),
	[Age] INT,
	[CreatedDateTime] DATETIME DEFAULT GETDATE(),
	[LastModifiedDateTime] DATETIME DEFAULT GETDATE(),
	CONSTRAINT PK_Player PRIMARY KEY ([Id]),
	CONSTRAINT FK_Player_TeamId FOREIGN KEY([TeamId]) REFERENCES [dbo].[Team]([Id])
)






