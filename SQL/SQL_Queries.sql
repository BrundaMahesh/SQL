CREATE DATABASE DEMO;

USE DEMO;

--Designation_Masters
CREATE TABLE Designation_Masters
(
Design_Code VARCHAR(3) PRIMARY KEY,
Design_Name VARCHAR(50) UNIQUE
);

INSERT INTO designation_masters VALUES(101,'HOD');
INSERT INTO designation_masters VALUES(102,'Professor');
INSERT INTO designation_masters VALUES(103,'Reader');
INSERT INTO designation_masters VALUES(104,'Sr.Lecturer');
INSERT INTO designation_masters VALUES(105,'Lecturer');
INSERT INTO designation_masters VALUES(106,'Director');

--Department_Masters
CREATE TABLE Department_Masters
(
Dept_code VARCHAR(2) PRIMARY KEY,
Dept_Name VARCHAR(50) UNIQUE
);

INSERT INTO department_masters VALUES(10,'Computer Science');
INSERT INTO department_masters VALUES(20,'Electricals');
INSERT INTO department_masters VALUES(30,'Electronics');
INSERT INTO department_masters VALUES(40,'Mechanics');
INSERT INTO department_masters VALUES(50,'Robotics');

--Staff_Masters
CREATE TABLE Staff_Masters
(
    Staff_Code NVARCHAR(8) PRIMARY KEY,
    Staff_Name VARCHAR(50) NOT NULL,
    Design_Code VARCHAR(3) REFERENCES Designation_Masters(Design_Code),
    Dept_Code VARCHAR(2) REFERENCES Department_Masters(Dept_Code),
    Staff_DOB DATE,
    Hiredate DATE,
    Mgr_Code NVARCHAR(8),
    Staff_Sal NVARCHAR(10),
    Staff_Address VARCHAR(240)
);

INSERT INTO staff_masters 
VALUES(100001,'Arvind',102,30,'1-15-80','1-15-03',100006,17000,'Bangalore');
INSERT INTO staff_masters 
VALUES(100002,'Shyam',102,20,'2-18-80','2-17-02',100007,20000,'Chennai');
INSERT INTO staff_masters 
VALUES(100003,'Mohan',102,10,'3-23-80','1-19-02',100006,24000,'Mumbai');
INSERT INTO staff_masters 
VALUES(100004,'Anil',102,20,'4-22-77','3-11-01',100006,20000,'Hyderabad');
INSERT INTO staff_masters
VALUES(100005,'John',106,10,'5-22-76','1-21-01',100007,32000,'Bangalore');
INSERT INTO staff_masters 
VALUES(100006,'Allen',103,30,'1-22-80','4-23-01',100005,42000,'Chennai');
INSERT INTO staff_masters 
VALUES(100007,'Smith',103,20,'7-19-73','3-12-02',100005,62000,'Mumbai');
INSERT INTO staff_masters 
VALUES(100008,'Raviraj',102,40,'6-17-80','1-11-03',100006,18000,'Bangalore');
INSERT INTO staff_masters
VALUES(100009,'Rahul',102,20,'1-16-78','12-11-03',100006,22000,'Hyderabad');
INSERT INTO staff_masters 
VALUES(100010,'Ram',103,30,'1-17-79','1-17-02',100007,32000,'Bangalore');

SELECT Staff_Name, Staff_Sal, Dept_Code
FROM Staff_Masters
WHERE Dept_Code IN ('20', '30', '40');


--Student_Masters
CREATE TABLE Student_Masters
(
    Student_Code NVARCHAR(6) PRIMARY KEY,
    Student_Name VARCHAR(50) NOT NULL,
    Dept_Code VARCHAR(2) REFERENCES Department_Masters(Dept_Code),
    Student_Dob DATE,
    Student_Address VARCHAR(240)
);


