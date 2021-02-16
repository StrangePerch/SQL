DROP TABLE Teachers
CREATE TABLE [Teachers] 
(
    [TeacherID] INT PRIMARY KEY NOT NULL IDENTITY(1, 1),
    [Name] NVARCHAR(max) NOT NULL,
    [Surname] NVARCHAR(max) NOT NULL,
    [Date] DATE CHECK ( [Date] > '01.01.1990' ),
    [Premium] MONEY NOT NULL CHECK ( [Premium] >= 0 ) DEFAULT 0,
    [Salary] MONEY NOT NULL CHECK ( [Salary] > 0 ),
    [IsAssistant] BIT NOT NULL DEFAULT 0,
    [IsProffesor] BIT NOT NULL DEFAULT 0,
    [Position] NVARCHAR(max) NOT NULL
);

DROP TABLE Groups
CREATE TABLE [Groups]
(
    [GroupID] INT PRIMARY KEY NOT NULL IDENTITY(1, 1),
    [Name] NVARCHAR(10) UNIQUE NOT NULL,
    [Rating] INT NOT NULL CHECK( Rating >= 0 AND Rating <= 5 ),
    [Year] INT NOT NULL CHECK( [Year] >= 1 AND [Year] <= 5 ),
)

DROP TABLE Departments
CREATE TABLE [Departments]
(
    [DepartmentID] INT PRIMARY KEY NOT NULL IDENTITY(1, 1),
    [Name] NVARCHAR(100) UNIQUE NOT NULL,
    [Financing] MONEY NOT NULL DEFAULT 0, CHECK ( Financing >= 0 ),
)

DROP TABLE Faculties
CREATE TABLE [Faculties]
(
    [FacultyID] INT PRIMARY KEY NOT NULL IDENTITY(1, 1),
    [Name] NVARCHAR(100) UNIQUE NOT NULL,
    [Dean] NVARCHAR(max) NOT NULL
)

