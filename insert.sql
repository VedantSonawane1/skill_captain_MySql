
INSERT INTO Employees (id, name, position, salary)
VALUES (3, 'John Cena', 'Software Engineer', 70000),
       (4, 'Steive Smith', 'Data Analyst', 68000);

UPDATE Employees
SET salary = 75000
WHERE id = 2;

DELETE FROM Employees
WHERE id = 1;
