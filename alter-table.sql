CREATE TABLE animals (
id SERIAL PRIMARY KEY, name VARCHAR(50), type TEXT, age INTEGER
);


insert into animals (name, type, age) values ('Leo','lion',12), ('Jerry', 'mouse', 4), ('Marty', 'zebra', 10), ('Gloria', 'hippo', 8), ('Alex', 'lion', 9), ('Melman', 'giraffe', 15), ('Nala', 'lion', 2), ('Marie', 'cat', 1), ('Flounder', 'fish', 8);

ALTER TABLE animals
ADD location VARCHAR(100);

INSERT INTO animals (name, type, age, location)
VALUES ('Luna', 'Chihuahua', 10, 'Las Vegas'),
('Bob', 'Turtle', 16, 'El Paso'),
('KKimchi', 'Cat', 3, 'El Paso');

ALTER TABLE animals
RENAME COLUMN type TO species;

ALTER TABLE animals
ALTER COLUMN species TYPE VARCHAR;

