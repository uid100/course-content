--1. List Patients and Their Doctors
-- Objective: Retrieve the full names of all patients of Dr. Ashley Mitchell.
SELECT 
    Patients.FirstName AS PatientFirstName, 
    Patients.LastName AS PatientLastName,
    Doctors.FirstName AS DoctorFirstName, 
    Doctors.LastName AS DoctorLastName
FROM 
    Patients
JOIN 
    Appointments ON Patients.PatientID = Appointments.PatientID
JOIN 
    Doctors ON Appointments.DoctorID = Doctors.DoctorID
WHERE
    Doctors.FirstName = 'Ashley' AND Doctors.LastName = 'Mitchell'

-- 2. Find Patients with Allergies
-- Objective: Retrieve the list of patients who have recorded allergies.
SELECT 
    Patients.FirstName, 
    Patients.LastName, 
    Allergies.AllergyType, 
    Allergies.Severity
FROM 
    Patients
JOIN 
    Allergies ON Patients.PatientID = Allergies.PatientID;

-- 3. Find Doctors Within Specific Departments
-- Objective: Which Doctors (First and Last Name) are in Paediatrics or Paediatric surgery?
SELECT 
    FirstName, 
    LastName 
FROM 
    Doctors 
WHERE 
    DepartmentID IS NULL;

-- 4. Find Patients with specific Insurance Coverage
-- Objective: Retrieve a list of patients from the database insured by Aetna.
SELECT 
    Patients.FirstName, 
    Patients.LastName 
FROM 
    Patients 
LEFT JOIN 
    Insurance ON Patients.InsuranceID = Insurance.InsuranceID
WHERE 
    Insurance.ProviderName like 'Aetna';

-- XXXX. Doctors Who Have Treated More Than 10 Patients
-- Objective: List doctors who have treated more than 10 patients.
SELECT 
    Doctors.FirstName, 
    Doctors.LastName, 
    COUNT(MedicalHistory.PatientID) AS TotalPatients
FROM 
    Doctors
JOIN 
    MedicalHistory ON Doctors.DoctorID = MedicalHistory.DoctorID
GROUP BY 
    Doctors.FirstName, Doctors.LastName
HAVING 
    COUNT(MedicalHistory.PatientID) > 10;

-- 6. List Insurance Providers for Patients Seen by a Specific Doctor
-- Objective: Retrieve the insurance provider details of all patients treated by a specific doctor.
SELECT 
    Patients.FirstName, 
    Patients.LastName,
    'Dr.' + Doctors.FirstName + ' ' + Doctors.LastName, 
    Insurance.ProviderName, 
    Insurance.PolicyNumber
FROM 
    Patients
JOIN 
    Insurance ON Patients.InsuranceID = Insurance.InsuranceID
JOIN 
    Appointments ON Patients.PatientID = Appointments.PatientID
JOIN 
    Doctors ON Appointments.DoctorID = Doctors.DoctorID
WHERE
    Doctors.LastName like 'Hernandez'

-- 7. Patients with Multiple Appointments
-- Objective: Find patients who have multiple appointments.
SELECT 
    Patients.FirstName, 
    Patients.LastName, 
    COUNT(Appointments.AppointmentID) AS TotalAppointments
FROM
    Patients
JOIN
    Appointments ON Patients.PatientID = Appointments.PatientID
GROUP BY
    Patients.FirstName, Patients.LastName
HAVING
    COUNT(Appointments.AppointmentID) > 1;

-- 8. List the Medications Prescribed by Each Doctor
-- Objective: Retrieve the full list of medications along with the doctors who prescribed them.
SELECT 
    Doctors.FirstName, 
    Doctors.LastName, 
    Medications.MedicationName, 
    Prescriptions.Dosage
FROM 
    Doctors
JOIN 
    Prescriptions ON Doctors.DoctorID = Prescriptions.DoctorID
JOIN 
    Medications ON Prescriptions.MedicationID = Medications.MedicationID;

-- 9. Find Patients Who Have Missed Their Appointments
-- Objective: Retrieve a list of patients who have appointments marked as "Missed".
SELECT 
    Patients.FirstName, 
    Patients.LastName, 
    Appointments.Date, 
    Appointments.Purpose
