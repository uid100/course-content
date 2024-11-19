### Student Exercise: SQL Queries for Patient EHR Database

**Objective:**
Practice writing SQL queries that involve multi-table joins, WHERE clauses, and grouping.

**Instructions:**
Using the provided tables, write SQL queries to answer the following questions. Ensure your queries are correct and efficient.

### Tables:
1. Patients
2. Doctors
3. Appointments
4. MedicalRecords
5. Medications
6. Prescriptions
7. Billing
8. Departments
9. Insurance
10. LabResults

### Sample Query Questions:

1. **List all patients along with their insurance provider names.**
   ```sql
   SELECT p.FirstName, p.LastName, i.ProviderName
   FROM Patients p
   JOIN Insurance i ON p.InsuranceID = i.InsuranceID;
   ```

2. **Find all appointments for a specific doctor (e.g., DoctorID = 1) and include patient names and appointment dates.**
   ```sql
   SELECT a.AppointmentDate, p.FirstName, p.LastName
   FROM Appointments a
   JOIN Patients p ON a.PatientID = p.PatientID
   WHERE a.DoctorID = 1;
   ```

3. **Retrieve the list of doctors along with their department names.**
   ```sql
   SELECT d.FirstName, d.LastName, dept.Name
   FROM Doctors d
   JOIN Departments dept ON d.DepartmentID = dept.DepartmentID;
   ```

4. **Get the total number of appointments each doctor has.**
   ```sql
   SELECT d.FirstName, d.LastName, COUNT(a.AppointmentID) AS TotalAppointments
   FROM Doctors d
   JOIN Appointments a ON d.DoctorID = a.DoctorID
   GROUP BY d.FirstName, d.LastName;
   ```

5. **Find all medical records for a specific patient (e.g., PatientID = 1) including doctor names and diagnoses.**
   ```sql
   SELECT mr.Diagnosis, d.FirstName, d.LastName
   FROM MedicalRecords mr
   JOIN Doctors d ON mr.DoctorID = d.DoctorID
   WHERE mr.PatientID = 1;
   ```

6. **List all prescriptions along with patient names, doctor names, and medication names.**
   ```sql
   SELECT p.FirstName AS PatientFirstName, p.LastName AS PatientLastName, 
          d.FirstName AS DoctorFirstName, d.LastName AS DoctorLastName, 
          m.MedicationName
   FROM Prescriptions pr
   JOIN Patients p ON pr.PatientID = p.PatientID
   JOIN Doctors d ON pr.DoctorID = d.DoctorID
   JOIN Medications m ON pr.MedicationID = m.MedicationID;
   ```

7. **Get the total billing amount for each patient.**
   ```sql
   SELECT p.FirstName, p.LastName, SUM(b.Amount) AS TotalBilling
   FROM Billing b
   JOIN Patients p ON b.PatientID = p.PatientID
   GROUP BY p.FirstName, p.LastName;
   ```

8. **Find all lab results for a specific patient (e.g., PatientID = 1) including test types and results.**
   ```sql
   SELECT lr.TestType, lr.Result
   FROM LabResults lr
   WHERE lr.PatientID = 1;
   ```

9. **List all doctors who have prescribed a specific medication (e.g., MedicationID = 1).**
   ```sql
   SELECT DISTINCT d.FirstName, d.LastName
   FROM Prescriptions pr
   JOIN Doctors d ON pr.DoctorID = d.DoctorID
   WHERE pr.MedicationID = 1;
   ```

10. **Get the number of patients each insurance provider covers.**
    ```sql
    SELECT i.ProviderName, COUNT(p.PatientID) AS NumberOfPatients
    FROM Insurance i
    JOIN Patients p ON i.InsuranceID = p.InsuranceID
    GROUP BY i.ProviderName;
    ```

11. **Find all appointments scheduled within a specific date range (e.g., '2024-01-01' to '2024-12-31').**
    ```sql
    SELECT a.AppointmentDate, p.FirstName, p.LastName, d.FirstName AS DoctorFirstName, d.LastName AS DoctorLastName
    FROM Appointments a
    JOIN Patients p ON a.PatientID = p.PatientID
    JOIN Doctors d ON a.DoctorID = d.DoctorID
    WHERE a.AppointmentDate BETWEEN '2024-01-01' AND '2024-12-31';
    ```

12. **Retrieve the list of patients who have unpaid bills.**
    ```sql
    SELECT p.FirstName, p.LastName, b.Amount, b.BillDate
    FROM Billing b
    JOIN Patients p ON b.PatientID = p.PatientID
    WHERE b.Paid = 0;
    ```

13. **Get the average billing amount per patient.**
    ```sql
    SELECT p.FirstName, p.LastName, AVG(b.Amount) AS AverageBilling
    FROM Billing b
    JOIN Patients p ON b.PatientID = p.PatientID
    GROUP BY p.FirstName, p.LastName;
    ```

14. **List all patients who have been prescribed a specific medication (e.g., MedicationID = 1).**
    ```sql
    SELECT p.FirstName, p.LastName
    FROM Prescriptions pr
    JOIN Patients p ON pr.PatientID = p.PatientID
    WHERE pr.MedicationID = 1;
    ```

15. **Find the total number of lab tests conducted by each doctor.**
    ```sql
    SELECT d.FirstName, d.LastName, COUNT(lr.LabResultID) AS TotalLabTests
    FROM LabResults lr
    JOIN Doctors d ON lr.DoctorID = d.DoctorID
    GROUP BY d.FirstName, d.LastName;
    ```

