-- Single Table Queries

--  1. List all the Administrators from the table
--SELECT full_name FROM MedicalStaff WHERE role_name like 'admin%'

--  2. Return a List all the Doctors from the table whose first name begins with an 'A' or a 'B'
--SELECT full_name FROM MedicalStaff WHERE full_name like 'Dr. A%' OR full_name LIKE 'Dr. B%'
--SELECT full_name FROM MedicalStaff WHERE full_name like 'Dr. [A-B]%'
--SELECT full_name FROM MedicalStaff WHERE full_name like 'Dr. [A-B]%' and role_name like 'Doctor'

--  3. Display the city and state where Sacred Heart Hospital is located
--SELECT DISTINCT LOCATION FROM MedicalStaff WHERE hospital_name like 'sacred%'

--  4. Display the list of show title references the name of the subject hospital (hint: not one in Seattle)
/*
SELECT 
    DISTINCT hospital_name, show_movie 
FROM 
    MedicalStaff
WHERE 
    show_movie like '%' + hospital_name + '%'
 OR hospital_name like '%' + show_movie + '%'
*/

--  5. List the doctors in the table are listed as surgical specialties in California?
/*
SELECT 
    full_name,
    specialty_name,
    show_movie 
FROM 
    MedicalStaff 
WHERE location like '%California'
 AND  specialty_name like '%surg%'
 */

--  6. How many records are listed as 'Nurse'?
--SELECT count(*) FROM MedicalStaff WHERE role_name like 'nurse%'

--  7. How many doctors in the table are listed as surgical specialties in California?
/*
SELECT 
    count(*)
FROM 
    MedicalStaff 
WHERE location like '%California'
 AND  specialty_name like '%surg%'
 */

--  8. How many different specialties are listed in the table?
/* 
SELECT
    count(DISTINCT specialty_name)
FROM 
    MedicalStaff
 */

--  9. What is the largest number of nurses listed at any single hospital?
/*
SELECT 
    TOP 1 hospital_name, count(*) as nurse_count
FROM 
    MedicalStaff 
WHERE 
    role_name like 'Nurse'
GROUP BY
    hospital_name
ORDER BY
    nurse_count DESC
 */

-- 10. List the hospitals in alphabetical order
SELECT
    DISTINCT hospital_name
FROM
    MedicalStaff
ORDER BY
    hospital_name