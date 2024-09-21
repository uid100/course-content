-- Create PatientRecordsDB if it does not exist
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'PatientRecordsDB')
BEGIN
    CREATE DATABASE PatientRecordsDB;
END;
GO

-- Use the newly created or existing PatientRecordsDB
USE PatientRecordsDB;
GO

-- Create Patient Table
IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Patients')
BEGIN
    CREATE TABLE Patients (
        PatientID INT PRIMARY KEY IDENTITY(1,1),
        FirstName NVARCHAR(50),
        LastName NVARCHAR(50),
        DateOfBirth DATE,
        Gender NVARCHAR(10),
        ContactInfo NVARCHAR(100),
        Address NVARCHAR(100),
        EmergencyContact NVARCHAR(100),
        InsuranceID INT,
        CONSTRAINT FK_Patients_Insurance FOREIGN KEY (InsuranceID) REFERENCES Insurance(InsuranceID)
    );
END;

-- Create Medical History Table
IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'MedicalHistory')
BEGIN
    CREATE TABLE MedicalHistory (
        HistoryID INT PRIMARY KEY IDENTITY(1,1),
        PatientID INT,
        Condition NVARCHAR(100),
        DiagnosisDate DATE,
        Treatment NVARCHAR(100),
        DoctorID INT,
        Notes NVARCHAR(MAX),
        CONSTRAINT FK_MedicalHistory_Patients FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
        CONSTRAINT FK_MedicalHistory_Doctors FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
    );
END;

-- Create Appointments Table
IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Appointments')
BEGIN
    CREATE TABLE Appointments (
        AppointmentID INT PRIMARY KEY IDENTITY(1,1),
        PatientID INT,
        DoctorID INT,
        Date DATETIME,
        Purpose NVARCHAR(100),
        Status NVARCHAR(50),
        Notes NVARCHAR(MAX),
        CONSTRAINT FK_Appointments_Patients FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
        CONSTRAINT FK_Appointments_Doctors FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
    );
END;

-- Create Doctors Table
IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Doctors')
BEGIN
    CREATE TABLE Doctors (
        DoctorID INT PRIMARY KEY IDENTITY(1,1),
        FirstName NVARCHAR(50),
        LastName NVARCHAR(50),
        SpecialtyID INT,
        ContactInfo NVARCHAR(100),
        DepartmentID INT,
        CONSTRAINT FK_Doctors_Specialty FOREIGN KEY (SpecialtyID) REFERENCES Specialties(SpecialtyID),
        CONSTRAINT FK_Doctors_Department FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
    );
END;

-- Create Medical Procedures Table
IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'MedicalProcedures')
BEGIN
    CREATE TABLE MedicalProcedures (
        ProcedureID INT PRIMARY KEY IDENTITY(1,1),
        PatientID INT,
        DoctorID INT,
        ProcedureType NVARCHAR(100),
        ProcedureDate DATE,
        Results NVARCHAR(MAX),
        Notes NVARCHAR(MAX),
        CONSTRAINT FK_MedicalProcedures_Patients FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
        CONSTRAINT FK_MedicalProcedures_Doctors FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
    );
END;

-- Create Medications Table
IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Medications')
BEGIN
    CREATE TABLE Medications (
        MedicationID INT PRIMARY KEY IDENTITY(1,1),
        MedicationName NVARCHAR(100),
        Dosage NVARCHAR(50)
    );
END;

-- Create Prescriptions Table
IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Prescriptions')
BEGIN
    CREATE TABLE Prescriptions (
        PrescriptionID INT PRIMARY KEY IDENTITY(1,1),
        PatientID INT,
        MedicationID INT,
        Dosage NVARCHAR(50),
        Frequency NVARCHAR(50),
        StartDate DATE,
        EndDate DATE,
        DoctorID INT,
        PharmacyInfo NVARCHAR(100),
        CONSTRAINT FK_Prescriptions_Patients FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
        CONSTRAINT FK_Prescriptions_Medications FOREIGN KEY (MedicationID) REFERENCES Medications(MedicationID),
        CONSTRAINT FK_Prescriptions_Doctors FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
    );
END;

