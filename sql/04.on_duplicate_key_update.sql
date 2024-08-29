DROP TABLE IF EXISTS products;

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    price DECIMAL(10, 2)
);

INSERT INTO products (product_id, product_name, price) VALUES
(1, 'Laptop', 1000.00),
(2, 'Mouse', 25.00),
(3, 'Keyboard', 45.00);

INSERT INTO products (product_id, product_name, price) VALUES
(2, 'Wireless Mouse', 30.00)
ON DUPLICATE KEY UPDATE
    product_name = VALUES(product_name),
    price = VALUES(price);

INSERT INTO products (product_id, product_name, price) VALUES
(4, 'Monitor', 200.00)
ON DUPLICATE KEY UPDATE
    product_name = VALUES(product_name),
    price = VALUES(price);

SELECT * FROM products;
