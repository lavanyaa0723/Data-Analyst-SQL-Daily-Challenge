-- SQL Coding Challenges Day 1--
-- DDL Commands --

CREATE DATABASE Hospital;
USE Hospital;

-- Create Table --
CREATE TABLE Patients(
Patient_ID int,
Patient_Name varchar(50),
Age int,
Gender enum('M','F'),
AdmissionDate date
);
select*from Patients;

-- Add Column --
ALTER TABLE Patients ADD COLUMN DoctorAssigned varchar(50);
select*from Patients;

-- Modify Column --
ALTER TABLE Patients MODIFY COLUMN Patient_Name varchar(100);

-- Rename Table --
 RENAME TABLE Patients to Patient_Info;
 select*from Patient_Info;

-- Truncate vs Drop --
 TRUNCATE TABLE Patient_Info;
 DROP TABLE Patient_Info;

