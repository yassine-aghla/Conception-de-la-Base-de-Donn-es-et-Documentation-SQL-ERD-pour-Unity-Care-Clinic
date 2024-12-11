-- TABLE PATIENTS
INSERT INTO patients (first_name, last_name, gender, date_of_birth, phone_number, email, address) 
VALUES 
('John', 'Doe', 'Male', '2001-01-15', '1234567890', 'john.doe1@example.com', '123 Street A'),
('Jane', 'Smith', 'Female', '1990-06-20', '0987654321', 'jane.smith2@example.com', '456 Street B'),
('Alice', 'Johnson', 'Female', '1985-04-10', '1122334455', 'alice.johnson3@example.com', '789 Street C'),
('Bob', 'Brown', 'Male', '2004-09-25', '2233445566', 'bob.brown4@example.com', '101 Street D'),
('Charlie', 'Davis', 'Other', '2000-02-28', '3344556677', 'charlie.davis5@example.com', '202 Street E'),
('Emily', 'Taylor', 'Female', '1995-12-05', '4455667788', 'emily.taylor6@example.com', '303 Street F'),
('Frank', 'Wilson', 'Male', '2010-07-15', '5566778899', 'frank.wilson7@example.com', '404 Street G'),
('Grace', 'Lee', 'Female', '1992-03-19', '6677889900', 'grace.lee8@example.com', '505 Street H'),
('Henry', 'Martin', 'Male', '2005-10-22', '7788990011', 'henry.martin9@example.com', '606 Street I'),
('Isla', 'Walker', 'Female', '1997-08-08', '8899001122', 'isla.walker10@example.com', '707 Street J'),
('Luke', 'Evans', 'Male', '2002-04-17', '9900112233', 'luke.evans11@example.com', '808 Street K'),
('Sophia', 'Garcia', 'Female', '1991-11-12', '1011123344', 'sophia.garcia12@example.com', '909 Street L'),
('Mason', 'Clark', 'Male', '1986-02-03', '1112134455', 'mason.clark13@example.com', '1010 Street M'),
('Ella', 'Hall', 'Female', '1993-09-24', '1213145566', 'ella.hall14@example.com', '1111 Street N'),
('Daniel', 'Allen', 'Male', '1984-06-06', '1314156677', 'daniel.allen15@example.com', '1212 Street O'),
('Olivia', 'Adams', 'Female', '2003-03-21', '1415167788', 'olivia.adams16@example.com', '1313 Street P'),
('Liam', 'Baker', 'Male', '2005-12-30', '1516178899', 'liam.baker17@example.com', '1414 Street Q'),
('Emma', 'Turner', 'Female', '1996-01-10', '1617189900', 'emma.turner18@example.com', '1515 Street R'),
('James', 'Harris', 'Male', '2006-05-25', '1718190011', 'james.harris19@example.com', '1616 Street S'),
('Ava', 'Young', 'Female', '2001-07-14', '1819201122', 'ava.young20@example.com', '1717 Street T');

-- table rooms

INSERT INTO rooms (room_number, room_type, availability) 
VALUES 
('R101', 'General', 1),
('R102', 'General', 1),
('R201', 'Private', 1),
('R202', 'Private', 1),
('ICU1', 'ICU', 1),
('ICU2', 'ICU', 1),
('R103', 'General', 0),
('R104', 'General', 0),
('R203', 'Private', 0),
('ICU3', 'ICU', 0),
('R105', 'General', 1),
('R106', 'General', 1),
('R204', 'Private', 1),
('R205', 'Private', 1),
('ICU4', 'ICU', 1),
('ICU5', 'ICU', 1),
('R107', 'General', 0),
('R108', 'General', 0),
('R206', 'Private', 0),
('ICU6', 'ICU', 0);

-- table departements

INSERT INTO departements (departement_name, location) 
VALUES 
('Cardiology', 'Building A'),
('Neurology', 'Building B'),
('Orthopedics', 'Building C'),
('Pediatrics', 'Building D'),
('General Medicine', 'Building E'),
('Dermatology', 'Building F'),
('Radiology', 'Building G'),
('Oncology', 'Building H'),
('Surgery', 'Building I'),
('Anesthesiology', 'Building J'),
('ENT', 'Building K'),
('Urology', 'Building L'),
('Nephrology', 'Building M'),
('Hematology', 'Building N'),
('Psychiatry', 'Building O'),
('Endocrinology', 'Building P'),
('Gastroenterology', 'Building Q'),
('Pulmonology', 'Building R'),
('Pathology', 'Building S'),
('Neurology', 'Building T');

