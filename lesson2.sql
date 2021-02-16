DROP TABLE lesson2

CREATE TABLE lesson2
(
	id INT NOT NULL PRIMARY KEY IDENTITY(0,1),
	num1 INT NOT NULL,
	num2 INT NULL,
	moment DATETIME DEFAULT CURRENT_TIMESTAMP,
	str1 NVARCHAR(32),
	str2 NVARCHAR(32)
)

--INSERT INTO lesson2 VALUES (1,100,55,'2020-12-08', 'String 1', N'Строка 2')
--INSERT INTO lesson2 (id, num1)
--			 VALUES (2,  203)

INSERT INTO lesson2 (num1, num2, moment, str1, str2) VALUES 

(12,NULL,'2019-12-01', 'null', N'Привет!'),
(12,33,'2019-12-01', 'null', N'Привет!'),
(12,44,NULL, '123', N'Привет!')

SELECT * FROM lesson2
ORDER BY id
