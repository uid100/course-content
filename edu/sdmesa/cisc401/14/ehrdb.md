Sure! Here's an Entity-Relationship Diagram (ERD) for a patient Electronic Health Records (EHR) system with at least 10 entities:

### Entities:
1. **Patients**
2. **Doctors**
3. **Appointments**
4. **MedicalRecords**
5. **Medications**
6. **Prescriptions**
7. **Billing**
8. **Departments**
9. **Insurance**
10. **LabResults**

### Relationships:
- Each **Patient** can have multiple **Appointments**.
- Each **Doctor** can have multiple **Appointments**.
- Each **Appointment** is associated with one **Patient** and one **Doctor**.
- Each **Patient** can have multiple **MedicalRecords**.
- Each **MedicalRecord** is associated with one **Patient** and one **Doctor**.
- Each **Prescription** is associated with one **Patient**, one **Doctor**, and one **Medication**.
- Each **Patient** can have multiple **Billing** records.
- Each **Billing** record is associated with one **Patient**.
- Each **Doctor** belongs to one **Department**.
- Each **Patient** can have one **Insurance**.
- Each **LabResult** is associated with one **Patient** and one **Doctor**.

### Crow's Foot ERD:

```plaintext
+----------------+       +----------------+       +----------------+       +----------------+
|    Patients    |       |    Doctors     |       |  Departments   |       |   Insurance    |
+----------------+       +----------------+       +----------------+       +----------------+
| PatientID (PK) |       | DoctorID (PK)  |       | DepartmentID (PK)|     | InsuranceID (PK)|
| FirstName      |       | FirstName      |       | Name           |       | ProviderName    |
| LastName       |       | LastName       |       +----------------+       | PolicyNumber    |
| DateOfBirth    |       | Specialization |                                 +----------------+
| Gender         |       | DepartmentID (FK)|
| PhoneNumber    |       +----------------+
| Email          |
| InsuranceID (FK)|
+----------------+

+----------------+       +----------------+       +----------------+       +----------------+
|  Appointments  |       | MedicalRecords |       |  Prescriptions |       |    Billing     |
+----------------+       +----------------+       +----------------+       +----------------+
| AppointmentID (PK)|    | RecordID (PK)  |       | PrescriptionID (PK)|   | BillID (PK)    |
| PatientID (FK) |       | PatientID (FK) |       | PatientID (FK) |       | PatientID (FK) |
| DoctorID (FK)  |       | DoctorID (FK)  |       | DoctorID (FK)  |       | Amount         |
| AppointmentDate|       | Diagnosis      |       | MedicationID (FK)|     | BillDate       |
| Reason         |       | Treatment      |       | PrescriptionDate|     | Paid           |
+----------------+       | RecordDate     |       | Dosage         |       +----------------+
                         +----------------+       +----------------+

+----------------+
|   Medications  |
+----------------+
| MedicationID (PK)|
| MedicationName |
| Dosage         |
+----------------+

+----------------+
|   LabResults   |
+----------------+
| LabResultID (PK)|
| PatientID (FK) |
| DoctorID (FK)  |
| TestType       |
| Result         |
| TestDate       |
+----------------+
```

### SQL Server Table Creation Scripts:

```sql
CREATE TABLE Patients (
    PatientID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    DateOfBirth DATE NOT NULL,
    Gender CHAR(1) NOT NULL,
    PhoneNumber VARCHAR(15),
    Email VARCHAR(100),
    InsuranceID INT,
    FOREIGN KEY (InsuranceID) REFERENCES Insurance(InsuranceID)
);

CREATE TABLE Doctors (
    DoctorID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Specialization VARCHAR(100) NOT NULL,
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL
);

CREATE TABLE Insurance (
    InsuranceID INT PRIMARY KEY,
    ProviderName VARCHAR(100) NOT NULL,
    PolicyNumber VARCHAR(50) NOT NULL
);

CREATE TABLE Appointments (
    AppointmentID INT PRIMARY KEY,
    PatientID INT NOT NULL,
    DoctorID INT NOT NULL,
    AppointmentDate DATETIME NOT NULL,
    Reason VARCHAR(255),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);

CREATE TABLE MedicalRecords (
    RecordID INT PRIMARY KEY,
    PatientID INT NOT NULL,
    DoctorID INT NOT NULL,
    Diagnosis VARCHAR(255) NOT NULL,
    Treatment VARCHAR(255) NOT NULL,
    RecordDate DATETIME NOT NULL,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);

CREATE TABLE Medications (
    MedicationID INT PRIMARY KEY,
    MedicationName VARCHAR(100) NOT NULL,
    Dosage VARCHAR(50) NOT NULL
);

CREATE TABLE Prescriptions (
    PrescriptionID INT PRIMARY KEY,
    PatientID INT NOT NULL,
    DoctorID INT NOT NULL,
    MedicationID INT NOT NULL,
    PrescriptionDate DATETIME NOT NULL,
    Dosage VARCHAR(50) NOT NULL,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID),
    FOREIGN KEY (MedicationID) REFERENCES Medications(MedicationID)
);

CREATE TABLE Billing (
    BillID INT PRIMARY KEY,
    PatientID INT NOT NULL,
    Amount DECIMAL(10, 2) NOT NULL,
    BillDate DATETIME NOT NULL,
    Paid BIT NOT NULL,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
);

CREATE TABLE LabResults (
    LabResultID INT PRIMARY KEY,
    PatientID INT NOT NULL,
    DoctorID INT NOT NULL,
    TestType VARCHAR(100) NOT NULL,
    Result VARCHAR(255) NOT NULL,
    TestDate DATETIME NOT NULL,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);
