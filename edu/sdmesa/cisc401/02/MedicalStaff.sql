-- Create a new database only if it does not exist
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'FictionalHospitals')
BEGIN
    CREATE DATABASE FictionalHospitals;
END
GO

-- Use the new database
USE FictionalHospitals;
GO

-- Drop the personnel table if it exists
IF OBJECT_ID('dbo.Personnel', 'U') IS NOT NULL
BEGIN
    DROP TABLE dbo.Personnel;
END
GO

-- Drop the role table if it exists
IF OBJECT_ID('dbo.Role', 'U') IS NOT NULL
BEGIN
    DROP TABLE dbo.Role;
END
GO

-- Drop the medical_specialty table if it exists
IF OBJECT_ID('dbo.MedicalSpecialty', 'U') IS NOT NULL
BEGIN
    DROP TABLE dbo.MedicalSpecialty;
END
GO

-- Drop the hospitals table if it exists
IF OBJECT_ID('dbo.Hospitals', 'U') IS NOT NULL
BEGIN
    DROP TABLE dbo.Hospitals;
END
GO

-- Create the hospitals table
CREATE TABLE dbo.Hospitals (
    hospital_id INT PRIMARY KEY IDENTITY(1,1),
    hospital_name VARCHAR(100) NOT NULL,
    show_movie VARCHAR(100) NOT NULL,
    location VARCHAR(100) NOT NULL
);
GO

-- Create the role table
CREATE TABLE dbo.Role (
    role_id INT PRIMARY KEY IDENTITY(1,1),
    role_name VARCHAR(50) NOT NULL
);
GO

-- Create the medical_specialty table
CREATE TABLE dbo.MedicalSpecialty (
    specialty_id INT PRIMARY KEY IDENTITY(1,1),
    specialty_name VARCHAR(100) NOT NULL
);
GO

-- Create the personnel table with foreign keys to role and medical_specialty, with title and nickname columns
CREATE TABLE dbo.Personnel (
    personnel_id INT PRIMARY KEY IDENTITY(1,1),
    title VARCHAR(50) NULL,
    name VARCHAR(100) NOT NULL,
    nickname VARCHAR(100) NULL,
    role_id INT,
    medical_specialty_id INT,
    hospital_id INT,
    FOREIGN KEY (role_id) REFERENCES dbo.Role(role_id),
    FOREIGN KEY (medical_specialty_id) REFERENCES dbo.MedicalSpecialty(specialty_id),
    FOREIGN KEY (hospital_id) REFERENCES dbo.Hospitals(hospital_id)
);
GO

-- Insert data into the hospitals table
INSERT INTO dbo.Hospitals (hospital_name, show_movie, location)
VALUES
('Sacred Heart Hospital', 'Scrubs', 'San DiFrangeles, California'),
('Seattle Grace Hospital / Grey Sloan Memorial Hospital', 'Grey''s Anatomy', 'Seattle, Washington'),
('Princeton-Plainsboro Teaching Hospital', 'House, M.D.', 'Princeton, New Jersey'),
('County General Hospital', 'ER', 'Chicago, Illinois'),
('St. Elsewhere (St. Eligius Hospital)', 'St. Elsewhere', 'Boston, Massachusetts'),
('Chicago Hope Hospital', 'Chicago Hope', 'Chicago, Illinois'),
('New Amsterdam', 'New Amsterdam', 'New York City, New York'),
('St. Bonaventure Hospital', 'The Good Doctor', 'San Jose, California'),
('General Hospital', 'General Hospital', 'Port Charles, New York');
GO

-- Insert data into the role table
INSERT INTO dbo.Role (role_name)
VALUES
('Administrator'),
('Doctor'),
('Nurse'); -- 'Nurse' role included
GO

-- Insert data into the medical_specialty table
INSERT INTO dbo.MedicalSpecialty (specialty_name)
VALUES
('Internal Medicine'),
('Endocrinology'),
('Surgery'),
('Neurosurgery'),
('Cardiothoracic Surgery'),
('Oncology'),
('Immunology'),
('Intensive Care'),
('Pediatrics'),
('Emergency Medicine'),
('Hematology'),
('Trauma Surgery'),
('Neurology'),
('Infectious Disease'),
('General Practice');
GO

