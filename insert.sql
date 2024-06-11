
INSERT INTO employees (id, name, position, salary)
VALUES (3, 'John Doe', 'Software Engineer', 70000),
       (4, 'Jane Smith', 'Data Analyst', 68000);

UPDATE employees
SET salary = 75000
WHERE id = 2;

DELETE FROM employees
WHERE id = 1;
