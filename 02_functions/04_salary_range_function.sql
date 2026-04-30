-- Convert stored procedure to table-valued function

CREATE FUNCTION get_employees_by_salary_range_fn 
(
    @min_salary INT,
    @max_salary INT
)
RETURNS TABLE
AS
RETURN
(
    SELECT id, name, salary, department_id
    FROM employees
    WHERE salary BETWEEN @min_salary AND @max_salary
);

-- Usage
SELECT * FROM dbo.get_employees_by_salary_range_fn(30000, 60000);
