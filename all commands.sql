
--DROP TABLE numbers



/*CREATE TABLE numbers
(
id INT PRIMARY KEY,
num FLOAT
)*/



--INSERT INTO numbers VALUES (1,55), (2,33), (3,12), (4,7.6), (5,99)

--DELETE numbers WHERE id = 1

--DELETE numbers WHERE num = 12

--UPDATE numbers SET num = 33 WHERE num = 11

--ALTER TABLE numbers ADD moment DATETIME

--UPDATE numbers SET moment = CURRENT_TIMESTAMP

--INSERT INTO numbers VALUES (6,55, CURRENT_TIMESTAMP)
--SELECT * FROM numbers
--ORDER BY id 

CREATE TABLE [data_types_demo] -- [] name brackets
(
	id INT NOT NULL PRIMARY KEY,
	num INT NULL,
	numt TINYINT,
	numf FLOAT,
	numb BIGINT,
	price MONEY, -- MSSQL
	bd DATE NOT NULL,
	reg_time DATETIME DEFAULT CURRENT_TIMESTAMP,
	name_en VARCHAR(32), --  up to 32 sym ASCII
	name_ru NVARCHAR(32), --  up to 32 sym UNICODE ! MSSQL
	pass_hash CHAR(32), -- = 32 sym
	article TEXT
)