FROM 
    Patients
JOIN 
    Appointments ON Patients.PatientID = Appointments.PatientID
WHERE 
    Appointments.Status = 'Missed';


-- 10. Total Billing Amount per Patient
-- Objective: Find the total amount billed for each patient.
SELECT 
    Patients.FirstName, 
    Patients.LastName, 
    SUM(Billing.AmountBilled) AS TotalBilled
FROM 
    Patients
JOIN 
    Billing ON Patients.PatientID = Billing.PatientID
GROUP BY 
    Patients.FirstName, Patients.LastName;





Here are 5 simpler multi-table query exercises:

### 1. List All Appointments for a Specific Patient
**Objective**: Retrieve the dates and purposes of all appointments for a specific patient.

- **Tables**: `Patients`, `Appointments`
- **Type**: **JOIN**

```sql
SELECT 
    Appointments.Date, 
    Appointments.Purpose
FROM 
    Patients
JOIN 
    Appointments ON Patients.PatientID = Appointments.PatientID
WHERE 
    Patients.PatientID = 1;  -- Replace with specific PatientID
```

---

### 2. Find the Doctor Assigned to a Specific Appointment
**Objective**: Retrieve the doctor's full name assigned to a specific appointment.

- **Tables**: `Appointments`, `Doctors`
- **Type**: **JOIN**

```sql
SELECT 
    Doctors.FirstName, 
    Doctors.LastName
FROM 
    Appointments
JOIN 
    Doctors ON Appointments.DoctorID = Doctors.DoctorID
WHERE 
    Appointments.AppointmentID = 1;  -- Replace with specific AppointmentID
```

---

### 3. List All Patients Assigned to a Specific Department
**Objective**: Retrieve the names of patients whose doctor belongs to a specific department.

- **Tables**: `Patients`, `Appointments`, `Doctors`, `Departments`
- **Type**: **JOIN**

```sql
SELECT 
    Patients.FirstName, 
    Patients.LastName
FROM 
    Patients
JOIN 
    Appointments ON Patients.PatientID = Appointments.PatientID
JOIN 
    Doctors ON Appointments.DoctorID = Doctors.DoctorID
JOIN 
    Departments ON Doctors.DepartmentID = Departments.DepartmentID
WHERE 
    Departments.DepartmentID = 1;  -- Replace with specific DepartmentID
```

---

### 4. Find Patients Treated by a Specific Doctor
**Objective**: List all patients who have been treated by a particular doctor.

- **Tables**: `Patients`, `MedicalHistory`, `Doctors`
- **Type**: **JOIN**

```sql
SELECT 
    Patients.FirstName, 
    Patients.LastName
FROM 
    Patients
JOIN 
    MedicalHistory ON Patients.PatientID = MedicalHistory.PatientID
JOIN 
    Doctors ON MedicalHistory.DoctorID = Doctors.DoctorID
WHERE 
    Doctors.DoctorID = 1;  -- Replace with specific DoctorID
```

---

### 5. List All Prescribed Medications for a Specific Patient
**Objective**: Retrieve the names of all medications prescribed to a specific patient.

- **Tables**: `Patients`, `Prescriptions`, `Medications`
- **Type**: **JOIN**

```sql
SELECT 
    Medications.MedicationName
FROM 
    Patients
JOIN 
    Prescriptions ON Patients.PatientID = Prescriptions.PatientID
JOIN 
    Medications ON Prescriptions.MedicationID = Medications.MedicationID
WHERE 
    Patients.PatientID = 1;  -- Replace with specific PatientID
```

These exercises are simpler, focusing on common scenarios involving basic joins and querying specific records across related tables.




SELECT 
    count(Patients.PatientID), DepartmentName
FROM 
    Patients
JOIN 
    Appointments ON Patients.PatientID = Appointments.PatientID
JOIN 
    Doctors ON Appointments.DoctorID = Doctors.DoctorID
JOIN 
    Departments ON Doctors.DepartmentID = Departments.DepartmentID
WHERE
    DepartmentName like 'rad%'
GROUP BY
    DepartmentName