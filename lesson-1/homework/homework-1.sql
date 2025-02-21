--create database for homework of lesson1

CREATE DATABASE FOR_HW_L1
GO
USE FOR_HW_L1
GO 

--create 10 tables 

CREATE TABLE BRANCHES(
BRANCH_ID INT, 
NAME VARCHAR(50),
BRANCH_LOCATION VARCHAR(50), 
NUMBER_OF_STUDENTS INT,
NUMBER_OF_ROOMS INT,
NUMBER_OF_COMPUTERS INT)

CREATE TABLE MANAGERS(
MANAGER_ID INT,
NAME VARCHAR(50),
SURNAME VARCHAR(50),
BRANCH_ID INT,
CREDITS INT,
PHONE INT,
EMAIL NVARCHAR(50),
AGE INT)

CREATE TABLE TEACHERS(
TEACHER_ID INT,
NAME VARCHAR(50),
SURNAME VARCHAR(50),
BRANCH_ID INT,
TIER INT,
PHONE INT,
EMAIL NVARCHAR(50),
AGE INT)

CREATE TABLE ASSISTANTS(
ASSIST_ID INT,
NAME VARCHAR(50),
SURNAME VARCHAR(50),
BRANCH_ID INT,
PHONE INT,
EMAIL NVARCHAR(50),
AGE INT)

CREATE TABLE ADMINISTRATORS(
ADMIN_ID INT,
NAME VARCHAR(50),
SURNAME VARCHAR(50),
BRANCH_ID INT,
LEVEL INT,
PHONE INT,
EMAIL NVARCHAR(50),
AGE INT)

CREATE TABLE COMPUTERS(
COMP_ID INT,
BRANCH_ID INT,
MODEL_NAME VARCHAR(50),
SPECS VARCHAR(100),
COST INT)

CREATE TABLE GROUPS(
GROUP_NUMBER INT,
STATUS BIT,
NUMBER_OF_STUDENTS INT,
BRANCH_ID INT,
SUBJECT VARCHAR(50),
START_DATE DATE,
CYCLE INT)

CREATE TABLE STUDENTS(
STUDENT_ID INT,
NAME VARCHAR(50),
SURNAME VARCHAR(50),
AGE INT,
GROUP_NUMBER INT,
PHONE_NUMBER INT,
EMAIL NVARCHAR(50),
STATUS INT)

CREATE TABLE CERTIFICATES(
ID INT,
TYPE VARCHAR(50),
NAME VARCHAR(50),
ISSUE_DATE DATE,
EXPIRATION_DATE DATE,
ORGANIZATION VARCHAR(50))

CREATE TABLE PAYMENTS(
ID INT,
BRANCH_ID INT,
STUDENT_ID INT,
STUDENT_FULL_NAME VARCHAR(100),
AMOUNT INT,
DATE DATE,
TIME TIME)

--SELECT * FROM SYS.TABLES

--SELECT * FROM BRANCHES
INSERT INTO BRANCHES VALUES 
(1001, 'CHILONZOR', '10A AL-XORAZMIY ST, TASHKENT', 92, 4, 51),
(1002, 'TELETOWER', '37 SHAHRISTON ST, TASHKENT', 108, 6, 55),
(1003, 'CHORSU', '2 ESKISHAHAR ST, TASHKENT', 155, 12, 100),
(2001, 'OTA DARVOZA', '52 OTA DARVOZA ST, KHIVA', 76, 4, 42),
(2002, 'SHOHOBOD', '8 NIYOZOV ST, SHOVOT', 75, 5, 45),
(3001, 'USA1', '21 MARLYBONE AVE, ONEONTA NY', 117, 5, 60)

--SELECT * FROM MANAGERS
INSERT INTO MANAGERS VALUES 
(10105, 'QAHRAMON', 'ABDULLAYEV', 1001, 92, 990039191, 'qahramon1991@sample.com', 33),
(10112, 'HAMZA', 'BASHIROV', 1002, 88, 977721272, 'HamzaBash1rov@sample.com', 28),
(10165, 'ODIL', 'SAIDOV', 1003, 91, 901259201, 'adilsaidovv@sample.com', 31),
(10202, 'BAXTIYOR', 'BOLTAYEV', 2001, 99, 880075654, 'boltayev@sample.com', 30),
(10205, 'JALOL', 'KUVONDIKOV', 2002, 89, 931899921, 'KuvondikovJ@sample.com', 25),
(20101, 'DONALD', 'BIDEN', 3001, 97, 238400140, 'pseudopresident@cookie.com', 29)

--SELECT * FROM TEACHERS
INSERT INTO TEACHERS VALUES
(21088, 'ABDULLOH', 'ABDULLAYEV', 1001, 3, 990039199, 'AAbdullayev@sample.com', 38),
(21091, 'YUSUF', 'UMAROV', 1002, 2, 977721277, 'yousefumar@sample.com', 30),
(21102, 'HAYITBOY', 'ERKINOV', 1003, 2, 901259202, 'erkinovh@sample.com', 31),
(22003, 'ZAFAR', 'ORTIQOV', 2001, 3, 880075656, 'zafarortiqov1@sample.com', 35),
(22009, 'JAHONGIR', 'OTAXONOV', 2002, 3, 931899922, 'otaxonovJ@sample.com', 37),
(31002, 'CRAZY', 'LIZARD', 3001, 3, 238400144, 'thatcringeguy@cookie.com', 34)

--SELECT * FROM ASSISTANTS
INSERT INTO ASSISTANTS VALUES
(31077, 'JUNIOR', 'DEVELOPER', 1001, 990039191, 'littleboy@sample.com', 22),
(31092, 'MIDDLE', 'DEVELOPER', 1002, 977721271, 'goodboy@sample.com', 23),
(31101, 'SENIOR', 'GONSALEZ', 1003, 901259201, 'bigboy@sample.com', 21),
(32001, 'PROJECT', 'REVIEW', 2001, 880075651, 'kindabossy@sample.com', 24),
(32008, 'OFFER', 'MANAGER', 2002, 931899921, 'goodguy@sample.com', 20),
(31011, 'CURRICULUM', 'VITAE', 3001, 238400141, 'looksgood@cookie.com', 22)

--SELECT * FROM ADMINISTRATORS
INSERT INTO ADMINISTRATORS VALUES
(51088, 'A', 'B', 1001, 3, 990039199, 'lowercase@sample.com', 25),
(51091, 'C', 'D', 1002, 2, 977721277, 'alphabeta@sample.com', 26),
(51102, 'E', 'F', 1003, 2, 901259202, 'alifbo@sample.com', 28),
(52003, 'G', 'H', 2001, 3, 880075656, 'alifyo@sample.com', 27),
(52009, 'I', 'J', 2002, 3, 931899922, 'uppercase@sample.com', 29),
(61002, 'K', 'K', 3001, 3, 238400144, 'ohnocringeguy@cookie.com', 28)

CREATE LOGIN SUSPICIOUS WITH PASSWORD = 'SUSLOGIN'
CREATE USER USER1 FOR LOGIN SUSPICIOUS
CREATE ROLE UZER 
ALTER ROLE UZER ADD MEMBER USER1
GRANT SELECT ON BRANCHES TO UZER
GRANT SELECT ON MANAGERS TO UZER
GRANT SELECT ON TEACHERS TO UZER
GRANT UPDATE ON CERTIFICATES TO UZER
GRANT UPDATE ON COMPUTERS TO UZER