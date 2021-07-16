CREATE TABLE `cities` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `name` TEXT,
  `country` TEXT
);

CREATE TABLE `inhabitants` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `first_name` TEXT,
  `last_name` TEXT,
  `age` INTEGER,
  `city_id` INTEGER,
  FOREIGN KEY(city_id) REFERENCES cities(id)
);

INSERT INTO cities ('name', 'country') VALUES ('Paris', 'France');
INSERT INTO cities ('name', 'country') VALUES ('Amsterdam', 'The Netherlands');
INSERT INTO cities ('name', 'country') VALUES ('Berlin', 'Germany');
INSERT INTO cities ('name', 'country') VALUES ('Lausanne', 'Switzerland');
INSERT INTO cities ('name', 'country') VALUES ('Madrid', 'Spain');
INSERT INTO cities ('name', 'country') VALUES ('Stockholm', 'Sweden');
INSERT INTO cities ('name', 'country') VALUES ('Rome', 'Italy');


INSERT INTO inhabitants ('first_name', 'last_name', 'age', 'city_id')
VALUES ('Patrick', 'Jane', 35, 1);

INSERT INTO inhabitants ('first_name', 'last_name', 'age', 'city_id')
VALUES ('James', 'Bond', 39, 2);

INSERT INTO inhabitants ('first_name', 'last_name', 'age', 'city_id')
VALUES ('Tiger', 'Woods', 42, 5);

INSERT INTO inhabitants ('first_name', 'last_name', 'age', 'city_id')
VALUES ('Arnold', 'Palmer', 85, 1);

INSERT INTO inhabitants ('first_name', 'last_name', 'age', 'city_id')
VALUES ('Sam', 'Snead', 65, 3);

INSERT INTO inhabitants ('first_name', 'last_name', 'age', 'city_id')
VALUES ('Idris', 'Elba', 35, 6);

INSERT INTO inhabitants ('first_name', 'last_name', 'age', 'city_id')
VALUES ('Blake', 'Lively', 28, 3);

INSERT INTO inhabitants ('first_name', 'last_name', 'age', 'city_id')
VALUES ('Ryan', 'Gosling', 38, 4);

SELECT *
FROM inhabitants
JOIN cities ON cities.id = inhabitants.city_id
