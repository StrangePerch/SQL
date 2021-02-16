/*
CREATE PROCEDURE
	GetManagers
AS
BEGIN
	SELECT
		*
	From
		Shop_Managers M
END
*/

/*
CREATE PROCEDURE
	GetSumByIdAndMonth
	@p_id INT,
	@month INT
AS
BEGIN
	SELECT
		MIN(P.Name) [Name],
		ROUND(SUM(P.Price * S.Cnt),2) [SUM]
	FROM
		Sales S
		JOIN Products P ON P.ID = S.ID_product
	WHERE S.ID_product = @p_id AND MONTH(S.Moment) = MONTH(@month)
END
*/

--EXEC GetSumByIdAndMonth 10, 5


/*
CREATE PROCEDURE
	GetProductPage
	@page INT,
	@pageSize INT
AS
BEGIN
	SELECT
		*
	FROM
		Products
	ORDER BY ID
	OFFSET @pageSize * (@page - 1) ROWS
	FETCH NEXT @pageSize ROWS ONLY
END
*/

--EXEC GetProductPage 1,5

/*
CREATE FUNCTION
	GetMoment()
	RETURNS DATETIME
AS
BEGIN
	RETURN CURRENT_TIMESTAMP
END
*/


/*
CREATE FUNCTION
	Random( @from INT, @to INT )
	RETURNS INT
AS
BEGIN
	RETURN ABS( CHECKSUM ( CURRENT_TIMESTAMP ) ) % (@to + 1 - @from) + @from
END
*/

--SELECT DBO.Random(5,8)
