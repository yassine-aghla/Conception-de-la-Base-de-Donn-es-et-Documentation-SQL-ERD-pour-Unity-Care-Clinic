
-- Insérez un nouveau patient nommé "Alex Johnson", né le 15 juillet 1990, de sexe masculin, avec le numéro de téléphone "1234567890".
INSERT INTO patients(first_name, last_name, gender, date_of_birth, phone_number, email, address)
VALUES('Alex','Johnson','Male','1990-07-15','1234567890',null,null);
-- Récupérez tous les départements avec leurs emplacements.
select departement_name,location from departements;
--  Trier les patients par date de naissance Listez tous les patients, triés par date de naissance dans l'ordre croissant.
select patient_id,date_of_birth from patients 
-- order by date_of_birth ; trier par date 
 -- order by date_of_birth desc ; trier par age

--  Filtrer les patients uniques par sexe (DISTINCT) Récupérez tous les sexes des patients enregistrés, sans doublons
select DISTINCT gender from patients;

-- LIMIT Clause : Obtenir les 3 premiers médecins Récupérez les trois premiers médecins dans la table doctors.
select * from doctors LIMIT 3;

-- WHERE Clause : Patients nés après 2000 Récupérez les informations des patients nés après l'année 2000.
select * from patients where  date_of_birth>'2000-01-01';

-- Logical Operators : Médecins dans des départements spécifiques Récupérez les médecins des départements "Cardiology" et "Neurology".
select first_name,last_name,specialization from doctors where specialization IN ("Cardiologist","Neurologist");

--  Special Operators : Vérifier des plages de dates Listez les admissions entre le 1er décembre et le 7 décembre 2024.
select * from admissions where admission_date between '2024-12-01' and '2024-12-07'

--  Nommer les catégories d'âge des patients Ajoutez une colonne catégorisant les patients en "Enfant", "Adulte", ou "Senior" selon leur âge.
SELECT first_name, last_name, date_of_birth,
  CASE  
    WHEN date_of_birth > '2007-01-01' THEN 'enfant'  
    WHEN date_of_birth BETWEEN '1980-01-01' AND '2006-12-31' THEN 'mineur'  
    ELSE 'senior'  
  END AS category  
FROM patients;

-- autre solution 
select first_name,last_name,date_of_birth,CASE 
  WHEN year(curdate())-year(date_of_birth)<18 THEN "ENFANT"
  WHEN year(curdate())-year(date_of_birth) BETWEEN 18 AND 45 THEN "adult"
  ELSE  "senior"
END as categorie 
from patients;
-- 10 : Nombre total de rendez-vous Comptez le nombre total de rendez-vous enregistrés. 
select count(*) AS nombre_total_rendezvouz
from appointments;

-- 11. COUNT avec GROUP BY : Nombre de médecins par département Comptez le nombre de médecins dans chaque département.
SELECT concat(doctors.first_name,' ',doctors.last_name)AS "fullname", departements.departement_name,count(doctors.doctor_id) as "nombre de médecins"
FROM doctors, departements 
WHERE doctors.departement_id = departements.departement_id
GROUP by departements.departement_name;

-- 12. AVG : Âge moyen des patients Calculez l'âge moyen des patients
select avg(year(curdate())-year(date_of_birth))
from patients;

-- MAX : Dernier rendez-vous Trouvez la date et l'heure du dernier rendez-vous enregistré.
SELECT  appoinetment_date,appoinetment_time
FROM appointments
WHERE appoinetment_date = (SELECT MAX(appoinetment_date) FROM appointments)
ORDER BY appoinetment_time DESC
LIMIT 1;

--  Total des admissions par chambre Calculez le total des admissions pour chaque chambre.
SELECT count(*),room_id FROM `admissions` 
GROUP BY room_id

--  Constraints : Vérifier les patients sans e-mail Récupérez tous les patients dont le champ email est vide
SELECT * FROM `patients` WHERE email IS NULL



--  Supprimez tous les rendez-vous programmés avant 2024
delete FROM appointments WHERE appoinetment_date<'2024-01-01'

-- Changez le nom du département "Oncology" en "Cancer Treatment".
UPDATE `departements` 
SET departement_name='Cancer Treatment'
WHERE departement_name='Oncology'

--  Patients par sexe avec au moins 2 entrées Listez les genres ayant au moins deux patients.
SELECT gender,count(gender) from patients
GROUP BY gender
HAVING count(gender)>2 

-- Créer une vue : Admissions actives Créez une vue listant toutes les admissions en cours.
CREATE View Admissions_actives AS 
SELECT * from  admissions
WHERE discharge_date IS NULL;

-- BONUS1
select concat(doctors.first_name,' ' ,doctors.last_name)AS "fullnameDoctor",concat(patients.first_name,' ' ,patients.last_name)AS "fullnamePatient",
prescripetions.prescripetions_id
from doctors,patients, prescripetions
where doctors.doctor_id=prescripetions.doctor_id
and patients.patient_id=prescripetions.patient_id



