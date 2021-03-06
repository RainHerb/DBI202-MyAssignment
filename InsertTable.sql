USE StudentGradeManagement
GO

DELETE FROM Course
GO

INSERT INTO Course VALUES
('DBI202','Introduction to Databases'),
('CSD201','Data Structures and Algorithms')
GO

DELETE FROM Assessment
GO

INSERT INTO Assessment VALUES
('DBI202 Lab', 'DBI202', 'Lab', 0.1),
('DBI202 PT', 'DBI202', 'Progress Test', 0.1),
('DBI202 Asm', 'DBI202', 'Assignment', 0.2),
('DBI202 PE', 'DBI202', 'Practice Exam', 0.3),
('DBI202 FE', 'DBI202', 'Final Exam', 0.3),
('CSD201 Asm', 'CSD201', 'Asm', 0.2),
('CSD201 PT', 'CSD201', 'Progress Test', 0.2),
('CSD201 PE', 'CSD201', 'Practice Exam', 0.3),
('CSD201 FE', 'CSD201', 'Final Exam', 0.3)
GO

DELETE FROM Student
GO

INSERT INTO Student VALUES 
('HE160583', 'Vu Thi Thanh Thao'),
('HE000002', 'Tran Dai Nghia'),
('HE000003', 'Le Dinh Tuan'),
('HE000004', 'Nguyen Hai Duong'),
('HE000005', 'Trinh Nam Anh')
GO

INSERT INTO Class VALUES
('SE1647 DBI202', 'SE1647','SU22', 'DBI202'),
('SE1634 DBI202', 'SE1634','SU22', 'DBI202'),
('SE1647 CSD201', 'SE1647','SU22', 'CSD201'),
('SE1634 CSD201', 'SE1634','SU22', 'CSD201')
GO

DELETE FROM Enroll
GO
INSERT INTO Enroll(ClassID, StudentID) 
VALUES
('SE1647 DBI202', 'HE160583'),
('SE1647 DBI202', 'HE000003'),
('SE1647 DBI202', 'HE000005'),
('SE1634 DBI202', 'HE000002'),
('SE1634 DBI202', 'HE000004'),
('SE1647 CSD201', 'HE160583'),
('SE1647 CSD201', 'HE000002'),
('SE1634 CSD201', 'HE000003'),
('SE1634 CSD201', 'HE000004'),
('SE1634 CSD201', 'HE000005')
GO

INSERT INTO [Session]
VALUES
('SE1647 DBI202 Session 1', 'SE1647 DBI202'),
('SE1647 DBI202 Session 2', 'SE1647 DBI202'),
('SE1647 DBI202 Session 3', 'SE1647 DBI202'),
('SE1647 DBI202 Session 4', 'SE1647 DBI202'),
('SE1647 DBI202 Session 5', 'SE1647 DBI202'),
('SE1647 CSD201 Session 1', 'SE1647 CSD201'),
('SE1647 CSD201 Session 2', 'SE1647 CSD201'),
('SE1647 CSD201 Session 3', 'SE1647 CSD201'),
('SE1647 CSD201 Session 4', 'SE1647 CSD201'),
('SE1647 CSD201 Session 5', 'SE1647 CSD201'),
('SE1634 DBI202 Session 1', 'SE1634 DBI202'),
('SE1634 DBI202 Session 2', 'SE1634 DBI202'),
('SE1634 DBI202 Session 3', 'SE1634 DBI202'),
('SE1634 DBI202 Session 4', 'SE1634 DBI202'),
('SE1634 DBI202 Session 5', 'SE1634 DBI202'),
('SE1634 CSD201 Session 1', 'SE1634 CSD201'),
('SE1634 CSD201 Session 2', 'SE1634 CSD201'),
('SE1634 CSD201 Session 3', 'SE1634 CSD201'),
('SE1634 CSD201 Session 4', 'SE1634 CSD201'),
('SE1634 CSD201 Session 5', 'SE1634 CSD201')
GO