INSERT INTO Teachers([Name],[Surname],[Date],[Premium],[Salary], [IsAssistant], [IsProffesor], [Position]) VALUES('Beverly','Horn','05/27/2019',113,2190, 0, 1, N'Main Teacher'),('Lacota','Roberson','04/07/2021',191,2715, 1, 0, N'Secondary Teacher'),('Karly','Cline','08/29/2019',59,2160, 1, 1, N'Mega Teacher'),('Elvis','Shaffer','04/19/2020',91,2820, 0, 0, N'Just Teacher'),('Xerxes','Levine','09/16/2013',226,1389, 0, 0, N'Just Teacher'),('Florence','Erickson','08/23/2016',43,2371, 0, 0, N'Just Teacher'),('Chaim','Boyd','11/22/2019',164,1602, 0, 0, N'Just Teacher'),('Alfonso','Ayers','03/29/2012',297,2177, 0, 0, N'Just Teacher'),('Jerry','Oneil','09/16/2021',254,533, 0, 0, N'Just Teacher'),('Megan','Dawson','09/24/2011',48,588, 0, 0, N'Just Teacher');
INSERT INTO Teachers([Name],[Surname],[Date],[Premium],[Salary], [IsAssistant], [IsProffesor], [Position]) VALUES('Arden','Riley','12/15/2014',76,1646, 0, 1, N'Main Teacher'),('Brandon','Salas','12/21/2019',190,2891, 1, 0, N'Secondary Teacher'),('Akeem','Pittman','10/07/2021',226,2468, 1, 1, N'Mega Teacher'),('Nyssa','Case','04/18/2019',120,1455, 0, 0, N'Just Teacher'),('Hyatt','Whitehead','03/11/2019',257,1239, 0, 0, N'Just Teacher'),('Jeremy','Moran','06/15/2016',226,599, 0, 0, N'Just Teacher'),('Kyla','Hill','09/19/2016',94,1725, 0, 0, N'Just Teacher'),('Abel','Chang','11/29/2021',17,2734, 0, 0, N'Just Teacher'),('Kermit','Weeks','08/25/2019',157,654, 0, 0, N'Just Teacher'),('Jemima','Adkins','05/22/2011',11,1546, 0, 0, N'Just Teacher');
INSERT INTO Teachers([Name],[Surname],[Date],[Premium],[Salary], [IsAssistant], [IsProffesor], [Position]) VALUES('Lars','Logan','08/11/2020',122,1201, 0, 1, N'Main Teacher'),('Haley','Edwards','07/21/2012',212,2149, 1, 0, N'Secondary Teacher'),('Tana','Beasley','04/28/2015',101,2688, 1, 1, N'Mega Teacher'),('Russell','Suarez','02/06/2013',165,2565, 0, 0, N'Just Teacher'),('Rana','Barber','01/26/2016',43,1174, 0, 0, N'Just Teacher'),('Noel','Walker','01/16/2014',48,1292, 0, 0, N'Just Teacher'),('Karly','Waller','08/15/2020',211,2601, 0, 0, N'Just Teacher'),('Mara','Hughes','09/09/2019',75,2525, 0, 0, N'Just Teacher'),('Ira','Bridges','06/09/2012',34,1527, 0, 0, N'Just Teacher'),('Brendan','Ray','06/12/2014',229,1288, 0, 0, N'Just Teacher');
INSERT INTO Teachers([Name],[Surname],[Date],[Premium],[Salary], [IsAssistant], [IsProffesor], [Position]) VALUES('Hector','Whitaker','08/02/2021',110,2376, 0, 1, N'Main Teacher'),('Xanthus','Juarez','09/02/2021',103,1779, 1, 0, N'Secondary Teacher'),('Chase','Holden','03/04/2014',161,1744, 1, 1, N'Mega Teacher'),('Hoyt','Rosa','09/02/2011',58,1041, 0, 0, N'Just Teacher'),('Sawyer','Crawford','01/30/2014',237,1969, 0, 0, N'Just Teacher'),('Eugenia','Sweet','11/30/2021',98,1814, 0, 0, N'Just Teacher'),('Vielka','Acosta','08/10/2018',282,1264, 0, 0, N'Just Teacher'),('Abigail','Tillman','03/04/2015',81,628, 0, 0, N'Just Teacher'),('Blair','Case','08/21/2018',150,1092, 0, 0, N'Just Teacher'),('Fay','Koch','03/06/2016',8,755, 0, 0, N'Just Teacher');
INSERT INTO Teachers([Name],[Surname],[Date],[Premium],[Salary], [IsAssistant], [IsProffesor], [Position]) VALUES('Fay','Macias','09/12/2020',201,2691, 0, 1, N'Main Teacher'),('Elijah','Mcguire','05/13/2014',224,2104, 1, 0, N'Secondary Teacher'),('Uriah','Cruz','03/15/2018',269,1150, 1, 1, N'Mega Teacher'),('Shafira','Pollard','06/12/2014',262,2111, 0, 0, N'Just Teacher'),('Selma','Carver','12/08/2012',20,2708, 0, 0, N'Just Teacher'),('Shaine','Moody','07/02/2019',23,1117, 0, 0, N'Just Teacher'),('Giacomo','Hill','03/30/2021',27,1283, 0, 0, N'Just Teacher'),('Irene','Branch','12/09/2014',14,2589, 0, 0, N'Just Teacher'),('Kim','Chan','05/10/2016',94,2998, 0, 0, N'Just Teacher'),('Chester','Nicholson','11/16/2016',259,2252, 0, 0, N'Just Teacher');
INSERT INTO Teachers([Name],[Surname],[Date],[Premium],[Salary], [IsAssistant], [IsProffesor], [Position]) VALUES('Jessica','Erickson','08/17/2018',34,2580, 0, 1, N'Main Teacher'),('Rahim','Tillman','02/21/2021',146,1765, 1, 0, N'Secondary Teacher'),('Germane','Rogers','12/15/2018',182,2077, 1, 1, N'Mega Teacher'),('Cathleen','Bowen','08/10/2016',128,1609, 0, 0, N'Just Teacher'),('Orlando','Guzman','09/25/2012',137,1099, 0, 0, N'Just Teacher'),('Blake','Wade','12/29/2015',168,2609, 0, 0, N'Just Teacher'),('Aquila','Snow','02/23/2011',163,1393, 0, 0, N'Just Teacher'),('Matthew','Cohen','07/02/2015',170,1924, 0, 0, N'Just Teacher'),('Arden','Hart','05/03/2019',80,2215, 0, 0, N'Just Teacher'),('Jacqueline','Donovan','01/10/2016',55,2993, 0, 0, N'Just Teacher');
INSERT INTO Teachers([Name],[Surname],[Date],[Premium],[Salary], [IsAssistant], [IsProffesor], [Position]) VALUES('Renee','Kramer','03/25/2015',120,1090, 0, 1, N'Main Teacher'),('Eve','Maddox','02/22/2015',157,1915, 1, 0, N'Secondary Teacher'),('Keith','Heath','08/16/2016',90,2994, 1, 1, N'Mega Teacher'),('Jolie','Calhoun','05/18/2018',154,2659, 0, 0, N'Just Teacher'),('Lev','Harper','07/18/2016',210,1288, 0, 0, N'Just Teacher'),('Kato','Foster','08/06/2019',282,1014, 0, 0, N'Just Teacher'),('Hanae','Cardenas','12/24/2015',160,2602, 0, 0, N'Just Teacher'),('Rinah','Shaw','10/27/2014',273,766, 0, 0, N'Just Teacher'),('Zelda','James','08/05/2019',182,2558, 0, 0, N'Just Teacher'),('Donovan','Stokes','07/22/2011',235,1472, 0, 0, N'Just Teacher');
INSERT INTO Teachers([Name],[Surname],[Date],[Premium],[Salary], [IsAssistant], [IsProffesor], [Position]) VALUES('Dalton','Simmons','01/16/2020',258,2725, 0, 1, N'Main Teacher'),('Olga','Olson','11/05/2020',156,2884, 1, 0, N'Secondary Teacher'),('Salvador','Salinas','09/04/2016',205,2374, 1, 1, N'Mega Teacher'),('Lacy','Bowers','05/15/2012',57,2569, 0, 0, N'Just Teacher'),('Leroy','Coffey','08/07/2012',164,1579, 0, 0, N'Just Teacher'),('Leilani','Petty','01/25/2019',276,2494, 0, 0, N'Just Teacher'),('Ursa','Jefferson','02/02/2011',267,1628, 0, 0, N'Just Teacher'),('Michelle','Bender','02/12/2012',6,591, 0, 0, N'Just Teacher'),('Tad','Rodriquez','10/13/2018',137,2159, 0, 0, N'Just Teacher'),('Pandora','Ayala','02/21/2015',117,2733, 0, 0, N'Just Teacher');
INSERT INTO Teachers([Name],[Surname],[Date],[Premium],[Salary], [IsAssistant], [IsProffesor], [Position]) VALUES('Mary','Clark','01/28/2015',159,954, 0, 1, N'Main Teacher'),('Isaiah','Moses','12/30/2011',30,2678, 1, 0, N'Secondary Teacher'),('Alec','Mcdaniel','07/11/2021',31,2446, 1, 1, N'Mega Teacher'),('Bo','Castro','08/02/2021',280,2045, 0, 0, N'Just Teacher'),('Michael','Gilbert','06/20/2016',29,3000, 0, 0, N'Just Teacher'),('Eden','Browning','04/04/2015',228,1535, 0, 0, N'Just Teacher'),('Joelle','Tran','02/26/2015',110,1855, 0, 0, N'Just Teacher'),('Wylie','Nieves','09/04/2011',150,2229, 0, 0, N'Just Teacher'),('Carly','Best','12/19/2010',183,2447, 0, 0, N'Just Teacher'),('Gannon','Lott','04/20/2017',282,1005, 0, 0, N'Just Teacher');
INSERT INTO Teachers([Name],[Surname],[Date],[Premium],[Salary], [IsAssistant], [IsProffesor], [Position]) VALUES('Colby','Robbins','06/13/2015',76,2327, 0, 1, N'Main Teacher'),('Bo','Norton','01/31/2020',94,1257, 1, 0, N'Secondary Teacher'),('Francis','Malone','07/30/2019',154,2103, 1, 1, N'Mega Teacher'),('Basia','Buck','05/13/2018',192,2100, 0, 0, N'Just Teacher'),('Oprah','Nielsen','03/25/2012',260,2870, 0, 0, N'Just Teacher'),('Christopher','Kane','07/15/2016',128,1949, 0, 0, N'Just Teacher'),('Yoko','Owens','07/09/2017',94,1307, 0, 0, N'Just Teacher'),('Porter','Cunningham','07/26/2017',254,726, 0, 0, N'Just Teacher'),('Anne','Mclaughlin','06/09/2016',89,797, 0, 0, N'Just Teacher'),('Travis','Benson','10/07/2018',266,2762, 0, 0, N'Just Teacher');