INSERT INTO student_masters VALUES(1001,'Amit',10,'11-Jan-80','chennai');
INSERT INTO student_masters VALUES(1002,'Ravi',10,'1-Nov-81','New Delhi');
INSERT INTO student_masters VALUES(1003,'Ajay',20,'13-Jan-82',null);
INSERT INTO student_masters VALUES(1004,'Raj',30,'14-Jan-79','Mumbai');
INSERT INTO student_masters VALUES(1005,'Arvind',40,'15-Jan-83','Bangalore');
INSERT INTO student_masters VALUES(1006,'Rahul',50,'16-Jan-81','Delhi');
INSERT INTO student_masters VALUES(1007,'Mehul',20,'17-Jan-82','Chennai');
INSERT INTO student_masters VALUES(1008,'Dev',10,'11-Mar-81','Bangalore');
INSERT INTO student_masters VALUES(1009,'Vijay',30,'19-Jan-80','Bangalore');
INSERT INTO student_masters VALUES(1010,'Rajat',40,'20-Jan-80','Bangalore');
INSERT INTO student_masters VALUES(1011,'Sunder',50,'21-Jan-80','Chennai');
INSERT INTO student_masters VALUES(1012,'Rajesh', 30,'22-Jan-80',null);
INSERT INTO student_masters VALUES(1013,'Anil',20,'23-Jan-80','Chennai');
INSERT INTO student_masters VALUES(1014,'Sunil',10,'15-Feb-85',	null);
INSERT INTO student_masters VALUES(1015,'Kapil',40,'18-Mar-81','Mumbai');
INSERT INTO student_masters VALUES(1016,'Ashok',40,'26-Nov-80',null);
INSERT INTO student_masters VALUES(1017,'Ramesh',30,'27-Dec-80',null);
INSERT INTO student_masters VALUES(1018,'Amit Raj',50,'28-Sep-80','New Delhi');
INSERT INTO student_masters VALUES(1019,'Ravi Raj',50,'29-May-81','New Delhi');
INSERT INTO student_masters VALUES(1020,'Amrit',10,'11-Nov-80',null);
INSERT INTO student_masters VALUES(1021,'Sumit',20,'1-Jan-80','Chennai');


--Student Marks
CREATE TABLE Student_Marks
(
Student_Code NVARCHAR(6) REFERENCES student_Masters(student_code),
Student_Year INT not null,
Subject1 INT,
Subject2 INT,
Subject3 INT
);

INSERT INTO student_marks VALUES(1001,	2010,	55,45,78);
INSERT INTO student_marks VALUES(1002,	2010,	66,74,88);
INSERT INTO student_marks VALUES(1003,	2010,	87,54,65);
INSERT INTO student_marks VALUES(1004,	2010,	65,64,90);
INSERT INTO student_marks VALUES(1005,	2010,	78,88,65);
INSERT INTO student_marks VALUES(1006,	2010,	65,86,54);
INSERT INTO student_marks VALUES(1007,	2010,	67,79,49);
INSERT INTO student_marks VALUES(1008,	2010,	72,55,55);
INSERT INTO student_marks VALUES(1009,	2010,	71,59,58);
INSERT INTO student_marks VALUES(1010,	2010,	68,44,92);
INSERT INTO student_marks VALUES(1011,	2010,	89,96,78);
INSERT INTO student_marks VALUES(1012,	2010,	78,56,55);
INSERT INTO student_marks VALUES(1013,	2010,	75,58,65);
INSERT INTO student_marks VALUES(1014,	2010,	73,74,65);
INSERT INTO student_marks VALUES(1015,	2010,	66,45,74);
INSERT INTO student_marks VALUES(1016,	2010,	68,78,74);
INSERT INTO student_marks VALUES(1017,	2010,	69,44,52);
INSERT INTO student_marks VALUES(1018,	2010,	65,78,56);
INSERT INTO student_marks VALUES(1019,	2010,	78,58,74);
INSERT INTO student_marks VALUES(1020,	2010,	45,55,65);
INSERT INTO student_marks VALUES(1021,	2010,	78,79,78);
INSERT INTO student_marks VALUES(1001,	2011,	68,44,92);
INSERT INTO student_marks VALUES(1002,	2011,	89,96,78);
INSERT INTO student_marks VALUES(1003,	2011,	78,56,55);
INSERT INTO student_marks VALUES(1004,	2011,	75,58,65);
INSERT INTO student_marks VALUES(1005,	2011,	73,74,65);
INSERT INTO student_marks VALUES(1006,	2011,	66,45,74);
INSERT INTO student_marks VALUES(1007,	2011,	68,78,74);
INSERT INTO student_marks VALUES(1008,	2011,	69,44,52);
INSERT INTO student_marks VALUES(1009,	2011,	65,78,56);
INSERT INTO student_marks VALUES(1010,	2011,	78,58,74);
INSERT INTO student_marks VALUES(1011,	2011,	45,55,65);
INSERT INTO student_marks VALUES(1012,	2011,	78,79,78);
INSERT INTO student_marks VALUES(1013,	2011,	66,74,88);
INSERT INTO student_marks VALUES(1014,	2011,	65,64,90);
INSERT INTO student_marks VALUES(1015,	2011,	78,88,65);
INSERT INTO student_marks VALUES(1016,	2011,	65,86,54);
INSERT INTO student_marks VALUES(1017,	2011,	67,79,49);
INSERT INTO student_marks VALUES(1018,	2011,	72,55,55);
INSERT INTO student_marks VALUES(1019,	2011,	71,59,58);
INSERT INTO student_marks VALUES(1020,	2011,	55,45,78);
INSERT INTO student_marks VALUES(1021,	2011,	87,54,65);


