CREATE TABLE person(
    id SERIAL PRIMARY KEY,
    name VARCHAR(40) NOT NULL,
    age INTEGER,
    height INTEGER,
    city VARCHAR(40) NOT NULL,
    favorite_color VARCHAR(40) NOT NULL 
);

INSERT INTO person (name, age, height, city, favorite_color)
VALUES ("Megan", 24, 165, "Salt Lake City", "Green"),
("Rohan", 25, 190, "Salt Lake City", "Blue"),
("Fin", 15, 160, "Ooo", "Blue"),
("Jake", 40, 150, "Ooo", "Purple"),
("Princess Bubblegum", 100, 180, "Candy Kingdom", "Pink");


SELECT height, COUNT(*)
FROM person
GROUP BY height
ORDER BY height DESC;

SELECT height, COUNT(*)
FROM person
GROUP BY height
ORDER BY height ASC;

SELECT age, COUNT(*)
FROM person
GROUP BY age
ORDER BY age DESC;

SELECT *
FROM person
WHERE age > 20;

SELECT *
FROM person
WHERE age = 18;

SELECT *
FROM person
WHERE age < 20 OR age > 30;

SELECT *
FROM person
WHERE age != 27;

SELECT *
FROM person
WHERE favorite_color <> 'Red';

SELECT *
FROM person
WHERE favorite_color IN ('Orange', 'Green', 'Blue');