INSERT INTO Groups ([Name], [Rating], [Year]) VALUES (N'ADMI 102', ABS( CHECKSUM( NEWID() ) ) % 6, ABS( CHECKSUM( NEWID() ) ) % 5 + 1)
INSERT INTO Groups ([Name], [Rating], [Year]) VALUES (N'PROG 302', ABS( CHECKSUM( NEWID() ) ) % 6, ABS( CHECKSUM( NEWID() ) ) % 5 + 1)
INSERT INTO Groups ([Name], [Rating], [Year]) VALUES (N'PROG 203', ABS( CHECKSUM( NEWID() ) ) % 6, ABS( CHECKSUM( NEWID() ) ) % 5 + 1)
INSERT INTO Groups ([Name], [Rating], [Year]) VALUES (N'DESI 101', ABS( CHECKSUM( NEWID() ) ) % 6, ABS( CHECKSUM( NEWID() ) ) % 5 + 1)
INSERT INTO Groups ([Name], [Rating], [Year]) VALUES (N'ADMI 212', ABS( CHECKSUM( NEWID() ) ) % 6, ABS( CHECKSUM( NEWID() ) ) % 5 + 1)
INSERT INTO Groups ([Name], [Rating], [Year]) VALUES (N'DESI 093', ABS( CHECKSUM( NEWID() ) ) % 6, ABS( CHECKSUM( NEWID() ) ) % 5 + 1)

