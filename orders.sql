CREATE TABLE orders(
    id SERIAL PRIMARY KEY,
    person_id VARCHAR(40) NOT NULL,
    product_name VARCHAR(40),
    product_price INTEGER,
    quantity INTEGER,
);

INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES ('Megan', 'Firebird', 15, 1),
('Steve', 'Coop Deville', 14, 1),
('Steve', 'Regular Fry', 6, 2),
('Josh', 'Milkshake', 10, 3),
('Nick', 'Root Beer Float', 6, 2);

SELECT *
FROM orders;

SELECT SUM(quantity)
FROM orders;

SELECT SUM(product_price * quantity)
FROM orders;

SELECT SUM(product_price * quantity)
FROM orders
WHERE person_id = 'Steve';

