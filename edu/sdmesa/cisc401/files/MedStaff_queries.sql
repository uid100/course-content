use NotRealDoctors;


-- 1. List all the Administrators from the table
SELECT *
FROM MedicalStaff
WHERE role_name = 'Administrator';

-- 2. List all the Doctors whose first name begins with 'A' or 'B'
SELECT *
FROM MedicalStaff
WHERE role_name = 'Doctor'
  AND (full_name LIKE 'Dr. A%' OR full_name LIKE 'Dr. B%');

-- 3. Display the city and state where Sacred Heart Hospital is located
SELECT DISTINCT location
FROM MedicalStaff
WHERE hospital_name = 'Sacred Heart Hospital';

-- 4. Display the list of show titles that reference the name of the subject hospital (not the one in Seattle)
-- SELECT DISTINCT show_movie
-- FROM MedicalStaff
-- WHERE show_movie LIKE '%'+hospital_name+'%'
--   AND location NOT LIKE '%Seattle%';

SELECT DISTINCT show_movie
FROM MedicalStaff
WHERE hospital_name IS NOT NULL
  AND CHARINDEX(hospital_name, show_movie) > 0
  AND location NOT LIKE '%Seattle%';

-- 5. List the doctors that are surgical specialties in California
SELECT full_name, specialty_name
FROM MedicalStaff
WHERE role_name = 'Doctor'
  AND specialty_name LIKE '%Surgery%'
  AND location LIKE '%California%';

-- 6. How many records are listed as 'Nurse'?
SELECT COUNT(*) AS nurse_count
FROM MedicalStaff
WHERE role_name = 'Nurse';

-- 7. How many doctors are surgical specialties in California?
SELECT COUNT(*) AS surgical_doctor_count
FROM MedicalStaff
WHERE role_name = 'Doctor'
  AND specialty_name LIKE '%Surgery%'
  AND location LIKE '%California%';

-- 8. How many different specialties are listed in the table?
SELECT COUNT(DISTINCT specialty_name) AS distinct_specialty_count
FROM MedicalStaff
WHERE specialty_name IS NOT NULL;

-- 9. What is the largest number of nurses listed at any single hospital?
SELECT MAX(nurse_count) AS max_nurses
FROM (
    SELECT hospital_name, COUNT(*) AS nurse_count
    FROM MedicalStaff
    WHERE role_name = 'Nurse'
    GROUP BY hospital_name
) AS nurse_totals;

-- 10. List the hospitals in alphabetical order
SELECT DISTINCT hospital_name
FROM MedicalStaff
ORDER BY hospital_name;