-- Create Billing Table
IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Billing')
BEGIN
    CREATE TABLE Billing (
        BillingID INT PRIMARY KEY IDENTITY(1,1),
        PatientID INT,
        ServiceProvided NVARCHAR(100),
        ServiceDate DATE,
        AmountBilled DECIMAL(10, 2),
        InsuranceID INT,
        PaymentStatus NVARCHAR(50),
        Notes NVARCHAR(MAX),
        CONSTRAINT FK_Billing_Patients FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
        CONSTRAINT FK_Billing_Insurance FOREIGN KEY (InsuranceID) REFERENCES Insurance(InsuranceID)
    );
END;

-- Create Lab Results Table
IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'LabResults')
BEGIN
    CREATE TABLE LabResults (
        LabResultID INT PRIMARY KEY IDENTITY(1,1),
        PatientID INT,
        TestType NVARCHAR(100),
        TestDate DATE,
        Result NVARCHAR(MAX),
        DoctorID INT,
        Notes NVARCHAR(MAX),
        CONSTRAINT FK_LabResults_Patients FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
        CONSTRAINT FK_LabResults_Doctors FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
    );
END;

-- Create Allergies Table
IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Allergies')
BEGIN
    CREATE TABLE Allergies (
        AllergyID INT PRIMARY KEY IDENTITY(1,1),
        PatientID INT,
        AllergyType NVARCHAR(100),
        Severity NVARCHAR(50),
        Notes NVARCHAR(MAX),
        CONSTRAINT FK_Allergies_Patients FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
    );
END;

-- Create Insurance Table
IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Insurance')
BEGIN
    CREATE TABLE Insurance (
        InsuranceID INT PRIMARY KEY IDENTITY(1,1),
        PatientID INT,
        ProviderName NVARCHAR(100),
        PolicyNumber NVARCHAR(50),
        CoverageDetails NVARCHAR(MAX),
        CONSTRAINT FK_Insurance_Patients FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
    );
END;

-- Create Departments Table
IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Departments')
BEGIN
    CREATE TABLE Departments (
        DepartmentID INT PRIMARY KEY IDENTITY(1,1),
        DepartmentName NVARCHAR(100),
        HeadOfDepartmentID INT,
        ContactInfo NVARCHAR(100),
        CONSTRAINT FK_Departments_Doctors FOREIGN KEY (HeadOfDepartmentID) REFERENCES Doctors(DoctorID)
    );
END;

-- Create Visits Table
IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Visits')
BEGIN
    CREATE TABLE Visits (
        VisitID INT PRIMARY KEY IDENTITY(1,1),
        PatientID INT,
        DoctorID INT,
        VisitDate DATE,
        VisitReason NVARCHAR(100),
        Notes NVARCHAR(MAX),
        CONSTRAINT FK_Visits_Patients FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
        CONSTRAINT FK_Visits_Doctors FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
    );
END;

-- Create Vitals Table
IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Vitals')
BEGIN
    CREATE TABLE Vitals (
        VitalsID INT PRIMARY KEY IDENTITY(1,1),
        PatientID INT,
        BloodPressure NVARCHAR(20),
        HeartRate INT,
        Temperature DECIMAL(5, 2),
        DateMeasured DATE,
        MeasuredBy INT,  -- Could reference staff or nurse
        CONSTRAINT FK_Vitals_Patients FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
    );
END;

-- Create Immunizations Table
IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Immunizations')
BEGIN
    CREATE TABLE Immunizations (
        ImmunizationID INT PRIMARY KEY IDENTITY(1,1),
        PatientID INT,
        VaccineName NVARCHAR(100),
        VaccinationDate DATE,
        AdministeredBy INT,  -- Could reference DoctorID or NurseID
        Notes NVARCHAR(MAX),
        CONSTRAINT FK_Immunizations_Patients FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
    );
END;

-- Create Emergency Contacts Table
IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'EmergencyContacts')
BEGIN
    CREATE TABLE EmergencyContacts (
        ContactID INT PRIMARY KEY IDENTITY(1,1),
        PatientID INT,
        ContactName NVARCHAR(100),
        Relationship NVARCHAR(50),
        Phone NVARCHAR(15),
        Address NVARCHAR(100),
        CONSTRAINT FK_EmergencyContacts_Patients FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
    );
END;
