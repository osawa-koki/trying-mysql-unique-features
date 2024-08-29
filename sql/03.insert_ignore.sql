DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(100)
);

INSERT INTO customers (id, name, email) VALUES
(1, 'Alice', 'alice@example.com'),
(2, 'Bob', 'bob@example.com'),
(3, 'Charlie', 'charlie@example.com');

INSERT IGNORE INTO customers (id, name, email) VALUES
(2, 'Bob Duplicate', 'bob.duplicate@example.com'),
(4, 'David', 'david@example.com');

SELECT * FROM customers;
