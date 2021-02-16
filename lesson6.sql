SELECT DISTINCT
	P.[Name],
	COALESCE (tmp.Sold, 0) as [TODAY]
FROM
	Products P
	LEFT JOIN
	(
		SELECT DISTINCT
			P.ID [ID],
			SUM( S.Cnt ) [Sold]
		FROM
			Sales S
			JOIN Products P ON P.ID = S.ID_product
		WHERE
			CAST( S.Moment AS TIME ) = CAST( CURRENT_TIMESTAMP AS TIME )
		GROUP BY 
			P.ID
	) as tmp ON P.ID = tmp.ID