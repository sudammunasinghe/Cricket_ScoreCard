DROP PROCEDURE IF EXISTS [dbo].[Insert_Bowler]
GO
/*************************************************************
Name : Sudam Munasinghe
Date: 2025/06/06
Example:

	DECLARE @PlayerId			INT;
	DECLARE @Wickets			INT;
	DECLARE @OversBalled		INT;
	DECLARE @RunsGiven			INT;

	EXEC [dbo].[Insert_Bowler]
		@PlayerId = @PlayerId,
		@Wickets = @Wickets,
		@OversBalled = @OversBalled,
		@RunsGiven = @RunsGiven,
		@Id = @Id OUTPUT

**************************************************************/

CREATE PROCEDURE [dbo].[Insert_Bowler](
	@PlayerId			INT,
	@Wickets			INT,
	@OversBalled		INT,
	@RunsGiven			INT,
	@Id					INT OUTPUT
)
AS
BEGIN
	
	/** Inesrt Data********************************/
	INSERT INTO [dbo].[Bowler]
	(
		[PlayerId],
		[Wickets],
		[OversBalled],
		[RunsGiven]
	)
	VALUES (
		@PlayerId,			
		@Wickets,
		@OversBalled,
		@RunsGiven
	);

	SET @Id = SCOPE_IDENTITY();

END;