-- Insert data into the personnel table with the title, name, nickname, role, and medical specialty references
INSERT INTO dbo.Personnel (title, name, nickname, role_id, medical_specialty_id, hospital_id)
VALUES
-- Sacred Heart Hospital
('Dr.', 'Bob Kelso', NULL, (SELECT role_id FROM dbo.Role WHERE role_name = 'Administrator'), NULL, 1),
('Dr.', 'John Dorian', 'J.D.', (SELECT role_id FROM dbo.Role WHERE role_name = 'Doctor'), (SELECT specialty_id FROM dbo.MedicalSpecialty WHERE specialty_name = 'Internal Medicine'), 1),
('Dr.', 'Perry Cox', NULL, (SELECT role_id FROM dbo.Role WHERE role_name = 'Doctor'), (SELECT specialty_id FROM dbo.MedicalSpecialty WHERE specialty_name = 'Internal Medicine'), 1),
('Dr.', 'Elliot Reid', NULL, (SELECT role_id FROM dbo.Role WHERE role_name = 'Doctor'), (SELECT specialty_id FROM dbo.MedicalSpecialty WHERE specialty_name = 'Endocrinology'), 1),
('Dr.', 'Christopher Turk', NULL, (SELECT role_id FROM dbo.Role WHERE role_name = 'Doctor'), (SELECT specialty_id FROM dbo.MedicalSpecialty WHERE specialty_name = 'Surgery'), 1),
(NULL, 'Carla Espinosa', NULL, (SELECT role_id FROM dbo.Role WHERE role_name = 'Nurse'), NULL, 1),
(NULL, 'Laverne Roberts', NULL, (SELECT role_id FROM dbo.Role WHERE role_name = 'Nurse'), NULL, 1),

-- Seattle Grace Hospital / Grey Sloan Memorial Hospital
('Dr.', 'Richard Webber', NULL, (SELECT role_id FROM dbo.Role WHERE role_name = 'Administrator'), NULL, 2),
('Dr.', 'Meredith Grey', NULL, (SELECT role_id FROM dbo.Role WHERE role_name = 'Doctor'), (SELECT specialty_id FROM dbo.MedicalSpecialty WHERE specialty_name = 'General Surgery'), 2),
('Dr.', 'Derek Shepherd', NULL, (SELECT role_id FROM dbo.Role WHERE role_name = 'Doctor'), (SELECT specialty_id FROM dbo.MedicalSpecialty WHERE specialty_name = 'Neurosurgery'), 2),
('Dr.', 'Cristina Yang', NULL, (SELECT role_id FROM dbo.Role WHERE role_name = 'Doctor'), (SELECT specialty_id FROM dbo.MedicalSpecialty WHERE specialty_name = 'Cardiothoracic Surgery'), 2),
('Dr.', 'Miranda Bailey', NULL, (SELECT role_id FROM dbo.Role WHERE role_name = 'Doctor'), (SELECT specialty_id FROM dbo.MedicalSpecialty WHERE specialty_name = 'General Surgery'), 2),
(NULL, 'Olivia Harper', NULL, (SELECT role_id FROM dbo.Role WHERE role_name = 'Nurse'), NULL, 2),
(NULL, 'Tyler Christian', NULL, (SELECT role_id FROM dbo.Role WHERE role_name = 'Nurse'), NULL, 2),

-- Princeton-Plainsboro Teaching Hospital
('Dr.', 'Lisa Cuddy', NULL, (SELECT role_id FROM dbo.Role WHERE role_name = 'Administrator'), NULL, 3),
('Dr.', 'Gregory House', NULL, (SELECT role_id FROM dbo.Role WHERE role_name = 'Doctor'), (SELECT specialty_id FROM dbo.MedicalSpecialty WHERE specialty_name = 'Diagnostic Medicine'), 3),
('Dr.', 'James Wilson', NULL, (SELECT role_id FROM dbo.Role WHERE role_name = 'Doctor'), (SELECT specialty_id FROM dbo.MedicalSpecialty WHERE specialty_name = 'Oncology'), 3),
('Dr.', 'Allison Cameron', NULL, (SELECT role_id FROM dbo.Role WHERE role_name = 'Doctor'), (SELECT specialty_id FROM dbo.MedicalSpecialty WHERE specialty_name = 'Immunology'), 3),
('Dr.', 'Robert Chase', NULL, (SELECT role_id FROM dbo.Role WHERE role_name = 'Doctor'), (SELECT specialty_id FROM dbo.MedicalSpecialty WHERE specialty_name = 'Intensive Care'), 3),
(NULL, 'Brenda Previn', NULL, (SELECT role_id FROM dbo.Role WHERE role_name = 'Nurse'), NULL, 3),
(NULL, 'Jeffrey Sparkman', NULL, (SELECT role_id FROM dbo.Role WHERE role_name = 'Nurse'), NULL, 3),

