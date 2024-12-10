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





