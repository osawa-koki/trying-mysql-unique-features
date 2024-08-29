DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    department VARCHAR(50),
    name VARCHAR(50)
);

INSERT INTO employees (department, name) VALUES
('HR', 'Alice'),
('HR', 'Bob'),
('IT', 'Charlie'),
('IT', 'David'),
('Finance', 'Eve');

SELECT department, GROUP_CONCAT(name ORDER BY department ASC SEPARATOR ' & ') AS employees
FROM employees
GROUP BY department;
