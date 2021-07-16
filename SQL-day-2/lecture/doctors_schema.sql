INSERT INTO doctors ('name', 'age', 'specialty')
VALUES ('Dr. Who', 50, 'Time Traveller');

INSERT INTO doctors ('name', 'age', 'specialty')
VALUES ('Dr. House', 57, 'Surgeon');

INSERT INTO doctors ('name', 'age', 'specialty')
VALUES ('Dr. Dolittle', 34, 'Veterinarian');

INSERT INTO doctors ('name', 'age', 'specialty')
VALUES ('Dr. Octopus', 28, 'Brain Surgeon');

INSERT INTO doctors ('name', 'age', 'specialty')
VALUES ('John Smith', 39, 'Anesthesiologist');

INSERT INTO doctors ('name', 'age', 'specialty')
VALUES ('Emma Reale', 31, 'Cardiologist');



CREATE TABLE `doctors` (
  `id`  INTEGER PRIMARY KEY AUTOINCREMENT,
  `name` TEXT,
  `age` INTEGER,
  `specialty` TEXT
);

-- SYNTAXE INSERT INTO
INSERT INTO nomdelatable (nomdecolonne1, nomdecolonne2, nomdecolonne3)
VALUES (data1, data2, data3)


INSERT INTO doctors (age, name, specialty)
VALUES ('thirty', 'Xavier', 'Chirurgien Gastro')


INSERT INTO doctors (name, age, specialty)
VALUES (30, 'Chris', 'Chirurgien Gastro')



-- SYNTAXE UPDATE

UPDATE nomdelatable SET colonne1 = data1, colonne2 = data, etc... WHERE condition


UPDATE doctors SET specialty = 'Chirurgien' WHERE specialty = 'Chirurgien Gastro';



-- SYNTAXE DELETE

DELETE FROM tablename WHERE condition
DELETE FROM doctors WHERE name = 30

DELETE FROM doctors
WHERE id = 7
OR id = 9;

DELETE FROM doctors
WHERE id >= 10
AND id <= 1000;







INSERT INTO doctors (age, name, specialty)
VALUES (19, 'Yann', 'Veterinaire')






DELETE FROM emails
WHERE id = 82746387;

UPDATE emails SET hidden = true WHERE id = 432434321



SELECT * FROM posts WHERE username = 'martin' AND hidden = false
































































