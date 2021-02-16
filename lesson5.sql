
SELECT
D.Name,
Table_Today.CNT TODAY,
Table_Yesterday.CNT YESTERDAY
FROM
Departments D
JOIN
(
SELECT
	Tmp.[D_ID] as Dep_ID,
	COUNT(Tmp.[P_ID]) as CNT
FROM
	(
	SELECT DISTINCT
		D.ID [D_ID],
		P.ID [P_ID]
	FROM
		Sales			 S
		Join Managers	 M ON M.ID = S.ID_Manager
		JOIN Departments D ON D.ID = M.ID_main_dep
		JOIN Products    P ON P.ID = S.ID_product
	WHERE CAST( S.Moment AS DATE ) = CAST( CURRENT_TIMESTAMP AS DATE )
	) as Tmp
GROUP BY
	Tmp.[D_ID]
)  as Table_Today ON D.ID = Table_today.Dep_ID
JOIN
(
SELECT
	Tmp.[D_ID] as Dep_ID,
	COUNT(Tmp.[P_ID]) as CNT
FROM
	(
	SELECT DISTINCT
		D.ID [D_ID],
		P.ID [P_ID]
	FROM
		Sales			 S
		Join Managers	 M ON M.ID = S.ID_Manager
		JOIN Departments D ON D.ID = M.ID_main_dep
		JOIN Products    P ON P.ID = S.ID_product
	WHERE CAST( S.Moment AS DATE ) = DATEADD(day,-1,CAST( CURRENT_TIMESTAMP AS DATE ))
	) as Tmp
GROUP BY
	Tmp.[D_ID]
)  as Table_Yesterday ON D.ID = Table_Yesterday.Dep_ID