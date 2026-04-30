CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    department_id INT
);

CREATE TABLE salaries (
    employee_id INT,
    base_salary INT,
    bonus INT,
    FOREIGN KEY (employee_id) REFERENCES employees(id)
);

CREATE TABLE departments (
    id INT PRIMARY KEY,
    name VARCHAR(100)
);
