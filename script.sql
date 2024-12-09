DROP DATABASE IF EXISTS clinique;
CREATE DATABASE clinique;
USE clinique;

CREATE TABLE patients(
patient_id INT NOT NULL AUTO_INCREMENT,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
PRIMARY KEY (patient_id),
gender enum('Male','Female','Other'),
date_of_birth Date,
phone_number VARCHAR(24),
email VARCHAR(50),
address VARCHAR(60)
);

CREATE TABLE rooms(
room_id INT NOT NULL AUTO_INCREMENT ,
room_number VARCHAR(40) NOT NULL,
room_type enum('General','Private','ICU'),
PRIMARY KEY (room_id),
availability TINYINT(1) NOT NULL 
);

CREATE TABLE admissions(
admission_ID INT NOT NULL AUTO_INCREMENT,
patient_id INT NOT NULL, 
room_id INT NOT NULL,
FOREIGN KEY (patient_id)REFERENCES patients (patient_id),
FOREIGN KEY (room_id)REFERENCES rooms (room_id),
PRIMARY key (admission_id),
admission_date DATE,
discharge_date DATE
);
CREATE TABLE departements(
departement_id INT NOT NULL AUTO_INCREMENT,
departement_name VARCHAR(50) NOT NULL,
PRIMARY key (departement_id),
location VARCHAR(50)
);

CREATE TABLE staff(
staff_id INT NOT NULL AUTO_INCREMENT,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50),
departement_id INT NOT NULL,
FOREIGN KEY (departement_id)REFERENCES departements (departement_id),
job_title VARCHAR(50),
phone_number VARCHAR(15),
email VARCHAR(100),
PRIMARY key (staff_id));

CREATE TABLE doctors(
doctor_id INT NOT NULL AUTO_INCREMENT,
PRIMARY key (doctor_id),
departement_id INT NOT NULL,
FOREIGN KEY (departement_id)REFERENCES departements (departement_id),
first_name VARCHAR(50),
last_name VARCHAR(50),
specialization VARCHAR(50),
phone_number VARCHAR(50),
email VARCHAR(50)
);

CREATE TABLE medications(
medication_id INT NOT NULL AUTO_INCREMENT,
PRIMARY key (medication_id),
medication_name VARCHAR(50),
dosage VARCHAR(50)
);

CREATE TABLE prescripetions(
prescripetion_id INT NOT NULL AUTO_INCREMENT,
PRIMARY key (prescripetion_id),
patient_id INT NOT NULL, 
doctor_id INT NOT NULL,
medication_id INT NOT NULL,  
FOREIGN KEY (patient_id)REFERENCES patients (patient_id),
FOREIGN KEY (doctor_id)REFERENCES doctors (doctor_id),
FOREIGN KEY (medication_id)REFERENCES medications (medication_id),
prescripetion_date DATE,
dosage_instructions VARCHAR(255)
);

CREATE TABLE appointments(
appoinetment_id INT NOT NULL AUTO_INCREMENT,
PRIMARY key (appoinetment_id),
appoinetment_date DATE,
appoinetment_time TIME,
patient_id INT NOT NULL, 
doctor_id INT NOT NULL,
FOREIGN KEY (patient_id)REFERENCES patients (patient_id),
FOREIGN KEY (doctor_id)REFERENCES doctors (doctor_id),
reason VARCHAR(255)
);