-- County General Hospital (ER)
('Dr.', 'Donald Anspaugh', NULL, (SELECT role_id FROM dbo.Role WHERE role_name = 'Administrator'), NULL, 4),
('Dr.', 'Mark Greene', NULL, (SELECT role_id FROM dbo.Role WHERE role_name = 'Doctor'), (SELECT specialty_id FROM dbo.MedicalSpecialty WHERE specialty_name = 'Emergency Medicine'), 4),
('Dr.', 'Doug Ross', NULL, (SELECT role_id FROM dbo.Role WHERE role_name = 'Doctor'), (SELECT specialty_id FROM dbo.MedicalSpecialty WHERE specialty_name = 'Pediatrics'), 4),
('Dr.', 'John Carter', NULL, (SELECT role_id FROM dbo.Role WHERE role_name = 'Doctor'), (SELECT specialty_id FROM dbo.MedicalSpecialty WHERE specialty_name = 'Surgery'), 4),
('Dr.', 'Susan Lewis', NULL, (SELECT role_id FROM dbo.Role WHERE role_name = 'Doctor'), (SELECT specialty_id FROM dbo.MedicalSpecialty WHERE specialty_name = 'Emergency Medicine'), 4),
(NULL, 'Carol Hathaway', NULL, (SELECT role_id FROM dbo.Role WHERE role_name = 'Nurse'), NULL, 4),
(NULL, 'Abby Lockhart', NULL, (SELECT role_id FROM dbo.Role WHERE role_name = 'Nurse'), NULL, 4),

-- St. Elsewhere (St. Eligius Hospital) continued
('Dr.', 'Donald Westphall', NULL, (SELECT role_id FROM dbo.Role WHERE role_name = 'Administrator'), NULL, 5),
('Dr.', 'Mark Craig', NULL, (SELECT role_id FROM dbo.Role WHERE role_name = 'Doctor'), (SELECT specialty_id FROM dbo.MedicalSpecialty WHERE specialty_name = 'Cardiothoracic Surgery'), 5),
('Dr.', 'Daniel Auschlander', NULL, (SELECT role_id FROM dbo.Role WHERE role_name = 'Doctor'), (SELECT specialty_id FROM dbo.MedicalSpecialty WHERE specialty_name = 'Hematology'), 5),
('Dr.', 'Jack Morrison', NULL, (SELECT role_id FROM dbo.Role WHERE role_name = 'Doctor'), (SELECT specialty_id FROM dbo.MedicalSpecialty WHERE specialty_name = 'General Surgery'), 5),
(NULL, 'Christine "Chris" O''Neil', 'Chris', (SELECT role_id FROM dbo.Role WHERE role_name = 'Nurse'), NULL, 5),
(NULL, 'Ellen O''Neill', NULL, (SELECT role_id FROM dbo.Role WHERE role_name = 'Nurse'), NULL, 5),

-- Chicago Hope Hospital
('Dr.', 'Phillip Watters', NULL, (SELECT role_id FROM dbo.Role WHERE role_name = 'Administrator'), NULL, 6),
('Dr.', 'Jeffrey Geiger', NULL, (SELECT role_id FROM dbo.Role WHERE role_name = 'Doctor'), (SELECT specialty_id FROM dbo.MedicalSpecialty WHERE specialty_name = 'Cardiothoracic Surgery'), 6),
('Dr.', 'Aaron Shutt', NULL, (SELECT role_id FROM dbo.Role WHERE role_name = 'Doctor'), (SELECT specialty_id FROM dbo.MedicalSpecialty WHERE specialty_name = 'Neurosurgery'), 6),
('Dr.', 'Kate Austin', NULL, (SELECT role_id FROM dbo.Role WHERE role_name = 'Doctor'), (SELECT specialty_id FROM dbo.MedicalSpecialty WHERE specialty_name = 'Cardiothoracic Surgery'), 6),
('Dr.', 'Billy Kronk', NULL, (SELECT role_id FROM dbo.Role WHERE role_name = 'Doctor'), (SELECT specialty_id FROM dbo.MedicalSpecialty WHERE specialty_name = 'Trauma Surgery'), 6),
(NULL, 'Laura Kincaid', NULL, (SELECT role_id FROM dbo.Role WHERE role_name = 'Nurse'), NULL, 6),
(NULL, 'Jo "Joey" Williams', 'Joey', (SELECT role_id FROM dbo.Role WHERE role_name = 'Nurse'), NULL, 6),