SELECT masters.Student_Code, 
       SUM(marks.Subject1 + marks.Subject2 + marks.Subject3) AS Total_Marks
FROM Student_Masters masters
JOIN Student_Marks marks ON masters.Student_Code = marks.Student_Code
GROUP BY masters.Student_Code;


SELECT Staff_Name AS Name,Design_Code AS Designation_Code
FROM Staff_Masters
WHERE Hiredate < '2003-01-01' 
AND 
Staff_Sal BETWEEN 12000 AND 25000;


SELECT Staff_Code AS Code, Staff_Name AS Name, Dept_Code AS Department_Number
FROM Staff_Masters
WHERE DATEDIFF(YEAR, Hiredate, GETDATE()) >= 18
ORDER BY DATEDIFF(YEAR, Hiredate, GETDATE());

SELECT Staff_Code AS Code, Staff_Name AS Name, Dept_Code AS Department_Number
FROM Staff_Masters
WHERE YEAR(GETDATE()) - YEAR(Hiredate) >= 18
ORDER BY Hiredate;

SELECT CONCAT(Student_Name, ', ', Dept_Code) AS 'Student Info'
FROM Student_Masters;

SELECT *FROM Staff_Masters
WHERE Mgr_Code IS NULL;

SELECT Student_Name AS Name,Dept_Code AS Department_Code,Student_Dob AS Date_of_Birth
FROM Student_Masters
WHERE Student_Dob BETWEEN '1981-01-01' AND '1983-03-31'
ORDER BY Student_Dob ASC;

--Book Masters
CREATE TABLE Book_Masters
(
Book_code INT PRIMARY KEY,
Book_name VARCHAR(50) NOT NULL,
Book_pub_year INT,
Book_pub_author VARCHAR(50) NOT NULL
);

INSERT INTO book_masters VALUES(10000001,'Let Us C++',2000,'Yashavant Kanetkar');
INSERT INTO book_masters VALUES(10000002,'Mastersing VC++',2005,'P.J Allen');
INSERT INTO book_masters VALUES(10000003,'JAVA Complete Reference',2004,'H.Schild');
INSERT INTO book_masters VALUES(10000004,'J2EE Complete Reference',2000,'H. Schild');
INSERT INTO book_masters VALUES(10000005,'Relational DBMS',2000,'B.C. Desai');
INSERT INTO book_masters VALUES(10000006,'Let Us C',2000, 'Yashavant Kanetkar');
INSERT INTO book_masters VALUES(10000007,'Intoduction To Algorithams',2001,'Cormen');
INSERT INTO book_masters VALUES(10000008,'Computer Networks',2000,'Tanenbaum');
INSERT INTO book_masters VALUES(10000009,'Introduction to O/S',2001,'Millan');


--Book Transactions
CREATE TABLE Book_transactions
(
Book_code INT REFERENCES Book_Masters(Book_code),
Student_Code NVARCHAR(6) REFERENCES Student_Masters(student_code),
Staff_Code NVARCHAR(8) REFERENCES Staff_Masters(staff_code),
Book_issue_Date date not null,
Book_expected_return_date date not null,
Book_actual_return_date date
);

INSERT INTO book_transactions VALUES(10000006,1012,NULL,'02-Feb-2011','09-Feb-2011',NULL);
INSERT INTO book_transactions VALUES(10000008,NULL,100006,'10-Mar-2011','17-Mar-2011','15-Mar-2011');
INSERT INTO book_transactions VALUES(10000009,NULL,100010,'01-Apr-2011','08-Apr-2011','10-Apr-2011');
INSERT INTO book_transactions VALUES(10000004,1015,NULL,'12-Feb-2011','19-Feb-2011',NULL);
INSERT INTO book_transactions VALUES(10000005,NULL,100007,'14-Mar-2011','21-Mar-2011','21-Mar-2011');
INSERT INTO book_transactions VALUES(10000007,NULL,100007,'01-Apr-2011','07-Apr-2011','06-Apr-2011');
INSERT INTO book_transactions VALUES(10000007,NULL,100006,'01-Apr-2010','07-Apr-2010','06-Apr-2010');
INSERT INTO book_transactions VALUES(10000005,1009,NULL,'31-May-2011','08-JUN-2011','08-JUN-2011');

