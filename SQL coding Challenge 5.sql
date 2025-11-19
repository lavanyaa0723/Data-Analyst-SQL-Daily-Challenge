-- sql challenge 5--
-- joins and union --

CREATE DATABASE Student;
USE Student;

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    course_id INT
);

CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100)
);

INSERT INTO Students (student_id, student_name, course_id)
VALUES
(1,'Arun',101),
(2,'Meera',102),
(3,'Kavin',103),
(4,'Nisha',NULL),   
(5,'Rahul',101);

INSERT INTO Courses (course_id, course_name)
VALUES
(101,'Computer Science'),
(102,'Mathematics'),
(103,'Physics'),
(104,'Chemistry'); 
SELECT * FROM Courses;

-- inner join --
SELECT s.student_id, s.student_name, c.course_name
FROM Students s
INNER JOIN Courses c
ON s.course_id = c.course_id;

-- left join and right join --
CREATE TABLE Enrollments (
    enroll_id INT PRIMARY KEY,
    student_id INT,
    course_id INT
);

INSERT INTO Enrollments (enroll_id, student_id, course_id)
VALUES
(1, 1, 101),
(2, 2, 102),
(3, 4, NULL),      
(4, NULL, 103);    

SELECT s.student_name, e.course_id
FROM Students s
LEFT JOIN Enrollments e
ON s.student_id = e.student_id;

SELECT s.student_name, e.course_id
FROM Students s
RIGHT JOIN Enrollments e
ON s.student_id = e.student_id;

-- union vs union all --
CREATE TABLE CurrentEmployees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100)
);

CREATE TABLE PastEmployees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100)
);

INSERT INTO CurrentEmployees (emp_id, emp_name)
VALUES
(1,'Karthik'),
(2,'Meera'),
(3,'Sanjay');

INSERT INTO PastEmployees (emp_id, emp_name)
VALUES
(2,'Meera'),     
(4,'Pranav'),
(5,'Harish');
SELECT * FROM PastEmployees;

SELECT emp_name FROM CurrentEmployees
UNION
SELECT emp_name FROM PastEmployees;

SELECT emp_name FROM CurrentEmployees
UNION ALL
SELECT emp_name FROM PastEmployees;