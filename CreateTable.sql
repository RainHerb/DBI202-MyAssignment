CREATE DATABASE StudentGradeManagement
GO

USE StudentGradeManagement
GO

DROP TABLE Student
GO

CREATE TABLE Student(
	StudentID VARCHAR(10) PRIMARY KEY,
	StudentName NVARCHAR(100) NOT NULL
)
GO

DROP TABLE Course
GO
CREATE TABLE Course(
	CourseID VARCHAR(10) PRIMARY KEY,
	CourseName NVARCHAR(100) NOT NULL
)
GO


DROP TABLE Assessment
GO
CREATE TABLE Assessment(
	AssessmentID VARCHAR(10) PRIMARY KEY,
	CourseID VARCHAR(10) FOREIGN KEY REFERENCES Course(CourseID),
	AssessmentName VARCHAR(50) NOT NULL,
	[Weight] FLOAT NOT NULL
)
GO

DROP TABLE Student_Assessment
GO
CREATE TABLE Student_Assessment(
	StudentID VARCHAR(10) FOREIGN KEY REFERENCES Student(StudentID),
	AssessmentID VARCHAR(10) FOREIGN KEY REFERENCES Assessment(AssessmentID),
	Score FLOAT
	PRIMARY KEY (StudentID, AssessmentID)
)
GO

DROP TABLE Class
GO

CREATE TABLE Class(
	ClassID VARCHAR(20) PRIMARY KEY,
	ClassName VARCHAR(50),
	Semester VARCHAR(20),
	CourseID VARCHAR(10) FOREIGN KEY REFERENCES Course(CourseID)
)
GO

DROP TABLE Enroll
GO
CREATE TABLE Enroll(
	ClassID VARCHAR(20) FOREIGN KEY REFERENCES Class(ClassID),
	StudentID VARCHAR(10) FOREIGN KEY REFERENCES Student(StudentID),
	PRIMARY KEY (ClassID, StudentID)
)
GO

DROP TABLE [Session]
GO

CREATE TABLE [Session](
	SessionID VARCHAR(50) PRIMARY KEY,
	ClassID VARCHAR(20) FOREIGN KEY REFERENCES Class(ClassID)
)
GO 

DROP TABLE Attendance
GO

CREATE TABLE Attendance(
	SessionID VARCHAR(50) FOREIGN KEY REFERENCES [Session](SessionID),
	StudentID VARCHAR(10) FOREIGN KEY REFERENCES Student(StudentID),
	[Status] BIT,
	PRIMARY KEY (SessionID, StudentID)
)
GO
