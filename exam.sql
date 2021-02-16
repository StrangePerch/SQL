
/*
SELECT
	*
FROM
	BOOKS
WHERE
	PAGES BETWEEN 501 AND 649
*/

--SELECT
--	*
--FROM
--	BOOKS
--WHERE
--	NAME LIKE N'[А,З]%'

--SELECT
--MIN(TMP.NAME) NAME,
--SUM(S.QUANTITY) QUANITY
--FROM
--	(
--	SELECT
--		B.NAME,
--		B.ID
--	FROM
--		BOOKS B JOIN THEMES T ON B.THEME_ID = T.ID
--	WHERE 
--		T.NAME = N'Детективы'
--	) TMP JOIN SALES S ON S.BOOKID = TMP.ID
--GROUP BY TMP.ID
--HAVING SUM(S.QUANTITY) > 100

--SELECT
--	*
--FROM
--	BOOKS
--WHERE
--	NAME LIKE '%Windows%' AND NAME NOT LIKE '%Microsoft%'

--SELECT
--	B.NAME 'Book name',
--	T.NAME 'Theme',
--	CONCAT(A.NAME, ' ', A.SURNAME) 'Full Name',
--	B.PRICE / B.PAGES 'Cost per page'
--FROM
--	BOOKS B JOIN THEMES T ON T.ID = B.THEME_ID
--			JOIN AUTHORS A ON A.ID = B.AUTHOR_ID
--WHERE 
--	B.PRICE / B.PAGES < .65

--SELECT
--	B.NAME 'Book name',
--	CONCAT(A.NAME, ' ', A.SURNAME) 'Author name',
--	T.NAME 'Thema',
--	S.QUANTITY 'Amount',
--	S.PRICE 'Price per unit',
--	CONCAT(SH.NAME,' ', C.NAME) 'Shop'
--FROM
--	BOOKS B
--	JOIN THEMES T ON T.ID = B.THEME_ID
--	JOIN AUTHORS A ON A.ID = B.AUTHOR_ID
--	JOIN SALES S ON S.BOOKID = B.ID
--	JOIN SHOPS SH ON SH.ID = S.SHOPID
--	JOIN COUNTRIES C ON SH.COUNTRYID = C.ID
--WHERE
--	B.NAME NOT LIKE N'%[А,A]%'
--	AND
--	T.NAME != N'Программирование'
--	AND
--	CONCAT(A.NAME,' ', A.SURNAME) != N'Герберт Шилдт'
--	AND
--	B.PRICE BETWEEN 100 AND 200
--	AND
--	S.QUANTITY > 8
--	AND
--	C.NAME != N'Украина'
--	AND
--	C.NAME != N'Россия'




--SELECT 'Author count' [Name],
--		COUNT([ID]) [Count]
--FROM AUTHORS
--UNION
--SELECT 'Books count',
--		COUNT([ID])
--FROM BOOKS
--UNION
--SELECT 'Avg price',
--		ROUND(AVG([PRICE]),2)
--FROM SALES
--UNION
--SELECT 'Avg pages',
--		AVG([PAGES])
--FROM BOOKS

--SELECT
--MIN(T.NAME) 'Theme',
--SUM(B.PAGES) 'Pages'
--FROM
--THEMES T JOIN BOOKS B ON B.THEME_ID = T.ID
--GROUP BY T.ID

--SELECT TOP 1
--*
--FROM
--THEMES T JOIN BOOKS B ON B.THEME_ID = T.ID
--WHERE T.NAME = N'Проза'
--ORDER BY B.PAGES DESC

--12. Показать среднее количество страниц по каждой тематике, которое не превышает 400.

--SELECT
--MIN(T.NAME) 'Name',
--AVG(B.PAGES) 'Pages'
--FROM
--THEMES T JOIN BOOKS B ON T.ID = B.THEME_ID
--GROUP BY T.ID
--HAVING AVG(B.PAGES) < 400

--13. Показать сумму страниц по каждой тематике, учитывая
--только книги с количеством страниц более 400, и чтобы
--тематики были «Программирование», «Администрирование» и «Дизайн».

--SELECT
--	MIN(TMP.NAME) 'Theme',
--	SUM(TMP.PAGES) 'Pages'
--FROM
--	(
--	SELECT
--		PAGES,
--		T.NAME,
--		T.ID
--	FROM 
--		BOOKS B JOIN THEMES T ON B.THEME_ID = T.ID
--	WHERE 
--		PAGES > 400
--		AND 
--		(T.NAME = N'Проза' OR T.NAME = N'Детективы' OR T.NAME = N'Фэнтези')
--		) TMP
--GROUP BY 
--	TMP.ID

--14. Показать информацию о работе магазинов: что, где, кем,
--когда и в каком количестве было продано.

--SELECT
--	B.NAME 'Book name', --Что?
--	SH.NAME 'Shop',     --Где?
--	C.NAME 'Country',    --Где2?
--	SA.SALEDATE 'Date', --Когда?
--	SA.QUANTITY 'Amount'--Сколько?
--FROM
--	SALES SA JOIN SHOPS SH ON SA.SHOPID = SH.ID
--			 JOIN BOOKS B ON SA.BOOKID = B.ID
--			 JOIN COUNTRIES C ON C.ID = SH.COUNTRYID


--15. Показать самый прибыльный магазин.

--SELECT TOP 1
--	MIN(SH.NAME) 'Shop',
--	SUM(SA.QUANTITY * SA.PRICE) 'Cost'
--FROM
--	SHOPS SH JOIN SALES SA ON SA.SHOPID = SH.ID
--GROUP BY
--	SH.ID
--ORDER BY SUM(SA.QUANTITY * SA.PRICE) DESC


--6. Показать все книги, название которых состоит из 4 слов
--SELECT
--	*
--FROM
--	BOOKS B
--WHERE
--	(LEN([NAME]) - LEN(REPLACE([NAME], ' ', '')) + 1) = 4
