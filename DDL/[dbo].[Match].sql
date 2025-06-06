DROP TABLE IF EXISTS [dbo].[Match]
CREATE TABLE [dbo].[Match](
	[Id]	INT IDENTITY(1,1),
	[NoOfOversPerSide]	INT,
	[Remarks]	VARCHAR(100),
	[IsActive] BIT DEFAULT(1),
	[CreatedDateTime] DATETIME DEFAULT GETDATE(),
	[LastModifiedDateTime] DATETIME DEFAULT GETDATE(),
	CONSTRAINT PK_Match PRIMARY KEY ([Id]),
	CONSTRAINT Check_NoOfOversPerSide CHECK([NoOfOversPerSide] <= 10)
)