INSERT INTO Departments([Name], [Financing]) VALUES (N'DEP 1', 9005)
INSERT INTO Departments([Name], [Financing]) VALUES (N'DEP 13', 9110)
INSERT INTO Departments([Name], [Financing]) VALUES (N'DEP 3', 1345)
INSERT INTO Departments([Name], [Financing]) VALUES (N'DEP 4', 4456)
INSERT INTO Departments([Name], [Financing]) VALUES (N'DEP 55', 0003)
INSERT INTO Departments([Name], [Financing]) VALUES (N'DEP 67', 9798)
INSERT INTO Departments([Name], [Financing]) VALUES (N'ZDEV', 2255)
INSERT INTO Departments([Name], [Financing]) VALUES (N'Software Development', 2212)

INSERT INTO Faculties ([Name], [Dean]) VALUES (N'Robotechnics', N'Vasya Pupkin')
INSERT INTO Faculties ([Name], [Dean]) VALUES (N'Computer Science', N'Vasya Pupkin')
INSERT INTO Faculties ([Name], [Dean]) VALUES (N'Art', N'Ivan Ivanov')

/*
SELECT 
*
FROM 
Departments
ORDER BY DepartmentID DESC
*/

/*
SELECT
[Name] 'Group Name',
[Rating] 'Group Rating'
FROM
Groups
*/

/*
SELECT
[Surname] 'Surname',
[Salary] / [Premium] * 100 'Salary % from Premium',
[Salary] / ([Premium] + [Salary]) * 100 'Salary % from Total'
FROM
Teachers
*/

/*
SELECT
CONCAT('The dean of faculty ', Faculties.Name, ' is ', Faculties.Dean) 'Dean'
FROM Faculties
*/

/*
SELECT
Surname
FROM
Teachers
WHERE IsProffesor = 1 AND Salary > 1050
*/

/*
SELECT
*
FROM
Departments
WHERE Financing < 11000 OR Financing > 25000
*/

