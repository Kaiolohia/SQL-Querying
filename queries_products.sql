-- Comments in SQL Start with dash-dash --
\c products_db
INSERT INTO products (name, price, can_be_returned)
    VALUES
    ('chair', 44.00, FALSE),
    ('stool', 25.99, TRUE),
    ('table', 124.00, FALSE);

SELECT * FROM products;
SELECT name FROM products;
SELECT name, price FROM products;

INSERT INTO products (name, price, can_be_returned)
VALUES ('tea', 20.99, FALSE);

SELECT * FROM products
WHERE can_be_returned;

SELECT * FROM products
WHERE price < 44.00;

SELECT * FROM products
WHERE price < 99.99 AND price > 22.50;

UPDATE products SET price = (price - 20.00);

SELECT * FROM products;

DELETE FROM products WHERE price < 25.00;

SELECT * FROM products;

UPDATE products SET price = (price + 20.00);

UPDATE products SET can_be_returned = TRUE;