SELECT *FROM Book_Masters
WHERE (Book_pub_year BETWEEN 2001 AND 2004) OR (Book_name LIKE '%&%');

SELECT *FROM Book_Masters
WHERE Book_name LIKE '%COMP%';

SELECT *FROM Staff_Masters
WHERE (Staff_Name LIKE 'A%S' OR Staff_Name LIKE 'N_%' 
OR Staff_Name LIKE '_N%' OR Staff_Name LIKE '%N' OR Staff_Name LIKE '%S');

SELECT Staff_Name FROM Staff_Masters
WHERE Staff_Name LIKE '%\_%' ESCAPE '\';

SELECT sm.Staff_Name,sm.Dept_Code,dm.Dept_Name,sm.Staff_Sal
FROM Staff_Masters sm
JOIN Department_Masters dm ON sm.Dept_Code = dm.Dept_Code
WHERE sm.Staff_Sal > 20000;

SELECT s1.Staff_Code AS 'Staff#', s1.Staff_Name AS 'Staff',
s1.Mgr_Code AS 'Mgr#', s2.Staff_Name AS 'Manager',
dm.Dept_Name AS 'Department Name'
FROM Staff_Masters s1
LEFT JOIN Staff_Masters s2 ON s1.Mgr_Code = s2.Staff_Code
JOIN Department_Masters dm ON s1.Dept_Code = dm.Dept_Code;


SELECT sm.Student_Code, sm.Student_Name, dm.Dept_Name AS 'Department Name',
marks.Subject1, marks.Subject2, marks.Subject3
FROM Student_Masters sm
JOIN Department_Masters dm ON sm.Dept_Code = dm.Dept_Code
JOIN Student_Marks marks ON sm.Student_Code = marks.Student_Code
WHERE (dm.Dept_Code = '10' OR dm.Dept_Code = '20') 
AND marks.Subject1 >= 60 
AND marks.Subject2 >= 60 
AND marks.Subject3 >= 60; 

SELECT sm.Student_Code,sm.Student_Name,bt.Book_code,bm.Book_name
FROM Student_Masters sm
JOIN Book_Transactions bt ON sm.Student_Code = bt.Student_Code
JOIN Book_Masters bm ON bt.Book_code = bm.Book_code
WHERE CONVERT(DATE, bt.Book_expected_return_date) = CONVERT(DATE, GETDATE());

SELECT sm.Staff_Code, sm.Staff_Name, dm.Dept_Name AS 'Department Name',
des.Design_Name AS 'Designation Name', bt.Book_code,bm.Book_name,bt.Book_issue_Date
FROM Staff_Masters sm
JOIN Department_Masters dm ON sm.Dept_Code = dm.Dept_Code
JOIN Designation_Masters des ON sm.Design_Code = des.Design_Code
JOIN Book_Transactions bt ON sm.Staff_Code = bt.Staff_Code
JOIN Book_Masters bm ON bt.Book_code = bm.Book_code
WHERE DATEDIFF(DAY, bt.Book_issue_Date, GETDATE()) <= 30;

--Customer
CREATE TABLE Customer (
    CustomerId INT,
    Cust_Name VARCHAR(20),
    Address1 VARCHAR(30),
    Address2 VARCHAR(30)
);

-- Add a new column with the desired datatype and constraints
ALTER TABLE Customer
ADD CustomerName VARCHAR(30) NOT NULL;

-- Drop the old column
ALTER TABLE Customer
DROP COLUMN Cust_Name;

ALTER TABLE Customer
ADD Gender VARCHAR(1),
Age INT,
PhoneNo BIGINT; 

-- Rename the Customer table to Cust_Table
EXEC sp_rename 'Customer', 'Cust_Table';

-- Inserting rows into the Cust_Table table
INSERT INTO Cust_Table (CustomerId, CustomerName, Address1, Address2, Gender, Age, PhoneNo)
VALUES
(1000, 'Allen', '#115 Chicago', '#115 Chicago', 'M', 25, 7878776),
(1001, 'George', '#116 France', '#116 France', 'M', 25, 434524),
(1002, 'Becker', '#114 New York', '#114 New York', 'M', 45, 431525);















