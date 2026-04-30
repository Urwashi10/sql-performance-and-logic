-- Get employees above a certain salary

CREATE FUNCTION get_high_salary_employees (@min_salary INT)
RETURNS TABLE
AS
RETURN
(
    SELECT id, name, salary, department_id
    FROM employees
    WHERE salary > @min_salary
);

-- Usage
SELECT * FROM dbo.get_high_salary_employees(50000);
