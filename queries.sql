-- a. What are the names of the students enrolled in a particular course?
SELECT Students.Name
FROM Students
JOIN Enrollments ON Students.StudentID = Enrollments.StudentID
WHERE Enrollments.CourseCode = 'CS101';

-- b. What is the average grade for a particular course?
SELECT CourseCode, AVG(CASE 
    WHEN Grade = 'A' THEN 4.0
    WHEN Grade = 'B' THEN 3.0
    WHEN Grade = 'C' THEN 2.0
    WHEN Grade = 'D' THEN 1.0
    WHEN Grade = 'F' THEN 0.0
    ELSE NULL
END) AS AverageGrade
FROM Enrollments
WHERE CourseCode = 'CS101'
GROUP BY CourseCode;

-- c. Which courses have not been taken by any student?
SELECT Courses.Name
FROM Courses
LEFT JOIN Enrollments ON Courses.CourseCode = Enrollments.CourseCode
WHERE Enrollments.CourseCode IS NULL;

-- d. What is the highest grade received by a particular student?
SELECT MAX(Grade) AS HighestGrade
FROM Enrollments
WHERE StudentID = 1;