INSERT INTO Attendance
VALUES
('SE1647 DBI202 Session 1', 'HE160583', 1),
('SE1647 DBI202 Session 1', 'HE000003', 1),
('SE1647 DBI202 Session 1', 'HE000005', 1),
('SE1647 DBI202 Session 2', 'HE160583', 1),
('SE1647 DBI202 Session 2', 'HE000003', 0),
('SE1647 DBI202 Session 2', 'HE000005', 1),
('SE1647 DBI202 Session 3', 'HE160583', 1),
('SE1647 DBI202 Session 3', 'HE000003', 1),
('SE1647 DBI202 Session 3', 'HE000005', 0),
('SE1647 DBI202 Session 4', 'HE160583', 1),
('SE1647 DBI202 Session 4', 'HE000003', 0),
('SE1647 DBI202 Session 4', 'HE000005', 1),
('SE1647 DBI202 Session 5', 'HE160583', 1),
('SE1647 DBI202 Session 5', 'HE000003', 1),
('SE1647 DBI202 Session 5', 'HE000005', 1),
('SE1634 DBI202 Session 1', 'HE000002', 1),
('SE1634 DBI202 Session 1', 'HE000004', 1),
('SE1634 DBI202 Session 2', 'HE000002', 1),
('SE1634 DBI202 Session 2', 'HE000004', 0),
('SE1634 DBI202 Session 3', 'HE000002', 1),
('SE1634 DBI202 Session 3', 'HE000004', 1),
('SE1634 DBI202 Session 4', 'HE000002', 1),
('SE1634 DBI202 Session 4', 'HE000004', 1),
('SE1634 DBI202 Session 5', 'HE000002', 1),
('SE1634 DBI202 Session 5', 'HE000004', 0),
('SE1647 CSD201 Session 1', 'HE160583', 1),
('SE1647 CSD201 Session 1', 'HE000002', 0),
('SE1647 CSD201 Session 2', 'HE160583', 1),
('SE1647 CSD201 Session 2', 'HE000002', 1),
('SE1647 CSD201 Session 3', 'HE160583', 1),
('SE1647 CSD201 Session 3', 'HE000002', 1),
('SE1647 CSD201 Session 4', 'HE160583', 1),
('SE1647 CSD201 Session 4', 'HE000002', 1),
('SE1647 CSD201 Session 5', 'HE160583', 1),
('SE1647 CSD201 Session 5', 'HE000002', 0),
('SE1634 CSD201 Session 1', 'HE000003', 1),
('SE1634 CSD201 Session 1', 'HE000004', 1),
('SE1634 CSD201 Session 1', 'HE000005', 1),
('SE1634 CSD201 Session 2', 'HE000003', 1),
('SE1634 CSD201 Session 2', 'HE000004', 1),
('SE1634 CSD201 Session 2', 'HE000005', 1),
('SE1634 CSD201 Session 3', 'HE000003', 0),
('SE1634 CSD201 Session 3', 'HE000004', 1),
('SE1634 CSD201 Session 3', 'HE000005', 1),
('SE1634 CSD201 Session 4', 'HE000003', 1),
('SE1634 CSD201 Session 4', 'HE000004', 1),
('SE1634 CSD201 Session 4', 'HE000005', 1),
('SE1634 CSD201 Session 5', 'HE000003', 1),
('SE1634 CSD201 Session 5', 'HE000004', 1),
('SE1634 CSD201 Session 5', 'HE000005', 0)
GO

INSERT INTO Student_Assessment
VALUES
('HE160583','DBI202 Lab',9),
('HE160583','DBI202 PT',10),
('HE160583','DBI202 Asm',9),
('HE160583','DBI202 PE',10),
('HE160583','DBI202 FE',9),
('HE160583','CSD201 PT',10),
('HE160583','CSD201 Asm',10),   
('HE160583','CSD201 PE',8),
('HE160583','CSD201 FE',8),
('HE000002','DBI202 Lab',8),
('HE000002','DBI202 PT',7),
('HE000002','DBI202 Asm',7),
('HE000002','DBI202 PE',8),
('HE000002','DBI202 FE',8),
('HE000002','CSD201 PT',8),
('HE000002','CSD201 Asm',7),
('HE000002','CSD201 PE',8),
('HE000002','CSD201 FE',7),
('HE000003','DBI202 Lab',9),
('HE000003','DBI202 PT',7),
('HE000003','DBI202 Asm',7),
('HE000003','DBI202 PE',8),
('HE000003','DBI202 FE',8),
('HE000003','CSD201 PT',5),
('HE000003','CSD201 Asm',4),
('HE000003','CSD201 PE',2),
('HE000003','CSD201 FE',5),
('HE000004','DBI202 Lab',6),
('HE000004','DBI202 PT',9),
('HE000004','DBI202 Asm',8),
('HE000004','DBI202 PE',0),
('HE000004','DBI202 FE',6),
('HE000004','CSD201 PT',8),
('HE000004','CSD201 Asm',6),
('HE000004','CSD201 PE',8),
('HE000004','CSD201 FE',3),
('HE000005','DBI202 Lab',9),
('HE000005','DBI202 PT',9),
('HE000005','DBI202 Asm',9),
('HE000005','DBI202 PE',9),
('HE000005','DBI202 FE',9),
('HE000005','CSD201 PT',9),
('HE000005','CSD201 Asm',8),
('HE000005','CSD201 PE',8),
('HE000005','CSD201 FE',8)
GO