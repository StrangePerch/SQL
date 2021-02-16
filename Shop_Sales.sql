DECLARE @I INT
SET @I = 0
SET NOCOUNT ON

DROP TABLE Sales

CREATE TABLE Sales ( 
	ID			INT NOT NULL PRIMARY KEY IDENTITY,
	ID_manager	INT NOT NULL,
	ID_product	INT NOT NULL,
	Cnt			INT NOT NULL,
	Moment		DATETIME DEFAULT CURRENT_TIMESTAMP
) ;

WHILE(@I < 100000)
BEGIN

SET @I += 1 

INSERT INTO Sales
	( ID_manager, ID_product, Cnt, Moment )
VALUES
(
	( SELECT TOP 1 ID FROM Managers ORDER BY NEWID() ),  -- random ID_manager
	( SELECT TOP 1 ID FROM Products ORDER BY NEWID() ),  -- random ID_product
	( ABS( CHECKSUM( NEWID() ) ) % 10 + 1 )	,				  -- random cnt 1-10
	DATEADD(DAY, (ABS(CHECKSUM(NEWID())) % 365), '2020-01-01') -- RAND DAY
	+ DATEADD( MINUTE, (ABS(CHECKSUM(NEWID())) % 600 + 540), 0) -- randmin from 9:00 (540 min) + 10h (600 min)
)

END

SELECT * FROM Sales ORDER BY ID ASC