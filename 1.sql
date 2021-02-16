











SELECT
	CONCAT( M.[Name], ' ' , M.Surname),
	D.[Name]
FROM
	Managers AS M
	JOIN Departments AS D ON  M.ID_main_dep = D.ID
ORDER BY
	D.ID