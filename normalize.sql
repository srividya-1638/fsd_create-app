
CREATE DATABASE StudentDB;

USE StudentDB;

-- Department Table
CREATE TABLE Department (
    Dept_ID VARCHAR(10) PRIMARY KEY,
    Dept_Name VARCHAR(50)
);

-- Student Table
CREATE TABLE Student (
    Student_ID INT PRIMARY KEY,
    Student_Name VARCHAR(50),
    Dept_ID VARCHAR(10),
    FOREIGN KEY (Dept_ID) REFERENCES Department(Dept_ID)
);

-- Instructor Table
CREATE TABLE Instructor (
    Instructor_ID VARCHAR(10) PRIMARY KEY,
    Instructor_Name VARCHAR(50)
);

-- Course Table
CREATE TABLE Course (
    Course_ID VARCHAR(10) PRIMARY KEY,
    Course_Name VARCHAR(50),
    Instructor_ID VARCHAR(10),
    FOREIGN KEY (Instructor_ID) REFERENCES Instructor(Instructor_ID)
);

-- Enrollment Table
CREATE TABLE Enrollment (
    Student_ID INT,
    Course_ID VARCHAR(10),
    Marks INT,
    PRIMARY KEY (Student_ID, Course_ID),
    FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID),
    FOREIGN KEY (Course_ID) REFERENCES Course(Course_ID)
);


INSERT INTO Department VALUES
('D01', 'CSE'),
('D02', 'ECE');

INSERT INTO Student VALUES
(101, 'Ravi', 'D01'),
(102, 'Priya', 'D02');

INSERT INTO Instructor VALUES
('I01', 'Ramesh'),
('I02', 'Suresh');

INSERT INTO Course VALUES
('C01', 'Java', 'I01'),
('C02', 'DBMS', 'I02');

INSERT INTO Enrollment VALUES
(101, 'C01', 85),
(101, 'C02', 90),
(102, 'C01', 80);

SELECT * FROM Student;
SELECT * FROM Department;
SELECT * FROM Course;
SELECT * FROM Enrollment;
SELECT * FROM Instructor;