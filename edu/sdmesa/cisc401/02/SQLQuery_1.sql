-- Drop the denormalized table if it exists
IF OBJECT_ID('MedicalStaff', 'U') IS NOT NULL
BEGIN
    DROP TABLE dbo.MedicalStaff;
END
GO

-- Create the denormalized table
CREATE TABLE dbo.MedicalStaff (
    personnel_id INT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    role_name VARCHAR(50) NOT NULL,
    specialty_name VARCHAR(100) NULL,
    hospital_name VARCHAR(100) NOT NULL,
    show_movie VARCHAR(100) NOT NULL,
    location VARCHAR(100) NOT NULL
);
GO

-- Insert the denormalized data into the new table
INSERT INTO dbo.MedicalStaff (personnel_id, full_name, role_name, specialty_name, hospital_name, show_movie, location)
SELECT 
    p.personnel_id,
    p.name,
    r.role_name,
    ms.specialty_name,
    h.hospital_name,
    h.show_movie,
    h.location
FROM 
    dbo.Personnel p
LEFT JOIN 
    dbo.Role r ON p.role_id = r.role_id
LEFT JOIN 
    dbo.MedicalSpecialty ms ON p.medical_specialty_id = ms.specialty_id
LEFT JOIN 
    dbo.Hospitals h ON p.hospital_id = h.hospital_id;
GO

-- Select data to verify insertion
SELECT * FROM dbo.MedicalStaff;
GO
