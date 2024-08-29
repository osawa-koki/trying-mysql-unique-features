DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10, 2)
);

INSERT INTO employees (name, department, salary) VALUES
('Alice', 'HR', 50000.00),
('Bob', 'IT', 60000.00),
('Charlie', 'Finance', 70000.00),
('David', 'IT', 65000.00);

SELECT
    JSON_OBJECT('id', id, 'name', name, 'department', department, 'salary', salary) AS employee_info
FROM employees;

SELECT '===';

SELECT
    department,
    JSON_ARRAYAGG(JSON_OBJECT('id', id, 'name', name, 'salary', salary)) AS employees_info
FROM employees
GROUP BY department;
