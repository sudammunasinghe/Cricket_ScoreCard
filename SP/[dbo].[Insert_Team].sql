DROP PROCEDURE IF EXISTS [dbo].[Insert_Team]
GO
/*************************************************************
Name : Sudam Munasinghe
Date: 2025/06/06
Example:

	DECLARE @Name		VARCHAR(100) = 'RCB';
	DECLARE @MatchId	INT = 2;
	DECLARE @Id			INT;

	EXEC [dbo].[Insert_Team]
		@Name = @Name,
		@MatchId = @MatchId,
		@Id = @Id OUTPUT

**************************************************************/

CREATE PROCEDURE [dbo].[Insert_Team](
	@Name		VARCHAR(100),
	@MatchId	INT,
	@Id			INT OUTPUT
)
AS
BEGIN
	
	/** Inesrt Data********************************/
	INSERT INTO [dbo].[Team]
	(
		[Name],
		[MatchId]
	)
	VALUES (
		@Name,
		@MatchId
	);

	SET @Id = SCOPE_IDENTITY();

END;