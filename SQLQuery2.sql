	DROP TABLE Suits;
DROP TABLE Faces;

CREATE TABLE Suits ( s char );
CREATE TABLE Faces ( f char );

INSERT INTO Suits VALUES ('S'),('C'),('D'),('H');
INSERT INTO Faces VALUES ('6'),('7'),('8'),('9'),('T'),('J'),('Q'),('K'),('A');

SELECT CONCAT(Faces.f,Suits.s) 'Card' FROM Suits, Faces ORDER BY NEWID();