--select full_name, specialty_name from MedicalStaff where [location] like '%aliforn%' and specialty_name like '%surg%'

select * from MedicalStaff where full_name like 'Dr. A%' or full_name like 'Dr. B%';
select * from MedicalStaff where role_name not like 'Nurse'

