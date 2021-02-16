SELECT DISTINCT
	M.[Name],
	COALESCE (tmp.SoldAmount, 0) as Amount,
	COALESCE (tmp.SoldPrice, 0) as Price
FROM
	Managers M
	LEFT JOIN
	(
		SELECT DISTINCT
			S.ID_manager,
			SUM( S.Cnt ) [SoldAmount],
			SUM( S.Cnt * P.Price ) [SoldPrice]
		FROM
			Sales S
			JOIN Products P ON P.ID = S.ID_product
		WHERE
			CAST( S.Moment AS DATE ) = CAST( CURRENT_TIMESTAMP AS DATE )
		GROUP BY 
			S.ID_manager
	) as tmp ON M.ID = tmp.ID_manager