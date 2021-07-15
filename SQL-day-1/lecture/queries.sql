-- SYNTAXE
SELECT nomdecolonne, nomdecolonne2
FROM nomdetable(sssssss)
JOIN nomdetable ON table1.id = table2.qqch_id
WHERE condition (LIKE)
AND condition
OR condition
GROUP BY nomdecolonne
ORDER BY nomdecolonne ASC/DESC (ASC défaut)


-- DONNE MOI LE PRENOM DES PATIENTS
SELECT first_name, age
FROM citizens
-- DONNE MOI LE NOM DE FAMILLE DES DOCTEURS
SELECT name
FROM doctors

-- DONNE MOI TOUT CE QUE TU SAIS SUR LES PATIENTS
SELECT *
FROM doctors
-- DONNE MOI TOUS LES PATIENTS QUI ONT MOINS DE X ANS
SELECT first_name, age
FROM citizens
WHERE age = 14
-- DONNE MOI TOUS LES CHIRURGIENS
SELECT *
FROM doctors
WHERE specialty = 'chirurgien'

-- DONNE MOI TOUS LES CHIRURGIENS XXXXX
SELECT *
FROM doctors
WHERE specialty LIKE '%chirurgien%'
-- + de 1 condition
SELECT *
FROM doctors
WHERE specialty LIKE '%chirurgien%'
AND age <= 30
and age > 18




-- DONNE MOI TOUS LES PATIENTS ORDRéS ALPHABETIQUEMENT
SELECT first_name, age
FROM citizens
ORDER BY first_name DESC
-- COMBIEN DE DOCTEURS?
SELECT COUNT(*)
FROM doctors
-- COMBIEN DE CHIRURGIENS?
SELECT COUNT(*)
FROM doctors
WHERE specialty LIKE '%chirurgien%'

-- COMBIEN DE DOCTEURS PAR SPECIALITE?
SELECT COUNT(*), specialty
FROM doctors
GROUP BY specialty

SELECT *
FROM citizens
JOIN cities ON citizens.city_id = cities.id
JOIN dogs ON dogs.citizen_id = citizens.id

SELECT *
FROM dogs
JOIN dogs
JOIN



SELECT * FROM citizens
JOIN cities ON cities.id = citizens.city_id
WHERE citizens.age >= 18
AND cities.name = 'Paris'


SELECT c.time, p.first_name, doctors.name,
FROM consultations c
JOIN patients p ON p.id = c.patient_id
JOIN doctors ON doctors.id = c.doctors_id









