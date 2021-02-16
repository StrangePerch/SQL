DROP TABLE [Users]

CREATE TABLE [Users]
(
	[id] INT PRIMARY KEY IDENTITY,
	[name] NVARCHAR (32),
	[birthday] DATE,
	[level] INT
)

INSERT Users ( [name], [birthday], [level])
VALUES 
( 'Vanya', '12-12-2001', 3),
( 'Sasha', '04-09-2004', 99),
( 'Sveta', '09-23-2002', 5),
( 'Oksana', '11-09-2001', 3),
( 'Dima', '12-12-2001', 3),
( 'Oleksei', '10-19-2000', 2),
( 'Sergey', '09-23-2002', 5),
( 'Masha', '11-09-2001', NULL),
( 'Nikita', '07-06-2001', NUll)

--SELECT TOP 5
--SELECT CONCAT([id], ' - ', [name]) as 'ID-NAME', COALESCE (level, 0) as 'RATING' FROM Users ORDER BY level DESC, id ASC

--SELECT * FROM Users WHERE YEAR(birthday) BETWEEN 1998 AND 2002 ORDER BY birthday DESC 

SELECT COUNT(id) FROM Users WHERE level > 7