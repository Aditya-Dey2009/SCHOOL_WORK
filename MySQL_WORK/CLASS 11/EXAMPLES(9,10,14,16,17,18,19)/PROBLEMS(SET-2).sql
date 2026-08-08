
SHOW DATABASES;
USE PROJECTS;

DROP TABLE IF EXISTS PET;

CREATE TABLE IF NOT EXISTS PET
(
    NAME VARCHAR(10) NOT NULL,
    OWNER VARCHAR(10) NOT NULL,
    SPECIES VARCHAR(10) NOT NULL,
    SEX CHAR(1) ,
    BIRTH DATE NOT NULL,
    DEATH DATE

);

DESC PET;

INSERT INTO PET 
VALUES
('Fluffy', 'Harold', 'cat', 'f', '1993-02-04', NULL),
('Claws', 'Gwen', 'cat', 'm', '1994-03-17', NULL),
('Buffy', 'Harold', 'dog', 'f', '1989-05-13', NULL),
('Fang', 'Benny', 'dog', 'm', '1990-08-27', NULL),
('Bowser', 'Diane', 'dog', 'm', '1979-08-31', '1995-07-29'),
('Chirpy', 'Gwen', 'bird', 'f', '1998-09-11', NULL),
('Whistler','Gwen','bird', NULL,'1997-12-09',NULL),
('Slim','Benny','snake','m','1996-04-29', NULL),
('Puffball','Diane','hamster','f','1999-03-30', NULL);

SELECT * FROM PET;

#SOLVING QUERIES ON THIS TABLE

#Solving Example 9 Queries on this table

SELECT DISTINCT(SPECIES) FROM PET;

#Solving Example 10 Queries on this table

SELECT ALL SPECIES FROM PET;

#HANDLING NULL VALUES IN THE TABLES

SELECT NAME, BIRTH, DEATH FROM PET;

#Null values appear as NULL. if we want to replace them with some other value, we can use the IFNULL() function.

SELECT NAME, BIRTH, IFNULL(DEATH, "ALIVE") FROM PET;

#We Can Also use column alias to rename the column name in the output.

SELECT NAME, BIRTH, IFNULL(DEATH, "ALIVE") AS "DIED ON" FROM PET;

#SOLVING Example 14 Queries on this table

SELECT * FROM PET
WHERE(SPECIES = "cat" || SPECIES = "dog")&&SEX = "m";

#SOLVING Example 16 Queries on this table

SELECT * FROM PET
WHERE SPECIES IN("bird", "hamster", "snake");

#SOLVING Example 17 Queries on this table

SELECT * FROM PET
WHERE NAME LIKE "F%";

#SOLVING Example 18 Queries on this table

SELECT * FROM PET
WHERE NAME LIKE "____";

#SOLVING Example 19 Queries on this table

SELECT * FROM PET
WHERE DEATH IS NOT NULL;

#ALL QUERIES SOLVED SUCCESSFULLY REGARDING THE TABLE STUDENTS