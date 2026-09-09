use thangarasudb;
CREATE TABLE Course(
courseID INT,
coursename VARCHAR(30),
credits int
);

INSERT INTO Course VALUES
(201,'DATABASE SYSTEMS',4),
(202,'DATA STRUCTURES',3),
(203,'MATHEMATICS',4);

CREATE TABLE Enrollment(
enrollmentID INT,
studentID INT,
courseID INT
);

INSERT INTO Enrollment VALUES
(1,1001,201),
(2,1001,202),
(3,1002,203),
(4,1003,201);
  
SELECT Course.courseID,
Course.coursename,
Enrollment.studentID
FROM Course
LEFT JOIN Enrollment
ON Course.courseID=Enrollment.courseID;

SELECT Course.courseID,
Course.coursename,
Enrollment.studentID
FROM Course
RIGHT JOIN Enrollment
ON Course.courseID=Enrollment.courseID;


