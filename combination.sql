-- 1. List of all possible combinations of employees and departments
SELECT
  e.EmployeeID,
  e.EmployeeName,
  d.DepartmentID,
  d.DepartmentName
FROM
  Employee e
CROSS JOIN
  Department d;

-- 2. List of employees who belong to at least one department
SELECT
  e.EmployeeID,
  e.EmployeeName,
  e.DepartmentID
FROM
  Employee e
INNER JOIN
  Department d ON e.DepartmentID = d.DepartmentID;

-- 3. List of all employees and their department details, including those without a department and departments without employees
SELECT
  e.EmployeeID,
  e.EmployeeName,
  d.DepartmentID,
  d.DepartmentName
FROM
  Employee e
LEFT JOIN
  Department d ON e.DepartmentID = d.DepartmentID
UNION
SELECT
  e.EmployeeID,
  e.EmployeeName,
  d.DepartmentID,
  d.DepartmentName
FROM
  Employee e
RIGHT JOIN
  Department d ON e.DepartmentID = d.DepartmentID;

-- 4. List of all employees, along with their department details if they belong to a department
SELECT
  e.EmployeeID,
  e.EmployeeName,
  d.DepartmentID,
  d.DepartmentName
FROM
  Employee e
LEFT JOIN
  Department d ON e.DepartmentID = d.DepartmentID;

-- 5. List of all departments, along with employee details if they have at least one employee belonging to the department
SELECT
  d.DepartmentID,
  d.DepartmentName,
  e.EmployeeID,
  e.EmployeeName
FROM
  Department d
LEFT JOIN
  Employee e ON d.DepartmentID = e.DepartmentID
WHERE
  e.EmployeeID IS NOT NULL;
