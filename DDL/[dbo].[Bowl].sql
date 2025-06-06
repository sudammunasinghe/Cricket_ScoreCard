DROP TABLE IF EXISTS [dbo].[Bowl]
CREATE TABLE [dbo].[Bowl](
	[Id]	INT IDENTITY(1,1),
	[Score]	INT,
	[OverId]	INT,
	[BowlerId]	INT,
	[BatsmanId] INT,
	[IsLegBy] BIT DEFAULT(0),
	[IsNoBall] BIT DEFAULT(0),
	[IsWideBall] BIT DEFAULT(0),
	[IsWicket] BIT DEFAULT(0),
	[Remarks] VARCHAR(100),
	[CreatedDateTime] DATETIME DEFAULT GETDATE(),
	[LastModifiedDateTime] DATETIME DEFAULT GETDATE(),
	CONSTRAINT PK_Bowl PRIMARY KEY ([Id]),
	CONSTRAINT FK_Bowl_OverId FOREIGN KEY([OverId]) REFERENCES [dbo].[Over]([Id])
)






