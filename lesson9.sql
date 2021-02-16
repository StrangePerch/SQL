/*
DROP TABLE Shop_Sales_Counter

CREATE TABLE Shop_Sales_Counter
(
	[Id] INT PRIMARY KEY ,
	[Amount] INT NOT NULL CHECK ( [Amount] >= 0),
	[Sum] FLOAT NOT NULL CHECK ( [Sum] >= 0)
)

INSERT INTO Shop_Sales_Counter
VALUES
(
	1,
	(SELECT SUM( S.Cnt ) FROM Sales S),
	ROUND((SELECT SUM( S.Cnt * P.price ) FROM Sales S JOIN Products P ON P.ID = S.ID_product ), 2)
)

SELECT * FROM Shop_Sales_Counter
*/


/*
CREATE OR ALTER TRIGGER
	Sales_add
	ON Sales
	AFTER INSERT
AS
BEGIN
	DECLARE @c INT
	SET @c = ( SELECT Cnt FROM inserted )
	
	DECLARE @s FLOAT
	SET @s = ( SELECT (Cnt * price) FROM inserted JOIN Products P ON P.ID = inserted.ID_product )

	UPDATE Shop_Sales_Counter SET Amount = Amount + @c WHERE id = 1
	UPDATE Shop_Sales_Counter SET [Sum] = [Sum] + @s WHERE id = 1
END
*/

/*
CREATE OR ALTER TRIGGER
	Sales_remove
	ON Sales
	FOR DELETE
AS
BEGIN
	UPDATE
		Shop_Sales_Counter
	SET
		Amount = Amount - ( SELECT Cnt FROM deleted ),
		[Sum] = [Sum] - ( SELECT Cnt * Price FROM deleted D JOIN Products P ON P.ID = D.ID_product )
	WHERE
	Id = 1
END
*/

/*
CREATE OR ALTER TRIGGER
	Sales_Updated
	ON Sales
	FOR INSERT, DELETE, UPDATE
AS
BEGIN
	
	SET NOCOUNT ON

	UPDATE
		Shop_Sales_Counter
	SET
		Amount = Amount - COALESCE(( SELECT Cnt FROM deleted ), 0) 
						+ COALESCE(( SELECT Cnt FROM inserted ), 0),
		[Sum] = [Sum] - COALESCE(( SELECT Cnt * Price FROM deleted D JOIN Products P ON P.ID = D.ID_product ), 0)
					  + COALESCE(( SELECT (Cnt * price) FROM inserted JOIN Products P ON P.ID = inserted.ID_product ), 0)
	WHERE 
		id = 1
END
*/

--INSERT INTO Sales ( ID_manager, ID_product, Cnt) VALUES (10, 11, 12)

--UPDATE Sales SET Cnt = 3 WHERE ID = 1


SELECT
*
FROM 
Shop_Sales_Counter
