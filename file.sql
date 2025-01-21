-- create database
CREATE DATABASE university;
-- use database
USE university;

-- create students table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(25),
    Major VARCHAR(25),
    EnrollmentDate DATE
);

-- create departments table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(25),
    HeadProfessor VARCHAR(25)
);

-- create professors table
CREATE TABLE Professors (
    ProfessorID INT PRIMARY KEY AUTO_INCREMENT,
    DepartmentID INT,
    Name VARCHAR(25),
    OfficeNumber VARCHAR(25),
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

-- create courses table
CREATE TABLE Courses (
    CourseCode VARCHAR(5) PRIMARY KEY,
    ProfessorID INT,
    Name VARCHAR(25),
    CreditHours INT,
    FOREIGN KEY (ProfessorID) REFERENCES Professor(ProfessorID)
);

-- create enrollments table
CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY AUTO_INCREMENT,
    CourseCode VARCHAR(5),
    StudentID INT,
    Grade VARCHAR(2),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseCode) REFERENCES Courses(CourseCode)
);

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