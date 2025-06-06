DROP PROCEDURE IF EXISTS [dbo].[Insert_Over]
GO
/*************************************************************
Name : Sudam Munasinghe
Date: 2025/06/06
Example:

	DECLARE @Score		INT = 34;
	DECLARE @TeamId		INT = 2;
	DECLARE @BowlerId	INT = 1;
	DECLARE @Id			INT;

	EXEC [dbo].[Insert_Over]
		@Score = @Score,
		@TeamId = @TeamId,
		@BowlerId = @BowlerId,
		@Id = @Id OUTPUT

**************************************************************/

CREATE PROCEDURE [dbo].[Insert_Over](
	@Score		INT,
	@TeamId		INT,
	@BowlerId	INT,
	@Id			INT OUTPUT
)
AS
BEGIN
	
	/** Inesrt Data********************************/
	INSERT INTO [dbo].[Over]
	(
		[Score],
		[TeamId],
		[BowlerId]
	)
	VALUES (
		@Score,
		@TeamId,
		@BowlerId
	);

	SET @Id = SCOPE_IDENTITY();

END;