-- New Amsterdam
('Dr.', 'Max Goodwin', NULL, (SELECT role_id FROM dbo.Role WHERE role_name = 'Administrator'), NULL, 7),
('Dr.', 'Helen Sharpe', NULL, (SELECT role_id FROM dbo.Role WHERE role_name = 'Doctor'), (SELECT specialty_id FROM dbo.MedicalSpecialty WHERE specialty_name = 'Oncology'), 7),
('Dr.', 'Floyd Reynolds', NULL, (SELECT role_id FROM dbo.Role WHERE role_name = 'Doctor'), (SELECT specialty_id FROM dbo.MedicalSpecialty WHERE specialty_name = 'Cardiology'), 7),
('Dr.', 'Lauren Bloom', NULL, (SELECT role_id FROM dbo.Role WHERE role_name = 'Doctor'), (SELECT specialty_id FROM dbo.MedicalSpecialty WHERE specialty_name = 'Emergency Medicine'), 7),
('Dr.', 'Vijay Kapoor', NULL, (SELECT role_id FROM dbo.Role WHERE role_name = 'Doctor'), (SELECT specialty_id FROM dbo.MedicalSpecialty WHERE specialty_name = 'Neurology'), 7),
(NULL, 'Eva Vasquez', NULL, (SELECT role_id FROM dbo.Role WHERE role_name = 'Nurse'), NULL, 7),
(NULL, 'Ronit Cohen', NULL, (SELECT role_id FROM dbo.Role WHERE role_name = 'Nurse'), NULL, 7),

-- St. Bonaventure Hospital
('Dr.', 'Aaron Glassman', NULL, (SELECT role_id FROM dbo.Role WHERE role_name = 'Administrator'), NULL, 8),
('Dr.', 'Shaun Murphy', NULL, (SELECT role_id FROM dbo.Role WHERE role_name = 'Doctor'), (SELECT specialty_id FROM dbo.MedicalSpecialty WHERE specialty_name = 'Surgery'), 8),
('Dr.', 'Claire Browne', NULL, (SELECT role_id FROM dbo.Role WHERE role_name = 'Doctor'), (SELECT specialty_id FROM dbo.MedicalSpecialty WHERE specialty_name = 'Emergency Medicine'), 8),
('Dr.', 'Audrey Lim', NULL, (SELECT role_id FROM dbo.Role WHERE role_name = 'Doctor'), (SELECT specialty_id FROM dbo.MedicalSpecialty WHERE specialty_name = 'Trauma Surgery'), 8),
('Dr.', 'Marcus Andrews', NULL, (SELECT role_id FROM dbo.Role WHERE role_name = 'Doctor'), (SELECT specialty_id FROM dbo.MedicalSpecialty WHERE specialty_name = 'Internal Medicine'), 8),
(NULL, 'Mia Kenney', NULL, (SELECT role_id FROM dbo.Role WHERE role_name = 'Nurse'), NULL, 8),
(NULL, 'Lila Bonham', NULL, (SELECT role_id FROM dbo.Role WHERE role_name = 'Nurse'), NULL, 8),

-- General Hospital
('Dr.', 'Monica Quartermaine', NULL, (SELECT role_id FROM dbo.Role WHERE role_name = 'Administrator'), NULL, 9),
('Dr.', 'Patrick Drake', NULL, (SELECT role_id FROM dbo.Role WHERE role_name = 'Doctor'), (SELECT specialty_id FROM dbo.MedicalSpecialty WHERE specialty_name = 'Emergency Medicine'), 9),
('Dr.', 'Robin Scorpio', NULL, (SELECT role_id FROM dbo.Role WHERE role_name = 'Doctor'), (SELECT specialty_id FROM dbo.MedicalSpecialty WHERE specialty_name = 'Internal Medicine'), 9),
('Dr.', 'Elizabeth Webber', NULL, (SELECT role_id FROM dbo.Role WHERE role_name = 'Doctor'), (SELECT specialty_id FROM dbo.MedicalSpecialty WHERE specialty_name = 'General Surgery'), 9),
('Dr.', 'Lucas Jones', NULL, (SELECT role_id FROM dbo.Role WHERE role_name = 'Doctor'), (SELECT specialty_id FROM dbo.MedicalSpecialty WHERE specialty_name = 'Pediatrics'), 9),
(NULL, 'Epiphany Johnson', NULL, (SELECT role_id FROM dbo.Role WHERE role_name = 'Nurse'), NULL, 9),
(NULL, 'Kelly Lee', NULL, (SELECT role_id FROM dbo.Role WHERE role_name = 'Nurse'), NULL, 9);
GO
