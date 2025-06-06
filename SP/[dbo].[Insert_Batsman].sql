DROP PROCEDURE IF EXISTS [dbo].[Insert_Batsman]
GO
/*************************************************************
Name : Sudam Munasinghe
Date: 2025/06/06
Example:

	DECLARE @PlayerId			INT;
	DECLARE @NoOfBallsFaced		INT;

	EXEC [dbo].[Insert_Batsman]
		@PlayerId = @PlayerId,
		@NoOfBallsFaced = @NoOfBallsFaced,
		@Id = @Id OUTPUT
		
**************************************************************/

CREATE PROCEDURE [dbo].[Insert_Batsman](
	@PlayerId			INT,
	@NoOfBallsFaced		INT,
	@Id					INT OUTPUT
)
AS
BEGIN
	
	/** Inesrt Data********************************/
	INSERT INTO [dbo].[Batsman]
	(
		[PlayerId],
		[NoOfBallsFaced]
	)
	VALUES (
		@PlayerId,			
		@NoOfBallsFaced	
	);

	SET @Id = SCOPE_IDENTITY();

END;