
/*
SELECT
Worker.FullName 'Worker Name',
COALESCE(Chief.Surname + ' ' + Chief.Name + ' ' + Chief.Secname, N'BOSS') 'Chief Name'
FROM
	(
	SELECT
		(Worker.Surname + ' ' + Worker.Name + ' ' + Worker.Secname) as FullName,
		Worker.ID_chief as ID_Chief
	FROM
		Managers Worker
	) as Worker
	LEFT JOIN Managers Chief ON Chief.ID = Worker.ID_chief
ORDER BY
2
*/

/*

SELECT
COALESCE(Temp.ChiefFullName, N'Сам себе командир') as Chief,
COUNT(Temp.WorkerID) as Workers
FROM
	(
	SELECT
		Worker.ID as WorkerID,
		(Chief.Surname + ' ' + Chief.Name + ' ' + Chief.Secname) as ChiefFullName
	FROM
		Managers Worker
		LEFT JOIN Managers Chief ON Chief.ID = Worker.ID_chief
	) as Temp
GROUP BY Temp.ChiefFullName
ORDER BY
2 DESC

*/


/*
SELECT
Worker.Surname + ' ' + Worker.Name + ' ' + Worker.Secname 'Worker Name',
COALESCE(SubChief.Surname + ' ' + SubChief.Name + ' ' + SubChief.Secname, N'BOSS') 'SubChief Name',
COALESCE(Chief.Surname + ' ' + Chief.Name + ' ' + Chief.Secname, N'BOSS') 'Chief Name'
FROM
	Managers Worker
	LEFT JOIN Managers SubChief ON SubChief.ID = Worker.ID_chief
	LEFT JOIN Managers Chief ON Chief.ID = SubChief.ID_Chief
ORDER BY
2 DESC
*/

/*
SELECT
COALESCE(Temp.ChiefFullName, N'Сам себе командир') as Chief,
COUNT(Temp.WorkerID) as Workers
FROM
	(
	SELECT
		Worker.ID as WorkerID,
		(Chief.Surname + ' ' + Chief.Name + ' ' + Chief.Secname) as ChiefFullName
	FROM
		Managers Worker
		LEFT JOIN Managers Chief ON Chief.ID = Worker.ID_chief
	) as Temp
GROUP BY Temp.ChiefFullName
HAVING COUNT(Temp.WorkerID) > 1
ORDER BY 2 DESC
*/

/*
SELECT
	MAX(D.Name) Department,
	ROUND(SUM(S.Cnt * P.Price), 2) as [Sum]
FROM
	Sales S
		JOIN Products P ON P.ID = S.ID_product
		JOIN Managers M ON M.ID = S.ID_manager
		JOIN Departments D ON D.ID = M.ID_main_dep
GROUP BY D.ID
ORDER BY 2 DESC
*/


	
