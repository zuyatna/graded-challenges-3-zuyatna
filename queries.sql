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