-- table staf
INSERT INTO staff (first_name, last_name, departement_id, job_title, phone_number, email)
VALUES 
('Alice', 'bojan', 1, 'Nurse', '1234567890', 'alice.bojan@example.com'),
('Bob', 'Smith', 2, 'Technician', '2345678901', 'bob.smith@example.com'),
('Carol', 'Davis', 3, 'Receptionist', '3456789012', 'carol.davis@example.com'),
('David', 'Williams', 4, 'Administrator', '4567890123', 'david.williams@example.com'),
('Eva', 'Brown', 5, 'Nurse', '5678901234', 'eva.brown@example.com'),
('Frank', 'Miller', 6, 'Pharmacist', '6789012345', 'frank.miller@example.com'),
('Grace', 'Wilson', 7, 'Technician', '7890123456', 'grace.wilson@example.com'),
('Henry', 'Moore', 8, 'Assistant', '8901234567', 'henry.moore@example.com'),
('Ivy', 'Taylor', 9, 'Receptionist', '9012345678', 'ivy.taylor@example.com'),
('Jack', 'Anderson', 10, 'Lab Technician', '1123456789', 'jack.anderson@example.com'),
('Kate', 'Thomas', 11, 'Nurse', '2234567890', 'kate.thomas@example.com'),
('Leo', 'Harris', 12, 'Pharmacist', '3345678901', 'leo.harris@example.com'),
('Mia', 'Martin', 13, 'Technician', '4456789012', 'mia.martin@example.com'),
('Nina', 'Jackson', 14, 'Administrator', '5567890123', 'nina.jackson@example.com'),
('Oscar', 'White', 15, 'Assistant', '6678901234', 'oscar.white@example.com'),
('Paul', 'Lewis', 16, 'Receptionist', '7789012345', 'paul.lewis@example.com'),
('Quinn', 'Clark', 17, 'Nurse', '8890123456', 'quinn.clark@example.com'),
('Ruby', 'Hall', 18, 'Technician', '9901234567', 'ruby.hall@example.com'),
('Sam', 'Young', 19, 'Pharmacist', '1012345678', 'sam.young@example.com'),
('Tina', 'Allen', 20, 'Administrator', '1113456789', 'tina.allen@example.com');

-- table doctors

INSERT INTO doctors (departement_id, first_name, last_name, specialization, phone_number, email)
VALUES 
(1, 'John', 'Doe', 'Cardiologist', '1234567890', 'john.doe@example.com'),
(2, 'Emma', 'Brown', 'Neurologist', '2345678901', 'emma.brown@example.com'),
(3, 'William', 'Smith', 'Orthopedic Surgeon', '3456789012', 'william.smith@example.com'),
(4, 'Olivia', 'Johnson', 'Pediatrician', '4567890123', 'olivia.johnson@example.com'),
(5, 'James', 'Davis', 'General Practitioner', '5678901234', 'james.davis@example.com'),
(6, 'Sophia', 'Martin', 'Dermatologist', '6789012345', 'sophia.martin@example.com'),
(7, 'Michael', 'Wilson', 'Radiologist', '7890123456', 'michael.wilson@example.com'),
(8, 'Isabella', 'Moore', 'Oncologist', '8901234567', 'isabella.moore@example.com'),
(9, 'Alexander', 'Taylor', 'Surgeon', '9012345678', 'alexander.taylor@example.com'),
(10, 'Charlotte', 'Anderson', 'Anesthesiologist', '1123456789', 'charlotte.anderson@example.com'),
(11, 'Benjamin', 'Thomas', 'ENT Specialist', '2234567890', 'benjamin.thomas@example.com'),
(12, 'Amelia', 'Harris', 'Urologist', '3345678901', 'amelia.harris@example.com'),
(13, 'Ethan', 'Martin', 'Nephrologist', '4456789012', 'ethan.martin@example.com'),
(14, 'Mia', 'Jackson', 'Hematologist', '5567890123', 'mia.jackson@example.com'),
(15, 'Lucas', 'White', 'Psychiatrist', '6678901234', 'lucas.white@example.com'),
(16, 'Harper', 'Lewis', 'Endocrinologist', '7789012345', 'harper.lewis@example.com'),
(17, 'Liam', 'Clark', 'Gastroenterologist', '8890123456', 'liam.clark@example.com'),
(18, 'Ava', 'Hall', 'Pulmonologist', '9901234567', 'ava.hall@example.com'),
(19, 'Noah', 'Young', 'Pathologist', '1012345678', 'noah.young@example.com'),
(20, 'Ella', 'Allen', 'Neurologist', '1113456789', 'ella.allen@example.com');


-- table medications 
INSERT INTO medications (medication_name, dosage)
VALUES
('Paracetamol', '500mg'),
('Ibuprofen', '200mg'),
('Amoxicillin', '250mg'),
('Ciprofloxacin', '500mg'),
('Metformin', '850mg'),
('Aspirin', '100mg'),
('Atorvastatin', '10mg'),
('Omeprazole', '20mg'),
('Losartan', '50mg'),
('Metoprolol', '25mg'),
('Cetirizine', '10mg'),
('Clindamycin', '300mg'),
('Simvastatin', '20mg'),
('Levothyroxine', '75mcg'),
('Azithromycin', '500mg'),
('Prednisone', '5mg'),
('Doxycycline', '100mg'),
('Lisinopril', '10mg'),
('Albuterol', '90mcg'),
('Hydrochlorothiazide', '12.5mg');

