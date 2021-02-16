﻿
SELECT
	COALESCE(TMP.CNT, 0) AS Count,
	C.NAME
FROM
	(
	SELECT
		A.COUNTRY_ID AS ID,
		COUNT(A.ID) AS CNT
	FROM
		AUTHORS AS A
	GROUP BY 
		COUNTRY_ID
	)	
	AS TMP RIGHT JOIN COUNTRIES C ON TMP.ID = C.ID 