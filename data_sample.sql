-- insert sample data into students table
INSERT INTO Students (Name, Major, EnrollmentDate) VALUES
('Alice Johnson', 'Computer Science', '2021-09-01'),
('Bob Smith', 'Mathematics', '2021-09-01'),
('Charlie Brown', 'Physics', '2021-09-01');

-- insert sample data into departments table
INSERT INTO Departments (Name, HeadProfessor) VALUES
('Computer Science', 'Dr. Alan Turing'),
('Mathematics', 'Dr. Isaac Newton'),
('Physics', 'Dr. Albert Einstein');

-- insert sample data into professors table
INSERT INTO Professors (DepartmentID, Name, OfficeNumber) VALUES
(1, 'Dr. Alan Turing', 'CS101'),
(2, 'Dr. Isaac Newton', 'MATH201'),
(3, 'Dr. Albert Einstein', 'PHYS301');

-- insert sample data into courses table
INSERT INTO Courses (CourseCode, ProfessorID, Name, CreditHours) VALUES
('CS101', 1, 'Intro to Computer Science', 3),
('MATH101', 2, 'Calculus I', 4),
('PHYS101', 3, 'General Physics', 4);

-- insert sample data into enrollments table
INSERT INTO Enrollments (CourseCode, StudentID, Grade) VALUES
('CS101', 1, 'A'),
('MATH101', 2, 'B'),
('PHYS101', 3, 'A');