-- EXERCICE 1: 
-- -----------

INSERT INTO patients (
first_name,
last_name,
gender,
date_of_birth,
phone_number,
email,
address
)

VALUES (
'Alex',
'Johnson',
'Male',
'1990-07-15',
'1234567890',
'a@gmail.com',
'Boulevard 5'
);

-- EXERCICE 2: 
-- -----------
SELECT * 
FROM departments;

-- EXERCICE 3: 
-- -----------
SELECT *
FROM patients
ORDER BY date_of_birth ASC;

-- EXERCICE 4: 
-- -----------
SELECT DISTINCT gender
FROM patients;

-- EXERCICE 5: 
-- -----------
SELECT *
FROM doctors
LIMIT 3;

-- EXERCICE 6: 
-- -----------
SELECT *
FROM patients
WHERE date_of_birth >= '2000-1-1';

-- EXERCICE 7: 
-- -----------
SELECT *
FROM doctors
WHERE department_id = '1' OR department_id ='2' ;


-- EXERCICE 8: 
-- -----------
SELECT *
FROM admissions
WHERE admission_date
BETWEEN '2024-12-01' AND '2024-12-07'; 

-- EXERCICE 9: 
-- -----------
SELECT 
    first_name,
    last_name,
    date_of_birth,
    CASE
        WHEN TIMESTAMPDIFF(YEAR, date_of_birth, CURRENT_DATE) < 18 THEN 'Enfant'
        WHEN TIMESTAMPDIFF(YEAR, date_of_birth, CURRENT_DATE) >= 18 AND TIMESTAMPDIFF(YEAR, date_of_birth, CURRENT_DATE) < 60 THEN 'Adulte'
        WHEN TIMESTAMPDIFF(YEAR, date_of_birth, CURRENT_DATE) >= 60 THEN 'Senior'
        
    END AS categorie_age
FROM Patients;


-- EXERCICE 10: 
-- -----------

SELECT
COUNT(appointment_id) AS total_appointments
FROM appointments;


-- EXERCICE 11: 
-- -----------
SELECT department_name, COUNT(*) AS nombre_de_medecins 
FROM doctors
JOIN departments ON doctors.department_id = departments.department_id
GROUP BY department_name; 

-- EXERCICE 12: 
-- -----------
SELECT 
AVG(TIMESTAMPDIFF(YEAR, date_of_birth, CURRENT_DATE)) AS avg_age
FROM patients;

-- EXERCICE 13: 
-- -----------
SELECT
MAX(appointment_date) AS dernier_rendez_vous
FROM appointments;

-- EXERCICE 14: 
-- -----------
SELECT room_id, SUM(admission_id) AS total_admissions
FROM admissions
GROUP BY room_id;

-- EXERCICE 15: 
-- -----------
SELECT * 
FROM patients 
WHERE email IS NULL OR email = '';



