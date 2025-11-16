-- SQL Daily Challenge 3 --
-- Clauses & Operators --

CREATE DATABASE university;
USE university;

-- Creating a table for students --
CREATE TABLE StudentInfo (
    stu_id INT PRIMARY KEY,
    stu_name VARCHAR(100),
    dept_name VARCHAR(100),
    email VARCHAR(120),
    course_code INT,
    gpa DECIMAL(4,2)
);
select*from StudentInfo;
INSERT INTO StudentInfo (stu_id, stu_name, dept_name, email, course_code, gpa)
VALUES
(11, 'Arun','Computer Science','arun@mail.com', 3001, 8.5),
(12, 'Lavanyaa','Mathematics', NULL,3002, 9.1),
(13, 'Rahul','Computer Science','rahul@mail.com',3003, 7.8),
(14, 'Sneha','Physics',NULL,3001, 9.4),
(15, 'Vishnu','Mathematics','vishnu@mail.com',3004, 8.9);
select*from StudentInfo ;

-- Distinct and Where scenario --
SELECT DISTINCT dept_name
FROM StudentInfo;

SELECT DISTINCT dept_name
FROM StudentInfo
WHERE course_code = 3001;

-- Is Null and Not Null --
SELECT stu_id, stu_name
FROM StudentInfo
WHERE email IS NULL;

SELECT stu_id, stu_name
FROM StudentInfo
WHERE email IS NOT NULL;

-- In Between, Not In Between --
SELECT stu_id, stu_name
FROM StudentInfo
WHERE course_code IN (3001, 3004);

SELECT stu_id, stu_name, gpa
FROM StudentInfo
WHERE gpa BETWEEN 8.5 AND 9.5;

SELECT stu_id, stu_name, gpa
FROM StudentInfo
WHERE gpa NOT BETWEEN 8.5 AND 9.5;