/*
SELECT
Name
FROM
Faculties
WHERE Name != 'Computer Science'
*/

/*
SELECT
[Surname],
[Position]
FROM
Teachers
WHERE IsProffesor = 0
*/

/*
SELECT
[Surname],
[Position],
[Salary],
[Premium]
FROM
Teachers
WHERE IsAssistant = 1 AND Premium BETWEEN 160 AND 550
*/

/*
SELECT
[Surname],
[Salary]
FROM
Teachers
WHERE IsAssistant = 1
*/

/*
SELECT
[Surname],
[Position]
FROM
Teachers
WHERE Date < '01.01.2020'
*/

/*
SELECT
[Name] 'Name of Department'
FROM
Departments
WHERE [Name] < 'Software Development'
*/

/*
SELECT
[Surname]
FROM
Teachers
WHERE IsAssistant = 1 AND (Salary + Premium) < 1200
*/

/*
SELECT
*
FROM
Groups
WHERE [Year] = 5 AND Rating BETWEEN 2 AND 4
*/

/*
SELECT
[Surname]
FROM
Teachers
WHERE IsAssistant = 1 AND (Salary < 550 OR Premium < 200)
*/


DROP TABLE Subjects

CREATE TABLE Subjects
(
    id INT PRIMARY KEY NOT NULL IDENTITY,
    [Name] NVARCHAR(100) NOT NULL UNIQUE CHECK ( LEN(REPLACE([Name], ' ', '')) > 0 )
)

INSERT INTO Subjects ([Name]) VALUES ('Math'), ('Physics'), ('Foreign Language'), ('IT'), ('Sport') 

DROP TABLE Lectures

CREATE TABLE Lectures
(
    id INT PRIMARY KEY NOT NULL IDENTITY,
    [DayOfWeek] INT NOT NULL CHECK ( [DayOfWeek] >= 1 AND [DayOfWeek] <= 7 ),
    LectureRoom NVARCHAR(max) NOT NULL CHECK ( LEN(REPLACE(LectureRoom, ' ', '')) > 0 ),
    SubjectId INT NOT NULL,
    TeacherId INT NOT NULL
)

DECLARE @I INT
SET @I = 1

WHILE @I < 100
BEGIN
	INSERT INTO Lectures ([DayOfWeek], LectureRoom, SubjectId, TeacherId) 
    VALUES 
        (ABS( CHECKSUM( NEWID() ) ) % 7 + 1, 
        CONCAT('Room ', ABS( CHECKSUM( NEWID() ) ) % 30) ,
        ABS( CHECKSUM( NEWID() ) ) % (SELECT MAX(id) FROM Subjects) + 1,
        ABS( CHECKSUM( NEWID() ) ) % (SELECT MAX(TeacherID) FROM Teachers) + 1)
    SET @I = @I + 1
END


DROP TABLE GroupsLectures

CREATE TABLE GroupsLectures
(
    id INT PRIMARY KEY NOT NULL IDENTITY,
    GroupId INT NOT NULL,
    LectureId INT NOT NULL
)

SET @I = 1

WHILE @I < (SELECT MAX(id) FROM Lectures) + 1
BEGIN
	INSERT INTO GroupsLectures(GroupId, LectureId) 
    VALUES 
        (
        ABS( CHECKSUM( NEWID() ) ) % (SELECT MAX(GroupID) FROM Groups) + 1,
        @I
        )
    SET @I = @I + 1
END

-- 2. Вывести количество лекций, которые читает преподаватель Jessica Erickson

--SELECT 
--    COUNT(L.id) 'Count'
--FROM 
--    Lectures L JOIN 
--    (
--    SELECT
--        *
--    FROM
--        Teachers
--    WHERE
--        Name = 'Jessica' AND Surname = 'Erickson'
--    ) T
--    ON L.TeacherId = T.TeacherID

--3. Вывести количество занятий, проводимых в аудитории Room 10

--SELECT
--    COUNT(id) 'Lectures in Room 10'
--FROM
--    Lectures
--WHERE
--    LectureRoom = 'Room 10'

SELECT
    *
FROM
    Lectures
GROUP BY
    LectureRoom
 