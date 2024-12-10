
USE HospitalManagement;



INSERT INTO prescriptions (prescription_id, patient_id, doctor_id, medication_id, prescription_date, dosage_instructions)
VALUES
  (1, 1, 1, 1, '2024-01-10', 'Take one tablet daily after meals'),
  (2, 3, 2, 2, '2024-01-11', 'Take one tablet every 6 hours as needed for pain'),
  (3, 4, 3, 3, '2024-01-12', 'Take one capsule three times a day'),
  (4, 5, 4, 4, '2024-01-13', 'Take one tablet every 4 hours as needed for fever');

INSERT INTO appointments (appointment_id, appointment_date, appointment_time, doctor_id, patient_id, reason)
VALUES
  (1, '2024-01-15', '10:00:00', 1, 1, 'Routine Check-up'),
  (2, '2024-01-16', '14:30:00', 2, 3, 'Headache and dizziness'),
  (3, '2024-01-17', '09:00:00', 3, 4, 'Knee pain'),
  (4, '2024-01-18', '16:00:00', 4, 5, 'Cold and fever');

INSERT INTO rooms (room_id, room_number, room_type, availability)
VALUES
  (1, '101', 'General', 1),
  (2, '102', 'Private', 1),
  (3, '103', 'ICU', 0),
  (4, '104', 'General', 1);

INSERT INTO admissions (admission_id, patient_id, room_id, admission_date, discharge_date)
VALUES
  (1, 1, 1, '2024-01-15', '2024-01-17'),
  (2, 3, 2, '2024-01-16', '2024-01-18'),
  (3, 4, 3, '2024-01-17', '2024-01-20'),
  (4, 5, 4, '2024-01-18', '2024-01-22');

INSERT INTO staff (staff_id, first_name, last_name, job_title, phone_number, email, department_id)
VALUES
  (1, 'Alice', 'Green', 'Nurse', '5678901234', 'alice.green@hospital.com', 1),
  (2, 'Bob', 'White', 'Technician', '6789012345', 'bob.white@hospital.com', 2),
  (3, 'Charlie', 'Black', 'Receptionist', '7890123456', 'charlie.black@hospital.com', 3),
  (4, 'David', 'Blue', 'Laboratory Assistant', '8901234567', 'david.blue@hospital.com', 4);

INSERT INTO rooms (room_id, room_number, room_type, availability)
VALUES
  (1, '101', 'General', 1),
  (2, '102', 'Private', 1),
  (3, '103', 'ICU', 0),
  (4, '104', 'General', 1);

