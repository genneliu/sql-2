--create 3 tables

CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE
);

CREATE TABLE products (
    products_id SERIAL PRIMARY KEY,
    name VARCHAR(100) UNIQUE,
    price INT
);

CREATE TABLE cart (
    cart_id SERIAL PRIMARY KEY,
    user_id INT NOT NULL REFERENCES users(user_id),
    products_id INT NOT NULL REFERENCES products(products_id),
    quantity INT
);


--add data, 3 users, 5 products, each user has 2 products in cart
INSERT INTO users (name, email)
VALUES ('Jacob', 'jacob@jacob.com'),
('Ann', 'ann@ann.com'),
('Joel', 'Joel@joel.com');

INSERT INTO products (name, price)
VALUES ('Banana', 1),
('Apple', 2),
('Ginger', 9),
('Scallion', 3),
('Garlic', 25);

INSERT INTO cart (user_id, products_id, quantity)
VALUES(1, 1, 10),
(1, 4, 2),
(2, 2, 500),
(2, 5, 1),
(3, 4, 6),
(3, 5, 2);

SELECT * FROM cart
WHERE user_id = 1;
--to be continued