-- table prescripetions
INSERT INTO prescripetions (patient_id, doctor_id, medication_id, prescripetion_date, dosage_instructions)
VALUES
(1, 2, 1, '2024-12-01', 'Take one tablet every 6 hours'),
(2, 3, 2, '2024-12-02', 'Take one tablet every 8 hours with food'),
(3, 4, 3, '2024-12-03', 'Take one capsule twice a day for 7 days'),
(4, 5, 4, '2024-12-04', 'Take one tablet every 12 hours for 5 days'),
(5, 6, 5, '2024-12-05', 'Take one tablet every morning with water'),
(6, 7, 6, '2024-12-06', 'Take one tablet daily before bed'),
(7, 8, 7, '2024-12-07', 'Take one tablet in the morning and evening'),
(8, 9, 8, '2024-12-08', 'Take one capsule daily after breakfast'),
(9, 10, 9, '2024-12-09', 'Take one tablet every 12 hours'),
(10, 11, 10, '2024-12-10', 'Take one tablet every night before sleep'),
(11, 12, 11, '2024-12-11', 'Take one tablet once a day for 3 days'),
(12, 13, 12, '2024-12-12', 'Take one capsule every 8 hours'),
(13, 14, 13, '2024-12-13', 'Take one tablet every morning'),
(14, 15, 14, '2024-12-14', 'Take one tablet daily before meals'),
(15, 16, 15, '2024-12-15', 'Take one tablet every 6 hours as needed'),
(16, 17, 16, '2024-12-16', 'Take one tablet daily for 5 days'),
(17, 18, 17, '2024-12-17', 'Take one capsule every night'),
(18, 19, 18, '2024-12-18', 'Take one tablet once daily in the evening'),
(19, 20, 19, '2024-12-19', 'Take two puffs every 4 hours as needed'),
(20, 1, 20, '2024-12-20', 'Take one tablet daily with breakfast');



-- table appointments
INSERT INTO appointments (appoinetment_date, appoinetment_time, patient_id, doctor_id, reason)
VALUES
('2024-12-01', '09:00:00', 1, 2, 'Routine Checkup'),
('2024-12-02', '10:30:00', 2, 3, 'Follow-up on treatment'),
('2024-12-03', '14:00:00', 3, 4, 'Consultation for chest pain'),
('2024-12-04', '08:45:00', 4, 5, 'Annual physical exam'),
('2024-12-05', '11:15:00', 5, 6, 'Review blood test results'),
('2024-12-06', '15:30:00', 6, 7, 'Discuss new symptoms'),
('2024-12-07', '09:00:00', 7, 8, 'Post-surgery checkup'),
('2024-12-08', '10:00:00', 8, 9, 'Consultation for skin rash'),
('2024-12-09', '13:30:00', 9, 10, 'Consultation for hypertension'),
('2024-12-10', '08:00:00', 10, 11, 'Flu vaccination'),
('2024-12-11', '14:15:00', 11, 12, 'Review of x-ray results'),
('2024-12-12', '09:30:00', 12, 13, 'Discuss medication side effects'),
('2024-12-13', '16:00:00', 13, 14, 'Consultation for weight management'),
('2024-12-14', '11:45:00', 14, 15, 'General health inquiry'),
('2024-12-15', '13:00:00', 15, 16, 'Consultation for migraines'),
('2024-12-16', '10:30:00', 16, 17, 'Follow-up on surgery'),
('2024-12-17', '15:00:00', 17, 18, 'Consultation for allergy'),
('2024-12-18', '09:15:00', 18, 19, 'Routine eye checkup'),
('2024-12-19', '11:00:00', 19, 20, 'Discuss chronic condition management'),
('2024-12-20', '14:45:00', 20, 1, 'Consultation for joint pain');

INSERT INTO admissions (patient_id, room_id, admission_date, discharge_date) 
VALUES
(1, 1, '2024-01-10', '2024-01-15'),
(2, 2, '2024-12-05', '2024-02-10'),
(3, 3, '2024-03-20', '2024-03-25'),
(4, 4, '2024-04-12', '2024-04-17'),
(5, 1, '2024-05-05', '2024-05-10'),
(6, 2, '2024-06-01', '2024-06-06'),
(7, 3, '2024-12-10', '2024-07-15'),
(8, 4, '2024-08-01', '2024-08-05'),
(9, 1, '2024-12-02', '2024-09-07'),
(10, 2, '2024-10-03', '2024-10-08'),
(11, 3, '2024-11-15', '2024-11-20'),
(12, 4, '2024-12-01', '2024-12-06'),
(13, 1, '2024-01-12', '2024-01-17'),
(14, 2, '2024-12-20', '2024-02-25'),
(15, 3, '2024-03-30', '2024-04-04'),
(16, 4, '2024-04-25', '2024-04-30'),
(17, 1, '2024-05-15', '2024-05-20'),
(18, 2, '2024-12-18', '2024-06-23'),
(19, 3, '2024-07-22', '2024-07-27'),
(20, 4, '2024-08-10', '2024-08-15');

