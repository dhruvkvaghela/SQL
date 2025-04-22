-- 1. CREATE A DATABASE
CREATE DATABASE SchoolDB;

-- 2. SELECT THE DATABASE (Only needed in some RDBMS like MySQL)
USE SchoolDB;

-- 3. CREATE A TABLE with various data types
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,       -- Integer type, primary key
    FirstName VARCHAR(50),           -- String type with max 50 characters
    LastName VARCHAR(50),
    BirthDate DATE,                  -- Date type
    Email VARCHAR(100),
    GPA DECIMAL(3,2),                -- Decimal with 3 digits total, 2 after decimal (e.g. 3.75)
    IsActive BOOLEAN                 -- Boolean type (TRUE/FALSE)
);

-- 4. INSERT DATA INTO THE TABLE
INSERT INTO Students (StudentID, FirstName, LastName, BirthDate, Email, GPA, IsActive)
VALUES
(1, 'Alice', 'Johnson', '2001-05-15', 'alice.johnson@example.com', 3.85, TRUE),
(2, 'Bob', 'Smith', '2000-11-22', 'bob.smith@example.com', 3.40, TRUE),
(3, 'Charlie', 'Brown', '1999-08-10', 'charlie.brown@example.com', 2.95, FALSE);

-- 5. SELECT DATA FROM THE TABLE
SELECT * FROM Students; -- Selects all columns and rows

-- 6. SELECT SPECIFIC COLUMNS
SELECT FirstName, GPA FROM Students;

-- 7. UPDATE A RECORD
UPDATE Students
SET GPA = 3.95
WHERE StudentID = 1;

-- 8. DELETE A RECORD
DELETE FROM Students
WHERE StudentID = 3;

-- 9. ADD A NEW COLUMN TO THE TABLE
ALTER TABLE Students
ADD PhoneNumber VARCHAR(15);

-- 10. DROP A COLUMN FROM THE TABLE
ALTER TABLE Students
DROP COLUMN PhoneNumber;

-- 11. DROP THE TABLE
DROP TABLE Students;

-- 12. DROP THE DATABASE
DROP DATABASE SchoolDB;
