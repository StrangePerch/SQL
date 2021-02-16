
/*
SELECT
M.Name,
M.Surname,
D.Name
FROM
Managers as M
JOIN Departments as D ON M.ID_main_dep = D.ID
ORDER BY D.ID
-- JOIN (INNER JOIN) - Только для совпадений
-- LEFT JOIN - Приоритет левой таблицы
*/

SELECT
	M.Name,
	M.Surname,
	COALESCE(D.Name, '-') as 'Name'
FROM
	Managers as M
	LEFT JOIN Departments as D ON M.ID_sec_dep = D.ID
ORDER BY D.ID
-- JOIN (INNER JOIN) - Только для совпадений
-- LEFT JOIN - Приоритет левой таблицы

